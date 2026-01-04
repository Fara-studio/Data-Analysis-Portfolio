-- Date conversion
UPDATE superstore
SET Order_Date = CONVERT(date, Order_Date, 101);

UPDATE superstore
SET Ship_Date = CONVERT(date, Ship_Date, 101);

-- Data types
ALTER TABLE superstore ALTER COLUMN Order_Date Date;
ALTER TABLE superstore ALTER COLUMN Ship_Date Date;
ALTER TABLE superstore ALTER COLUMN Row_ID INT;
ALTER TABLE superstore ALTER COLUMN Order_ID nvarchar(50);
ALTER TABLE superstore ALTER COLUMN Ship_Mode nvarchar(50);
ALTER TABLE superstore ALTER COLUMN Customer_ID nvarchar(50);
ALTER TABLE superstore ALTER COLUMN Customer_Name nvarchar(100);
ALTER TABLE superstore ALTER COLUMN Segment nvarchar(50);
ALTER TABLE superstore ALTER COLUMN Country nvarchar(50);
ALTER TABLE superstore ALTER COLUMN City nvarchar(100);
ALTER TABLE superstore ALTER COLUMN State nvarchar(100);
ALTER TABLE superstore ALTER COLUMN Postal_Code nvarchar(20);
ALTER TABLE superstore ALTER COLUMN Region nvarchar(50);
ALTER TABLE superstore ALTER COLUMN Product_ID nvarchar(50);
ALTER TABLE superstore ALTER COLUMN Category nvarchar(50);
ALTER TABLE superstore ALTER COLUMN Sub_Category nvarchar(50);
ALTER TABLE superstore ALTER COLUMN Product_Name nvarchar(255);
ALTER TABLE superstore ALTER COLUMN Sales decimal(12,2);
ALTER TABLE superstore ALTER COLUMN Quantity int;
ALTER TABLE superstore ALTER COLUMN Discount decimal(5,2);
ALTER TABLE superstore ALTER COLUMN Profit decimal(12,2);

-- Primary Key
ALTER TABLE superstore
ADD id INT IDENTITY(1,1) PRIMARY KEY;
