Create Database Pizza_Sales

select*from [Data Model - Pizza Sales]

-- 1) Total Revenue
select sum(total_price) AS Total_Revenue 
from [Data Model - Pizza Sales]

-- 2) Average Order Value
select sum(total_price) / count(distinct order_id) as Avg_Order_Value 
from [Data Model - Pizza Sales]

-- 3) Total Pizzas sold:
select sum(quantity) as Total_Pizza_Sold 
from[Data Model - Pizza Sales]

-- 4) Total number of orders place:
select count(distinct order_id) as Total_Orders 
from [Data Model - Pizza Sales]

-- 5) Average Pizzas per order 
select cast(sum(quantity) as decimal(10,2)) / cast(count(distinct order_id) as decimal(10,2)) as Avg_Pizza_order
from [Data Model - Pizza Sales]

select sum(quantity) / count (distinct order_id) as Avg_Pizza_order
from [Data Model - Pizza Sales]

-- 6) Total Pizza Sold 
Select sum(quantity) as Total_Pizza_Sold
from [Data Model - Pizza Sales]

-- 7) Daily Trend for Total Orders
SELECT datename (DW, order_date) AS order_day,COUNT(DISTINCT order_id) AS total_orders
FROM [Data Model - Pizza Sales]
GROUP BY datename (DW, order_date)

-- 8) Monthly Trend for Orders
Select datename (MONTH, order_date) AS [Month Name], COUNT(DISTINCT order_id) AS [Total Orders]
FROM [Data Model - Pizza Sales]
GROUP BY datename (MONTH, order_date)

-- 9) Percentage of Sales by Pizza Category
Select pizza_category, SUM(total_Price) * 100 / (Select SUM(total_Price)
From [Data Model - Pizza Sales]) AS Percentage
From [Data Model - Pizza Sales]
Group by pizza_category 

-- 10) Percentage of Sales by Pizza Size
Select Pizza_Size, CAST(sum(total_price) AS DECIMAL (10,2)) AS Total_Revenue, 
       SUM(total_Price) * 100 / (Select SUM(total_Price)
From [Data Model - Pizza Sales]) AS Percentage
From [Data Model - Pizza Sales]
Group by pizza_size 
order By Pizza_Size 

-- 11) Top Pizza sold by Pizza Category  
Select Pizza_category , sum(quantity) AS Total_Pizza_Sold
From [Data Model - Pizza Sales]
Group By Pizza_category
Order By sum(quantity) 

-- 12) Top 5 Pizza by Revenue
Select Top 5 Pizza_name, Sum (total_Price) as Total_Revenue
From [Data Model - Pizza Sales]
Group By Pizza_name 
Order By Total_Revenue DESC

-- 13) Bottom 5 Pizza by Revenue
Select Top 5 Pizza_name, Sum (total_Price) as Total_Revenue
From [Data Model - Pizza Sales]
Group By Pizza_name
Order By Total_Revenue 

-- 14) Top 5 pizza by Total Order 
Select Top 5 Pizza_name, count (DISTINCT order_id) as Total_Orders
From [Data Model - Pizza Sales]
Group By Pizza_name 
Order By Total_Orders DESC

--15) Bottom 5 pizza by Total Order 
Select Top 5 Pizza_name, count (DISTINCT order_id) as Total_Orders
From [Data Model - Pizza Sales]
Group By Pizza_name 
Order By Total_Orders 

-- 16) Top 5 Pizza by Quantity
Select Top 5 Pizza_name, SUM (quantity) as Total_Pizza_Sold 
From [Data Model - Pizza Sales]
Group By Pizza_name 
Order By Total_Pizza_Sold DESC

--17) bottom 5 Pizza by Quantity
Select Top 5 Pizza_name, SUM (quantity) as Total_Pizza_Sold 
From [Data Model - Pizza Sales]
Group By Pizza_name 
Order By Total_Pizza_Sold










