USE [SmartTaskFlow]
GO

/****** Object:  Table [dbo].[Notificasiones]    Script Date: 2/12/2025 15:57:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Notificasiones](
	[id_notificasiones] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NULL,
	[id_tareas] [int] NULL,
	[mensaje] [varchar](max) NULL,
	[fecha] [datetime] NULL,
 CONSTRAINT [PK_Notificasiones] PRIMARY KEY CLUSTERED 
(
	[id_notificasiones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


