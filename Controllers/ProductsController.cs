using Microsoft.AspNetCore.Mvc;
using System.Linq;
using ECommerceApp.Data; // ApplicationDbContext'a erişim sağlamak için gerekli using direktifi
using ECommerceApp.Models; // Product ve Category modellerine erişim sağlamak için gerekli using direktifi

namespace ECommerceApp.Controllers
{
    public class ProductsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public ProductsController(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            var products = _context.Products.ToList(); // Tüm ürünleri veritabanından al
            return View(products); // Ürünleri listeleme view'ına verileri geçir
        }

    

        public IActionResult ListByCategory(int categoryId)
        {
            var products = _context.Products.Where(p => p.CategoryId == categoryId).ToList();
            return View(products);
        }

        public IActionResult Details(int id)
        {
            var product = _context.Products.FirstOrDefault(p => p.Id == id);
            return View(product);
        }

    }
}
