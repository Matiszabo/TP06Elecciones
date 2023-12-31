USE [Elecciones2023]
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 3/8/2023 13:50:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidato](
	[IdCandidato] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[Partido]    Script Date: 3/8/2023 13:50:20 ******/
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
SET IDENTITY_INSERT [dbo].[Candidato] ON 

INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (1, 1, N'Massa', N'Sergio', CAST(N'1972-04-28' AS Date), N'https://pbs.twimg.com/profile_images/1639607611036188675/ER1KQEWf_400x400.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (2, 2, N'Bulrrich', N'Patricia', CAST(N'1956-06-11' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Seguridad_patricia_bullrich.jpg/640px-Seguridad_patricia_bullrich.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (3, 2, N'Larreta', N'Horacio', CAST(N'1965-10-29' AS Date), N'https://static.treslineas.com.ar/foto/pers_Horacio_Rodriguez_Larreta271118181124.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (4, 3, N'Milei', N'Javier', CAST(N'1970-10-22' AS Date), N'https://worldmusicba.com/wp-content/uploads/2019/07/javier-milei-en-colombia.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (5, 4, N'Bregman', N'Myriam', CAST(N'1972-02-25' AS Date), N'https://i.ibb.co/q98z6nL/MB.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (6, 1, N'Rossi', N'Agustin', CAST(N'1959-10-18' AS Date), N'https://resizer.glanacion.com/resizer/bCn1UJkvgHTwu1zg9a1jDNyGV0E=/768x0/filters:format(webp):quality(80)/cloudfront-us-east-1.images.arcpublishing.com/lanacionar/YVMKUKCQIFCN5BG5NB6ICWQ4GY.jpg', N'Vicepresidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (7, 2, N'Petri', N'Luis', CAST(N'1977-04-01' AS Date), N'https://th.bing.com/th/id/OIP.R6UBB4cz1vidSKOOmHq_gwHaFj?pid=ImgDet&rs=1', N'Vicepresidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (8, 2, N'Morales', N'Gerardo', CAST(N'1959-07-18' AS Date), N'https://pbs.twimg.com/profile_images/1638532530671349763/-WyNySGW_400x400.jpg', N'Vicepresidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (9, 3, N'Villarruel', N'Victoria', CAST(N'1975-04-13' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/8/8a/Victoria_Villarruel.png', N'Vicepresidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (10, 4, N'del Caño', N'Nicolas', CAST(N'1980-02-06' AS Date), N'https://www.pts.org.ar/IMG/moton306.jpg?1595439241', N'Vicepresidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (11, 1, N'Santoro', N'Leandro', CAST(N'1976-01-11' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/3/35/Leandro_Santoro.png', N'Jefe de Gobierno')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (12, 2, N'Macri', N'Jorge', CAST(N'1965-03-05' AS Date), N'https://static.treslineas.com.ar/foto/pers_Jorge_Macri051218825575.jpg?imgres=500x500x80', N'Jefe de Gobierno')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (13, 2, N'Lousteau', N'Martin', CAST(N'1970-12-08' AS Date), N'https://static.treslineas.com.ar/foto/pers_Martin_Lousteau240117187847.jpg?imgres=500x500x80', N'Jefe de Gobierno')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (14, 3, N'Marra', N'Ramiro', CAST(N'1982-11-20' AS Date), N'https://media.licdn.com/dms/image/C4D03AQF7EDeJ-g4d0w/profile-displayphoto-shrink_800_800/0/1661191771115?e=2147483647&v=beta&t=1fvjpsHZdQllY53u_lp-s3vFxd1Obdl_o6cC64p3aVo', N'Jefe de Gobierno')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (15, 4, N'Adaro', N'Jorge', CAST(N'1966-04-16' AS Date), N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiLQvZLYVQubtCbr_JIH4Wbgqzp4KarGSptZgJNrIgje6RxqYVpNUyFSM-v61-EZ81iQs&usqp=CAU', N'Jefe de Gobierno')
SET IDENTITY_INSERT [dbo].[Candidato] OFF
GO
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (1, N'Union por la Patria', N'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Uni%C3%B3n_por_la_Patria_logo_completo.png/1200px-Uni%C3%B3n_por_la_Patria_logo_completo.png', N'https://twitter.com/unionxlapatria?lang=es', CAST(N'2023-06-14' AS Date), 118, 31)
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (2, N'Juntos por el Cambio', N'https://upload.wikimedia.org/wikipedia/commons/f/f7/Juntos_por_el_Cambio.png', N'https://jxc.com.ar/', CAST(N'2019-06-12' AS Date), 116, 33)
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (3, N'La Libertad Avanza', N'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Logo_La_Libertad_Avanza.png/1200px-Logo_La_Libertad_Avanza.png', N'https://lalibertadavanza.com.ar/', CAST(N'2021-07-14' AS Date), 3, 0)
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (4, N'Frente de Izquierda', N'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Frente_de_Izquierda_y_de_los_Trabajadores_Logo.svg/2800px-Frente_de_Izquierda_y_de_los_Trabajadores_Logo.svg.png', N'https://www.frentedeizquierda.org/', CAST(N'2011-04-14' AS Date), 4, 0)
GO
ALTER TABLE [dbo].[Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Candidato_Partido1] FOREIGN KEY([IdPartido])
REFERENCES [dbo].[Partido] ([IdPartido])
GO
ALTER TABLE [dbo].[Candidato] CHECK CONSTRAINT [FK_Candidato_Partido1]
GO
