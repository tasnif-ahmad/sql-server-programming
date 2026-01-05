
INSERT INTO [Northwind].[dbo].[Categories] 
(CategoryName, Description)
VALUES ('Snacks', 'All types of snack items');
insert into Northwind.dbo.Categories
(CategoryName,Description)
values ('food','this food for healt')   
 

SELECT * FROM [Northwind].[dbo].[Categories];
 
SELECT CategoryName, Description 
FROM [Northwind].[dbo].[Categories];
 
-- Top 5 categories
SELECT TOP 5 * FROM [Northwind].[dbo].[Categories];
 
--Changing Existing row
UPDATE [Northwind].[dbo].[Categories]
SET CategoryName = 'Updated Category Name',
    Description = 'Updated description'
WHERE CategoryID = 3;
 
--Deleting Specific row 
DELETE FROM [Northwind].[dbo].[Categories]
WHERE CategoryID = 4;  