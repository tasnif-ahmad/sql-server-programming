USE Northwind;
GO

DECLARE @EmpID INT;
SET @EmpID = 1;

IF EXISTS (SELECT 1 FROM Employees WHERE EmployeeID = @EmpID)
BEGIN
    PRINT 'Employee exists!';
END
ELSE
BEGIN
    PRINT 'Employee does not exist!';
END
 