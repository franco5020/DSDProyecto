using Bodeguita.Logic;
using Bodeguita.RestServices.Models;
using System;
using System.Collections.Generic;
using System.Data.Spatial;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Bodeguita.RestServices.Controllers
{
    public class BodegasController : BaseApiController
    {
        [HttpPost]
        [Route("bodegas/cercanos")]
        public object getCercanos([FromBody]CoordenadaPost coordenadaPost )
        {
            return BodegaBL.ObtenerCercanos(coordenadaPost.Coordenada);
        }

        [HttpPost]
        [Route("bodegas")]
        public object Registrar([FromBody] BodegaPost bodegaPost)
        {
            var bodega = ModelFactory.Parse(bodegaPost);
            var exito = BodegaBL.Registrar(bodega);
            return bodega;
        }


        [HttpGet]
        [Route("bodegas/{id}/productos")]
        public object ObtenerProductos(int id)
        {
            return BodegaBL.ObtenerProductos(id);
        }

    }
}
