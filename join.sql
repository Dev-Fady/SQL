select customer_id , first_name , last_name ,city
from  sales.customers where city='Rome' --or not city= 'Bronx';

SELECT  city FROM sales.customers;

SELECT DISTINCT city FROM sales.customers;

select c.customer_id,o.customer_id , CONCAT(c.first_name ,' ', c.last_name) as full_name ,o.order_id,o.store_id
from sales.customers as c , sales.orders as o
where c.customer_id = o.customer_id

select c.customer_id,o.customer_id , CONCAT(c.first_name ,' ', c.last_name) as full_name ,o.order_id,o.store_id
from sales.customers as c join sales.orders as o
on c.customer_id = o.customer_id

select  CONCAT(s.first_name ,' ', s.last_name) as full_name ,email , phone , o.order_date,o.order_status,o.customer_id
from sales.staffs as s right join sales.orders as o
on s.staff_id = o.staff_id

select  CONCAT(c.first_name ,' ', c.last_name) as full_name,o.order_id ,(i.list_price * i.quantity * (1-i.discount))as full_price , (i.list_price * i.quantity)as price_after ,i.discount,i.quantity,o.order_date,c.zip_code
from sales.customers as c join sales.orders as o 
on c.customer_id=o.customer_id
join sales.order_items as i
on i.order_id=o.order_id