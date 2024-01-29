CREATE TABLE [dbo].[Category]
(
	[Category_Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Category_Name] NVARCHAR(50) NOT NULL, 
    [Category_Image] NVARCHAR(255) NULL, 
    [Category_Description] NVARCHAR(MAX) NULL
)
