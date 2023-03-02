---sub query---
-- it requires 2 tables for analysis--
--- first table output will be input of 2nd table--

select * from Customers
select * from orders
where customerid in(select distinct customerid
                     from customers
					 where country = 'uk')
order by customerid



---q1
--orderid wise total bill amount from poland country

select * from orders
select * from [order details]

select orderid , sum(unitprice*quantity) as total_cost,
count(orderid) as no_product_purchase
---into poland_data1
from[order details]
where orderid in (select distinct orderid
                  from orders
				  where shipcountry='poland')
group by orderid

select * from poland_data1

select * from orders
alter table orders
add delivery_day float
select * from orders

update orders
set delivery_day = datediff(d , orderdate , ShippedDate)

select * from orders

alter table poland_data
add shipping_cost float,product_cost float, delivery_days float

select * from poland_data

select * from orders

update poland_data
set shipping_cost = orders.freight,
delivery_days=orders.delivery_day
from orders inner join poland_data
on poland_data.orderid=orders.orderid

--- select freight,delivery_day from orders
--where orderid=10374

select * from poland_data

update poland_data
set product_cost = total_cost - shipping_cost
where orderid in (select orderid from poland_data
                   where total_cost > 300);

select * from poland_data

update poland_data
set product_cost = total_cost
where product_cost is null

select * from poland_data

delete from poland_data
where orderid in (select orderid
                  from orders
				  where freight <= 10)

select * from poland_data

drop table poland_data




select * from [Order Details]
alter table [order details]
drop column [total sales] , total_sales
alter table [order details]
drop column orders , total_sales1 , orders1

select orderid , quantity ,

case  --if
     when quantity > 30 then 'high'
	 when quantity = 30 then 'equal'
     else 'other'

end as quantitytext
-- into backup2 --- saving data
from [Order Details]--main file data

select * from backup2


select * from [Order Details]

select [total sales], unitprice,
case 
    when unitprice > 30 then 'high'
	when unitprice = 30 then 'equal'
	else 'other'
end as unitpricetext
from [Order Details]
