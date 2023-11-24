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
    [Authorize(Roles = "Administrador")]
    [Authorize(Roles = "Cliente")]
    public class DetalleComprasController : Controller
    {
        private readonly Incio_ProyectoContext _context;

        public DetalleComprasController(Incio_ProyectoContext context)
        {
            _context = context;
        }

        // GET: DetalleCompras
        public async Task<IActionResult> Index()
        {
            var incio_ProyectoContext = _context.DetalleCompras.Include(d => d.IdCompraNavigation).Include(d => d.IdProductoNavigation);
            return View(await incio_ProyectoContext.ToListAsync());
        }

        // GET: DetalleCompras/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.DetalleCompras == null)
            {
                return NotFound();
            }

            var detalleCompra = await _context.DetalleCompras
                .Include(d => d.IdCompraNavigation)
                .Include(d => d.IdProductoNavigation)
                .FirstOrDefaultAsync(m => m.IdCompra == id);
            if (detalleCompra == null)
            {
                return NotFound();
            }

            return View(detalleCompra);
        }

        // GET: DetalleCompras/Create
        public IActionResult Create()
        {
            ViewData["IdCompra"] = new SelectList(_context.Compras, "IdCompra", "IdCompra");
            ViewData["IdProducto"] = new SelectList(_context.Productos, "IdProducto", "NombreProducto");
            return View();
        }

        // POST: DetalleCompras/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("IdCompra,IdProducto,Cantidad,PrecioProducto")] Models.DetalleComprasHR detalleCompra)
        {
            if (ModelState.IsValid)
            {
                DetalleCompra detallecompra1 = new DetalleCompra
                {
                    IdCompra=detalleCompra.IdCompra,
                    IdProducto=detalleCompra.IdProducto,
                    Cantidad=detalleCompra.Cantidad,
                    PrecioProducto=detalleCompra.PrecioProducto,

                };
                _context.DetalleCompras.Add(detallecompra1);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["IdCompra"] = new SelectList(_context.Compras, "IdCompra", "IdCompra", detalleCompra.IdCompra);
            ViewData["IdProducto"] = new SelectList(_context.Productos, "IdProducto", "NombreProducto", detalleCompra.IdProducto);
            return View(detalleCompra);
        }

        // GET: DetalleCompras/Edit/5
        public async Task<IActionResult> Edit(int? id,int idp)
        {
            if (id == null || _context.DetalleCompras == null)
            {
                return NotFound();
            }

            var detalleCompra = await _context.DetalleCompras.FindAsync(id,idp);
            if (detalleCompra == null)
            {
                return NotFound();
            }
            ViewData["IdCompra"] = new SelectList(_context.Compras, "IdCompra", "IdCompra", detalleCompra.IdCompra);
            ViewData["IdProducto"] = new SelectList(_context.Productos, "IdProducto", "NombreProducto", detalleCompra.IdProducto);
            return View(detalleCompra);
        }

        // POST: DetalleCompras/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("IdCompra,IdProducto,Cantidad,PrecioProducto")] Models.DetalleComprasHR detalleCompra)
        {
            if (id != detalleCompra.IdCompra)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                DetalleCompra detallecompra1 = new DetalleCompra
                {
                    IdCompra = detalleCompra.IdCompra,
                    IdProducto = detalleCompra.IdProducto,
                    Cantidad = detalleCompra.Cantidad,
                    PrecioProducto = detalleCompra.PrecioProducto,

                };
                
                try
                {
                    _context.DetalleCompras.Update(detallecompra1);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!DetalleCompraExists(detalleCompra.IdCompra,detalleCompra.IdProducto))
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
            ViewData["IdCompra"] = new SelectList(_context.Compras, "IdCompra", "IdCompra", detalleCompra.IdCompra);
            ViewData["IdProducto"] = new SelectList(_context.Productos, "IdProducto", "NombreProducto", detalleCompra.IdProducto);
            return View(detalleCompra);
        }

        // GET: DetalleCompras/Delete/5
        public async Task<IActionResult> Delete(int? id, int idp)
        {
            if (id == null || _context.DetalleCompras == null)
            {
                return NotFound();
            }

            var detalleCompra = await _context.DetalleCompras
                .Include(d => d.IdCompraNavigation)
                .Include(d => d.IdProductoNavigation)
                .FirstOrDefaultAsync(m => m.IdCompra == id && m.IdProducto==idp);
            if (detalleCompra == null)
            {
                return NotFound();
            }

            return View(detalleCompra);
        }

        // POST: DetalleCompras/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id, int idp)
        {
            if (_context.DetalleCompras == null)
            {
                return Problem("Entity set 'Incio_ProyectoContext.DetalleCompras'  is null.");
            }
            var detalleCompra = await _context.DetalleCompras.FindAsync(id,idp);
            if (detalleCompra != null)
            {
                _context.DetalleCompras.Remove(detalleCompra);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool DetalleCompraExists(int id,int idp)
        {
          return (_context.DetalleCompras?.Any(e => e.IdCompra == id && e.IdProducto == idp)).GetValueOrDefault();

        }
    }
}
