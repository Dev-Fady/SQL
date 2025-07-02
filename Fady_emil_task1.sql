use master;
Create database e_commerce

use e_commerce
GO

create table customers(
customer_id int IDENTITY(1,1),
customer_name varchar(20) not null,
customer_email varchar(30) not null,
customer_phone varchar(11) not null,

constraint customers_pk primary key (customer_id),
constraint customers_un_phone unique (customer_phone),
constraint customers_un_email unique (customer_email)
)

create table orders(
order_id int IDENTITY(1,1),
customer_id int not null references customers(customer_id),

constraint orders_pk primary key (order_id)
)

create table products(
product_id int IDENTITY(1,1),
product_name varchar(20) not null,
product_description varchar(500)

constraint products_pk primary key (product_id)
)

create table order_details(
order_details_id int IDENTITY(1,1),
product_id int not null references products(product_id),
order_id int not null references orders(order_id),
order_details_quantity int not null,
constraint order_details_pk primary key (order_details_id)
)
