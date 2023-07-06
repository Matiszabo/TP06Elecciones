USE [Elecciones2023]
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 04/07/2023 22:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidato](
	[IdCandidato] [int] NOT NULL,
	[IdPartido] [int] NOT NULL,
	[Apellido] [varchar](1000) NOT NULL,
	[Nombre] [varchar](1000) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Foto] [varchar](1000) NOT NULL,
	[Postulacion] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_Candidato] PRIMARY KEY CLUSTERED 
(
	[IdCandidato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partido]    Script Date: 04/07/2023 22:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partido](
	[IdPartido] [int] NOT NULL,
	[Nombre] [varchar](1000) NOT NULL,
	[Logo] [varchar](1000) NOT NULL,
	[SitioWeb] [varchar](1000) NOT NULL,
	[FechaFundacion] [date] NOT NULL,
	[CantidadDiputados] [int] NOT NULL,
	[CantidadSenadores] [int] NOT NULL,
 CONSTRAINT [PK_Partido] PRIMARY KEY CLUSTERED 
(
	[IdPartido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (1, 1, N'Massa', N'Sergio', CAST(N'1972-04-28' AS Date), N'https://pbs.twimg.com/profile_images/1639607611036188675/ER1KQEWf_400x400.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (2, 2, N'Bulrrich', N'Patricia', CAST(N'1956-06-11' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Seguridad_patricia_bullrich.jpg/640px-Seguridad_patricia_bullrich.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (3, 2, N'Larreta', N'Horacio', CAST(N'1965-10-29' AS Date), N'https://static.treslineas.com.ar/foto/pers_Horacio_Rodriguez_Larreta271118181124.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (4, 3, N'Milei', N'Javier', CAST(N'1970-10-22' AS Date), N'https://static.wikia.nocookie.net/youtubepedia/images/7/7d/Javier_Milei.jpg/revision/latest/thumbnail/width/360/height/360?cb=20220730010603&path-prefix=es', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (5, 4, N'Bregman', N'Myriam', CAST(N'1972-02-25' AS Date), N'https://i.ibb.co/q98z6nL/MB.jpg', N'Presidente')
GO
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (1, N'Union por la Patria', N'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Uni%C3%B3n_por_la_Patria_logo.png/800px-Uni%C3%B3n_por_la_Patria_logo.png', N'https://twitter.com/unionxlapatria?lang=es', CAST(N'2023-06-14' AS Date), 118, 31)
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (2, N'Juntos por el Cambio', N'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Juntos-Por-El-Cambio-Logo.svg/800px-Juntos-Por-El-Cambio-Logo.svg.png', N'https://jxc.com.ar/', CAST(N'2019-06-12' AS Date), 116, 33)
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (3, N'La Libertad Avanza', N'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Logo_La_Libertad_Avanza.png/1200px-Logo_La_Libertad_Avanza.png', N'https://lalibertadavanza.com.ar/', CAST(N'2021-07-14' AS Date), 3, 0)
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (4, N'Frente de Izquierda', N'https://cpng.pikpng.com/pngl/s/502-5025591_frente-de-izquierda-logo-clipart.png', N'https://www.frentedeizquierda.org/', CAST(N'2011-04-14' AS Date), 4, 0)
GO
ALTER TABLE [dbo].[Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Candidato_Partido] FOREIGN KEY([IdPartido])
REFERENCES [dbo].[Partido] ([IdPartido])
GO
ALTER TABLE [dbo].[Candidato] CHECK CONSTRAINT [FK_Candidato_Partido]
GO
