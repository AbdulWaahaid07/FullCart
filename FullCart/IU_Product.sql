CREATE PROCEDURE [dbo].[IU_Product]
	@ID INT,
    @Description NVARCHAR(MAX),
    @Price DECIMAL(10, 2),
    @Brand VARCHAR(255),
    @Category varchar(255),
    @Quantity INT,
    @Image NVARCHAR(255),
    @ManufacturingDate DATETIME,
    @ExpiryDate DATETIME,
    @Weight DECIMAL(5, 2),
    @Ratings INT
AS

BEGIN
  BEGIN TRANSACTION;

     DECLARE @BrandIdTemp INT;
    SET @BrandIdTemp = (SELECT Brand_Id FROM dbo.Brand WHERE Brand_Name = @Brand);

    --IF @BrandIdTemp IS NULL
    --BEGIN
    --    INSERT INTO dbo.Brand (Brand_Name) VALUES (@Brand);
    --    SET @BrandIdTemp = SCOPE_IDENTITY();
    --END

    DECLARE @CategoryIdTemp INT;
    SET @CategoryIdTemp = (SELECT Category_Id FROM dbo.Category WHERE Category_Id = @Category);

    --IF @CategoryIdTemp IS NULL
    --BEGIN
    --    INSERT INTO dbo.Category (Category_Name) VALUES (@Category);
    --    SET @CategoryIdTemp = SCOPE_IDENTITY();
    --END


    IF(@ID = 0)  

    INSERT INTO dbo.Product 
    (Product_Description, Product_Price, Product_Brand_Id,
    Product_Category_Id, Products_In_Inventory, Product_Image, 
    Manufacturing_Date, Expiry_Date, Weight, Ratings)    
    
    VALUES 
    (@Description, @Price, @BrandIdTemp, @CategoryIdTemp, 
    @Quantity, @Image, @ManufacturingDate, @ExpiryDate, 
    @Weight, @Ratings);

   
   
   ELSE

    UPDATE dbo.Product
    SET
        Product_Description = @Description,
        Product_Price = @Price,
        Product_Brand_Id = @BrandIdTemp,
        Product_Category_Id = @CategoryIdTemp,
        Products_In_Inventory = @Quantity,
        Product_Image = @Image,
        Manufacturing_Date = @ManufacturingDate,
        Expiry_Date = @ExpiryDate,
        Weight = @Weight,
        Ratings = @Ratings
    
    WHERE ProductId = @ID;

  COMMIT;
END
