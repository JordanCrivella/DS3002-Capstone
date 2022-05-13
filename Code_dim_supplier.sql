
-- Create a new table called '[dim_supplier]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[dim_supplier]', 'U') IS NOT NULL
DROP TABLE [dbo].[dim_supplier]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[dim_supplier]
(
    [SupplierID] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [SupplierName] NVARCHAR(50) NOT NULL,
    [SupplierReference] INT NOT NULL,
    [BankAccountName] NVARCHAR (50) NOT NULL, 
    [BankAccountNumber] INT NOT NULL, 
    [PaymentDays] INT NOT NULL, 
    [PhoneNumber] NVARCHAR (50) NOT NULL, 
    [WebsiteURL] NVARCHAR (50) NOT NULL,
    [DeliveryAddressLine1] NVARCHAR(50), 
    [DeliveryAddressLine2] NVARCHAR(50) NOT NULL, 
    [CityName] NVARCHAR(50) NOT NULL, 
    [SupplierCategoryName] NVARCHAR (50) NOT NULL, 
    [DeliveryMethodName] NVARCHAR(50) NOT NULL
);
GO

SELECT s.[SupplierID]
    ,s.[SupplierName]
    ,s.[DeliveryCityID]
    ,s.[SupplierReference]
    ,s.[BankAccountName]
    ,s.[BankAccountNumber]
    ,s.[PaymentDays]
    ,s.[PhoneNumber]
    ,s.[WebsiteURL]
    ,s.[DeliveryAddressLine1]
    ,s.[DeliveryAddressLine2]
    ,s.[DeliveryPostalCode]
    ,ac.[CityName]
    ,sc.[SupplierCategoryName]
    ,adm.[DeliveryMethodName]
FROM [Purchasing].[Suppliers] as s
INNER JOIN [Application].[Cities] as ac
ON ac.[CityID] = s.[DeliveryCityID]
INNER JOIN [Purchasing].[SupplierCategories] as sc
ON sc.[SupplierCategoryID] = s.[SupplierCategoryID]
INNER JOIN [Application].[DeliveryMethods] as adm
ON adm.[DeliveryMethodID] = s.[DeliveryMethodID];