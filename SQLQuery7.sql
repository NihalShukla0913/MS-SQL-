---## union and union all operator (column name should be same) and it works on row wise

---## union all
use Northwind
select * from df1
union all-- add data row wise and keep duplicate
select * from df2

--union
select * from df1
union--- add data row wise and remove duplicate row
select * from df2

--- single column union
select distinct city from customers ---69 rows
union all                                        ------- keep duplicates.
select  distinct city from suppliers ---29 rows
order by city --------- Total 98

select city,country from customers---91 rows
union                                            ------- remove duplicates.
select city,country from suppliers ---29 rows
order by city desc,country -------- Total 94 

---union all
---use union all to also select duplicate values
---union all with where

select city, country from customers
where country = 'germany'---11 rows
union all -- add row wise and keep duplicate ---- 15 rows.
select city, country from suppliers
where country = 'usa'---4 rows
order by city

select city,country from customers
where country = 'germany'--- 11 rows
union-- add row wise and remove duplicate-------- 15 rows.
select city, country from suppliers
where country = 'usa'--- 4 rows
order by city

--- advanced union

select * into abcd 
from (
 select city,country from customers
 where country = 'germany'--- 11 rows
 union all
 select city, country from suppliers---3 rows 
 where country = 'germany' ) as tmp--- for giving table name

select * from abcd
drop table abcd