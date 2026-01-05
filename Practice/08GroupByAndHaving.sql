SELECT CustomerID,
       COUNT(OrderID) AS TotalOrders
FROM Orders
WHERE OrderDate >= '1997-01-01'
GROUP BY CustomerID
HAVING COUNT(OrderID) > 5
ORDER BY TotalOrders DESC;
 