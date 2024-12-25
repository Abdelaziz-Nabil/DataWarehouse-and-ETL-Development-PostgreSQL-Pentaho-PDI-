-- Before run This Script make sure insert data in products


select row_number() over (order by category) as category_id
,category 
into category
from (select distinct  category from products);



select * from category;
