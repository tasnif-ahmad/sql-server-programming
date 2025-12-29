USE Northwind;

SELECT FirstName, OrderID
FROM Employees
JOIN Orders
ON Employees.EmployeeID = Orders.EmployeeID;
