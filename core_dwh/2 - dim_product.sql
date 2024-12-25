-- Table: core.dim_product

-- DROP TABLE IF EXISTS core.dim_product;

CREATE TABLE core.dim_product
(
    product_pk integer,
    product_id VARCHAR(5),
    product_name VARCHAR,
    category VARCHAR,
    subcategory VARCHAR,
    brand VARCHAR
);

SELECT * FROM core.dim_product;