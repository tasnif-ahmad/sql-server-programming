USE Northwind;

-- Declare variables
DECLARE @ProductID INT;
DECLARE @Price DECIMAL(10,2);

-- Declare cursor
DECLARE product_cursor CURSOR FOR
SELECT ProductID, Price
FROM Products;

-- Open cursor
OPEN product_cursor;

-- Fetch first row
FETCH NEXT FROM product_cursor INTO @ProductID, @Price;

-- Loop through rows
WHILE @@FETCH_STATUS = 0
BEGIN
    IF @Price < 30
    BEGIN
        UPDATE Products
        SET Price = Price + 5
        WHERE ProductID = @ProductID;

        PRINT 'Price increased for ProductID '
              + CAST(@ProductID AS VARCHAR(10));
    END
    ELSE
    BEGIN
        PRINT 'No change for ProductID '
              + CAST(@ProductID AS VARCHAR(10));
    END

    -- Fetch next row
    FETCH NEXT FROM product_cursor INTO @ProductID, @Price;
END

-- Close and deallocate cursor
CLOSE product_cursor;
DEALLOCATE product_cursor;

-- Verify result
SELECT ProductID, ProductName, Price
FROM Products;
