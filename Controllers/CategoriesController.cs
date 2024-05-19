using Microsoft.AspNetCore.Mvc;
using System.Linq;
using ECommerceApp.Data; // ApplicationDbContext'a erişim sağlamak için gerekli using direktifi
using ECommerceApp.Models; // Category modeline erişim sağlamak için gerekli using direktifi

namespace ECommerceApp.Controllers
{
    public class CategoriesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public CategoriesController(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            var categories = _context.Categories.ToList(); // Tüm kategorileri veritabanından al
            return View(categories); // Kategorileri listeleme view'ına verileri geçir
        }

    }
}
 