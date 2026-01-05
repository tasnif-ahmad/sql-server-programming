--DDL Commands: CREATE,ALTER,DROP,TRUNCATE,RENAME
 
-- Create New Table

IF NOT EXISTS (
    SELECT * 
    FROM sys.tables 
    WHERE name = 'CategoryBackup'
)
BEGIN
    CREATE TABLE [Northwind].[dbo].[CategoryBackup] (
        CategoryID INT PRIMARY KEY,
        CategoryName VARCHAR(100),
        Description VARCHAR(500)
    );
END;

 
--changes in table

ALTER TABLE [Northwind].[dbo].[Categories]
ADD CreatedDate DATETIME;
ALTER TABLE [Northwind].[dbo].[Categories]
ADD ImageURL VARCHAR(255);

 
-- Modify Column  (Size/type change)

ALTER TABLE [Northwind].[dbo].[Categories]  

ALTER COLUMN Description VARCHAR(1000);
 
--Column Delete 

ALTER TABLE [Northwind].[dbo].[Categories]

DROP COLUMN ImageURL;
 
--Table permanently delete

DROP TABLE [Northwind].[dbo].[CategoryBackup];	
 
--  empty table

TRUNCATE TABLE [Northwind].[dbo].[Categories];
 
--Specific rows delete karna

DELETE FROM [Northwind].[dbo].[Categories] WHERE CategoryID = 1;  
 