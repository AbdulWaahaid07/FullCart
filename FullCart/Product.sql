CREATE TABLE [dbo].[Product]
(
	[ProductId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Product_Description] NVARCHAR(MAX) NULL, 
    [Product_Price] DECIMAL(10, 2) NOT NULL, 
    [Product_Brand_Id] INT NOT NULL, 
    [Product_Category_Id] INT NOT NULL, 
    [Products_In_Inventory] INT NOT NULL, 
    [Product_Image] NVARCHAR(255) NULL, 
    [Manufacturing_Date] DATETIME NOT NULL, 
    [Expiry_Date] DATETIME NOT NULL,    
    [Weight] DECIMAL(5, 2) NULL, 
    [Ratings] INT NULL, 
    CONSTRAINT [FK_Product_Brand] FOREIGN KEY ([Product_Brand_Id]) REFERENCES [dbo].[Brand]([Brand_Id]),
    CONSTRAINT [FK_Product_Category] FOREIGN KEY ([Product_Category_Id]) REFERENCES [dbo].[Category]([Category_Id])      

)