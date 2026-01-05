CREATE PROCEDURE InsertProduct
    @ProductName NVARCHAR(40),
    @SupplierID INT,
    @CategoryID INT,
    @UnitPrice DECIMAL(10,2)
AS
BEGIN
    INSERT INTO Products (ProductName, SupplierID, CategoryID, Price)
    VALUES (@ProductName, @SupplierID, @CategoryID, @UnitPrice);
END
GO

CREATE PROCEDURE UpdateProduct
    @ProductID INT,
    @ProductName NVARCHAR(40),
    @UnitPrice DECIMAL(10,2)
AS
BEGIN
    UPDATE Products
    SET ProductName = @ProductName,
        Price = @UnitPrice
    WHERE ProductID = @ProductID;
END
GO

CREATE PROCEDURE DeleteProduct
    @ProductID INT
AS
BEGIN
    DELETE FROM Products
    WHERE ProductID = @ProductID;
END
GO

DROP PROCEDURE InsertProduct;
DROP PROCEDURE UpdateProduct;
DROP PROCEDURE DeleteProduct;




