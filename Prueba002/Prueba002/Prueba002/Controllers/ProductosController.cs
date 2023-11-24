using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Prueba002.Models.dbModels;

namespace Prueba002.Controllers
{
    
    public class ProductosController : Controller
    {
        private readonly Incio_ProyectoContext _context;

        public ProductosController(Incio_ProyectoContext context)
        {
            _context = context;
        }

        // GET: Productos
        public async Task<IActionResult> Index()
        {
            var incio_ProyectoContext = _context.Productos.Include(p => p.IdCategoriaNavigation).Include(p => p.IdMarcasNavigation);
            return View(await incio_ProyectoContext.ToListAsync());
        }

        // GET: Productos/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Productos == null)
            {
                return NotFound();
            }

            var producto = await _context.Productos
                .Include(p => p.IdCategoriaNavigation)
                .Include(p => p.IdMarcasNavigation)
                .FirstOrDefaultAsync(m => m.IdProducto == id);
            if (producto == null)
            {
                return NotFound();
            }

            return View(producto);
        }
        [Authorize(Roles = "Administrador")]

        // GET: Productos/Create
        public IActionResult Create()
        {
            ViewData["IdCategoria"] = new SelectList(_context.Categoria, "IdCategoria", "Descripcion");
            ViewData["IdMarcas"] = new SelectList(_context.Marcas, "IdMarcas", "Marcas");
            return View();
        }
        [Authorize(Roles = "Administrador")]
        // POST: Productos/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("IdProducto,NombreProducto,Descripcion,IdCategoria,Stock,PrecioProducto,IdMarcas")] Models.ProductoHR producto)
        {
            if (ModelState.IsValid)
            {
                Producto producto1 = new Producto
                {
                    NombreProducto = producto.NombreProducto,
                    Descripcion = producto.Descripcion,
                    IdCategoria=producto.IdCategoria,
                    Stock=producto.Stock,
                    PrecioProducto=producto.PrecioProducto,
                    IdMarcas=producto.IdMarcas,
                };
                _context.Productos.Add(producto1);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));

            }
            ViewData["IdCategoria"] = new SelectList(_context.Categoria, "IdCategoria", "Descripcion");
            ViewData["IdMarcas"] = new SelectList(_context.Marcas, "IdMarcas", "Marcas");
            return View(producto);
        }
        [Authorize(Roles = "Administrador")]
        // GET: Productos/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Productos == null)
            {
                return NotFound();
            }

            var producto = await _context.Productos.FindAsync(id);
            if (producto == null)
            {
                return NotFound();
            }
            ViewData["IdCategoria"] = new SelectList(_context.Categoria, "IdCategoria", "Descripcion");
            ViewData["IdMarcas"] = new SelectList(_context.Marcas, "IdMarcas", "Marcas");
            return View(producto);
        }
        [Authorize(Roles = "Administrador")]
        // POST: Productos/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("IdProducto,NombreProducto,Descripcion,IdCategoria,Stock,PrecioProducto,IdMarcas")] Models.ProductoHR producto)
        {
            if (id != producto.IdProducto)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                Producto producto1 = new Producto
                {
                    NombreProducto = producto.NombreProducto,
                    Descripcion = producto.Descripcion,
                    IdCategoria = producto.IdCategoria,
                    Stock = producto.Stock,
                    PrecioProducto = producto.PrecioProducto,
                    IdMarcas = producto.IdMarcas,
                };
                
                try
                {
                    _context.Productos.Update(producto1);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ProductoExists(producto.IdProducto))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["IdCategoria"] = new SelectList(_context.Categoria, "IdCategoria", "Descripcion");
            ViewData["IdMarcas"] = new SelectList(_context.Marcas, "IdMarcas", "Marcas");
            return View(producto);
        }
        [Authorize(Roles = "Administrador")]
        // GET: Productos/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Productos == null)
            {
                return NotFound();
            }

            var producto = await _context.Productos
                .Include(p => p.IdCategoriaNavigation)
                .Include(p => p.IdMarcasNavigation)
                .FirstOrDefaultAsync(m => m.IdProducto == id);
            if (producto == null)
            {
                return NotFound();
            }

            return View(producto);
        }
        [Authorize(Roles = "Administrador")]
        // POST: Productos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Productos == null)
            {
                return Problem("Entity set 'Incio_ProyectoContext.Productos'  is null.");
            }
            var producto = await _context.Productos.FindAsync(id);
            if (producto != null)
            {
                _context.Productos.Remove(producto);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ProductoExists(int id)
        {
          return (_context.Productos?.Any(e => e.IdProducto == id)).GetValueOrDefault();
        }
    }
}
