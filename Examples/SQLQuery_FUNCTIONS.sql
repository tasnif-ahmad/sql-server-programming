ALTER FUNCTION fn_OrderCount
(
    @CustomerID VARCHAR(5)
)
RETURNS INT
AS
BEGIN
    DECLARE @TotalOrders INT;

    SELECT @TotalOrders = COUNT(*)
    FROM Orders
    WHERE CustomerID = @CustomerID;

    RETURN @TotalOrders;
END;

