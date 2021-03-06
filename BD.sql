USE [Bodega]
GO
/****** Object:  Table [dbo].[Bodega]    Script Date: 28/09/2021 17:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bodega](
	[idBodega] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[abreviatura] [varchar](10) NOT NULL,
	[direccion] [varchar](100) NOT NULL,
	[activo] [bit] NOT NULL,
	[ubicacion] [geography] NULL,
 CONSTRAINT [PK_Bodega] PRIMARY KEY CLUSTERED 
(
	[idBodega] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BodegaProducto]    Script Date: 28/09/2021 17:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BodegaProducto](
	[idBodega] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[precio] [decimal](18, 2) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 28/09/2021 17:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[direccion] [varchar](100) NOT NULL,
	[coordenadas] [varchar](100) NOT NULL,
	[telefono] [varchar](15) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetallePedido]    Script Date: 28/09/2021 17:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallePedido](
	[idPedido] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[precio] [decimal](18, 2) NOT NULL,
	[atendido] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pago]    Script Date: 28/09/2021 17:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[idPago] [int] IDENTITY(1,1) NOT NULL,
	[idPedido] [int] NOT NULL,
	[precio] [decimal](18, 2) NOT NULL,
	[atendido] [bit] NOT NULL,
 CONSTRAINT [PK_Pago_1] PRIMARY KEY CLUSTERED 
(
	[idPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 28/09/2021 17:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[idPedido] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[idBodega] [int] NOT NULL,
	[monto] [decimal](18, 2) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[atendido] [bit] NOT NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[idPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Producto]    Script Date: 28/09/2021 17:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[precio] [decimal](18, 2) NOT NULL,
	[imagen] [varchar](50) NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Bodega] ON 

INSERT [dbo].[Bodega] ([idBodega], [nombre], [abreviatura], [direccion], [activo], [ubicacion]) VALUES (3, N'Details Regalos', N'DR', N'Jr. Melgar 1148, Villa María del Triunfo', 0, 0xE6100000010CCD6A4E45603C53C003FB3AC5355528C0)
INSERT [dbo].[Bodega] ([idBodega], [nombre], [abreviatura], [direccion], [activo], [ubicacion]) VALUES (4, N'Tayloy Surco (Delivery)', N'TS', N'Av. Alfredo Benavides 5223, Santiago de Surco', 0, 0xE6100000010C6AF33A7DE43E53C0EF132215184228C0)
INSERT [dbo].[Bodega] ([idBodega], [nombre], [abreviatura], [direccion], [activo], [ubicacion]) VALUES (5, N'Electrolux Perú', N'ELP', N'Av. Pedro Venturo 312, Santiago de Surco', 0, 0xE6100000010C0FE542D0AE3F53C09D3FC84DDB3D28C0)
INSERT [dbo].[Bodega] ([idBodega], [nombre], [abreviatura], [direccion], [activo], [ubicacion]) VALUES (6, N'Sweet Beauty', N'SB', N'Calle Santiago Antúnez de Mayolo 320', 0, 0xE6100000010CBCD951B44B3C53C0C03CC67AD05728C0)
SET IDENTITY_INSERT [dbo].[Bodega] OFF
INSERT [dbo].[BodegaProducto] ([idBodega], [idProducto], [precio]) VALUES (3, 1, CAST(19.20 AS Decimal(18, 2)))
INSERT [dbo].[BodegaProducto] ([idBodega], [idProducto], [precio]) VALUES (3, 4, CAST(10.80 AS Decimal(18, 2)))
INSERT [dbo].[BodegaProducto] ([idBodega], [idProducto], [precio]) VALUES (4, 3, CAST(3.20 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [imagen], [activo]) VALUES (1, N'Arroz costeño 5kg', CAST(19.80 AS Decimal(18, 2)), N'arroz.png', 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [imagen], [activo]) VALUES (3, N'Azúcar costeño 1kg', CAST(3.20 AS Decimal(18, 2)), N'azucar.png', 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [imagen], [activo]) VALUES (4, N'Aceite vegetal 1lt', CAST(11.80 AS Decimal(18, 2)), N'aceite.png', 1)
SET IDENTITY_INSERT [dbo].[Producto] OFF
/****** Object:  Index [UQ_BodegaProducto]    Script Date: 28/09/2021 17:13:54 ******/
ALTER TABLE [dbo].[BodegaProducto] ADD  CONSTRAINT [UQ_BodegaProducto] UNIQUE NONCLUSTERED 
(
	[idBodega] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ_DetallePedido]    Script Date: 28/09/2021 17:13:54 ******/
ALTER TABLE [dbo].[DetallePedido] ADD  CONSTRAINT [UQ_DetallePedido] UNIQUE NONCLUSTERED 
(
	[idPedido] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BodegaProducto]  WITH CHECK ADD  CONSTRAINT [FK_BodegaProducto_Bodega] FOREIGN KEY([idBodega])
REFERENCES [dbo].[Bodega] ([idBodega])
GO
ALTER TABLE [dbo].[BodegaProducto] CHECK CONSTRAINT [FK_BodegaProducto_Bodega]
GO
ALTER TABLE [dbo].[BodegaProducto]  WITH CHECK ADD  CONSTRAINT [FK_BodegaProducto_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[BodegaProducto] CHECK CONSTRAINT [FK_BodegaProducto_Producto]
GO
ALTER TABLE [dbo].[DetallePedido]  WITH CHECK ADD  CONSTRAINT [FK_DetallePedido_Pedido] FOREIGN KEY([idPedido])
REFERENCES [dbo].[Pedido] ([idPedido])
GO
ALTER TABLE [dbo].[DetallePedido] CHECK CONSTRAINT [FK_DetallePedido_Pedido]
GO
ALTER TABLE [dbo].[DetallePedido]  WITH CHECK ADD  CONSTRAINT [FK_DetallePedido_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[DetallePedido] CHECK CONSTRAINT [FK_DetallePedido_Producto]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Pedido] FOREIGN KEY([idPedido])
REFERENCES [dbo].[Pedido] ([idPedido])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_Pedido]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Cliente]
GO
