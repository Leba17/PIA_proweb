using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Prueba002.Models.dbModels
{
    [Table("Carrito")]
    public partial class Carrito
    {
        [Key]
        [Column("ID_Producto")]
        public int IdProducto { get; set; }
        [Key]
        [Column("ID_Usuario")]
        public int IdUsuario { get; set; }
        public int Cantidad { get; set; }

        [ForeignKey("IdProducto")]
        [InverseProperty("Carritos")]
        public virtual Producto IdProductoNavigation { get; set; } = null!;
        [ForeignKey("IdUsuario")]
        [InverseProperty("Carritos")]
        public virtual ApplicationUser IdUsuarioNavigation { get; set; } = null!;
    }
}
