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
    [Authorize(Roles = "Cliente")]
    public class EstatusEnviosController : Controller
    {
        private readonly Incio_ProyectoContext _context;

        public EstatusEnviosController(Incio_ProyectoContext context)
        {
            _context = context;
        }

        // GET: EstatusEnvios
        public async Task<IActionResult> Index()
        {
              return _context.EstatusEnvios != null ? 
                          View(await _context.EstatusEnvios.ToListAsync()) :
                          Problem("Entity set 'Incio_ProyectoContext.EstatusEnvios'  is null.");
        }

        // GET: EstatusEnvios/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.EstatusEnvios == null)
            {
                return NotFound();
            }

            var estatusEnvio = await _context.EstatusEnvios
                .FirstOrDefaultAsync(m => m.IdEstatusEnvio == id);
            if (estatusEnvio == null)
            {
                return NotFound();
            }

            return View(estatusEnvio);
        }
        [Authorize(Roles = "Administrador")]
        // GET: EstatusEnvios/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: EstatusEnvios/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("IdEstatusEnvio,Estatus")] EstatusEnvio estatusEnvio)
        {
            if (ModelState.IsValid)
            {
                _context.Add(estatusEnvio);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(estatusEnvio);
        }
        [Authorize(Roles = "Administrador")]
        // GET: EstatusEnvios/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.EstatusEnvios == null)
            {
                return NotFound();
            }

            var estatusEnvio = await _context.EstatusEnvios.FindAsync(id);
            if (estatusEnvio == null)
            {
                return NotFound();
            }
            return View(estatusEnvio);
        }
        [Authorize(Roles = "Administrador")]
        // POST: EstatusEnvios/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("IdEstatusEnvio,Estatus")] EstatusEnvio estatusEnvio)
        {
            if (id != estatusEnvio.IdEstatusEnvio)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(estatusEnvio);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!EstatusEnvioExists(estatusEnvio.IdEstatusEnvio))
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
            return View(estatusEnvio);
        }
        [Authorize(Roles = "Administrador")]
        // GET: EstatusEnvios/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.EstatusEnvios == null)
            {
                return NotFound();
            }

            var estatusEnvio = await _context.EstatusEnvios
                .FirstOrDefaultAsync(m => m.IdEstatusEnvio == id);
            if (estatusEnvio == null)
            {
                return NotFound();
            }

            return View(estatusEnvio);
        }
        [Authorize(Roles = "Administrador")]
        // POST: EstatusEnvios/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.EstatusEnvios == null)
            {
                return Problem("Entity set 'Incio_ProyectoContext.EstatusEnvios'  is null.");
            }
            var estatusEnvio = await _context.EstatusEnvios.FindAsync(id);
            if (estatusEnvio != null)
            {
                _context.EstatusEnvios.Remove(estatusEnvio);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool EstatusEnvioExists(int id)
        {
          return (_context.EstatusEnvios?.Any(e => e.IdEstatusEnvio == id)).GetValueOrDefault();
        }
    }
}
