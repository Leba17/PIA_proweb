using System.ComponentModel.DataAnnotations.Schema;

namespace Prueba002.Models
{
    public class CarritoHR
    {
        public int IdProducto { get; set; }
        public int IdUsuario { get; set; }
        public int Cantidad { get; set; }
    }
}
