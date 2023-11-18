namespace Prueba002.Models
{
    public class ProductoHR
    {
        public int IdProducto { get; set; }
        public string NombreProducto { get; set; } = null!;
        public string Descripcion { get; set; } = null!;
        public int IdCategoria { get; set; }
        public int Stock { get; set; }
        public decimal PrecioProducto { get; set; }
        public int IdMarcas { get; set; }
    }
}
