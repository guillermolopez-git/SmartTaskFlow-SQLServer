USE [SmartTaskFlow]
GO

/****** Object:  Table [dbo].[Tareas]    Script Date: 2/12/2025 15:59:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tareas](
	[id_tareas] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[descripcion] [varchar](max) NOT NULL,
	[fecha_creacion] [datetime] NULL,
	[fecha_limite] [datetime] NULL,
	[id_usuario] [int] NULL,
	[id_prioridad] [int] NULL,
	[id_estado] [int] NULL,
 CONSTRAINT [PK_Tareas] PRIMARY KEY CLUSTERED 
(
	[id_tareas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


