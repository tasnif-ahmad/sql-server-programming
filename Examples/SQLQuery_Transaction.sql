USE Northwind;
GO

-- Start transaction
BEGIN TRANSACTION;

-- Insert example (only numeric columns to avoid type errors)
INSERT INTO Orders (EmployeeID, OrderDate)
VALUES (1, GETDATE());

-- Check inserted row
SELECT TOP 5 OrderID, EmployeeID, OrderDate
FROM Orders
ORDER BY OrderID DESC;

-- Undo changes
ROLLBACK;
GO

-- Verify rollback worked (new row should NOT appear)
SELECT TOP 5 OrderID, EmployeeID, OrderDate
FROM Orders
ORDER BY OrderID DESC;
