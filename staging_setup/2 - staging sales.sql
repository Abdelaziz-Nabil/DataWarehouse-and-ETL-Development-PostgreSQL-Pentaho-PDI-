--DROP TABLE staging.sales;


CREATE TABLE staging.sales(

    transaction_id	INTEGER,
	transactional_date	TIMESTAMP,
	product_id	VARCHAR(5),
	customer_id	INTEGER,
	payment	VARCHAR,
	credit_card	BIGINT,
	loyalty_card	VARCHAR,
	cost	NUMERIC,
	quantity	INTEGER,
	price NUMERIC,
	PRIMARY KEY (transaction_id)

);



