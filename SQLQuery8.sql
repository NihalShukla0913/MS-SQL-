
---any and all operators---
---any
select * from [order details]
where unitprice > 250

--- any = or --- any is high version of or ---write in subquery
select * from  products
where productid = any ( select distinct productid
from [order details] where unitprice > 250)

select * from products
where productid = any (select distinct productid
from [order details] where quantity > 110)

--all = and---
select * from products
---select distinct ProductID from [Order Details]
---where quantity > 100
where productid = all (select distinct productid
from [order details] where quantity > 100)




--- creating database and table ----- no of column = no of values
create database test2

drop database test2

use test2

create table demo
(first_name varchar(255),--- alphabet
gender nvarchar(255), --alphabet and number
age int, -- without decimal number
salary float, ---with decimal number
dob date) --date

select * from demo

insert into demo values ('irfan','m','27','2000.0','1992-06-26')
insert into demo values ('nikita','f','31','1500.5','1996-01-06')
insert into demo values ('deeksha','f','28','2000.4','1997-02-20')
insert into demo values ('hardik','m','37','6500.8','1992-03-26')
insert into demo values ('komal','f','21','8500.34','1996-04-06')
insert into demo values ('imran','m','24','4500.5','1997-07-20')
insert into demo values ('rohini','f','22','10000.456','1997-01-20')

select * from demo

drop table demo

use northwind

-- importanat of ;go----
select * from orders
where orderi = 10248;
go

select * from customers
where country = 'uk';
go

alter table demo
add names nvarchar
alter table demo
drop column names