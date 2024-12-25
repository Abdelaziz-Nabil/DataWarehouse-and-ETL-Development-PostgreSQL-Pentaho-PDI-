
-- script Select data that will be in fact sales in ETL Pentaho

SELECT ss.transaction_id,
	ss.transactional_date,
	CAST(TO_CHAR(ss.transactional_date, 'YYYYMMDD')AS BIGINT) As transactional_date_fk,
	ss.product_id,
	cp.product_pk AS product_fk,
	ss.customer_id,
	cpay.payment_pk AS payment_fk,
	ss.credit_card,
	ss.cost	,
	ss.quantity	,
	ss.price 
FROM staging.sales ss
LEFT JOIN core.dim_payment cpay
ON cpay.payment = COALESCE(ss.payment,'cash') AND cpay.loyalty_card = ss.loyalty_card
LEFT JOIN core.dim_product cp
ON ss.product_id = cp.product_id
ORDER BY ss.transaction_id;
