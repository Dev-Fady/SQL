create table customers
(
customer_id int primary key,
first_name varchar(20) not null,
last_name varchar(20) not null,
phone varchar(15),
email varchar(20) not null,
city varchar(20) check(city in ('Riyadh','Macca','Madina')),
zipcode int,
)

alter table customers
add street varchar(50)

alter table customers
drop column zipcode

ALTER TABLE customers
alter column street VARCHAR(255) NOT NULL;

create table orders(
order_id int identity(1,1),
customer_id int,
order_status tinyint not null,
order_date date not null,
required_date date not null,
shipped_date date not null,
stored_id int not null,
staff_id int not null,
constraint order_pk primary key (order_id),
constraint customer_order_fk foreign key (customer_id) 
references customers(customer_id),
)


alter table orders
add constraint store_order_fk foreign key (stored_id) 
references stores(store_id)

create table stores(
store_id int identity(1,1) primary key,
store_name varchar(255),
phone varchar(25),
email varchar(255),
street varchar(255),
city varchar(255),
states varchar(10),
zip_code varchar(5),
)
create table staffs(
staff_id int identity(1,1) primary key,
first_name varchar(20) not null,
last_name varchar(20) not null,
phone varchar(25) unique,
email varchar(255) not null unique,
active tinyint not null,
store_id int not null,
manager_id int,
)

alter table staffs 
add constraint store_staff_fk foreign key (store_id) 
references stores(store_id)