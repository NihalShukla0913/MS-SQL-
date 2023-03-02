--- create a new column in table
--- alter function


use Northwind
select * from products

alter table products
add amount1 float       ---#  float data type is mandatory.

select * from products

update products
set amount1 = unitprice * unitsinstock     ---##     + , - , * , /

select * from products

alter table products
add total_quantity1 float , order_ratio1 float

select * from orders
alter table orders
add amounts2 character
select * from orders

alter table orders
drop column amounts, amounts1, amounts2


select * from products

update products
set total_quantity1 = unitsinstock + unitsonorder ,
    order_ratio1 = unitsinstock / unitprice

select * from products


  select * from  [Order Details]
  alter table [order details]
  add total_sales1 float

  select * from [Order Details]

  update [Order Details]
  set [total_sales1] = unitprice * quantity
  select * from [Order Details]


  select * from [Order Details]
  alter table [order details]
  add orders1 float

  update [Order Details]
  set orders1 = quantity * discount


  ---### group by statement --- filter condition row by row

  select * from customers
  select country,city,count(customerid) as number_of_customer
  from customers
  where region is not null
  group by country,city
  order by number_of_customer asc

  select city,count (customerid) as number_of_customer
  from customers
  group by city 
  order by number_of_customer desc;




  ---- ### having clauses --- condition by working on column --- filter condition group by group ---
  ----- having cluase condition wise working on column to filter the groups.

  select * from customers
  select country,count (customerid) as number_of_customer
  from customers
  group by country
  having count(customerid)> 5
  order by number_of_customer asc;

  select country,count (customerid) as number_of_customers
  from customers
  group by country
  having count(customerid) > 2
  order by number_of_customers asc;

  select city,count (customerid) as numberofcustomers
  from customers
  group by city
  having count(customerid) <> 3
  order by numberofcustomers desc;


  select * from customers

  select city,count(customerid) as numberofcustomers
  from customers
  group by city
  having count(customerid)>=3
  order by numberofcustomers desc
  
  select top 6 city,count(customerid) as numberofcustomers
  from customers
  group by city
  order by numberofcustomers desc


  select top 3 contacttitle,count(customerid) as numberofcustomer			---- top--row wise working
  from customers
  group by contacttitle
  order by numberofcustomer desc


  select contacttitle,count(customerid) as numberofcustomer
  from customers
  group by contacttitle
  having count(customerid) >= 10        ----- having cluase condition wise working on column to filter the groups.
  order by numberofcustomer desc


  select city,count(customerid) as listfrom_uk
  from customers
  where country = 'uk'
  group by city
  order by listfrom_uk asc


  select* from orders
  select shipvia,shipcity,shipcountry,count(employeeid) as number_employee
  from Orders
  where shipcity in ('rio de janerio','sao paulo') and shipcountry='brazil'
  group by shipvia,ShipCity,shipcountry
  having count(employeeid) <> 3
  order by number_employee asc

  select shipcity,shipvia, count(employeeid) as number_employee
  from orders
  where shipcity in ('sao paulo') and shipcountry='brazil'
  group by shipcity,shipvia
  order by number_employee desc 
