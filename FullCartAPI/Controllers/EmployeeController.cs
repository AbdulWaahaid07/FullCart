using FullCartAPI.Data;
using FullCartAPI.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace FullCartAPI.Controllers
{

    [ApiController]
    [Route("api/[controller]")]
    public class EmployeeController : Controller
    {
        private readonly FullCartDBContext _fullCartDBContext;

        public EmployeeController(FullCartDBContext fullCartDBContext)
        {
            _fullCartDBContext = fullCartDBContext;
        }


    
    }
}  
