drop database  if exists hometask_2;
create database if not exists hometask_2;

drop table if exists sales;
create table if not exists sales (
	id SERIAL PRIMARY KEY,
    order_date date not null,
    count_product int not null
    );
select *from sales;

insert sales (order_date, count_product)
values
	('2022-01-01', 156),
    ('2022-01-02', 180),
    ('2022-01-03', 21),
    ('2022-01-04', 124),
    ('2022-01-05', 341);
 select *from sales;   
 
 truncate sales;
 
insert sales (order_date, count_product)
values
	('2022-01-01', 156),
    ('2022-01-02', 180),
    ('2022-01-03', 21),
    ('2022-01-04', 124),
    ('2022-01-05', 341);
 select *from sales;   



