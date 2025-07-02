select customer_id,first_name
from customers
select * from customers

select DISTINCT first_name from customers

select  count(distinct first_name) from customers


select concat(first_name ,' ', last_name) as full_name 
from customers
