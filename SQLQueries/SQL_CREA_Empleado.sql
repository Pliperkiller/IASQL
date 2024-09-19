USE [IASQLef]
GO

/****** Object:  Table [dbo].[Empleado]    Script Date: 9/19/2024 12:48:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Empleado](
	[IdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[IdEstablecimiento] [int] NOT NULL,
	[IdRol] [int] NOT NULL,
	[Documento] [bigint] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Apellido] [nvarchar](max) NOT NULL,
	[SalarioEmpleado] [real] NOT NULL,
	[EmpleadoActivo] [bit] NOT NULL,
	[FechaCreacion] [datetime2](7) NOT NULL,
	[UsuarioCreador] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Establecimiento_IdEstablecimiento] FOREIGN KEY([IdEstablecimiento])
REFERENCES [dbo].[Establecimiento] ([IdEstablecimiento])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Establecimiento_IdEstablecimiento]
GO

ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Rol_IdRol] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Rol] ([IdRol])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Rol_IdRol]
GO


