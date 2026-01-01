-- Out-of-stock products count
SELECT COUNT(*)
FROM zepto
WHERE out_of_stock = TRUE;

-- Revenue per product
SELECT name,
       quantity * discounted_selling_price AS revenue
FROM zepto
ORDER BY revenue DESC
LIMIT 10;

-- Top revenue-generating products
SELECT name,
       SUM(quantity * discounted_selling_price) AS revenue
FROM zepto
GROUP BY name
ORDER BY revenue DESC
LIMIT 10;

-- Category-wise average discount
SELECT category,
       AVG(discount_percent) AS avg_discount
FROM zepto
GROUP BY category;

-- Products at risk of stock-out
SELECT name, available_quantity
FROM zepto
WHERE available_quantity < 5
ORDER BY available_quantity;

