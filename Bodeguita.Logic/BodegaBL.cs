using Bodeguita.Data;
using Bodeguita.Domain;
using System;
using System.Collections.Generic;
using System.Data.Entity.Spatial;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bodeguita.Logic
{
    public class BodegaBL
    {
        public static bool Registrar(Bodega bodega)
        {
            bool exito = false;
            using (var db = new BodegaEntities())
            {
                db.Bodega.Add(bodega);
                exito = db.SaveChanges() > 0;
            }
            return exito;
        }

        public static IEnumerable<dynamic> ObtenerCercanos(string coordenadas)
        {
            using (var db = new BodegaEntities())
            {
                var currentLocation = DbGeography.FromText("POINT(" + coordenadas + ")");

                var bodegas = (from u in db.Bodega
                               orderby u.ubicacion.Distance(currentLocation)
                               select u).Take(5).
                                Select(x =>
                                new
                                {
                                    Id = x.idBodega,
                                    Nombre = x.nombre,
                                    Abreviatura = x.abreviatura,
                                    Direccion = x.direccion,
                                    Latitud = x.ubicacion.Latitude,
                                    Longitud = x.ubicacion.Longitude
                                });
                return bodegas.ToList();
            }
        }

        public static IEnumerable<dynamic> ObtenerProductos(int idBodega)
        {
            using (var db = new BodegaEntities())
            {
                var productos = (from p in db.BodegaProducto
                                 where p.idBodega == idBodega
                                 select p
                                 ).Select(x => new
                                 {
                                     Id = x.idProducto,
                                     Nombre = x.Producto.nombre,
                                     PrecioBodega = x.precio,
                                     Precio = x.Producto.precio
                                 });

                return productos.ToList();
            }
        }
    }
}
