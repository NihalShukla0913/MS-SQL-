select * from bank_account_details
select * from bank_account_transaction
select * from bank_customer
select * from orders
---drop table orders
select * from salesman
---drop table Salesman
select * from customer

----question 1

select * from Customer
select * from orders
select * from Salesman

select customer.cust_name as customer , customer.grade as Grade1 , orders.ord_no as order_no
from orders , salesman , customer 
where orders.customer_id = Customer.custemor_id
and orders.salesman_id = Salesman.salesman_id
and Salesman.city is not null
and customer.grade is not null


----question 2
select * from Orders
select * from Salesman 
select * from orders
where salesman_id = any (select max(commision) as max_commision from salesman)

----question 3
select * from Orders
select * from Salesman 
select ord_no , purch_amt , ord_date , salesman_id
from orders
where salesman_id = any (select salesman_id  from salesman
where city = 'nagpur')

----question 4
select * from Orders
select * from Salesman
alter table orders
alter column purch_amt float

select ord_date , sum(purch_amt) , sum(purch_amt) * 0.15
from orders
group by ord_date
order by ord_date;

---- question 5
select * from Orders
select ord_no , purch_amt , ord_date , salesman_id , avg(purch_amt) 
from orders
where purch_amt > avg(purch_amt)
group by ord_no , purch_amt , ord_date , salesman_id

---- question 6
select * from orders

select top 5 max(purch_amt) from orders

select top 1 purch_amt from orders
order by purch_amt desc

select top 1 * 
from (select top 5 purch_amt 
from orders
order by purch_amt desc) as tmp
order by purch_amt asc


---- question 7
entities are objects that are contained in master data service model. each entity contains members which are the rows of master data that you manage.

entity-relationship model or er model is used to create a relationship between different attributes or entities.

---- question 8
select * from bank_account_details
select * from bank_account_transaction
select customer_id , account_number , balance_amount
case when balance_amount = 0
from Bank_Account_Details

---- question 9
select * from bank_account_details
select * from bank_account_transaction
select bank_account_details.customer_id ,bank_account_details.account_number , bank_account_details.balance_amount , 
bank_account_transaction.account_number , bank_account_transaction.transaction_amount
from Bank_Account_Details inner join bank_account_transaction
on bank_account_details.Account_Number = bank_account_transaction.Account_Number
where transaction_date between '2020-03-01' and '2020-04-30'


---- question 10
select * from bank_customer
select * from bank_account_details
select * from bank_account_transaction
select  bank_account_details.Customer_id , bank_account_details.Account_Number , bank_account_details.Balance_amount , 
        bank_account_transaction.Account_Number , 
		bank_account_transaction .Transaction_amount,
		bank_account_transaction.transaction_date
	from bank_account_details inner join bank_account_transaction
	on bank_account_details.Account_Number = bank_account_transaction.Account_Number
	where transaction_date not between '2020-03-01' and '2020-03-31'












