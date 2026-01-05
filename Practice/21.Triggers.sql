CREATE TRIGGER Sunday_Block_Transaction
ON Products
FOR INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Day VARCHAR(30);

    -- Get current day name
    SET @Day = DATENAME(WEEKDAY, GETDATE());

    -- Check if today is Sunday
    IF @Day = 'Sunday'
    BEGIN
        PRINT 'Transactions are not allowed on Sunday';
        ROLLBACK TRANSACTION;
    END
END;
GO
