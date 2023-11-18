using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Prueba002.Models.dbModels
{
    [Table("Proveedor")]
    public partial class Proveedor
    {
        public Proveedor()
        {
            IdProductos = new HashSet<Producto>();
        }

        [Key]
        [Column("ID_Proveedor")]
        public int IdProveedor { get; set; }
        [StringLength(50)]
        public string Nombre { get; set; } = null!;
        [StringLength(50)]
        public string Apellido { get; set; } = null!;
        [StringLength(10)]
        public string Telefono { get; set; }
        [StringLength(50)]
        public string Correo { get; set; } = null!;

        [ForeignKey("IdProveedor")]
        [InverseProperty("IdProveedors")]
        public virtual ICollection<Producto> IdProductos { get; set; }
    }
}
