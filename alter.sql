alter table TEST_Table
add constraint street_name_un unique (street3)

alter table TEST_Table
add order_un int;

alter table TEST_Table
add constraint order_un_fk foreign key (order_un)
references sales_schema.orders (order_id)

alter table TEST_Table
drop constraint FK_TEST_Table_store

EXEC sp_rename 'Fady_DB' , 'Fady_TA'

EXEC sp_rename 'Fady_Ta.street3' , 'City'

alter table sales_schema.orders
drop constraint FK_TEST_Table_store

truncate table sales_schema.orders

