namespace FullCartAPI.Models
{
    public class CustomerOrder
    {
        public int CustomerOrder_Id { get; set; }

        public int Customer_Id { get; set; }

        public int Product_id { get; set; }

        public int Quantity { get; set; }

        public decimal Subtotal { get; set; }

        public decimal? DiscountApplied { get; set; }

        public decimal TotalPrice { get; set; }

        public string ShippingAddress { get; set; }

        public DateTime OrderDate { get; set; }

        public string Status { get; set; }

        public DateTime ShippedDate { get; set; }

        public DateTime DeliveryDate { get; set; }

        public string PaymentMethod { get; set; }
    }

}
