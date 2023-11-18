using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Prueba002.Models.dbModels
{
    [Table("Compra")]
    public partial class Compra
    {
        public Compra()
        {
            DetalleCompras = new HashSet<DetalleCompra>();
        }

        [Key]
        [Column("ID_Compra")]
        public int IdCompra { get; set; }
        [Column(TypeName = "date")]
        public DateTime FechaCompra { get; set; }
        [Column("ID_EstatusEnvio")]
        public int IdEstatusEnvio { get; set; }
        [Column("ID_Usuario")]
        public int IdUsuario { get; set; }

        [ForeignKey("IdEstatusEnvio")]
        [InverseProperty("Compras")]
        public virtual EstatusEnvio IdEstatusEnvioNavigation { get; set; } = null!;
        [ForeignKey("IdUsuario")]
        [InverseProperty("Compras")]
        public virtual ApplicationUser IdUsuarioNavigation { get; set; } = null!;
        [InverseProperty("IdCompraNavigation")]
        public virtual ICollection<DetalleCompra> DetalleCompras { get; set; }
    }
}
