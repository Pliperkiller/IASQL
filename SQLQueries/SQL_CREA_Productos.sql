USE [IASQLef]
GO

/****** Object:  Table [dbo].[Productos]    Script Date: 9/19/2024 12:48:48 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Productos](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[IdDescuento] [int] NOT NULL,
	[DescuentoActivo] [bit] NOT NULL,
	[NombreProducto] [nvarchar](200) NOT NULL,
	[PrecioProducto] [real] NOT NULL,
	[FechaCreacion] [datetime2](7) NOT NULL,
	[UsuarioCreador] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Categorias_IdCategoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([IdCategoria])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Categorias_IdCategoria]
GO

ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Descuentos_IdDescuento] FOREIGN KEY([IdDescuento])
REFERENCES [dbo].[Descuentos] ([IdDescuento])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Descuentos_IdDescuento]
GO


