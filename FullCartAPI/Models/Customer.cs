namespace FullCartAPI.Models
{
    public class Customer
    {
        public int CustomerId { get; set; }

        public string First_Name { get; set; }

        public string Last_Name { get; set; }

        public string Email { get; set; }

        public string Password { get; set; }

        public string Customer_Address { get; set; }

        public string Contact_Number { get; set; }

        public DateTime Registration_Date { get; set; }
    }

}
