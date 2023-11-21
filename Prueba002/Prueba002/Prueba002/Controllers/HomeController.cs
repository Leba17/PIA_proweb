using Microsoft.AspNetCore.Mvc;
using Prueba002.Models;
using System.Diagnostics;

namespace Prueba002.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }
        public IActionResult Procesadores()
        {
            return View();
        }

		public IActionResult TarjetasGraficas()
		{
			return View();
		}

		public IActionResult PlacaMadre()
		{
			return View();
		}

		public IActionResult MemoriasRAM()
		{
			return View();
		}

		public IActionResult FuentesDePoder()
		{
			return View();
		}

		public IActionResult Disipadores()
		{
			return View();
		}

		public IActionResult Almacenamiento()
		{
			return View();
		}

		public IActionResult Index()
        {
            return View();
        }

		public IActionResult Gabinetes()
		{
			return View();
		}

		[ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}