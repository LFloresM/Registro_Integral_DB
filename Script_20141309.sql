USE [master]
GO
/****** Object:  Database [Web_School]    Script Date: 13/09/2014 21:13:37 ******/
CREATE DATABASE [Web_School] ON  PRIMARY 
( NAME = N'SISG', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\SISG.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SISG_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\SISG_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Web_School] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Web_School].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Web_School] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Web_School] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Web_School] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Web_School] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Web_School] SET ARITHABORT OFF 
GO
ALTER DATABASE [Web_School] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Web_School] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Web_School] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Web_School] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Web_School] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Web_School] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Web_School] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Web_School] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Web_School] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Web_School] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Web_School] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Web_School] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Web_School] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Web_School] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Web_School] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Web_School] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Web_School] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Web_School] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Web_School] SET RECOVERY FULL 
GO
ALTER DATABASE [Web_School] SET  MULTI_USER 
GO
ALTER DATABASE [Web_School] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Web_School] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Web_School', N'ON'
GO
USE [Web_School]
GO
/****** Object:  Table [dbo].[Administrador]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administrador](
	[Adm_ID] [int] IDENTITY(1,1) NOT NULL,
	[Per_Id] [int] NOT NULL,
	[Adm_Nombre] [varchar](50) NULL,
	[Adm_Area] [varchar](50) NULL,
	[Adm_Rpm] [char](12) NULL,
	[Adm_Nextel] [char](12) NOT NULL,
 CONSTRAINT [PK_Administrador] PRIMARY KEY CLUSTERED 
(
	[Adm_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumno](
	[Alu_Id] [int] IDENTITY(1,1) NOT NULL,
	[Per_Id] [int] NOT NULL,
	[Alu_FechNac] [date] NULL,
	[Alu_Apoderado] [varchar](50) NULL,
	[Alu_FechIngreso] [datetime] NULL,
	[Alu_Estado] [bit] NULL,
	[Alu_Foto] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[Alu_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Aula]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aula](
	[Aul_Id] [int] IDENTITY(1,1) NOT NULL,
	[Aul_Capacidad] [varchar](50) NULL,
	[Aul_Nombre] [varchar](50) NULL,
	[Aul_Tipo] [varbinary](20) NULL,
 CONSTRAINT [PK_Aula] PRIMARY KEY CLUSTERED 
(
	[Aul_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Calificacion]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Calificacion](
	[Cal_Id] [int] IDENTITY(1,1) NOT NULL,
	[Mod_Id] [int] NULL,
	[Alu_Id] [int] NULL,
	[Cal_Fech] [datetime] NULL,
	[Cal_Condicion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Calificacion] PRIMARY KEY CLUSTERED 
(
	[Cal_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Concepto]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Concepto](
	[Con_Id] [int] IDENTITY(1,1) NOT NULL,
	[Con_Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Concepto] PRIMARY KEY CLUSTERED 
(
	[Con_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Costo]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Costo](
	[Cos_Id] [int] IDENTITY(1,1) NOT NULL,
	[Con_Id] [int] NULL,
	[Cos_Precio] [decimal](12, 2) NULL,
	[Cos_Fech] [date] NULL,
 CONSTRAINT [PK_Costo] PRIMARY KEY CLUSTERED 
(
	[Cos_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Det_Pago]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Det_Pago](
	[DetPag_Id] [int] IDENTITY(1,1) NOT NULL,
	[Pag_Id] [int] NOT NULL,
	[Con_Id] [int] NOT NULL,
	[DetPag_Monto] [decimal](12, 2) NULL,
 CONSTRAINT [PK_Det_Pago_1] PRIMARY KEY CLUSTERED 
(
	[DetPag_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Detalle_Plan]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Plan](
	[DetPlan_Id] [int] IDENTITY(1,1) NOT NULL,
	[Pla_Id] [int] NOT NULL,
	[Pro_Id] [int] NOT NULL,
 CONSTRAINT [PK_Detalle_Plan] PRIMARY KEY CLUSTERED 
(
	[DetPlan_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Deuda]    Script Date: 13/09/2014 21:13:37 ******/
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
/****** Object:  Table [dbo].[Grupo]    Script Date: 13/09/2014 21:13:37 ******/
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
/****** Object:  Table [dbo].[Horario]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Horario](
	[Hor_Id] [int] IDENTITY(1,1) NOT NULL,
	[Aul_Id] [int] NULL,
	[Pro_Id] [int] NULL,
	[Hor_Dia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[Hor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Matricula]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Matricula](
	[Mat_Id] [int] IDENTITY(1,1) NOT NULL,
	[Mod_Id] [int] NOT NULL,
	[Alu_Id] [int] NOT NULL,
	[Mat_Tipo] [varchar](50) NULL,
	[Mat_Fecha] [date] NULL,
	[Mat_Estado] [bit] NULL,
 CONSTRAINT [PK_Matricula] PRIMARY KEY CLUSTERED 
(
	[Mat_Id] ASC,
	[Mod_Id] ASC,
	[Alu_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Modulo]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Modulo](
	[Mod_Id] [int] IDENTITY(1,1) NOT NULL,
	[Mod_Nombre] [varchar](50) NULL,
	[Mod_Tipo] [varchar](50) NULL,
	[Mod_Unidad] [varchar](50) NULL,
	[Mod_NumHoras] [varchar](50) NULL,
	[Mod_NumMes] [varchar](50) NULL,
	[Mod_Nivel] [int] NULL,
 CONSTRAINT [PK_Modulo] PRIMARY KEY CLUSTERED 
(
	[Mod_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Notas]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notas](
	[Not_Id] [int] IDENTITY(1,1) NOT NULL,
	[Not_ExaPra] [decimal](12, 2) NULL,
	[Not_ExaTeo] [decimal](12, 2) NULL,
	[Not_ExaOral] [decimal](12, 2) NULL,
 CONSTRAINT [PK_Notas] PRIMARY KEY CLUSTERED 
(
	[Not_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pago]    Script Date: 13/09/2014 21:13:37 ******/
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
/****** Object:  Table [dbo].[Persona]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[Per_Id] [int] IDENTITY(1,1) NOT NULL,
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
	[Per_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Plan_Estudio]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Plan_Estudio](
	[Pla_Id] [int] IDENTITY(1,1) NOT NULL,
	[Pla_Nombre] [varchar](50) NULL,
	[Pla_Distrito] [varchar](50) NOT NULL,
	[Pla_Ugel] [varchar](50) NULL,
	[Pla_CetPro] [varchar](50) NULL,
	[Pla_Fechini] [date] NULL,
	[Pla_Fechfin] [date] NULL,
 CONSTRAINT [PK_Plan_Estudio] PRIMARY KEY CLUSTERED 
(
	[Pla_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profesor](
	[Prof_Id] [int] IDENTITY(1,1) NOT NULL,
	[Per_Id] [int] NOT NULL,
	[Prof_Rpm] [char](12) NOT NULL,
	[Prof_Nextel] [char](12) NOT NULL,
	[Prof_Especialidad] [varchar](50) NULL,
 CONSTRAINT [PK_Profesor_1] PRIMARY KEY CLUSTERED 
(
	[Prof_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profesor-Horario]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesor-Horario](
	[ProfHor_Id] [int] IDENTITY(1,1) NOT NULL,
	[Prof_Id] [int] NOT NULL,
	[Hor_Id] [int] NOT NULL,
	[Not_Id] [int] NULL,
 CONSTRAINT [PK_Profesor-Horario] PRIMARY KEY CLUSTERED 
(
	[ProfHor_Id] ASC,
	[Prof_Id] ASC,
	[Hor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Programacion]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programacion](
	[Pro_Id] [int] IDENTITY(1,1) NOT NULL,
	[Mod_Id] [int] NOT NULL,
	[Pro_Fechaini] [date] NULL,
	[Pro_Fechafin] [date] NULL,
 CONSTRAINT [PK_Programacion_1] PRIMARY KEY CLUSTERED 
(
	[Pro_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo_Usuario]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipo_Usuario](
	[TipoUser_Id] [int] IDENTITY(1,1) NOT NULL,
	[TipoUser_Descrip] [varchar](50) NULL,
	[TipoUser_Nivel] [tinyint] NOT NULL,
 CONSTRAINT [PK_Tipo_Usuario] PRIMARY KEY CLUSTERED 
(
	[TipoUser_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 13/09/2014 21:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[Per_Id] [int] NULL,
	[User_Nombre] [varchar](50) NULL,
	[User_Pass] [varchar](20) NULL,
	[TipoUser_Id] [int] NOT NULL,
	[User_Estado] [bit] NULL,
 CONSTRAINT [PK_Usuario_1] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Administrador] ON 

INSERT [dbo].[Administrador] ([Adm_ID], [Per_Id], [Adm_Nombre], [Adm_Area], [Adm_Rpm], [Adm_Nextel]) VALUES (1, 1, N'Roberto', N'Tramite', N'11234556    ', N'3474364     ')
INSERT [dbo].[Administrador] ([Adm_ID], [Per_Id], [Adm_Nombre], [Adm_Area], [Adm_Rpm], [Adm_Nextel]) VALUES (3, 2, N'Juan', N'Administracion', N'11183909    ', N'8738309     ')
SET IDENTITY_INSERT [dbo].[Administrador] OFF
SET IDENTITY_INSERT [dbo].[Alumno] ON 

INSERT [dbo].[Alumno] ([Alu_Id], [Per_Id], [Alu_FechNac], [Alu_Apoderado], [Alu_FechIngreso], [Alu_Estado], [Alu_Foto]) VALUES (1, 1, CAST(0x2E140B00 AS Date), N'Cesar', CAST(0x0000A3A500000000 AS DateTime), 1, N'')
INSERT [dbo].[Alumno] ([Alu_Id], [Per_Id], [Alu_FechNac], [Alu_Apoderado], [Alu_FechIngreso], [Alu_Estado], [Alu_Foto]) VALUES (2, 2, CAST(0xD5230B00 AS Date), N'Victor', CAST(0x0000A38400000000 AS DateTime), 1, N'')
SET IDENTITY_INSERT [dbo].[Alumno] OFF
SET IDENTITY_INSERT [dbo].[Detalle_Plan] ON 

INSERT [dbo].[Detalle_Plan] ([DetPlan_Id], [Pla_Id], [Pro_Id]) VALUES (1, 1, 1)
INSERT [dbo].[Detalle_Plan] ([DetPlan_Id], [Pla_Id], [Pro_Id]) VALUES (2, 1, 1)
SET IDENTITY_INSERT [dbo].[Detalle_Plan] OFF
SET IDENTITY_INSERT [dbo].[Modulo] ON 

INSERT [dbo].[Modulo] ([Mod_Id], [Mod_Nombre], [Mod_Tipo], [Mod_Unidad], [Mod_NumHoras], [Mod_NumMes], [Mod_Nivel]) VALUES (1, N'PHP', N'PROGRAMACION', N'Primera Unidad', N'6 Horas', N'2 Meses', 1)
SET IDENTITY_INSERT [dbo].[Modulo] OFF
SET IDENTITY_INSERT [dbo].[Persona] ON 

INSERT [dbo].[Persona] ([Per_Id], [Per_Dni], [Per_Nombre], [Per_ApePaterno], [Per_ApeMaterno], [Per_Sexo], [Per_Dir], [Per_Cel], [Per_Tel], [Per_Email]) VALUES (1, N'46703747', N'Luis', N'Flores', N'Meza', N'M', N'Lima', N'123456789', N'234566', N'lflores@gmail.com')
INSERT [dbo].[Persona] ([Per_Id], [Per_Dni], [Per_Nombre], [Per_ApePaterno], [Per_ApeMaterno], [Per_Sexo], [Per_Dir], [Per_Cel], [Per_Tel], [Per_Email]) VALUES (2, N'47485599', N'Victor', N'Callegari', N'Portal', N'M', N'New York', N'274484499', N'747484', N'victorpc@gmail.com')
INSERT [dbo].[Persona] ([Per_Id], [Per_Dni], [Per_Nombre], [Per_ApePaterno], [Per_ApeMaterno], [Per_Sexo], [Per_Dir], [Per_Cel], [Per_Tel], [Per_Email]) VALUES (3, N'47484848', N'Cesar', N'Flores', N'Meza', N'M', N'Lima', N'474848489', N'747448', N'cesar@gmail.com')
SET IDENTITY_INSERT [dbo].[Persona] OFF
SET IDENTITY_INSERT [dbo].[Plan_Estudio] ON 

INSERT [dbo].[Plan_Estudio] ([Pla_Id], [Pla_Nombre], [Pla_Distrito], [Pla_Ugel], [Pla_CetPro], [Pla_Fechini], [Pla_Fechfin]) VALUES (1, N'PLAN ESTUDIO USP', N'BARRANCA', N'BARRANCA', N'USP', CAST(0x92370B00 AS Date), CAST(0x02390B00 AS Date))
SET IDENTITY_INSERT [dbo].[Plan_Estudio] OFF
SET IDENTITY_INSERT [dbo].[Profesor] ON 

INSERT [dbo].[Profesor] ([Prof_Id], [Per_Id], [Prof_Rpm], [Prof_Nextel], [Prof_Especialidad]) VALUES (1, 1, N'161672788   ', N'37378888    ', N'Comida Peruana')
INSERT [dbo].[Profesor] ([Prof_Id], [Per_Id], [Prof_Rpm], [Prof_Nextel], [Prof_Especialidad]) VALUES (2, 2, N'387447338   ', N'84374784    ', N'Embutidos')
SET IDENTITY_INSERT [dbo].[Profesor] OFF
SET IDENTITY_INSERT [dbo].[Programacion] ON 

INSERT [dbo].[Programacion] ([Pro_Id], [Mod_Id], [Pro_Fechaini], [Pro_Fechafin]) VALUES (1, 1, CAST(0xFD380B00 AS Date), CAST(0x5F390B00 AS Date))
SET IDENTITY_INSERT [dbo].[Programacion] OFF
SET IDENTITY_INSERT [dbo].[Tipo_Usuario] ON 

INSERT [dbo].[Tipo_Usuario] ([TipoUser_Id], [TipoUser_Descrip], [TipoUser_Nivel]) VALUES (1, N'Administrador', 1)
INSERT [dbo].[Tipo_Usuario] ([TipoUser_Id], [TipoUser_Descrip], [TipoUser_Nivel]) VALUES (2, N'Tramitador', 0)
INSERT [dbo].[Tipo_Usuario] ([TipoUser_Id], [TipoUser_Descrip], [TipoUser_Nivel]) VALUES (3, N'Profesor', 1)
INSERT [dbo].[Tipo_Usuario] ([TipoUser_Id], [TipoUser_Descrip], [TipoUser_Nivel]) VALUES (4, N'Alumno', 0)
SET IDENTITY_INSERT [dbo].[Tipo_Usuario] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([User_Id], [Per_Id], [User_Nombre], [User_Pass], [TipoUser_Id], [User_Estado]) VALUES (1, 1, N'LuisF', N'123', 1, 1)
INSERT [dbo].[Usuario] ([User_Id], [Per_Id], [User_Nombre], [User_Pass], [TipoUser_Id], [User_Estado]) VALUES (2, 2, N'VictorC', N'1234', 1, 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
/****** Object:  Index [UQ_Administrador_Per_Id]    Script Date: 13/09/2014 21:13:37 ******/
ALTER TABLE [dbo].[Administrador] ADD  CONSTRAINT [UQ_Administrador_Per_Id] UNIQUE NONCLUSTERED 
(
	[Per_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ_Alumno_Per_Id]    Script Date: 13/09/2014 21:13:37 ******/
ALTER TABLE [dbo].[Alumno] ADD  CONSTRAINT [UQ_Alumno_Per_Id] UNIQUE NONCLUSTERED 
(
	[Per_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ_Profesor_Per_Id]    Script Date: 13/09/2014 21:13:37 ******/
ALTER TABLE [dbo].[Profesor] ADD  CONSTRAINT [UQ_Profesor_Per_Id] UNIQUE NONCLUSTERED 
(
	[Per_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Administrador]  WITH CHECK ADD  CONSTRAINT [FK_Administrador_Persona] FOREIGN KEY([Per_Id])
REFERENCES [dbo].[Persona] ([Per_Id])
GO
ALTER TABLE [dbo].[Administrador] CHECK CONSTRAINT [FK_Administrador_Persona]
GO
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Persona] FOREIGN KEY([Per_Id])
REFERENCES [dbo].[Persona] ([Per_Id])
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Persona]
GO
ALTER TABLE [dbo].[Calificacion]  WITH CHECK ADD  CONSTRAINT [FK_Calificacion_Alumno] FOREIGN KEY([Alu_Id])
REFERENCES [dbo].[Alumno] ([Alu_Id])
GO
ALTER TABLE [dbo].[Calificacion] CHECK CONSTRAINT [FK_Calificacion_Alumno]
GO
ALTER TABLE [dbo].[Calificacion]  WITH CHECK ADD  CONSTRAINT [FK_Calificacion_Modulo] FOREIGN KEY([Mod_Id])
REFERENCES [dbo].[Modulo] ([Mod_Id])
GO
ALTER TABLE [dbo].[Calificacion] CHECK CONSTRAINT [FK_Calificacion_Modulo]
GO
ALTER TABLE [dbo].[Costo]  WITH CHECK ADD  CONSTRAINT [FK_Costo_Concepto] FOREIGN KEY([Con_Id])
REFERENCES [dbo].[Concepto] ([Con_Id])
GO
ALTER TABLE [dbo].[Costo] CHECK CONSTRAINT [FK_Costo_Concepto]
GO
ALTER TABLE [dbo].[Det_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Det_Pago_Concepto1] FOREIGN KEY([Con_Id])
REFERENCES [dbo].[Concepto] ([Con_Id])
GO
ALTER TABLE [dbo].[Det_Pago] CHECK CONSTRAINT [FK_Det_Pago_Concepto1]
GO
ALTER TABLE [dbo].[Det_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Det_Pago_Pago1] FOREIGN KEY([Pag_Id])
REFERENCES [dbo].[Pago] ([Pag_Cod])
GO
ALTER TABLE [dbo].[Det_Pago] CHECK CONSTRAINT [FK_Det_Pago_Pago1]
GO
ALTER TABLE [dbo].[Detalle_Plan]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Plan_Plan_Estudio1] FOREIGN KEY([Pla_Id])
REFERENCES [dbo].[Plan_Estudio] ([Pla_Id])
GO
ALTER TABLE [dbo].[Detalle_Plan] CHECK CONSTRAINT [FK_Detalle_Plan_Plan_Estudio1]
GO
ALTER TABLE [dbo].[Detalle_Plan]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Plan_Programacion1] FOREIGN KEY([Pro_Id])
REFERENCES [dbo].[Programacion] ([Pro_Id])
GO
ALTER TABLE [dbo].[Detalle_Plan] CHECK CONSTRAINT [FK_Detalle_Plan_Programacion1]
GO
ALTER TABLE [dbo].[Deuda]  WITH CHECK ADD  CONSTRAINT [FK_Deuda_Alumno] FOREIGN KEY([Alu_Cod])
REFERENCES [dbo].[Alumno] ([Alu_Id])
GO
ALTER TABLE [dbo].[Deuda] CHECK CONSTRAINT [FK_Deuda_Alumno]
GO
ALTER TABLE [dbo].[Deuda]  WITH CHECK ADD  CONSTRAINT [FK_Deuda_Concepto] FOREIGN KEY([Con_Cod])
REFERENCES [dbo].[Concepto] ([Con_Id])
GO
ALTER TABLE [dbo].[Deuda] CHECK CONSTRAINT [FK_Deuda_Concepto]
GO
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Profesor] FOREIGN KEY([Prof_Cod])
REFERENCES [dbo].[Profesor] ([Prof_Id])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Profesor]
GO
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Programacion] FOREIGN KEY([Pro_Cod])
REFERENCES [dbo].[Programacion] ([Pro_Id])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Programacion]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_Horario_Aula] FOREIGN KEY([Aul_Id])
REFERENCES [dbo].[Aula] ([Aul_Id])
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_Horario_Aula]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_Horario_Programacion] FOREIGN KEY([Pro_Id])
REFERENCES [dbo].[Programacion] ([Pro_Id])
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_Horario_Programacion]
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Matricula_Alumno] FOREIGN KEY([Alu_Id])
REFERENCES [dbo].[Alumno] ([Alu_Id])
GO
ALTER TABLE [dbo].[Matricula] CHECK CONSTRAINT [FK_Matricula_Alumno]
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Matricula_Modulo] FOREIGN KEY([Mod_Id])
REFERENCES [dbo].[Modulo] ([Mod_Id])
GO
ALTER TABLE [dbo].[Matricula] CHECK CONSTRAINT [FK_Matricula_Modulo]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Alumno] FOREIGN KEY([Alu_Cod])
REFERENCES [dbo].[Alumno] ([Alu_Id])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_Alumno]
GO
ALTER TABLE [dbo].[Profesor]  WITH CHECK ADD  CONSTRAINT [FK_Profesor_Persona] FOREIGN KEY([Per_Id])
REFERENCES [dbo].[Persona] ([Per_Id])
GO
ALTER TABLE [dbo].[Profesor] CHECK CONSTRAINT [FK_Profesor_Persona]
GO
ALTER TABLE [dbo].[Profesor-Horario]  WITH CHECK ADD  CONSTRAINT [FK_Profesor-Horario_Horario] FOREIGN KEY([Hor_Id])
REFERENCES [dbo].[Horario] ([Hor_Id])
GO
ALTER TABLE [dbo].[Profesor-Horario] CHECK CONSTRAINT [FK_Profesor-Horario_Horario]
GO
ALTER TABLE [dbo].[Profesor-Horario]  WITH CHECK ADD  CONSTRAINT [FK_Profesor-Horario_Notas] FOREIGN KEY([Not_Id])
REFERENCES [dbo].[Notas] ([Not_Id])
GO
ALTER TABLE [dbo].[Profesor-Horario] CHECK CONSTRAINT [FK_Profesor-Horario_Notas]
GO
ALTER TABLE [dbo].[Profesor-Horario]  WITH CHECK ADD  CONSTRAINT [FK_Profesor-Horario_Profesor] FOREIGN KEY([Prof_Id])
REFERENCES [dbo].[Profesor] ([Prof_Id])
GO
ALTER TABLE [dbo].[Profesor-Horario] CHECK CONSTRAINT [FK_Profesor-Horario_Profesor]
GO
ALTER TABLE [dbo].[Programacion]  WITH CHECK ADD  CONSTRAINT [FK_Programacion_Modulo] FOREIGN KEY([Mod_Id])
REFERENCES [dbo].[Modulo] ([Mod_Id])
GO
ALTER TABLE [dbo].[Programacion] CHECK CONSTRAINT [FK_Programacion_Modulo]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Persona] FOREIGN KEY([Per_Id])
REFERENCES [dbo].[Persona] ([Per_Id])
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
USE [master]
GO
ALTER DATABASE [Web_School] SET  READ_WRITE 
GO
