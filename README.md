# Sales-Inventory-SQL-Analysis
An in-depth SQL analysis of sales data and inventory trends, exploring geographical patterns, payment trends, and providing insights for inventory management.

This repository contains SQL queries and analysis for exploring sales data and inventory trends. The project involves utilizing SQL to extract and analyze data from the database, providing insights into payment trends over time, geographical patterns, and factors influencing inventory reorganization/reduction.

## Project Highlights

- **SQL Queries:** Utilizes SQL queries to extract and process data.
- **Geographical Analysis:** Investigates payment trends in different regions, cities, and countries.
- **Sales Trends:** Explores product popularity and payment trends over time.
- **Inventory Management:** Provides data-driven recommendations for inventory reorganization/reduction.

## Folder Structure

- **SQL-Queries:** Contains SQL scripts for extracting and processing data.
- **Results:** Output files and data visualizations.
- **Data:** Raw data used for the analysis.


##ANALYSIS

*For output of the total payment amounts for each year and month, showing payment trends over time:*

-There is a noticeable increase in total payments from 2003 to 2004, with peaks in November and December of both years.
-In 2003, the total payments steadily increase throughout the year, reaching the highest point in December.
-In 2004, there's a spike in total payments in October, followed by relatively high amounts in November and December.
-The data for 2005 includes payments up to June, and it shows a decrease in total payments compared to the previous years.



*For the average payment interval (in days) for each customer.* 

-Customers like 141, 144, and 321 have relatively short average payment intervals, indicating that they tend to make frequent payments.
-Customers like 114, 119, and 146 have shorter average payment intervals, suggesting more regular payment patterns.
-Some customers, like 211, 239, and 415, have missing values for the average payment interval. This means that they have only one payment record.
 Customers with shorter intervals may be more consistent or prompt in their payment behavior, while those with longer intervals might have a more sporadic payment pattern.

 Frequent Payers:

Customers with a higher payment count may be considered as frequent payers. For example, customers like '141' with 13 payments or '124' with 9 payments appear to be frequent payers.
