CREATE -- Create a new table called '[dim_customer]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[dim_customer]', 'U') IS NOT NULL
DROP TABLE [dbo].[dim_customer]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[dim_customer]
(
    [CustomerID] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [CustomerName] NVARCHAR(50) NOT NULL,
    [PhoneNumber] NVARCHAR(50) NOT NULL,
    [WebsiteURL] NVARCHAR(50) NOT NULL, 
    [DeliveryAddressLine1] NVARCHAR(50) NOT NULL,
    [DeliveryAddressLine2] NVARCHAR(50) NOT NULL,
    [DeliveryPostalCode] INT NOT NULL, 
    [CityName] NVARCHAR(50) NOT NULL,
    [CustomerCategoryName] NVARCHAR(50) NOT NULL
);
GO


SELECT c.[CustomerID]
    , c.[CustomerName]
    , c.[PhoneNumber]
    , c.[WebsiteURL]
    , c.[DeliveryAddressLine1]
    , c.[DeliveryAddressLine2]
    , c.[DeliveryPostalCode]
    , ac.[CityName]
    , cc.[CustomerCategoryName]
FROM [Sales].[Customers] as c
INNER JOIN [Sales].[CustomerCategories] as cc
ON cc.[CustomerCategoryID] = c.[CustomerCategoryID]
INNER JOIN [Application].[Cities] as ac
ON ac.[CityID] = c.[DeliveryCityID];