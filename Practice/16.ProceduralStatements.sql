USE Northwind;
GO

-- Step 1: Declare variables
DECLARE @ProductID INT;
DECLARE @Price DECIMAL(10,2);

-- Step 2: Begin transaction
BEGIN TRANSACTION;
PRINT 'Transaction started';

-- Step 3: Create a savepoint
SAVE TRANSACTION SP1;
PRINT 'Savepoint SP1 created';

-- Step 4: Close previous cursor if exists
IF CURSOR_STATUS('global','product_cursor') >= -1
BEGIN
    CLOSE product_cursor;
    DEALLOCATE product_cursor;
END

-- Step 5: Cursor to loop over first 5 products
DECLARE product_cursor CURSOR FOR
SELECT TOP 5 ProductID
FROM Products
ORDER BY ProductID;

OPEN product_cursor;
FETCH NEXT FROM product_cursor INTO @ProductID;

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Get current price
    SELECT @Price = Price FROM Products WHERE ProductID = @ProductID;

    -- Conditional logic
    IF @Price < 50
    BEGIN
        PRINT 'Increasing price of ProductID ' + CAST(@ProductID AS VARCHAR) + ' from ' + CAST(@Price AS VARCHAR);
        UPDATE Products
        SET Price = Price + 10
        WHERE ProductID = @ProductID;
    END
    ELSE
    BEGIN
        PRINT 'No change for ProductID ' + CAST(@ProductID AS VARCHAR) + ' (Price >= 50)';
    END

    -- Move to next product
    FETCH NEXT FROM product_cursor INTO @ProductID;
END

-- Step 6: Close and deallocate cursor
CLOSE product_cursor;
DEALLOCATE product_cursor;

-- Step 7: Rollback mistake if needed
PRINT 'Rolling back changes after savepoint SP1 (if needed)';
ROLLBACK TRANSACTION SP1;

-- Step 8: Commit remaining valid changes
PRINT 'Committing transaction';
COMMIT;

-- Step 9: Check results
SELECT TOP 10 ProductID, ProductName, Price
FROM Products
ORDER BY ProductID;
