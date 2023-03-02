select * from Northwind.dbo.Customers

select * from northwind.dbo.Products
where Unitprice=18

select * from Products
where Unitprice > 55

select * from Products
where Unitprice >= 55

select * from Products
where Unitprice < 55

select * from Products
where Unitprice <= 55

select * from Products
where Unitprice <> 18   ----##  not 18 or except 18

select * from Products
where Unitprice BETWEEN 50 AND 60

select * from Customers
where city = 'paris'

select * from Customers
where city in ('paris','London','Berlin')

Select * from Customers
where Country in ('USA','UK')

--And-- when both conditions are true 
select distinct city from customers   --- distinct = unique
select city from Customers

select * from customers
where country = 'germany' AND city = 'berlin'

select * from customers
where country = 'uk' AND city = 'London'

--or-- any one condition is true

select * from customers
where city = 'berlin' or city = 'aachen'

select * from customers
where country = 'germany' or country = 'spain'

--### not
select * from Customers 
where country = 'germany' and not city = 'berlin'

select * from customers
where not country in ('germany ','spain','usa','uk')

--combine----------and,or,not

select * from customers
where country = 'germany' and (city = 'berlin' or city = 'aachen')

select * from customers
where not country = 'germany' and not country = 'usa'

select * from Customers
where country = 'germany' and not (city = 'berlin' or city = 'aachen')

select * from customers
where country = 'usa' and not (region = 'or'or region = 'wa')

-- order by------ for sorting the data in the from of ascending or descending

select * from customers    --- by default it gives data in ascending wise
order by country

select * from customers
order by country desc

select * from products
order by unitprice

select * from products
order by unitprice desc

select country,city from customers
order by country,city

select city,country from customers
order by city,country

select country,city from customers
order by country asc, city asc

--## null values
-- this is null method

select * from customers

select * from customers
where region is null

select * from Customers
where fax is null

select * from customers
where region is null and fax is null

--this is not null operator
select companyname, contactname, region
from customers
where region is not null
order by contactname

select contactname, region, fax
from customers
where region is not null and fax is null

--## update statement--- used for update the data or adding the data--

--update table--

select * from customers

select * into customerr from customers

select * from customerr

update customerr
set contactname='akash'
where customerid='anton'

select * from customerr
drop table customerr

--update multiple records

update customers2
set companyname='analytics', city='mumbai', country='india'
where customerid='alfki'

select * from customers2

-----update warning--here we have to mention where otherwise it get assigned to whole table------

update customers2
set contactname='irfan'

select * from customers2

---delete statement---

--- delete one row---
select * from customerr

delete from customerr
where customerid='alfki'

select * from customerr

--- delete one column

alter table customers2
drop column postalcode

select * from customers2

--- delete all records---- only for row

delete from customers2

select * from customers2

--- delete entire table---- for entire table
drop table customers2

select * from customers2

--top,limit or rownum clause---

select * from customers

select top 7 * from customers

--- top recent examples
select top 50 city from customers

---add a where clause
select top 3 city from customers
where country='germany'



---min() and max()---

---min()
select * from products

select min(unitprice) from products

select min(unitprice) as smallestprice ---- as for giving column name----as means alias
from products

---max()
select max(unitprice) as highestprice
from products


---count(), avg(), and sum() functions---

---count()
select * from products

select count(unitprice) 
as total_count
from products

---avg()
select avg(SupplierID)
as avg_unit_price
from products

---sum()
select sum(unitprice)
as sum_unit_price
from products