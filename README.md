# Pizza-Sales-Analysis 
This project involves a comprehensive analysis of pizza sales data using MicrosoftSQL for data manipulation and Tableau for data visualization.

The dataset, "Pizza_Sales.csv," contains information about pizzas, orders, and sales.

The analysis covers various aspects, including identifying the best and worst selling pizzas, determining total revenue generated, calculating average revenue, and examining Revenue trends over time scales.

# The dataset includes the following columns:

The dataset includes the following columns:

- `order_id: Unique identifier for each order placed by a table
- order_details_id: Unique identifier for each pizza placed within each order (pizzas of the
   same type and size are kept in the same row, and the quantity increases)
- pizza_id: Unique key identifier that ties the pizza ordered to its details, like size and price
- quantity: Quantity ordered for each pizza of the same type and size
- order_date: Date the order was placed (entered into the system prior to cooking & serving)
- order_time: Time the order was placed (entered into the system prior to cooking & serving)
- unit_price: Price of the pizza in USD
- total_price: unit_price * quantity
-  pizza_size: Size of the pizza (Small, Medium, Large, X Large, or XX Large)
- pizza_type: Unique key identifier that ties the pizza ordered to its details, like size and price
- pizza_ingredients: ingredients used in the pizza as shown in the menu (they all include
   Mozzarella Cheese, even if not specified; and they all include Tomato Sauce, unless another sauce
   is specified)
- pizza_name: Name of the pizza as shown in the menu

## SQL Queries Used

The following SQL queries were used to obtain insights from the dataset:

1.  **Total Revenue:** sum of total_price.
2.  **Average Order Value:** sum of total_price / count of distinct order_id
3.  **Total Pizzas sold:** sum of quantity
4.  **Total number of orders place:** Count of distinct order_id
5.  **Average Pizzas per order:** sum of quantity / count of distinct order_id
6.  **Total Pizza Sold:** Sum of quantity
7.  **Daily Trend for Total Orders**
8.  **Monthly Trend for Orders**
9.  **Percentage of Sales by Pizza Category** SUM of total_Price * 100 / SUM of total_Price
10. **Percentage of Sales by Pizza Size:** Sum of total_price, SUM of total_Price * 100 / Select SUM of total_Price
11. **Top Pizza sold by Pizza Category:** SUM of quantity, Group By Pizza_category.
12. **Top 5 Pizza by Revenue:** top 5 pizza, Sum of total_Price, Group By Pizza_name.
13. **Bottom 5 Pizza by Revenue:** Select Top 5 Pizza_name DESC, Sum of total_Price
14. **Top 5 pizza by Total Order:** Select Top 5 Pizza_name, count of DISTINCT order_id
15. **Bottom 5 pizza by Total Order** Select Top 5 Pizza_name DESC, count of DISTINCT order_id
16. **Top 5 Pizza by Quantity** Select Top 5 Pizza_name, SUM of quantity
17. **Bottom 5 Pizza by Quantity:** Select Top 5 Pizza_name DESC, SUM of quantity.

## Tableau Visualization

Tableau was used to create various visualizations to explore and validate the analysis results:

- **Total Revenue Over Time (Line Chart):** Shows the total revenue over time.

- **Revenue by Item (Bar Chart):** Provides a Revenue by time of different pizza items.

- **Weekly Sales Overview (Area Chart):** Displays weekly sales fluctuations within a month.

- **Pizza Performance Dashboard (Interactive Doughnut Chart):** Presents the percentage breakdown of pizza sales and individual pizza performance.

- **All-Time High and Low Sales (Gantt Chart):** Identifies historical sales peaks and lows.


