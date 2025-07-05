create database sell_books

use sell_books
go

create table Books(
books_id int primary key,
title_book varchar(20) not null,
author_book varchar(30) not null,
publishedYear_book int not null,
price_book int not null
)

INSERT INTO Books(books_id,title_book,author_book,publishedYear_book,price_book)
VALUES (1, 'Sql book', 'tom ', 2000, 9),
       (2, 'CSharp book', 'fady ', 2005, 39),
       (3, 'HTML book', 'Nour ', 1950, 85),
        (4, 'CPlusPlus book', 'Felo ', 1999, 70),
         (5, 'CSS book', 'TOOms ', 1985, 45);

update Books 
set price_book = 111
where books_id=2

delete from Books
where books_id = 4;

select * from Books
order by publishedYear_book;

select * from Books
where publishedYear_book < 2000;

