CREATE TABLE [dbo].[Customer]
(
	[CustomerId] INT NOT NULL PRIMARY KEY IDENTITY,
	[Customer_UserName] NVARCHAR(50) NOT NULL UNIQUE,
	[First_Name] NVARCHAR(50) NOT NULL,
    [Last_Name] NVARCHAR(50) NOT NULL,
    [Email] NVARCHAR(100) NOT NULL, 
    [Password] NVARCHAR(100) NOT NULL,
    [Customer_Address] NVARCHAR(255) NULL, 
    [Contact_Number] NVARCHAR(20) NOT NULL, 
    [Registration_Date] DATETIME NOT NULL, 
)
