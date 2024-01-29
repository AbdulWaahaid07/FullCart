namespace FullCartAPI.Models
{
    public class Product
    {
        public int ProductId { get; set; }

        public string Product_Description { get; set; }

        public decimal Product_Price { get; set; }

        public int Product_Brand_Id { get; set; }

        public int Product_Category_Id { get; set; }

        public int Product_In_Inventory { get; set; }

        public string Product_Image { get; set; }

        public DateTime Manufacturing_Date { get; set; }

        public DateTime Expiry_Date { get; set; }

        public decimal? Weight { get; set; }

        public int? Ratings { get; set; }
    }

}
