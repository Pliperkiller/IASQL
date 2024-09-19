USE [IASQLef]
GO

/****** Object:  Table [dbo].[Transaccion]    Script Date: 9/19/2024 12:49:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Transaccion](
	[IdTransaccion] [int] IDENTITY(1,1) NOT NULL,
	[IdCodCompra] [int] NOT NULL,
	[IdVendedor] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[TotalValorCompra] [real] NOT NULL,
	[FechaTransacc] [datetime2](7) NOT NULL,
	[FechaCreacion] [datetime2](7) NOT NULL,
	[UsuarioCreador] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Transaccion] PRIMARY KEY CLUSTERED 
(
	[IdTransaccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Transaccion]  WITH CHECK ADD  CONSTRAINT [FK_Transaccion_Cliente_IdCliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Transaccion] CHECK CONSTRAINT [FK_Transaccion_Cliente_IdCliente]
GO

ALTER TABLE [dbo].[Transaccion]  WITH CHECK ADD  CONSTRAINT [FK_Transaccion_CodCompra_IdCodCompra] FOREIGN KEY([IdCodCompra])
REFERENCES [dbo].[CodCompra] ([IdCodCompra])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Transaccion] CHECK CONSTRAINT [FK_Transaccion_CodCompra_IdCodCompra]
GO

ALTER TABLE [dbo].[Transaccion]  WITH CHECK ADD  CONSTRAINT [FK_Transaccion_Empleado_IdVendedor] FOREIGN KEY([IdVendedor])
REFERENCES [dbo].[Empleado] ([IdEmpleado])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Transaccion] CHECK CONSTRAINT [FK_Transaccion_Empleado_IdVendedor]
GO


