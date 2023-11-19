using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Prueba002.Models.dbModels;

namespace Prueba002.Controllers
{
    public class CarritosController : Controller
    {
        private readonly Incio_ProyectoContext _context;

        public CarritosController(Incio_ProyectoContext context)
        {
            _context = context;
        }

        // GET: Carritos
        public async Task<IActionResult> Index()
        {
            var incio_ProyectoContext = _context.Carritos.Include(c => c.IdProductoNavigation).Include(c => c.IdUsuarioNavigation);
            return View(await incio_ProyectoContext.ToListAsync());
        }

        // GET: Carritos/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Carritos == null)
            {
                return NotFound();
            }

            var carrito = await _context.Carritos
                .Include(c => c.IdProductoNavigation)
                .Include(c => c.IdUsuarioNavigation)
                .FirstOrDefaultAsync(m => m.IdProducto == id);
            if (carrito == null)
            {
                return NotFound();
            }

            return View(carrito);
        }

        // GET: Carritos/Create
        public IActionResult Create()
        {
            ViewData["IdProducto"] = new SelectList(_context.Productos, "IdProducto", "NombreProducto");
            ViewData["IdUsuario"] = new SelectList(_context.Users, "Id", "Nombre");
            return View();
        }

        // POST: Carritos/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("IdProducto,IdUsuario,Cantidad")] Models.CarritoHR carrito)
        {
            if (ModelState.IsValid)
            {
                Carrito carrito1 = new Carrito
                {
                    IdProducto = carrito.IdProducto,
                    IdUsuario = carrito.IdUsuario,
                    Cantidad = carrito.Cantidad

                };
                _context.Carritos.Add(carrito1);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["IdProducto"] = new SelectList(_context.Productos, "IdProducto", "NombreProducto", carrito.IdProducto);
            ViewData["IdUsuario"] = new SelectList(_context.Users, "Id", "Nombre", carrito.IdUsuario);
            return View(carrito);
        }

        // GET: Carritos/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Carritos == null)
            {
                return NotFound();
            }

            var carrito = await _context.Carritos.FindAsync(id);
            if (carrito == null)
            {
                return NotFound();
            }
            ViewData["IdProducto"] = new SelectList(_context.Productos, "IdProducto", "NombreProducto", carrito.IdProducto);
            ViewData["IdUsuario"] = new SelectList(_context.Users, "Id", "Nombre", carrito.IdUsuario);
            return View(carrito);
        }

        // POST: Carritos/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("IdProducto,IdUsuario,Cantidad")] Carrito carrito)
        {
            if (id != carrito.IdProducto)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(carrito);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!CarritoExists(carrito.IdProducto))
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
            ViewData["IdProducto"] = new SelectList(_context.Productos, "IdProducto", "NombreProducto", carrito.IdProducto);
            ViewData["IdUsuario"] = new SelectList(_context.Users, "Id", "Nombre", carrito.IdUsuario);
            return View(carrito);
        }

        // GET: Carritos/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Carritos == null)
            {
                return NotFound();
            }

            var carrito = await _context.Carritos
                .Include(c => c.IdProductoNavigation)
                .Include(c => c.IdUsuarioNavigation)
                .FirstOrDefaultAsync(m => m.IdProducto == id);
            if (carrito == null)
            {
                return NotFound();
            }

            return View(carrito);
        }

        // POST: Carritos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Carritos == null)
            {
                return Problem("Entity set 'Incio_ProyectoContext.Carritos'  is null.");
            }
            var carrito = await _context.Carritos.FindAsync(id);
            if (carrito != null)
            {
                _context.Carritos.Remove(carrito);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool CarritoExists(int id)
        {
          return (_context.Carritos?.Any(e => e.IdProducto == id)).GetValueOrDefault();
        }
    }
}
