-- Count rows
SELECT COUNT(*) FROM zepto;

-- Preview data
SELECT * FROM zepto LIMIT 10;

-- Stock availability
SELECT out_of_stock, COUNT(*)
FROM zepto
GROUP BY out_of_stock;

-- NULL value checks
SELECT COUNT(*)
FROM zepto
WHERE name IS NULL
   OR category IS NULL
   OR mrp IS NULL
   OR discount_percent IS NULL
   OR discounted_selling_price IS NULL
   OR weight_in_grams IS NULL
   OR available_quantity IS NULL
   OR out_of_stock IS NULL
   OR quantity IS NULL;

-- Negative or zero values
SELECT COUNT(*)
FROM zepto
WHERE mrp <= 0
   OR discounted_selling_price <= 0
   OR quantity < 0
   OR available_quantity < 0;

-- Duplicate records
SELECT name, category, COUNT(*)
FROM zepto
GROUP BY name, category
HAVING COUNT(*) > 1;

