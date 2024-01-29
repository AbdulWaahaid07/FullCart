CREATE PROCEDURE [dbo].[D_Product]
    @ProductId INT
AS
BEGIN
    DELETE FROM dbo.Product WHERE ProductId = @ProductId;
END