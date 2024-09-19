USE [IASQLef]
GO

/****** Object:  Table [dbo].[CodCompra]    Script Date: 9/19/2024 12:47:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CodCompra](
	[IdCodCompra] [int] IDENTITY(1,1) NOT NULL,
	[IdCompra] [int] NOT NULL,
	[FechaCreacion] [datetime2](7) NOT NULL,
	[UsuarioCreador] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_CodCompra] PRIMARY KEY CLUSTERED 
(
	[IdCodCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CodCompra]  WITH CHECK ADD  CONSTRAINT [FK_CodCompra_Compra_IdCompra] FOREIGN KEY([IdCompra])
REFERENCES [dbo].[Compra] ([IdCompra])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CodCompra] CHECK CONSTRAINT [FK_CodCompra_Compra_IdCompra]
GO


