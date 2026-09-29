Select Zone, count(QTY) from sales group by Zone;
Select Distinct Month  from sales;
------------------------------------------
SELECT COUNT(*) AS total_orders, SUM(`Total Amount`) AS total_revenue
FROM sales;
-----------------------------------------
Select Zone,Sum(`Total Amount`) as Zone_total from sales
where `Order Status` Not in('Cancelled','Returned') group by Zone;
-----------------------------------------
SELECT Category, SUM(`Total Amount`) AS net_revenue
FROM sales
WHERE `Order Status` NOT IN ('Cancelled','Returned')
GROUP BY `Category`
ORDER BY net_revenue DESC;
-----------------------------------------
Select `Order Status`,count(*) as total_orders,
Round(count(*)*100.0/(select count(*) from sales),2) as prcentage 
from sales Group by `Order Status`;  
----------------------------------------
Select `Customer ID`,Sum(`Total Amount`) as total_spend
from sales where `Order Status` Not in('Cancelled','Returned') 
	group by `Customer ID`
	order by total_spend DESC Limit 5;
----------------------------------------------
SELECT `Payment Method`, COUNT(*) AS total_orders
FROM sales WHERE `Order Status` NOT IN ('Cancelled','Returned')
GROUP BY `Payment Method`
ORDER BY total_orders DESC;
----------------------------------------------