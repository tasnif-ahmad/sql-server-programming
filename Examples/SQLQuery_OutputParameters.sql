CREATE PROCEDURE sp_CustomerInfo
    @CustomerID VARCHAR(5),
    @OrderCount INT OUTPUT,
    @LastOrderDate DATE OUTPUT
AS
BEGIN
    SELECT 
        @OrderCount = COUNT(*),
        @LastOrderDate = MAX(OrderDate)
    FROM Orders
    WHERE CustomerID = @CustomerID;
END;
