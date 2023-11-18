using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Prueba002.Models.dbModels
{
    [Table("Ciudad")]
    public partial class Ciudad
    {
        public Ciudad()
        {
            Usuarios = new HashSet<ApplicationUser>();
        }

        [Key]
        [Column("ID_Ciudad")]
        public int IdCiudad { get; set; }
        [StringLength(50)]
        public string NombreCiudad { get; set; } = null!;

        [InverseProperty("IdCiudadNavigation")]
        public virtual ICollection<ApplicationUser> Usuarios { get; set; }
    }
}
