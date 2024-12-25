
CREATE TABLE core.sales(

    transaction_id	INTEGER,
	transactional_date	TIMESTAMP,
	transactional_date_fk BIGINT,
	product_id	VARCHAR(5),
	product_fk INTEGER,
	customer_id	INTEGER,
	payment_fk	INTEGER,
	credit_card	BIGINT,
	cost	NUMERIC,
	quantity	INTEGER,
	price NUMERIC,
	total_cost NUMERIC,
	total_price NUMERIC,
	profit NUMERIC,
	PRIMARY KEY (transaction_id)

);


SELECT * FROM core.sales;
