using System.ComponentModel.DataAnnotations.Schema;

namespace Prueba002.Models
{
    public class ComprasHR
    {
        public int IdCompra { get; set; }
        public DateTime FechaCompra { get; set; }
        public int IdEstatusEnvio { get; set; }
        public int IdUsuario { get; set; }
    }
}
