USE Northwind;

CREATE INDEX idx_Orders_EmployeeID
ON Orders(EmployeeID);

SELECT *
FROM Orders
WHERE EmployeeID = 5;
