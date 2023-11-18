using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Prueba002.Models.dbModels
{
    [Table("Producto")]
    public partial class Producto
    {
        public Producto()
        {
            Carritos = new HashSet<Carrito>();
            DetalleCompras = new HashSet<DetalleCompra>();
            IdProveedors = new HashSet<Proveedor>();
        }

        [Key]
        [Column("ID_Producto")]
        public int IdProducto { get; set; }
        [StringLength(50)]
        public string NombreProducto { get; set; } = null!;
        [StringLength(50)]
        public string Descripcion { get; set; } = null!;
        [Column("ID_Categoria")]
        public int IdCategoria { get; set; }
        public int Stock { get; set; }
        [Column(TypeName = "decimal(18, 2)")]
        public decimal PrecioProducto { get; set; }
        [Column("ID_Marcas")]
        public int IdMarcas { get; set; }

        [ForeignKey("IdCategoria")]
        [InverseProperty("Productos")]
        public virtual Categorium IdCategoriaNavigation { get; set; } = null!;
        [ForeignKey("IdMarcas")]
        [InverseProperty("Productos")]
        public virtual Marca IdMarcasNavigation { get; set; } = null!;
        [InverseProperty("IdProductoNavigation")]
        public virtual ICollection<Carrito> Carritos { get; set; }
        [InverseProperty("IdProductoNavigation")]
        public virtual ICollection<DetalleCompra> DetalleCompras { get; set; }

        [ForeignKey("IdProducto")]
        [InverseProperty("IdProductos")]
        public virtual ICollection<Proveedor> IdProveedors { get; set; }
    }
}
