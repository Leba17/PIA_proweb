using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Prueba002.Models.dbModels
{
    public partial class Categorium
    {
        public Categorium()
        {
            Productos = new HashSet<Producto>();
        }

        [Key]
        [Column("ID_Categoria")]
        public int IdCategoria { get; set; }
        [StringLength(50)]
        public string Descripcion { get; set; } = null!;

        [InverseProperty("IdCategoriaNavigation")]
        public virtual ICollection<Producto> Productos { get; set; }
    }
}
