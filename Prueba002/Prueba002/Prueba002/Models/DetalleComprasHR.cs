using System.ComponentModel.DataAnnotations.Schema;

namespace Prueba002.Models
{
    public class DetalleComprasHR
    {
        public int IdCompra { get; set; }
        public int IdProducto { get; set; }
        public int Cantidad { get; set; }
        public decimal PrecioProducto { get; set; }
    }
}
