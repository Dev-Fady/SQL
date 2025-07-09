Exec getProductAll
Exec getProductById 50
exec getProductByIdAndYear @year = 2017

exec getProductByIdAndYear 78, @year = 2017

create procedure getProductAll
as
begin
	select *
	from production.products
	where product_id >=100
end

create procedure getProductById
	@ProductId int
as
begin
	select *
	from production.products
	where product_id >= @ProductId
end

create procedure getProductByIdAndYear
	@ProductId int =50 , @year int
as
begin
	select *
	from production.products
	where product_id >= @ProductId and model_year =@year
end