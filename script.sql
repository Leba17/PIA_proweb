USE [master]
GO
/****** Object:  Database [ProyectoGenerada]    Script Date: 20/11/2023 05:13:28 p. m. ******/
CREATE DATABASE [ProyectoGenerada]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoGenerada', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ProyectoGenerada.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProyectoGenerada_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ProyectoGenerada_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ProyectoGenerada] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoGenerada].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoGenerada] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyectoGenerada] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyectoGenerada] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyectoGenerada] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyectoGenerada] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyectoGenerada] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProyectoGenerada] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectoGenerada] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectoGenerada] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectoGenerada] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyectoGenerada] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyectoGenerada] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectoGenerada] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyectoGenerada] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectoGenerada] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProyectoGenerada] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectoGenerada] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectoGenerada] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectoGenerada] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectoGenerada] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectoGenerada] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ProyectoGenerada] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectoGenerada] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProyectoGenerada] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectoGenerada] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectoGenerada] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectoGenerada] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectoGenerada] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProyectoGenerada] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProyectoGenerada] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ProyectoGenerada] SET QUERY_STORE = ON
GO
ALTER DATABASE [ProyectoGenerada] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ProyectoGenerada]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Direccion] [nvarchar](255) NOT NULL,
	[ID_Ciudad] [int] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrito]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrito](
	[ID_Producto] [int] NOT NULL,
	[ID_Usuario] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_Carrito_1] PRIMARY KEY CLUSTERED 
