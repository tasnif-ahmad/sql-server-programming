CREATE OR ALTER PROCEDURE sp_GetCustomerOrders
    @CustomerID VARCHAR(5)
AS
BEGIN
    SELECT OrderID, OrderDate
    FROM Orders
    WHERE CustomerID = @CustomerID;
END;
