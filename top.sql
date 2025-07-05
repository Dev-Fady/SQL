select p.product_name , p.list_price
from production.products as p
order by p.list_price desc;

select top 4 p.product_name , p.list_price
from production.products as p
order by p.list_price desc;

select top 4 percent p.product_name , p.list_price
from production.products as p
order by p.list_price desc;

select top 4  with ties p.product_name , p.list_price
from production.products as p
order by p.list_price desc;