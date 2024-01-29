using Microsoft.AspNetCore.Mvc;

namespace FullCartAPI.Controllers
{
    public class ProductController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
