ALTER PROCEDURE sp_GetOrderCount
    @CustomerID VARCHAR(5),
    @TotalOrders INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT @TotalOrders = COUNT(*)
    FROM Orders
    WHERE CustomerID = @CustomerID;
END;
DECLARE @Total INT;

EXEC sp_GetOrderCount
     @CustomerID = 'ALFKI',
     @TotalOrders = @Total OUTPUT;

SELECT @Total AS TotalOrders;

