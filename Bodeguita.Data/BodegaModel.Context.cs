﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Bodeguita.Data
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using Bodeguita.Domain;
    
    public partial class BodegaEntities : DbContext
    {
        public BodegaEntities()
            : base("name=BodegaEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Bodega> Bodega { get; set; }
        public virtual DbSet<Cliente> Cliente { get; set; }
        public virtual DbSet<Pago> Pago { get; set; }
        public virtual DbSet<Pedido> Pedido { get; set; }
        public virtual DbSet<Producto> Producto { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<BodegaProducto> BodegaProducto { get; set; }
        public virtual DbSet<DetallePedido> DetallePedido { get; set; }
    }
}