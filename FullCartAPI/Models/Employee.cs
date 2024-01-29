namespace FullCartAPI.Models
{
    public class Employee
    {
        public int EmployeeId { get; set; }

        public string Employee_UserName { get; set; }

        public string Employee_Password { get; set; }

        public string FullName { get; set; }

        public string Email { get; set; }

        public string Address { get; set; }

        public string Contact_Number { get; set; }

        public DateTime Registration_Date { get; set; }

        public DateTime Last_Login_Date { get; set; }

        public string Role { get; set; }
    }

}
