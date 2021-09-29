using Bodeguita.WebApp.Models;
using Bodeguita.WebApp.ServiceReference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Bodeguita.WebApp.Controllers
{
    public class PedidoController : Controller
    {
        // GET: Pedido
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Confirmar(PedidoPost pedidoPost)
        {            
            ServiceClient client = new ServiceClient();
            Pedido pedido = new Pedido();
            client.CrearPedido(pedido);
            return Json(new { foo = "bar", baz = "Blech" });
        }
    }
}