DECLARE @CustomerID VARCHAR(5);
DECLARE @OrderCount INT;

DECLARE customer_cursor CURSOR FOR
SELECT CustomerID
FROM Customers;

OPEN customer_cursor;

FETCH NEXT FROM customer_cursor INTO @CustomerID;
        
WHILE @@FETCH_STATUS = 0
BEGIN
    SELECT @OrderCount = COUNT(*)
    FROM Orders
    WHERE CustomerID = @CustomerID;

    PRINT 'Customer: ' + @CustomerID + 
          ' | Total Orders: ' + CAST(@OrderCount AS VARCHAR);

    FETCH NEXT FROM customer_cursor INTO @CustomerID;
END;

-- 5. Close and deallocate
CLOSE customer_cursor;
DEALLOCATE customer_cursor;
