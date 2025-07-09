select SUBSTRING(c.first_name,2,2),LEFT(c.email, 2),RIGHT(c.email,2),
LEN(c.first_name),DATALENGTH(c.first_name),
CHARINDEX('.com',c.email),
REPLACE(c.first_name,'D','*'),
UPPER(c.first_name),
trim(c.first_name),ltrim(c.first_name),
REVERSE(c.first_name)
from sales.customers as c

select c.first_name ,c.email
from sales.customers as c

SELECT c.customer_id, c.city, c.phone, c.zip_code
FROM sales.customers as c
WHERE c.phone IS NULL;

 SELECT GETDATE();
 SELECT DATENAME(year, '2017/08/25');
 SELECT DATEFROMPARTS(2018, 10, 31) AS DateFromParts;
 SELECT DATEDIFF(year, '2017/08/25', '2022/08/25') AS DateDiff;
 SELECT DATEADD(year, 5, '2017/08/25') AS DateAdd;
 SELECT DAY('2017/08/25') AS DayOfMonth;
 SELECT ISDATE('2017-08-25');

 DECLARE @DateOnly AS datetime = '20160112';
SELECT @DateOnly AS Result;

DECLARE @time AS time = '12:34:56';
SELECT CAST(@time AS datetime) AS Result;

SELECT o.order_id, o.customer_id, o.order_status, o.order_date
FROM sales.orders as o
WHERE o.order_date = '20070825';


SELECT o.order_id, o.customer_id, o.order_status, o.order_date
FROM sales.orders as o
WHERE o.order_date >= '20160101' 
and o.order_date <= '20180101';
