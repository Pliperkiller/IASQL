USE [IASQLef]
GO

/****** Object:  Table [dbo].[Establecimiento]    Script Date: 9/19/2024 12:48:27 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Establecimiento](
	[IdEstablecimiento] [int] IDENTITY(1,1) NOT NULL,
	[IdCiudad] [int] NOT NULL,
	[NombreLocal] [nvarchar](max) NOT NULL,
	[FechaCreacion] [datetime2](7) NOT NULL,
	[UsuarioCreador] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Establecimiento] PRIMARY KEY CLUSTERED 
(
	[IdEstablecimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Establecimiento]  WITH CHECK ADD  CONSTRAINT [FK_Establecimiento_Ciudad_IdCiudad] FOREIGN KEY([IdCiudad])
REFERENCES [dbo].[Ciudad] ([IdCiudad])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Establecimiento] CHECK CONSTRAINT [FK_Establecimiento_Ciudad_IdCiudad]
GO


