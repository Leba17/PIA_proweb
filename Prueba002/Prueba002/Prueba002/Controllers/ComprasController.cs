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
    public class ComprasController : Controller
    {
        private readonly Incio_ProyectoContext _context;

        public ComprasController(Incio_ProyectoContext context)
        {
            _context = context;
        }

        // GET: Compras
        public async Task<IActionResult> Index()
        {
            var incio_ProyectoContext = _context.Compras.Include(c => c.IdEstatusEnvioNavigation).Include(c => c.IdUsuarioNavigation);
            return View(await incio_ProyectoContext.ToListAsync());
        }

        // GET: Compras/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Compras == null)
            {
                return NotFound();
            }

            var compra = await _context.Compras
                .Include(c => c.IdEstatusEnvioNavigation)
                .Include(c => c.IdUsuarioNavigation)
                .FirstOrDefaultAsync(m => m.IdCompra == id);
            if (compra == null)
            {
                return NotFound();
            }

            return View(compra);
        }

        // GET: Compras/Create
        public IActionResult Create()
        {
            ViewData["IdEstatusEnvio"] = new SelectList(_context.EstatusEnvios, "IdEstatusEnvio", "Estatus");
            ViewData["IdUsuario"] = new SelectList(_context.Users, "Id", "Nombre");
            return View();
        }

        // POST: Compras/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("IdCompra,FechaCompra,IdEstatusEnvio,IdUsuario")] Models.ComprasHR compra)
        {
            if (ModelState.IsValid)
            {
                Compra compra1 = new Compra
                {
                    FechaCompra=compra.FechaCompra,
                    IdEstatusEnvio=compra.IdEstatusEnvio,
                    IdUsuario=compra.IdUsuario,
                };
                _context.Compras.Add(compra1);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["IdEstatusEnvio"] = new SelectList(_context.EstatusEnvios, "IdEstatusEnvio", "Estatus", compra.IdEstatusEnvio);
            ViewData["IdUsuario"] = new SelectList(_context.Users, "Id", "Nombre", compra.IdUsuario);
            return View(compra);
        }

        // GET: Compras/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Compras == null)
            {
                return NotFound();
            }

            var compra = await _context.Compras.FindAsync(id);
            if (compra == null)
            {
                return NotFound();
            }
            ViewData["IdEstatusEnvio"] = new SelectList(_context.EstatusEnvios, "IdEstatusEnvio", "Estatus", compra.IdEstatusEnvio);
            ViewData["IdUsuario"] = new SelectList(_context.Users, "Id", "Nombre", compra.IdUsuario);
            return View(compra);
        }

        // POST: Compras/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("IdCompra,FechaCompra,IdEstatusEnvio,IdUsuario")] Models.ComprasHR compra)
        {
            if (id != compra.IdCompra)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                Compra compra1 = new Compra
                {
                    FechaCompra = compra.FechaCompra,
                    IdEstatusEnvio = compra.IdEstatusEnvio,
                    IdUsuario = compra.IdUsuario,
                };
                try
                {
                    _context.Compras.Update(compra1);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!CompraExists(compra.IdCompra))
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
            ViewData["IdEstatusEnvio"] = new SelectList(_context.EstatusEnvios, "IdEstatusEnvio", "Estatus", compra.IdEstatusEnvio);
            ViewData["IdUsuario"] = new SelectList(_context.Users, "Id", "Nombre", compra.IdUsuario);
            return View(compra);
        }

        // GET: Compras/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Compras == null)
            {
                return NotFound();
            }

            var compra = await _context.Compras
                .Include(c => c.IdEstatusEnvioNavigation)
                .Include(c => c.IdUsuarioNavigation)
                .FirstOrDefaultAsync(m => m.IdCompra == id);
            if (compra == null)
            {
                return NotFound();
            }

            return View(compra);
        }

        // POST: Compras/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Compras == null)
            {
                return Problem("Entity set 'Incio_ProyectoContext.Compras'  is null.");
            }
            var compra = await _context.Compras.FindAsync(id);
            if (compra != null)
            {
                _context.Compras.Remove(compra);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool CompraExists(int id)
        {
          return (_context.Compras?.Any(e => e.IdCompra == id)).GetValueOrDefault();
        }
    }
}
