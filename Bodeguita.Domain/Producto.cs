//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Bodeguita.Domain
{
    using System;
    using System.Collections.Generic;
    
    public partial class Producto
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Producto()
        {
            this.DetallePedido = new HashSet<DetallePedido>();
            this.BodegaProducto = new HashSet<BodegaProducto>();
        }
    
        public int idProducto { get; set; }
        public string nombre { get; set; }
        public decimal precio { get; set; }
        public int idPresentacion { get; set; }
        public int idCategoria { get; set; }
        public int idUsuarioRegistro { get; set; }
        public System.DateTime fechaRegistro { get; set; }
        public Nullable<int> idUsuarioModifico { get; set; }
        public Nullable<System.DateTime> fechaModifico { get; set; }
        public string imagen { get; set; }
        public bool activo { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DetallePedido> DetallePedido { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BodegaProducto> BodegaProducto { get; set; }
    }
}