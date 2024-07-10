select * from pizza_sales

select sum(total_price) as Total_revenue from pizza_sales

select sum(total_price) / count(distinct order_id) as Avg_Order_Value from pizza_sales

select sum(quantity) as Total_Pizza_Sold from pizza_sales  

select count(distinct order_id) as Total_Orders from pizza_sales

select cast(cast(sum(quantity) as decimal(10,2)) /
cast(count(distinct order_id) as decimal(10,2)) as decimal (10,2)) as Avg_Pizza_Per_Orders from pizza_sales

select DATENAME(DW, order_date) as order_day, COUNT(DISTINCT order_id) as Total_Daily_orders 
from pizza_sales
group by DATENAME(DW, order_date)
order by Total_Daily_orders DESC

select DATENAME(MONTH, order_date) as Month_Name, COUNT(DISTINCT order_id) as Total_Monthly_orders 
from pizza_sales
group by DATENAME(MONTH, order_date)
order by Total_Monthly_orders DESC

SELECT pizza_category, SUM(total_price) AS Total_Sales,
SUM(total_price) * 100.0 / (select SUM(total_price) from pizza_sales) AS Percentage_Sales
FROM pizza_sales
GROUP BY pizza_category;

/* filtering data for any month */
SELECT pizza_category, SUM(total_price) AS Total_Sales,
round(SUM(total_price) * 100.0 / (select SUM(total_price) from pizza_sales where MONTH(order_date) = 1),2) AS Percentage_Sales
FROM pizza_sales
where MONTH(order_date) = 1
GROUP BY pizza_category;

/* filtering data for any quarter */
SELECT pizza_category, SUM(total_price) AS Total_Sales,
round(SUM(total_price) * 100.0 / (select SUM(total_price) from pizza_sales WHERE DATEPART(QUARTER, order_date) = 4),2) AS Percentage_Sales
FROM pizza_sales
WHERE DATEPART(QUARTER, order_date) = 4
/*  AND DATEPART(YEAR, order_date) = 2015 */
GROUP BY pizza_category;

/* Percentage of Total Price by Pizza Size */
SELECT pizza_size, round(SUM(total_price),2) AS Total_Sales,
round(SUM(total_price) * 100.0 / (select SUM(total_price) from pizza_sales WHERE DATEPART(QUARTER, order_date) = 4),2) AS Percentage_Pizza_size
FROM pizza_sales
WHERE DATEPART(QUARTER, order_date) = 4
GROUP BY pizza_size
order by Percentage_Pizza_size DESC

/* Top 5 pizza total price */
select top 5 pizza_name, round(sum(total_price),2) as Total_Revenue from pizza_sales 
group by pizza_name order by Total_Revenue desc

/* Bottom 5 pizza total price */
select top 5 pizza_name, round(sum(total_price),2) as Total_Revenue from pizza_sales 
group by pizza_name order by Total_Revenue asc

/* Top 5 pizza quantity */
select top 5 pizza_name, sum(quantity) as Total_Quantity from pizza_sales 
group by pizza_name order by Total_Quantity desc

/* bottom 5 pizza quantity */
select top 5 pizza_name, sum(quantity) as Total_Quantity from pizza_sales 
group by pizza_name order by Total_Quantity asc

/* top 5 pizza orders */
select top 5 pizza_name, count(distinct order_id) as Total_Orders from pizza_sales 
group by pizza_name order by Total_Orders desc

/* bottom 5 pizza quantity */
select top 5 pizza_name, count(distinct order_id) as Total_Orders from pizza_sales 
group by pizza_name order by Total_Orders asc

