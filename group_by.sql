select max(i.list_price) as hig, min(i.list_price)as low, 
avg(i.list_price) as average, sum(i.list_price)as sumP,
count(*) "No of Products"
from sales.order_items as i


select max(i.list_price) as hig, min(i.list_price)as low, 
avg(i.list_price) as average, sum(i.list_price)as sumP,
count(*) "No of Products"
from sales.order_items as i
group by list_price


select p.product_name ,b.brand_name
from production.products as p join production.brands as b
on p.brand_id=b.brand_id

select  b.brand_name , COUNT(*) AS product_count
from production.products as p join production.brands as b
on p.brand_id=b.brand_id
group by b.brand_name;

SELECT b.brand_name, COUNT(p.product_id) AS product_count
FROM production.products AS p
JOIN production.brands AS b ON p.brand_id = b.brand_id
GROUP BY b.brand_name;

select max(i.list_price) as hig, min(i.list_price)as low, 
avg(i.list_price) as average, sum(i.list_price)as sumP,
count(*) "No of Products"
from sales.order_items as i
group by list_price
having COUNT(*)>70

select s.store_name
from sales.stores as s join sales.orders as o
on s.store_id=o.store_id

select s.store_name,COUNT(*) as "No of Orders"
from sales.stores as s join sales.orders as o
on s.store_id=o.store_id
group by s.store_name
order by COUNT(*) ;

select s.store_name,COUNT(*) as "No of Orders"
from sales.stores as s join sales.orders as o
on s.store_id=o.store_id
group by s.store_name
having count(*) > 200
order by COUNT(*) ;