CREATE FUNCTION Sales.fn_LineTotal (@orderid INT)
RETURNS TABLE
AS
RETURN
SELECT order_id,
       CAST((quantity * list_price * (1 - discount)) AS DECIMAL(8, 2))
       AS line_total
FROM sales.order_items
WHERE order_id = @orderid;

SELECT * FROM Sales.fn_LineTotal(1052);

SELECT orderyear, COUNT(DISTINCT customer_id) AS cust_count
from(
    select Year(order_date)as orderYear,customer_id
    from sales.orders
)as  derived_year
group by orderYear

declare @emp_id int=9
SELECT orderyear, COUNT(DISTINCT customer_id) AS cust_count
from(
    select Year(order_date)as orderYear,customer_id
    from sales.orders
    where staff_id=@emp_id
)as  derived_year
group by orderYear;

WITH CTE_year AS (
 SELECT YEAR(order_date) AS orderyear, customer_id
 FROM sales.orders)
 SELECT orderyear, COUNT(DISTINCT customer_id) AS cust_count
 FROM CTE_year
 GROUP BY orderyear;