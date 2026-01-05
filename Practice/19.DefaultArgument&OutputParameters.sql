-- Create a stored procedure named ProductPriceWithBonus
CREATE PROCEDURE ProductPriceWithBonus
    @ProductID INT,                        -- Input parameter: Product ID
    @Bonus DECIMAL(10,2) = 10,             -- Default argument: bonus amount (default = 10)
    @FinalPrice DECIMAL(10,2) OUTPUT       -- Output parameter: returns final price
AS
BEGIN
    -- Calculate final price by adding bonus to product price
    SELECT @FinalPrice = Price + @Bonus
    FROM Products
    WHERE ProductID = @ProductID;          -- Filter by given ProductID
END
GO

-- Declare a variable to receive the OUTPUT parameter value
DECLARE @PriceResult DECIMAL(10,2);

-- Execute the stored procedure
-- ProductID is passed
-- Bonus is skipped, so default value (10) is used
-- Final price is stored in @PriceResult
EXEC ProductPriceWithBonus 
     @ProductID = 1,
     @FinalPrice = @PriceResult OUTPUT;

-- Display the output value returned from the procedure
SELECT @PriceResult AS FinalPrice;