(
	[ID_Producto] ASC,
	[ID_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[ID_Categoria] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[ID_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[ID_Ciudad] [int] IDENTITY(1,1) NOT NULL,
	[NombreCiudad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[ID_Ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[ID_Compra] [int] IDENTITY(1,1) NOT NULL,
	[FechaCompra] [date] NOT NULL,
	[ID_EstatusEnvio] [int] NOT NULL,
	[ID_Usuario] [int] NOT NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[ID_Compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle-Compra]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle-Compra](
	[ID_Compra] [int] NOT NULL,
	[ID_Producto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[PrecioProducto] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Detalle-Compra_1] PRIMARY KEY CLUSTERED 
(
	[ID_Compra] ASC,
	[ID_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalles-Producto]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalles-Producto](
	[ID_Producto] [int] NOT NULL,
	[ID_Proveedor] [int] NOT NULL,
 CONSTRAINT [PK_Detalles-Producto] PRIMARY KEY CLUSTERED 
(
	[ID_Producto] ASC,
	[ID_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstatusEnvio]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstatusEnvio](
	[ID_EstatusEnvio] [int] IDENTITY(1,1) NOT NULL,
	[Estatus] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EstatusEnvio] PRIMARY KEY CLUSTERED 
(
	[ID_EstatusEnvio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marcas]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marcas](
	[ID_Marcas] [int] IDENTITY(1,1) NOT NULL,
	[Marcas] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Marcas] PRIMARY KEY CLUSTERED 
(
	[ID_Marcas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[ID_Producto] [int] IDENTITY(1,1) NOT NULL,
	[NombreProducto] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[ID_Categoria] [int] NOT NULL,
	[Stock] [int] NOT NULL,
	[PrecioProducto] [decimal](18, 2) NOT NULL,
	[ID_Marcas] [int] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[ID_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductoProveedor]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductoProveedor](
	[IdProducto] [int] NOT NULL,
	[IdProveedor] [int] NOT NULL,
 CONSTRAINT [PK_ProductoProveedor] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC,
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 20/11/2023 05:13:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[ID_Proveedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Telefono] [nvarchar](10) NOT NULL,
	[Correo] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[ID_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231116235632_init', N'6.0.22')
GO
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 

INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (1, N'Administrador', N'Admin', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (2, N'Cliente', N'Cliente', NULL)
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (7, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (10, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (8, 2)
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [Nombre], [Apellido], [Direccion], [ID_Ciudad], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (7, N'Abel de jesus', N'Guzman Cardenas', N'ocaso #1402 barrio del parque', 1, N'abeldejg2005@gmail.com', N'ABELDEJG2005@GMAIL.COM', N'abeldejg2005@gmail.com', N'ABELDEJG2005@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEK+RJCiImZDUDMq9Q9JnIDNTHa+DPUfwh74K/xVt9mlkt5QqBpTHy4tGV1HJ7xHPNQ==', N'F2MMSDX6OSKPBGLRZSRNEVIKZ6KTFOYS', N'1f736e15-39f2-47e9-b9a6-fc9db399f28f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Nombre], [Apellido], [Direccion], [ID_Ciudad], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (8, N'Juan Jesus ', N'Lopez Hernandez', N'pijijiapan 123', 5, N'jesuslopez@gmail.com', N'JESUSLOPEZ@GMAIL.COM', N'jesuslopez@gmail.com', N'JESUSLOPEZ@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOvDXAvckO8OxHQ8YdgJ6y43nsRrUdZaChOckmzfOfhHKnKZRmXNU1IRieffV0akVA==', N'QGSKX3GIV2IUBOMOCLWVVQXEEQ4HYK6T', N'1daa385e-1e92-4b3f-a7ab-144ce788325d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Nombre], [Apellido], [Direccion], [ID_Ciudad], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (9, N'Jose Luis', N'chilaquiles Smith', N'ocaso #1402 barrio del parque', 3, N'joseluis@gmail.com', N'JOSELUIS@GMAIL.COM', N'joseluis@gmail.com', N'JOSELUIS@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEO1n9Wrai/JhPwUVzyXah2JkwpLTUE/ZA1clZpjZJ4YamqKyzOvucALex3LAdGcAgA==', N'OH7ZSFS6E6IV67BQ5H6GTPQN2TZ42ZB6', N'766cd8a0-c8e1-45bf-bafe-51ad8cb0c5d1', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Nombre], [Apellido], [Direccion], [ID_Ciudad], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (10, N'Emilio A', N'Chilaquil', N'qwertty', 3, N'emilioachilaquil@gmail.com', N'EMILIOACHILAQUIL@GMAIL.COM', N'emilioachilaquil@gmail.com', N'EMILIOACHILAQUIL@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEALl7uBg/8eeUuu9HQAgFlHuvHUuyeZ8ter55QrC1mZmsiZTaxBbgiUQaH3MgUHYBg==', N'CAEYIANCQK5CKI3E53XU7RLFEM3RTQZA', N'eb017603-0042-4f59-8155-e7d3f290f332', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
GO
INSERT [dbo].[Carrito] ([ID_Producto], [ID_Usuario], [Cantidad]) VALUES (4, 7, 0)
INSERT [dbo].[Carrito] ([ID_Producto], [ID_Usuario], [Cantidad]) VALUES (4, 8, 5)
INSERT [dbo].[Carrito] ([ID_Producto], [ID_Usuario], [Cantidad]) VALUES (5, 7, 1)
INSERT [dbo].[Carrito] ([ID_Producto], [ID_Usuario], [Cantidad]) VALUES (5, 8, 3)
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([ID_Categoria], [Descripcion]) VALUES (2, N'Smartphones y Accesorios:')
INSERT [dbo].[Categoria] ([ID_Categoria], [Descripcion]) VALUES (3, N'Computadoras y Portátiles')
INSERT [dbo].[Categoria] ([ID_Categoria], [Descripcion]) VALUES (4, N'Electrodomésticos Inteligentes')
INSERT [dbo].[Categoria] ([ID_Categoria], [Descripcion]) VALUES (5, N'Dispositivos de audio')
INSERT [dbo].[Categoria] ([ID_Categoria], [Descripcion]) VALUES (6, N'Electrónica de Consumo')
INSERT [dbo].[Categoria] ([ID_Categoria], [Descripcion]) VALUES (7, N'Dispositivos Wearables')
INSERT [dbo].[Categoria] ([ID_Categoria], [Descripcion]) VALUES (8, N'Cámaras y Accesorios Fotográficos')
INSERT [dbo].[Categoria] ([ID_Categoria], [Descripcion]) VALUES (9, N'Videojuegos y Consolas')
INSERT [dbo].[Categoria] ([ID_Categoria], [Descripcion]) VALUES (10, N'Dispositivos de almacenamiento')
INSERT [dbo].[Categoria] ([ID_Categoria], [Descripcion]) VALUES (11, N'Gadgets Tecnológicos')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Ciudad] ON 

INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (1, N'Abasolo')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (2, N'Agualeguas')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (3, N'Los Aldamas')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (4, N'Allende')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (5, N'Anáhuac')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (6, N'Apodaca')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (7, N'Aramberri')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (8, N'Bustamante')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (9, N'Cadereyta Jiménez')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (10, N'Carmen')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (11, N'Cerralvo')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (12, N'China')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (13, N'Dr. Arroyo')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (14, N'Dr. Coss')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (15, N'Dr. González')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (16, N'Galeana')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (17, N'García')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (18, N'San Pedro Garza García')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (19, N'General Bravo')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (20, N'General Escobedo')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (21, N'General Terán')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (22, N'General Treviño')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (23, N'General Zaragoza')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (24, N'General Zuazua')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (25, N'Guadalupe')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (26, N'Los Herreras')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (27, N'Higueras')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (28, N'Hualahuises')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (29, N'Iturbide')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (30, N'Juárez')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (31, N'Lampazos de Naranjo')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (32, N'Linares')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (33, N'Marín')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (34, N'Melchor Ocampo')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (35, N'Mier y Noriega')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (36, N'Mina')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (37, N'Montemorelos')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (38, N'Monterrey')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (39, N'Parás')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (40, N'Pesquería')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (41, N'Los Ramones')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (42, N'Rayones')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (43, N'Sabinas Hidalgo')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (44, N'Salinas Victoria')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (45, N'San Nicolás de los Garza')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (46, N'San Pedro Garza García')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (47, N'Santa Catarina')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (48, N'Santiago')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (49, N'Santiago')
INSERT [dbo].[Ciudad] ([ID_Ciudad], [NombreCiudad]) VALUES (50, N'Villaldama')
SET IDENTITY_INSERT [dbo].[Ciudad] OFF
GO
SET IDENTITY_INSERT [dbo].[Compra] ON 

INSERT [dbo].[Compra] ([ID_Compra], [FechaCompra], [ID_EstatusEnvio], [ID_Usuario]) VALUES (1, CAST(N'2023-11-20' AS Date), 1, 7)
INSERT [dbo].[Compra] ([ID_Compra], [FechaCompra], [ID_EstatusEnvio], [ID_Usuario]) VALUES (2, CAST(N'2023-11-20' AS Date), 2, 8)
INSERT [dbo].[Compra] ([ID_Compra], [FechaCompra], [ID_EstatusEnvio], [ID_Usuario]) VALUES (4, CAST(N'2023-11-20' AS Date), 3, 8)
INSERT [dbo].[Compra] ([ID_Compra], [FechaCompra], [ID_EstatusEnvio], [ID_Usuario]) VALUES (5, CAST(N'2023-11-20' AS Date), 2, 8)
SET IDENTITY_INSERT [dbo].[Compra] OFF
GO
INSERT [dbo].[Detalle-Compra] ([ID_Compra], [ID_Producto], [Cantidad], [PrecioProducto]) VALUES (1, 4, 1, CAST(1500.25 AS Decimal(18, 2)))
INSERT [dbo].[Detalle-Compra] ([ID_Compra], [ID_Producto], [Cantidad], [PrecioProducto]) VALUES (2, 4, 1, CAST(130.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[EstatusEnvio] ON 

INSERT [dbo].[EstatusEnvio] ([ID_EstatusEnvio], [Estatus]) VALUES (1, N'Enviado')
INSERT [dbo].[EstatusEnvio] ([ID_EstatusEnvio], [Estatus]) VALUES (2, N'Pendiente')
INSERT [dbo].[EstatusEnvio] ([ID_EstatusEnvio], [Estatus]) VALUES (3, N'Eliminado')
INSERT [dbo].[EstatusEnvio] ([ID_EstatusEnvio], [Estatus]) VALUES (4, N'Problemas')
SET IDENTITY_INSERT [dbo].[EstatusEnvio] OFF
GO
SET IDENTITY_INSERT [dbo].[Marcas] ON 

INSERT [dbo].[Marcas] ([ID_Marcas], [Marcas]) VALUES (1, N'AMD')
INSERT [dbo].[Marcas] ([ID_Marcas], [Marcas]) VALUES (2, N'Intel')
INSERT [dbo].[Marcas] ([ID_Marcas], [Marcas]) VALUES (3, N'LG')
INSERT [dbo].[Marcas] ([ID_Marcas], [Marcas]) VALUES (4, N'Panasonic')
INSERT [dbo].[Marcas] ([ID_Marcas], [Marcas]) VALUES (5, N'HP')
INSERT [dbo].[Marcas] ([ID_Marcas], [Marcas]) VALUES (6, N'Asus')
SET IDENTITY_INSERT [dbo].[Marcas] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([ID_Producto], [NombreProducto], [Descripcion], [ID_Categoria], [Stock], [PrecioProducto], [ID_Marcas]) VALUES (4, N'Celeron', N'qwerty', 3, 20, CAST(1500.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Producto] ([ID_Producto], [NombreProducto], [Descripcion], [ID_Categoria], [Stock], [PrecioProducto], [ID_Marcas]) VALUES (5, N'Ryzen 5', N'Procesador Ryzen 5 5500G', 3, 10, CAST(150.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedor] ON 

INSERT [dbo].[Proveedor] ([ID_Proveedor], [Nombre], [Apellido], [Telefono], [Correo]) VALUES (1, N'Jesus', N'Guzman', N'8113016290', N'jesusguzman@gmail.com')
SET IDENTITY_INSERT [dbo].[Proveedor] OFF
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 20/11/2023 05:13:28 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 20/11/2023 05:13:28 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 20/11/2023 05:13:28 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 20/11/2023 05:13:28 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 20/11/2023 05:13:28 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 20/11/2023 05:13:28 p. m. ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_ID_Ciudad]    Script Date: 20/11/2023 05:13:28 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_ID_Ciudad] ON [dbo].[AspNetUsers]
(
	[ID_Ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 20/11/2023 05:13:28 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Carrito_ID_Usuario]    Script Date: 20/11/2023 05:13:28 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Carrito_ID_Usuario] ON [dbo].[Carrito]
(
	[ID_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Compra_ID_EstatusEnvio]    Script Date: 20/11/2023 05:13:28 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Compra_ID_EstatusEnvio] ON [dbo].[Compra]
(
	[ID_EstatusEnvio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Compra_ID_Usuario]    Script Date: 20/11/2023 05:13:28 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Compra_ID_Usuario] ON [dbo].[Compra]
(
	[ID_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Detalle-Compra_ID_Producto]    Script Date: 20/11/2023 05:13:28 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Detalle-Compra_ID_Producto] ON [dbo].[Detalle-Compra]
(
	[ID_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Detalles-Producto_ID_Proveedor]    Script Date: 20/11/2023 05:13:28 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Detalles-Producto_ID_Proveedor] ON [dbo].[Detalles-Producto]
(
	[ID_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Producto_ID_Categoria]    Script Date: 20/11/2023 05:13:28 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Producto_ID_Categoria] ON [dbo].[Producto]
(
	[ID_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Producto_ID_Marcas]    Script Date: 20/11/2023 05:13:28 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Producto_ID_Marcas] ON [dbo].[Producto]
(
	[ID_Marcas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Ciudad_ID_Ciudad] FOREIGN KEY([ID_Ciudad])
REFERENCES [dbo].[Ciudad] ([ID_Ciudad])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Ciudad_ID_Ciudad]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Carrito]  WITH CHECK ADD  CONSTRAINT [FK_Carrito_Producto] FOREIGN KEY([ID_Producto])
REFERENCES [dbo].[Producto] ([ID_Producto])
GO
ALTER TABLE [dbo].[Carrito] CHECK CONSTRAINT [FK_Carrito_Producto]
GO
ALTER TABLE [dbo].[Carrito]  WITH CHECK ADD  CONSTRAINT [FK_Carrito_Usuario] FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Carrito] CHECK CONSTRAINT [FK_Carrito_Usuario]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_AspNetUsers_ID_Usuario] FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_AspNetUsers_ID_Usuario]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_EstatusEnvio] FOREIGN KEY([ID_EstatusEnvio])
REFERENCES [dbo].[EstatusEnvio] ([ID_EstatusEnvio])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_EstatusEnvio]
GO
ALTER TABLE [dbo].[Detalle-Compra]  WITH CHECK ADD  CONSTRAINT [FK_Detalle-Compra_Compra1] FOREIGN KEY([ID_Compra])
REFERENCES [dbo].[Compra] ([ID_Compra])
GO
ALTER TABLE [dbo].[Detalle-Compra] CHECK CONSTRAINT [FK_Detalle-Compra_Compra1]
GO
ALTER TABLE [dbo].[Detalle-Compra]  WITH CHECK ADD  CONSTRAINT [FK_Detalle-Compra_Producto] FOREIGN KEY([ID_Producto])
REFERENCES [dbo].[Producto] ([ID_Producto])
GO
ALTER TABLE [dbo].[Detalle-Compra] CHECK CONSTRAINT [FK_Detalle-Compra_Producto]
GO
ALTER TABLE [dbo].[Detalles-Producto]  WITH CHECK ADD  CONSTRAINT [FK_Detalles-Producto_Producto] FOREIGN KEY([ID_Producto])
REFERENCES [dbo].[Producto] ([ID_Producto])
GO
ALTER TABLE [dbo].[Detalles-Producto] CHECK CONSTRAINT [FK_Detalles-Producto_Producto]
GO
ALTER TABLE [dbo].[Detalles-Producto]  WITH CHECK ADD  CONSTRAINT [FK_Detalles-Producto_Proveedor] FOREIGN KEY([ID_Proveedor])
REFERENCES [dbo].[Proveedor] ([ID_Proveedor])
GO
ALTER TABLE [dbo].[Detalles-Producto] CHECK CONSTRAINT [FK_Detalles-Producto_Proveedor]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_categoria] FOREIGN KEY([ID_Categoria])
REFERENCES [dbo].[Categoria] ([ID_Categoria])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_categoria]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Marcas] FOREIGN KEY([ID_Marcas])
REFERENCES [dbo].[Marcas] ([ID_Marcas])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Marcas]
GO
USE [master]
GO
ALTER DATABASE [ProyectoGenerada] SET  READ_WRITE 
GO
