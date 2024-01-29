CREATE TABLE [dbo].[Employee]
(
    [EmployeeId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Employee_UserName] NVARCHAR(50) NOT NULL UNIQUE,
    [Employee_Password] NVARCHAR(50) NOT NULL,
    [Full_Name] NCHAR(50) NOT NULL, 
    [Email] NVARCHAR(100) NULL, 
    [Address] NVARCHAR(255) NULL, 
    [Contact_Number] NVARCHAR(20) NOT NULL, 
    [Registration_Date] DATETIME NOT NULL, 
    [Last_Login_Date] DATETIME NOT NULL, 
    [Role] NVARCHAR(20) NOT NULL, 
   
)
