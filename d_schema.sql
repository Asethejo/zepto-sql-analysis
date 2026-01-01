DROP TABLE IF EXISTS zepto;

CREATE TABLE zepto (
    sku_id SERIAL PRIMARY KEY,
    category VARCHAR(100),
    name VARCHAR(255) NOT NULL,
    mrp NUMERIC,
    discount_percent NUMERIC,
    available_quantity INTEGER,
    discounted_selling_price NUMERIC,
    weight_in_grams INTEGER,
    out_of_stock BOOLEAN,
    quantity INTEGER
);
