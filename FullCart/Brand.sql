CREATE TABLE [dbo].[Brand]
(
	[Brand_Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Brand_Name] NVARCHAR(50) NOT NULL, 
    [Brand_Headquarters] NVARCHAR(255) NULL, 
    [Brand_Email] NVARCHAR(50) NULL, 
    [Contact_Number] NVARCHAR(20) NULL, 
    [Image_Url] NVARCHAR(255) NULL, 
    [Contact_RepName] NVARCHAR(50) NULL
)
