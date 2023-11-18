using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Prueba002.Models.dbModels
{
    public class ApplicationUser : IdentityUser<int>
    {
        public ApplicationUser()
        {
            Carritos = new HashSet<Carrito>();
            Compras = new HashSet<Compra>();
        }


        [StringLength(50)]
        public string Nombre { get; set; } = null!;
        [StringLength(50)]
        public string Apellido { get; set; } = null!;
        [StringLength(255)]
        public string Direccion { get; set; } = null!;
        [Column("ID_Ciudad")]
        public int IdCiudad { get; set; }

        [ForeignKey("IdCiudad")]
        [InverseProperty("Usuarios")]
        public virtual Ciudad IdCiudadNavigation { get; set; } = null!;
        [InverseProperty("IdUsuarioNavigation")]
        public virtual ICollection<Carrito> Carritos { get; set; }
        [InverseProperty("IdUsuarioNavigation")]
        public virtual ICollection<Compra> Compras { get; set; }
    }
}
