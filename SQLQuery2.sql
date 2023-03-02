use Northwind
select * from Northwind.dbo.Customers
select city from customers
select city from Employees
select city, region, country from customers
where region is not null
select distinct country from customers
select country from customers

--##select
select * from Northwind.dbo.Customers
select * from Customers
select city from Customers
select city,companyname from Customers
where customerid in ('alfki','anton') 


---- test 1 which is taken in class
use test_classroom
create database test_classroom
select * into test_classroom.dbo.customer2 from northwind.dbo.customers
select * from customer2

select * into Test_consumer1 from customer1
where contacttitle='owner'


select * from test_consumer1

select * into test_tech_phone from customers
where contacttitle='owner'and city='london'
select * from test_tech_phone

select * into test_country1 from customer1
where region in ('sp', 'or', 'rj')
select * from test_country1

select * from customers

select * from products


select * from products

alter table products
drop column amount,total_quantity,amounts,total_quantity1,order_ratio1

alter table products
add amount float

update products
set amount = unitprice * unitsinstock
select * from products

select * from northwind.dbo.customers

use test2
use northwind

select firstname, LastName from northwind.dbo.Employees
order by lastname
select * from Employees

select lastname,firstname,title from Employees
where city='seattle'
order by firstname
