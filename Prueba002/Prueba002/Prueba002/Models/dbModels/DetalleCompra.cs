using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Prueba002.Models.dbModels
{
    [Table("Detalle-Compra")]
    public partial class DetalleCompra
    {
        [Key]
        [Column("ID_Compra")]
        public int IdCompra { get; set; }
        [Key]
        [Column("ID_Producto")]
        public int IdProducto { get; set; }
        public int Cantidad { get; set; }
        [Column(TypeName = "decimal(18, 2)")]
        public decimal PrecioProducto { get; set; }

        [ForeignKey("IdCompra")]
        [InverseProperty("DetalleCompras")]
        public virtual Compra IdCompraNavigation { get; set; } = null!;
        [ForeignKey("IdProducto")]
        [InverseProperty("DetalleCompras")]
        public virtual Producto IdProductoNavigation { get; set; } = null!;
    }
}
