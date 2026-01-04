-- 1. Total sales
SELECT SUM(Sales) AS total_sales
FROM superstore;

-- 2. Orders count
SELECT COUNT(DISTINCT [Order_ID]) AS orders_count
FROM superstore;

-- 3. Average order 
SELECT SUM(SALES) / COUNT(DISTINCT[Order_ID]) AS avg_order_value
FROM superstore;

-- 4. Month sales
SELECT
	YEAR([Order_Date]) AS year,
	MONTH([Order_Date]) AS month,
	SUM(Sales) AS sales
FROM superstore
GROUP BY YEAR([Order_Date]), MONTH([Order_Date])
ORDER BY year, month;

-- 5. Top 5 product`s
SELECT TOP 5 
	[Product_Name],
	SUM(Sales) AS sales
FROM superstore
GROUP BY [Product_Name]
ORDER BY sales DESC;

-- 6. Category sales
SELECT
	Category,
	SUM(Sales) as sales
FROM superstore
GROUP BY Category
ORDER BY sales DESC;

-- 7. Sub-category sales(for details)
SELECT 
	Category,
	[Sub_Category],
	SUM(Sales) as sales
FROM superstore
GROUP BY Category, [Sub_Category]
ORDER BY Category, sales DESC;

-- 8. Top 10 cities
SELECT TOP 10
	City,
	SUM(Sales) AS sales
FROM superstore
GROUP BY City
ORDER BY sales DESC;
