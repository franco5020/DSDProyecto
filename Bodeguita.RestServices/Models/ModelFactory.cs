using Bodeguita.Domain;
using System;
using System.Collections.Generic;
using System.Data.Entity.Spatial;
using System.Linq;
using System.Web;

namespace Bodeguita.RestServices.Models
{
    public class ModelFactory
    {
        public Bodega Parse(BodegaPost bodegaPost)
        {
            var ubicacion = DbGeography.FromText("POINT( " + bodegaPost.Coordenada + ")");
            var bodega = new Bodega();
            bodega.nombre = bodegaPost.Nombre;
            bodega.abreviatura = bodegaPost.Abreviatura;
            bodega.direccion = bodegaPost.Direccion;
            bodega.ubicacion = ubicacion;
            return bodega;
        }
    }
}