CREATE TABLE [dbo].[CustomerOrder]
(
	[CustomerOrder_Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Customer_Id] INT NOT NULL, 
    [Product_Id] INT NOT NULL, 
    [Quantity] INT NOT NULL, 
    [Subtotal] DECIMAL(10, 2) NOT NULL, 
    [DiscountApplied] DECIMAL(7, 2) NULL, 
    [TotalPrice] DECIMAL(10, 2) NOT NULL, 
    [ShippingAddress] NVARCHAR(255) NOT NULL, 
    [OrderDate] DATETIME NOT NULL, 
    [Status] NVARCHAR(50) NOT NULL, 
    [ShippedDate] DATETIME NOT NULL, 
    [DeliveryDate] DATETIME NOT NULL, 
    [PaymentMethod] NVARCHAR(50) NULL, 
    CONSTRAINT [FK_CustomerOrder_Customer] FOREIGN KEY ([Customer_Id]) REFERENCES [dbo].[Customer]([Customer_Id]), 
    CONSTRAINT [FK_CustomerOrder_Product] FOREIGN KEY ([Product_Id]) REFERENCES dbo.Product(Product_Id)



)
