USE retail;

select * from sale;

Select COUNT(*) AS TOTAL_SALES
FROM sale;

SELECT ROUND(Sum(sales),2) AS TOTAL_SALES
FROM sale;

SELECT ROUND(AVG(sales),2) AS AVERAGE_SALES 
FROM sale;

SELECT MAX(SALES) AS HIGHEST_SALES 
FROM sale;

SELECT MIN(SALES) AS LOWEST_SALES
FROM sale;

SELECT COUNT(DISTINCT`ORDER ID`) AS TOTAL_ORDER 
FROM sale;

SELECT COUNT(DISTINCT`CUSTOMER ID`) AS TOTAL_CUSTOMER 
FROM sale;

SELECT 
`Category`,
ROUND(SUM(Sales),2) AS TOTAL_SALES,
RANK() OVER (ORDER BY SUM(`sales`) DESC) AS Rank_No
FROM SALE
GROUP BY `Category`
ORDER BY TOTAL_SALES DESC;

SELECT
`Sub-Category`,
ROUND(SUM(Sales),2) AS Total_Sales
FROM sale
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC;

SELECT 
`Region`,
ROUND(SUM(SALES),2) AS Total_sales
From sale
Group by `region`
order by total_sales DESC;

SELECT 
`STATE`,
ROUND(SUM(sales),2) AS Total_sales
From sale
Group by `state`
order by total_sales DESC
LIMIT 5;

SELECT 
`CITY`,
Round (sum(sales),2) as total_sales
From sale
Group by `CITY`
order by total_sales DESC
limit 10;

SELECT 
`SEGMENT`,
ROUND(SUM(SALES),2) AS TOTAL_SALES
FROM SALE
GROUP BY `SEGMENT`;

SELECT 
`SHIP MODE`,
 ROUND(SUM(SALES),2) AS TOTAL_SALES
 FROM SALE
 GROUP BY `SHIP MODE`;
 
 SELECT 
`PRODUCT NAME`,
 ROUND(SUM(SALES),2) AS TOTAL_SALES
 FROM SALE
 GROUP BY `PRODUCT NAME`
 ORDER BY TOTAL_SALES DESC
LIMIT 10;

Select 
`State`,
 ROUND(SUM(SALES),2) AS TOTAL_SALES,
 RANK() OVER (ORDER BY SUM(`sales`) DESC) AS Rank_No
 from Sale
 GROUP BY `State`;
 
 select 
 `Order ID`,
 `Order Date`,
 `Sales`,
 Round(sum(sales)over(Order by`Order ID`,`Order Date`ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),2) as Running_Total_sale
 from sale
 order by `Order ID`,`Order Date`;
 
WITH MonthlySales AS (
    SELECT
        DATE_FORMAT(`Order Date`, '%Y-%m') AS Order_Month,
        ROUND(SUM(Sales), 2) AS Monthly_Sale
    FROM Sale
    GROUP BY DATE_FORMAT(`Order Date`, '%Y-%m')
)
SELECT
    Order_Month,
    Monthly_Sale,
    ROUND(Monthly_Sale -
        LAG(Monthly_Sale) OVER (ORDER BY Order_Month),2) AS Change_VS_Previous_Month
FROM MonthlySales
ORDER BY Order_Month;
 
 







