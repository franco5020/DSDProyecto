using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bodeguita.WebApp.Models
{
    public class PedidoPost
    {
        public int Id { get; set; }
        public int IdCliente { get; set; }
        public int IdBodega { get; set; }
        public decimal Monto { get; set; }
        List<Detalle> Detalles { get; set; }
    }

    public class Detalle
    {
        public int Id { get; set; }
        public decimal Precio { get; set; }
        public int Cantidad { get; set; }
    }
}