using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

// NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IService1" en el código y en el archivo de configuración a la vez.
[ServiceContract]
public interface IService
{

	[OperationContract]
	bool CrearPedido(Pedido pedido);
}

// Utilice un contrato de datos, como se ilustra en el ejemplo siguiente, para agregar tipos compuestos a las operaciones de servicio.
[DataContract]
public class Pedido
{
    [DataMember]
    public int Id { get; set; }

    [DataMember]
    public int IdCliente { get; set; }

    [DataMember]
    public int IdBodega { get; set; }

    [DataMember]
    public decimal Monto { get; set; }

    [DataMember]
    List<Detalle> Detalles { get; set; }
}


[DataContract]
public class Detalle
{
    [DataMember]
    public int IdProducto { get; set; }

    [DataMember]
    public decimal Precio { get; set; }

    [DataMember]
    public int Cantidad { get; set; }
}
