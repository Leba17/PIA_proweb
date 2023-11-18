using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Prueba002.Models.dbModels
{
    [Table("EstatusEnvio")]
    public partial class EstatusEnvio
    {
        public EstatusEnvio()
        {
            Compras = new HashSet<Compra>();
        }

        [Key]
        [Column("ID_EstatusEnvio")]
        public int IdEstatusEnvio { get; set; }
        [StringLength(50)]
        public string Estatus { get; set; } = null!;

        [InverseProperty("IdEstatusEnvioNavigation")]
        public virtual ICollection<Compra> Compras { get; set; }
    }
}
