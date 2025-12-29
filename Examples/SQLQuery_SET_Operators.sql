USE Northwind;

SELECT EmployeeID
FROM Employees
UNION
SELECT EmployeeID
FROM Orders;
