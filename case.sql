select 
     order_id,quantity,
CASE
	when quantity > 1 then ' the qunantity is greete then 2'
	when quantity = 1 then ' the qunantity is 1'
	else ' the qunantity is under 30'
end AS QuantityText
FROM sales.order_items


SELECT
    product_name,
    list_price,
    CASE
        WHEN list_price < 500 THEN 'Cheap'
        WHEN list_price BETWEEN 1000 AND 1500 THEN 'Moderate'
        WHEN list_price > 2000 THEN 'Expensive'
        ELSE 'Unknown'
    END AS PriceCategory
FROM production.products;
