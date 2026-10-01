
#Query 1: View the Dataset
SELECT * FROM financial_data;

#Query 2: Total Number of Records
SELECT COUNT(*) AS Total_Records
FROM financial_data;

#Query 3: Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM financial_data;

#Query 4: Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM financial_data;

#Query 5: Total Units Sold
SELECT SUM(`Units Sold`) AS Total_Units_Sold
FROM financial_data;

#Query 6: Sales by Country
SELECT Country,
       SUM(Sales) AS Total_Sales
FROM financial_data
GROUP BY Country
ORDER BY Total_Sales DESC;

#Query 7: Profit by Product
SELECT Product,
       SUM(Profit) AS Total_Profit
FROM financial_data
GROUP BY Product
ORDER BY Total_Profit DESC;

#Query 8: Sales by Segment
SELECT Segment,
       SUM(Sales) AS Total_Sales
FROM financial_data
GROUP BY Segment
ORDER BY Total_Sales DESC;

#Query 9: Monthly Sales
SELECT `Month Name`,
       SUM(Sales) AS Total_Sales
FROM financial_data
GROUP BY `Month Name`
ORDER BY MIN(`Month Number`);

#Query 10: Top 5 Products by Profit
SELECT Product,
       SUM(Profit) AS Total_Profit
FROM financial_data
GROUP BY Product
ORDER BY Total_Profit DESC
LIMIT 5;
