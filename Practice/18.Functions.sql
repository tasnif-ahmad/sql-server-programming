ALTER FUNCTION fn_ProductPriceWithGST
(
    @ProductID INT
)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @FinalPrice DECIMAL(10,2);

    SELECT @FinalPrice = Price + (Price * 0.18)
    FROM Products
    WHERE ProductID = @ProductID;

    RETURN @FinalPrice;
END
GO
