-- Detail rows with category average (PARTITION BY)
SELECT 
    ProductID,
    CategoryID,
    Price,
    AVG(Price) OVER (PARTITION BY CategoryID) AS AvgCategoryPrice
FROM Products;

-- Summary rows per category (GROUP BY)
SELECT 
    CategoryID,
    AVG(Price) AS AvgCategoryPrice
FROM Products
GROUP BY CategoryID;
 