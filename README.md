# Pizza Sales Dashboard

## Problem Statement

This dashboard assists in understanding pizza sales performance, identifying trends, and generating actionable insights. It provides a comprehensive view of sales data, allowing for better decision-making regarding product offerings and marketing strategies. By analyzing key metrics, the dashboard helps to pinpoint areas of strength and opportunities for improvement.

## Steps Followed

1. **Load Data**: Loaded data into Power BI Desktop from the dataset (CSV file).
2. **Data Profiling**: Opened Power Query Editor and checked "column distribution," "column quality," and "column profile" options in the view tab.
3. **Column Profiling**: Selected "column profiling based on the entire dataset" for complete data analysis.
4. **Data Cleaning**: Identified columns with errors and empty values; addressed these issues for accurate analysis.
5. **Null Value Handling**: Excluded null values in the "Arrival Delay" column for average delay time calculation.
6. **Theme Selection**: Selected a theme in the report view for a consistent visual presentation.
7. **Visual Representation**: Added a new visual to represent ratings using the visualizations pane.
8. **Filters and Slicers**: Implemented visual filters (Slicers) for "Category," "Size," "Day," and "Month" fields.
9. **Card Visuals**: Added card visuals to display average departure delay and average arrival delay in minutes.
10. **Bar Chart**: Created a bar chart to represent the number of orders per day and month, including a segmentation by pizza category and size.
11. **Rating Visuals**: Used visual filters to represent ratings for various aspects like Baggage Handling, Check-in Services, Cleanliness, etc.
12. **Text Boxes**: Inserted text boxes in the report view for the name and tagline of the pizza brand.
13. **Branding Elements**: Added a rectangle shape and the company's logo to the report design area for branding.
14. **Calculated Columns**: Created a calculated column to group pizzas into various categories based on sales and size.
15. **Total Count Measure**: Developed a new measure to find the total count of pizzas sold.
16. **Percentage Measure**: Created a measure to find the percentage of sales for different pizza categories.
17. **Revenue Calculation**: Calculated the total revenue generated from pizza sales.

## Insights

A single-page report was created on Power BI Desktop and published to Power BI Service.

### [1] Sales Performance

- **Total Revenue**: $817.86K
- **Total Pizzas Sold**: 49,574
- **Total Orders**: 21,350
- **Average Order Value**: $38.31
- **Average Pizzas Per Order**: 2.32

### [2] Sales Trends

- **Daily Orders**: Highest on Tuesday (3.5K), with significant peaks on Friday and Thursday.
- **Monthly Orders**: Peaks in July and January, with a notable dip in September.

### [3] Category and Size Performance

- **Top Pizza Category**: Classic (14,888 units sold)
- **Top Pizza Size**: Large (45.88% of sales)

### [4] Top and Bottom Sellers

- **Top-Selling Pizza by Revenue**: The Thai Chicken ($43K)
- **Top-Selling Pizza by Quantity**: The Classic Deluxe (2.5K units)
- **Bottom-Selling Pizza by Revenue**: The Brie Carre ($12K)
- **Bottom-Selling Pizza by Quantity**: The Brie Carre (490 units)

## Snapshots

### Power BI Desktop 1
![pizza sales dashboard 1](https://github.com/mrhamxo/Pizza-Sales/assets/58738020/e742357f-7325-4ae5-bf16-11ccd26d7327)


### Power BI Desktop 2
![pizza sales dashboard](https://github.com/mrhamxo/Pizza-Sales/assets/58738020/e1afc4c2-f221-42da-95b4-f30e933e505a)


---

## Conclusion
The Pizza Sales Dashboard provides valuable insights into the sales performance of different pizza categories and sizes, as well as customer ordering patterns. By leveraging this dashboard, business stakeholders can make informed decisions to optimize product offerings, enhance customer satisfaction, and boost overall sales. The ability to drill down into specific metrics and apply various filters ensures a tailored analysis that aligns with business goals. Continuous monitoring and updating of this dashboard will help maintain a competitive edge in the fast-paced food industry.
