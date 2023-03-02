
select * from product_demo
select * from locality

-- in joins row wise data get joined as we required ----

---method 1
select product from product_demo

---method 2
select product_demo.product from product_demo

---inner join-- only same column data we get in this join

select product_demo.*,locality.city,locality.state
from product_demo inner join locality
on product_demo.customer_id = locality.customer_id

---outer join--- all the data we get in this join
select product_demo.*,locality.city,locality.state
from product_demo full outer join locality
on product_demo.customer_id = locality.customer_id

--- left join-- left table is fixed right table maped on left table
select product_demo.*, locality.city,locality.state
from product_demo left join locality
on product_demo.customer_id = locality.customer_id

---right join--- right table is fixed left table is maped on right table
select product_demo.*, locality.city,locality.state
from product_demo right join locality
on product_demo.customer_id = locality.customer_id

----Practise in class---


select * from sales_data
select * from returned_data

select sales_data.*, returned_data.returned
from sales_data inner join returned_data
on sales_data.customerid = returned_data.customerid

select sales_data.*, returned_data.returned
into abc1 
from sales_data inner join returned_data
on sales_data.customerid = returned_data.customerid

select sales_data.*, returned_data.returned
from sales_data full outer join Returned_data
on sales_data.CustomerID = Returned_data.CustomerID

select Sales_data.*,Returned_data.Returned
into AKASH from Sales_data left join Returned_data
on Sales_data.CustomerID = Returned_data.Returned

select * from AKASH

select* from abc1

update abc1
set returned = 'No'
where returned is null

select * from abc1
