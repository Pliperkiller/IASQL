USE [IASQLef]
GO

/****** Object:  Table [dbo].[Compra]    Script Date: 9/19/2024 12:47:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Compra](
	[IdCompra] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NOT NULL,
	[CantProducto] [int] NOT NULL,
	[FechaCreacion] [datetime2](7) NOT NULL,
	[UsuarioCreador] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[IdCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Productos_IdProducto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Productos] ([IdProducto])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Productos_IdProducto]
GO


