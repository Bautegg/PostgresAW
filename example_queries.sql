--Explain analyze
select territoryid, customerid, extract(year from orderdate) as order_year, count(*) as orders_count
from sales.salesorderheader
where customerid=30046
group by territoryid, customerid, order_year
having count(*) > 3
order by territoryid, order_year


with cte as(
select salesorderid, unitprice,
avg(unitprice) over(partition by salesorderid) as avg_up
from sales.salesorderdetail)

select salesorderid, unitprice, avg_up, unitprice - avg_up as up_diff
from cte


select *
from sales.salesorderdetail as a
left join sales.salesorderheader as b on b.salesorderid=a.salesorderid
where salesorderdetailid > 10


with cte as(
select row_number() over(partition by salesorderid order by salesorderid) as row_num, salesorderid, carriertrackingnumber
from sales.salesorderdetail)

select salesorderid, max(row_num) as max_row
from cte
group by salesorderid
order by max_row desc
