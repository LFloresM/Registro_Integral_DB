USE [SISG]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumno](
	[Alu_Cod] [int] IDENTITY(1,1) NOT NULL,
	[Per_Cod] [int] NOT NULL,
	[Alu_FechNac] [date] NULL,
	[Alu_Apoderado] [varchar](50) NULL,
	[Alu_FechIngreso] [datetime] NULL,
	[Alu_Foto] [varchar](200) NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[Alu_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Aula]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aula](
	[Aul_Cod] [int] IDENTITY(1,1) NOT NULL,
	[Aul_Capacidad] [varchar](50) NULL,
	[Aul_Nombre] [varchar](50) NULL,
	[Aul_Tipo] [varbinary](20) NULL,
 CONSTRAINT [PK_Aula] PRIMARY KEY CLUSTERED 
(
	[Aul_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Calificacion]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Calificacion](
	[Cal_Cod] [int] IDENTITY(1,1) NOT NULL,
	[Cal_Fech] [datetime] NULL,
	[Cal_Condicion] [varchar](50) NOT NULL,
	[Mod_Cod] [int] NULL,
	[Alu_Cod] [int] NULL,
 CONSTRAINT [PK_Calificacion] PRIMARY KEY CLUSTERED 
(
	[Cal_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Concepto]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Concepto](
	[Con_Cod] [int] IDENTITY(1,1) NOT NULL,
	[Con_Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Concepto] PRIMARY KEY CLUSTERED 
(
	[Con_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Costo]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Costo](
	[Cos_Cod] [int] IDENTITY(1,1) NOT NULL,
	[Cos_Precio] [decimal](12, 2) NULL,
	[Cos_Fech] [date] NULL,
	[Con_Cod] [int] NULL,
 CONSTRAINT [PK_Costo] PRIMARY KEY CLUSTERED 
(
	[Cos_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Det_Pago]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Det_Pago](
	[DetPag_Cod] [int] IDENTITY(1,1) NOT NULL,
	[DetPag_Monto] [decimal](12, 2) NULL,
	[Pag_Cod] [int] NOT NULL,
	[Con_Cod] [int] NOT NULL,
 CONSTRAINT [PK_Det_Pago_1] PRIMARY KEY CLUSTERED 
(
	[DetPag_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Detalle_Plan]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Plan](
	[DetPlan_Cod] [int] IDENTITY(1,1) NOT NULL,
	[Pla_Cod] [int] NOT NULL,
	[Pro_Cod] [int] NOT NULL,
 CONSTRAINT [PK_Detalle_Plan] PRIMARY KEY CLUSTERED 
(
	[DetPlan_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Deuda]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deuda](
	[Con_Cod] [int] NULL,
	[Deu_Cod] [int] IDENTITY(1,1) NOT NULL,
	[Deu_Monto] [decimal](12, 2) NULL,
	[Deu_Estado] [bit] NULL,
	[Alu_Cod] [int] NULL,
 CONSTRAINT [PK_Deuda] PRIMARY KEY CLUSTERED 
(
	[Deu_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grupo](
	[Pro_Cod] [int] NULL,
	[Gru_Cod] [int] NOT NULL,
	[Gru_Nombre] [varchar](50) NULL,
	[Prof_Cod] [int] NOT NULL,
 CONSTRAINT [PK_Grupo_1] PRIMARY KEY CLUSTERED 
(
	[Gru_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Horario](
	[Hor_Cod] [int] IDENTITY(1,1) NOT NULL,
	[Aul_Cod] [int] NULL,
	[Pro_Cod] [int] NULL,
	[Hor_Dia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[Hor_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Matricula]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Matricula](
	[Mat_Fecha] [date] NULL,
	[Mat_Estado] [bit] NULL,
	[Mod_Cod] [int] NOT NULL,
	[Mat_Tipo] [varchar](50) NULL,
	[Alu_Cod] [int] NOT NULL,
 CONSTRAINT [PK_Matricula] PRIMARY KEY CLUSTERED 
(
	[Mod_Cod] ASC,
	[Alu_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Modulo]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Modulo](
	[Mod_Cod] [int] IDENTITY(1,1) NOT NULL,
	[Mod_Nombre] [varchar](50) NULL,
	[Mod_Tipo] [varchar](50) NULL,
	[Mod_Unidad] [varchar](50) NULL,
	[Mod_NumHoras] [varchar](50) NULL,
	[Mod_NumMes] [varchar](50) NULL,
	[Mod_Nivel] [int] NULL,
 CONSTRAINT [PK_Modulo] PRIMARY KEY CLUSTERED 
(
	[Mod_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Notas]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notas](
	[Not_Cod] [int] NOT NULL,
	[ExaPra] [decimal](12, 2) NULL,
	[ExaTeo] [decimal](12, 2) NULL,
	[ExaOral] [decimal](12, 2) NULL,
	[Cal_Cod] [int] NULL,
 CONSTRAINT [PK_Notas] PRIMARY KEY CLUSTERED 
(
	[Not_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pago]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[Pag_Cod] [int] IDENTITY(1,1) NOT NULL,
	[Pag_Fech] [date] NULL,
	[Alu_Cod] [int] NULL,
 CONSTRAINT [PK_Pago] PRIMARY KEY CLUSTERED 
(
	[Pag_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persona]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[Per_Cod] [int] IDENTITY(1,1) NOT NULL,
	[Per_Dni] [char](8) NOT NULL,
	[Per_Nombre] [varchar](50) NULL,
	[Per_ApePaterno] [varchar](50) NULL,
	[Per_ApeMaterno] [varchar](50) NOT NULL,
	[Per_Sexo] [char](1) NULL,
	[Per_Dir] [varchar](50) NULL,
	[Per_Cel] [char](9) NULL,
	[Per_Tel] [varchar](20) NOT NULL,
	[Per_Email] [varchar](50) NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[Per_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Plan_Estudio]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Plan_Estudio](
	[Pla_Cod] [int] IDENTITY(1,1) NOT NULL,
	[Pla_Nombre] [varchar](50) NULL,
	[Pla_Distrito] [varchar](50) NOT NULL,
	[Pla_Ugel] [varchar](50) NULL,
	[Pla_CetPro] [varchar](50) NULL,
	[Pla_Fechini] [date] NULL,
	[Pla_Fechfin] [date] NULL,
 CONSTRAINT [PK_Plan_Estudio] PRIMARY KEY CLUSTERED 
(
	[Pla_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profesor](
	[Prof_Cod] [int] IDENTITY(1,1) NOT NULL,
	[Per_Cod] [int] NOT NULL,
	[Prof_Rpm] [char](12) NOT NULL,
	[Prof_Nextel] [char](12) NOT NULL,
	[Prof_Especialidad] [varchar](50) NULL,
 CONSTRAINT [PK_Profesor_1] PRIMARY KEY CLUSTERED 
(
	[Prof_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Programacion]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programacion](
	[Pro_Cod] [int] IDENTITY(1,1) NOT NULL,
	[Pro_Fechaini] [date] NULL,
	[Pro_Fechafin] [date] NULL,
	[Mod_Cod] [int] NOT NULL,
 CONSTRAINT [PK_Programacion_1] PRIMARY KEY CLUSTERED 
(
	[Pro_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo_Usuario]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipo_Usuario](
	[TipoUser_Id] [int] IDENTITY(1,1) NOT NULL,
	[TipoUser_Descrip] [varchar](50) NULL,
	[TipoUser_Nivel] [varchar](50) NULL,
 CONSTRAINT [PK_Tipo_Usuario] PRIMARY KEY CLUSTERED 
(
	[TipoUser_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 12/09/2014 20:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[User_Cod] [int] IDENTITY(1,1) NOT NULL,
	[Per_Cod] [int] NULL,
	[User_Nombre] [varchar](50) NULL,
	[User_Pass] [varchar](20) NULL,
	[TipoUser_Id] [int] NOT NULL,
	[User_Estado] [bit] NULL,
 CONSTRAINT [PK_Usuario_1] PRIMARY KEY CLUSTERED 
(
	[User_Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Alumno] ON 

INSERT [dbo].[Alumno] ([Alu_Cod], [Per_Cod], [Alu_FechNac], [Alu_Apoderado], [Alu_FechIngreso], [Alu_Foto]) VALUES (1, 1, CAST(0x73260B00 AS Date), N'Juan', CAST(0x000091B100000000 AS DateTime), N'imagen.png')
INSERT [dbo].[Alumno] ([Alu_Cod], [Per_Cod], [Alu_FechNac], [Alu_Apoderado], [Alu_FechIngreso], [Alu_Foto]) VALUES (2, 1, CAST(0xD7270B00 AS Date), N'Jose', CAST(0x0000928200000000 AS DateTime), N'foto.jpg')
SET IDENTITY_INSERT [dbo].[Alumno] OFF
SET IDENTITY_INSERT [dbo].[Calificacion] ON 

INSERT [dbo].[Calificacion] ([Cal_Cod], [Cal_Fech], [Cal_Condicion], [Mod_Cod], [Alu_Cod]) VALUES (1, CAST(0x0000919200000000 AS DateTime), N'Buena', 1, 1)
SET IDENTITY_INSERT [dbo].[Calificacion] OFF
SET IDENTITY_INSERT [dbo].[Detalle_Plan] ON 

INSERT [dbo].[Detalle_Plan] ([DetPlan_Cod], [Pla_Cod], [Pro_Cod]) VALUES (1, 1, 1)
INSERT [dbo].[Detalle_Plan] ([DetPlan_Cod], [Pla_Cod], [Pro_Cod]) VALUES (2, 1, 1)
SET IDENTITY_INSERT [dbo].[Detalle_Plan] OFF
INSERT [dbo].[Matricula] ([Mat_Fecha], [Mat_Estado], [Mod_Cod], [Mat_Tipo], [Alu_Cod]) VALUES (CAST(0x80250B00 AS Date), 1, 1, N'Regular', 1)
SET IDENTITY_INSERT [dbo].[Modulo] ON 

INSERT [dbo].[Modulo] ([Mod_Cod], [Mod_Nombre], [Mod_Tipo], [Mod_Unidad], [Mod_NumHoras], [Mod_NumMes], [Mod_Nivel]) VALUES (1, N'PHP', N'PROGRAMACION', N'Primera Unidad', N'6 Horas', N'2 Meses', 1)
SET IDENTITY_INSERT [dbo].[Modulo] OFF
SET IDENTITY_INSERT [dbo].[Pago] ON 

INSERT [dbo].[Pago] ([Pag_Cod], [Pag_Fech], [Alu_Cod]) VALUES (1, CAST(0xED260B00 AS Date), 1)
INSERT [dbo].[Pago] ([Pag_Cod], [Pag_Fech], [Alu_Cod]) VALUES (2, CAST(0xCF360B00 AS Date), 2)
SET IDENTITY_INSERT [dbo].[Pago] OFF
SET IDENTITY_INSERT [dbo].[Persona] ON 

INSERT [dbo].[Persona] ([Per_Cod], [Per_Dni], [Per_Nombre], [Per_ApePaterno], [Per_ApeMaterno], [Per_Sexo], [Per_Dir], [Per_Cel], [Per_Tel], [Per_Email]) VALUES (1, N'46703747', N'Luis', N'Flores', N'Meza', N'M', N'Lima', N'123456789', N'234566', N'lflores@gmail.com')
INSERT [dbo].[Persona] ([Per_Cod], [Per_Dni], [Per_Nombre], [Per_ApePaterno], [Per_ApeMaterno], [Per_Sexo], [Per_Dir], [Per_Cel], [Per_Tel], [Per_Email]) VALUES (2, N'47485599', N'Victor', N'Callegari', N'Portal', N'M', N'New York', N'274484499', N'747484', N'victorpc@gmail.com')
INSERT [dbo].[Persona] ([Per_Cod], [Per_Dni], [Per_Nombre], [Per_ApePaterno], [Per_ApeMaterno], [Per_Sexo], [Per_Dir], [Per_Cel], [Per_Tel], [Per_Email]) VALUES (4, N'47484900', N'Eulogio', N'Pacheco', N'Portal', N'M', N'Barranca', N'594940049', N'474890', N'lolito@gmail.com')
SET IDENTITY_INSERT [dbo].[Persona] OFF
SET IDENTITY_INSERT [dbo].[Plan_Estudio] ON 

INSERT [dbo].[Plan_Estudio] ([Pla_Cod], [Pla_Nombre], [Pla_Distrito], [Pla_Ugel], [Pla_CetPro], [Pla_Fechini], [Pla_Fechfin]) VALUES (1, N'PLAN ESTUDIO USP', N'BARRANCA', N'BARRANCA', N'USP', CAST(0x92370B00 AS Date), CAST(0x02390B00 AS Date))
SET IDENTITY_INSERT [dbo].[Plan_Estudio] OFF
SET IDENTITY_INSERT [dbo].[Profesor] ON 

INSERT [dbo].[Profesor] ([Prof_Cod], [Per_Cod], [Prof_Rpm], [Prof_Nextel], [Prof_Especialidad]) VALUES (2, 1, N'3474874     ', N'778882      ', N'Redes')
INSERT [dbo].[Profesor] ([Prof_Cod], [Per_Cod], [Prof_Rpm], [Prof_Nextel], [Prof_Especialidad]) VALUES (3, 1, N'4874378     ', N'877897      ', N'Base de Datos')
INSERT [dbo].[Profesor] ([Prof_Cod], [Per_Cod], [Prof_Rpm], [Prof_Nextel], [Prof_Especialidad]) VALUES (5, 2, N'4758599     ', N'484899      ', N'Programacion')
SET IDENTITY_INSERT [dbo].[Profesor] OFF
SET IDENTITY_INSERT [dbo].[Programacion] ON 

INSERT [dbo].[Programacion] ([Pro_Cod], [Pro_Fechaini], [Pro_Fechafin], [Mod_Cod]) VALUES (1, CAST(0xFD380B00 AS Date), CAST(0x5F390B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[Programacion] OFF
SET IDENTITY_INSERT [dbo].[Tipo_Usuario] ON 

INSERT [dbo].[Tipo_Usuario] ([TipoUser_Id], [TipoUser_Descrip], [TipoUser_Nivel]) VALUES (6, N'Administrador', N'Admin')
INSERT [dbo].[Tipo_Usuario] ([TipoUser_Id], [TipoUser_Descrip], [TipoUser_Nivel]) VALUES (7, N'Tramitador', N'Tramite')
INSERT [dbo].[Tipo_Usuario] ([TipoUser_Id], [TipoUser_Descrip], [TipoUser_Nivel]) VALUES (8, N'Profesor', N'Admin')
INSERT [dbo].[Tipo_Usuario] ([TipoUser_Id], [TipoUser_Descrip], [TipoUser_Nivel]) VALUES (9, N'Alumno', N'Tramite')
SET IDENTITY_INSERT [dbo].[Tipo_Usuario] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([User_Cod], [Per_Cod], [User_Nombre], [User_Pass], [TipoUser_Id], [User_Estado]) VALUES (2, 1, N'LuisF', N'123', 6, 1)
INSERT [dbo].[Usuario] ([User_Cod], [Per_Cod], [User_Nombre], [User_Pass], [TipoUser_Id], [User_Estado]) VALUES (3, 2, N'Victorcp', N'123', 8, 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Persona] FOREIGN KEY([Per_Cod])
REFERENCES [dbo].[Persona] ([Per_Cod])
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Persona]
GO
ALTER TABLE [dbo].[Calificacion]  WITH CHECK ADD  CONSTRAINT [FK_Calificacion_Alumno] FOREIGN KEY([Alu_Cod])
REFERENCES [dbo].[Alumno] ([Alu_Cod])
GO
ALTER TABLE [dbo].[Calificacion] CHECK CONSTRAINT [FK_Calificacion_Alumno]
GO
ALTER TABLE [dbo].[Calificacion]  WITH CHECK ADD  CONSTRAINT [FK_Calificacion_Modulo] FOREIGN KEY([Mod_Cod])
REFERENCES [dbo].[Modulo] ([Mod_Cod])
GO
ALTER TABLE [dbo].[Calificacion] CHECK CONSTRAINT [FK_Calificacion_Modulo]
GO
ALTER TABLE [dbo].[Costo]  WITH CHECK ADD  CONSTRAINT [FK_Costo_Concepto] FOREIGN KEY([Con_Cod])
REFERENCES [dbo].[Concepto] ([Con_Cod])
GO
ALTER TABLE [dbo].[Costo] CHECK CONSTRAINT [FK_Costo_Concepto]
GO
ALTER TABLE [dbo].[Det_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Det_Pago_Concepto1] FOREIGN KEY([Con_Cod])
REFERENCES [dbo].[Concepto] ([Con_Cod])
GO
ALTER TABLE [dbo].[Det_Pago] CHECK CONSTRAINT [FK_Det_Pago_Concepto1]
GO
ALTER TABLE [dbo].[Det_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Det_Pago_Pago1] FOREIGN KEY([Pag_Cod])
REFERENCES [dbo].[Pago] ([Pag_Cod])
GO
ALTER TABLE [dbo].[Det_Pago] CHECK CONSTRAINT [FK_Det_Pago_Pago1]
GO
ALTER TABLE [dbo].[Detalle_Plan]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Plan_Plan_Estudio1] FOREIGN KEY([Pla_Cod])
REFERENCES [dbo].[Plan_Estudio] ([Pla_Cod])
GO
ALTER TABLE [dbo].[Detalle_Plan] CHECK CONSTRAINT [FK_Detalle_Plan_Plan_Estudio1]
GO
ALTER TABLE [dbo].[Detalle_Plan]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Plan_Programacion1] FOREIGN KEY([Pro_Cod])
REFERENCES [dbo].[Programacion] ([Pro_Cod])
GO
ALTER TABLE [dbo].[Detalle_Plan] CHECK CONSTRAINT [FK_Detalle_Plan_Programacion1]
GO
ALTER TABLE [dbo].[Deuda]  WITH CHECK ADD  CONSTRAINT [FK_Deuda_Alumno] FOREIGN KEY([Alu_Cod])
REFERENCES [dbo].[Alumno] ([Alu_Cod])
GO
ALTER TABLE [dbo].[Deuda] CHECK CONSTRAINT [FK_Deuda_Alumno]
GO
ALTER TABLE [dbo].[Deuda]  WITH CHECK ADD  CONSTRAINT [FK_Deuda_Concepto] FOREIGN KEY([Con_Cod])
REFERENCES [dbo].[Concepto] ([Con_Cod])
GO
ALTER TABLE [dbo].[Deuda] CHECK CONSTRAINT [FK_Deuda_Concepto]
GO
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Profesor] FOREIGN KEY([Prof_Cod])
REFERENCES [dbo].[Profesor] ([Prof_Cod])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Profesor]
GO
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Programacion] FOREIGN KEY([Pro_Cod])
REFERENCES [dbo].[Programacion] ([Pro_Cod])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Programacion]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_Horario_Aula] FOREIGN KEY([Aul_Cod])
REFERENCES [dbo].[Aula] ([Aul_Cod])
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_Horario_Aula]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_Horario_Programacion1] FOREIGN KEY([Pro_Cod])
REFERENCES [dbo].[Programacion] ([Pro_Cod])
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_Horario_Programacion1]
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Matricula_Alumno] FOREIGN KEY([Alu_Cod])
REFERENCES [dbo].[Alumno] ([Alu_Cod])
GO
ALTER TABLE [dbo].[Matricula] CHECK CONSTRAINT [FK_Matricula_Alumno]
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Matricula_Modulo] FOREIGN KEY([Mod_Cod])
REFERENCES [dbo].[Modulo] ([Mod_Cod])
GO
ALTER TABLE [dbo].[Matricula] CHECK CONSTRAINT [FK_Matricula_Modulo]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Alumno] FOREIGN KEY([Alu_Cod])
REFERENCES [dbo].[Alumno] ([Alu_Cod])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_Alumno]
GO
ALTER TABLE [dbo].[Profesor]  WITH CHECK ADD  CONSTRAINT [FK_Profesor_Persona] FOREIGN KEY([Per_Cod])
REFERENCES [dbo].[Persona] ([Per_Cod])
GO
ALTER TABLE [dbo].[Profesor] CHECK CONSTRAINT [FK_Profesor_Persona]
GO
ALTER TABLE [dbo].[Programacion]  WITH CHECK ADD  CONSTRAINT [FK_Programacion_Modulo] FOREIGN KEY([Mod_Cod])
REFERENCES [dbo].[Modulo] ([Mod_Cod])
GO
ALTER TABLE [dbo].[Programacion] CHECK CONSTRAINT [FK_Programacion_Modulo]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Persona] FOREIGN KEY([Per_Cod])
REFERENCES [dbo].[Persona] ([Per_Cod])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Persona]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Tipo_Usuario2] FOREIGN KEY([TipoUser_Id])
REFERENCES [dbo].[Tipo_Usuario] ([TipoUser_Id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Tipo_Usuario2]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [CK_Persona] CHECK  (([Per_Sexo]='M' OR [Per_Sexo]='F'))
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [CK_Persona]
GO
