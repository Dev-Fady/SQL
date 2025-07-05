create database test 
use test 
go

create table salesman (
salesman_id int primary key ,
salesman_name nvarchar (50) not null,
salesman_city nvarchar(50) not null,
salesman_commission decimal (7,2)
)

create table customers (
customer_id int primary key ,
customer_name nvarchar (50) not null,
customer_city nvarchar(50) not null,
customer_grade int ,
salesman_id int not null,
foreign key (salesman_id ) references  salesman (salesman_id)
)

create table orders(
order_no int primary key ,
purch_amt decimal (7,2) not null,
ord_data date not null,
customer_id int not null,
foreign key (customer_id)  references  customers (customer_id),
salesman_id int not null,
foreign key (salesman_id)  references  salesman (salesman_id)
)

INSERT INTO salesman (salesman_id, salesman_name, salesman_city, salesman_commission) VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12);

INSERT INTO customers (customer_id, customer_name, customer_city, customer_grade, salesman_id) VALUES
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', NULL, 5005);

INSERT INTO orders (order_no, purch_amt, ord_data, customer_id, salesman_id) VALUES
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007);

select s.salesman_name ,c.customer_name,s.salesman_city,c.customer_city
from salesman as s join customers as c
on s.salesman_city=c.customer_city

select o.order_no ,o.purch_amt ,c.customer_name ,c.customer_city
from orders as o join customers as c
on o.customer_id = c.customer_id
where o.purch_amt between 500 and 2000