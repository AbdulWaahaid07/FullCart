CREATE PROCEDURE [dbo].[R_Product]
	@Id int
AS
	SELECT * from Product where ProductId = @Id
RETURN 0
