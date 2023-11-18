using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Prueba002.Models.dbModels
{
    public partial class Marca
    {
        public Marca()
        {
            Productos = new HashSet<Producto>();
        }

        [Key]
        [Column("ID_Marcas")]
        public int IdMarcas { get; set; }
        [StringLength(50)]
        public string Marcas { get; set; } = null!;

        [InverseProperty("IdMarcasNavigation")]
        public virtual ICollection<Producto> Productos { get; set; }
    }
}
