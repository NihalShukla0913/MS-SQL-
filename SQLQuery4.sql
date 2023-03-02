--- like operator --- for starting with or ending with a fix letter or word or matching the pattern ---
--- Used to get specific pattern from the data we use like operator (Wild Card) ---



use Northwind
select * from customers

select * from customers
where contactname like 'a%'--- start with a-------------------  start%

select * from customers
where contactname like '%a'-- end with a-----------------------%end

select * from customers
where contactname like '%or%'--anywhere in contactname

-- customername that have "r" in the second position:
select * from customers
where contactname like '_r%'

--- customername that start with "a" and are at least 3 characters in length: 
select * from customers
where contactname like 'a_%'

-- customer with a contactname that start with "a" and ends with "o"
select * from customers
where contactname like 'a%o'

--- customername that does not start with "a":
select * from customers
where contactname not like 'a%'

select * from customers
where contactname not like '%a'

select * from customers
where contactname not like 'a%o'

select * from customers
where city like 'ber%'

select * from customers
where city like '%es%'

select * from customers
where city like '_ondon'

select * from customers
where city like 'l_n_on'

select city from Customers
where city like '[AEIOU]%' and city like '%[aeiou]'


---In operator--- we use in for multiple condition on one column

select * from customers
where country in ('germany', 'france', 'uk')

select * from customers
where country not in ('germany', 'france', 'uk')

select country from customers----- main query
where country in (select distinct country from suppliers)---- subquery--- subquery output is the input of main query
select country from suppliers

---## Between operator

select * from products
where unitprice between 50 and 60

---## Not between

select * from products
where unitprice not between 10 and 20

--- between with in

select * from products
where unitprice between 10 and 20
and not categoryid in (1,2,3)

--between dates
select * from orders
where orderdate between '1996-07-01' and '1996-07-31'

----Alias for columns----nickname to the column
select customerid as id, contactname as customer_name
from customers

select customerid as id, contactname as [contact person]
from customers

select customerid as id, contactname as contact_person
from customers

select customerid as id, contactname as customer, country into new_customers1
from customers

select * from new_customers1
delete from new_customers1
where id = 'alfki'

alter table new_customers1
drop column country

delete from new_customers1

drop table new_customers1


--- class questions

select * from Customers
where country = 'USA'

select top 3 productname from products
where unitprice > 50
order by unitprice desc

select * from customers
where country = 'germany' and fax is null