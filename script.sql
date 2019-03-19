USE [master]
GO
/****** Object:  Database [QLBH]    Script Date: 3/19/2019 4:13:18 PM ******/
CREATE DATABASE [QLBH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBH', FILENAME = N'C:\db\QLBH.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLBH_log', FILENAME = N'C:\db\QLBH_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLBH] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBH] SET  MULTI_USER 
GO
ALTER DATABASE [QLBH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBH] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLBH] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLBH]
GO
/****** Object:  Table [dbo].[Audit_CTHD]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit_CTHD](
	[MaHD] [nchar](10) NOT NULL,
	[MaHang] [nchar](10) NULL,
	[SL] [int] NULL,
	[ThaoTac] [nvarchar](50) NULL,
	[NgayGio] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Audit_HangHoa]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit_HangHoa](
	[MaHang] [nchar](10) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[DVT] [nvarchar](20) NULL,
	[DonGia] [float] NULL,
	[SLcon] [int] NULL,
	[MaLoaiHang] [nchar](10) NULL,
	[ThaoTac] [nchar](50) NULL,
	[NgayGio] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Audit_HoaDon]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit_HoaDon](
	[MaHD] [nchar](10) NULL,
	[NgayHD] [date] NULL,
	[MaKH] [nchar](10) NULL,
	[MaNV] [nchar](10) NULL,
	[ThaoTac] [nvarchar](50) NULL,
	[NgayGo] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Audit_KhachHang]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit_KhachHang](
	[MaKH] [nchar](10) NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [nchar](10) NULL,
	[STK] [nchar](20) NULL,
	[MST] [nchar](20) NULL,
	[ThaoTac] [nvarchar](50) NULL,
	[NgayGio] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Audit_LoaiHang]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit_LoaiHang](
	[MaLoaiHang] [nchar](10) NOT NULL,
	[TenLoaiHang] [nchar](50) NULL,
	[GhiChu] [nchar](100) NULL,
	[ThaoTac] [nchar](50) NULL,
	[NgayGio] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Audit_NhanVien]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit_NhanVien](
	[MaNV] [nchar](10) NULL,
	[TenNV] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [bit] NULL,
	[SDT] [nchar](10) NULL,
	[ThaoTac] [nvarchar](50) NULL,
	[NgayGio] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTHD]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD](
	[MaHD] [nchar](10) NOT NULL,
	[MaHang] [nchar](10) NOT NULL,
	[SL] [int] NULL,
 CONSTRAINT [PK_CTHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHang] [nchar](10) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[DVT] [nvarchar](20) NULL,
	[DonGia] [float] NULL,
	[SLcon] [int] NULL,
	[MaLoaiHang] [nchar](10) NULL,
 CONSTRAINT [PK_HangHoa] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nchar](10) NOT NULL,
	[NgayHD] [date] NULL,
	[MaKH] [nchar](10) NULL,
	[MaNV] [nchar](10) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [nchar](10) NULL,
	[STK] [nchar](20) NULL,
	[MST] [nchar](20) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiHang]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHang](
	[MaLoaiHang] [nchar](10) NOT NULL,
	[TenLoaiHang] [nvarchar](50) NULL,
	[GhiChu] [nchar](200) NULL,
 CONSTRAINT [PK_LoaiHang] PRIMARY KEY CLUSTERED 
(
	[MaLoaiHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [bit] NULL,
	[SDT] [nchar](10) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-17 07:26:51.960' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-17 07:26:52.800' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'U', CAST(N'2019-03-17 07:56:52.470' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'D', CAST(N'2019-03-17 07:56:52.470' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'U', CAST(N'2019-03-17 07:56:58.213' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'D', CAST(N'2019-03-17 07:56:58.213' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'U', CAST(N'2019-03-17 07:56:59.053' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'D', CAST(N'2019-03-17 07:56:59.053' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'U', CAST(N'2019-03-17 07:56:59.067' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'D', CAST(N'2019-03-17 07:56:59.067' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'U', CAST(N'2019-03-17 07:56:59.587' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'D', CAST(N'2019-03-17 07:56:59.587' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'U', CAST(N'2019-03-17 07:57:00.293' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'D', CAST(N'2019-03-17 07:57:00.293' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'U', CAST(N'2019-03-17 07:57:02.263' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'D', CAST(N'2019-03-17 07:57:02.263' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 8, N'U', CAST(N'2019-03-17 09:08:04.600' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 8, N'D', CAST(N'2019-03-17 09:08:04.600' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 4, N'U', CAST(N'2019-03-17 09:08:05.260' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 4, N'D', CAST(N'2019-03-17 09:08:05.260' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 4, N'U', CAST(N'2019-03-17 09:08:05.433' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 4, N'D', CAST(N'2019-03-17 09:08:05.433' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 4, N'U', CAST(N'2019-03-17 09:08:05.580' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 4, N'D', CAST(N'2019-03-17 09:08:05.580' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'U', CAST(N'2019-03-17 12:06:14.553' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'D', CAST(N'2019-03-17 12:06:14.560' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-17 12:07:14.360' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-17 12:07:14.360' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-17 12:09:27.147' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-17 12:09:27.147' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-17 12:13:17.967' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-17 12:13:17.967' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-17 12:15:23.820' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-17 12:15:23.820' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 4, N'U', CAST(N'2019-03-17 13:17:20.830' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 4, N'D', CAST(N'2019-03-17 13:17:20.857' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'U', CAST(N'2019-03-17 13:17:55.783' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'D', CAST(N'2019-03-17 13:17:55.787' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-17 13:23:37.177' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-17 13:23:37.177' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'U', CAST(N'2019-03-17 15:36:48.730' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'D', CAST(N'2019-03-17 15:36:48.767' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-17 15:38:54.987' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-17 15:38:54.987' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'U', CAST(N'2019-03-17 15:40:17.090' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'D', CAST(N'2019-03-17 15:40:17.090' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 7, N'U', CAST(N'2019-03-17 15:40:37.160' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 7, N'D', CAST(N'2019-03-17 15:40:37.160' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH05      ', 10, N'I', CAST(N'2019-03-19 13:14:34.767' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH06      ', 100, N'I', CAST(N'2019-03-19 13:15:22.387' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD06      ', N'HH07      ', 150, N'I', CAST(N'2019-03-19 13:15:54.650' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-19 13:21:57.910' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-19 13:21:57.913' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 103, N'U', CAST(N'2019-03-19 13:22:42.827' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 103, N'D', CAST(N'2019-03-19 13:22:42.827' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 153, N'U', CAST(N'2019-03-19 13:23:20.537' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 153, N'D', CAST(N'2019-03-19 13:23:20.537' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 3, N'U', CAST(N'2019-03-19 13:24:14.793' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 3, N'D', CAST(N'2019-03-19 13:24:14.793' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 241, N'U', CAST(N'2019-03-19 15:12:04.967' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 241, N'D', CAST(N'2019-03-19 15:12:04.967' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 244, N'U', CAST(N'2019-03-19 15:15:00.660' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 244, N'D', CAST(N'2019-03-19 15:15:00.660' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 247, N'U', CAST(N'2019-03-19 15:17:42.837' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 247, N'D', CAST(N'2019-03-19 15:17:42.837' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 251, N'U', CAST(N'2019-03-19 15:17:48.643' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 251, N'D', CAST(N'2019-03-19 15:17:48.643' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH06      ', 100, N'U', CAST(N'2019-03-19 15:21:21.450' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH05      ', 10, N'U', CAST(N'2019-03-19 15:23:23.460' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH05      ', 10, N'D', CAST(N'2019-03-19 15:23:23.460' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 255, N'U', CAST(N'2019-03-19 15:32:15.303' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 255, N'D', CAST(N'2019-03-19 15:32:15.303' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH05      ', 20, N'U', CAST(N'2019-03-19 15:32:33.083' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH05      ', 20, N'D', CAST(N'2019-03-19 15:32:33.083' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 258, N'U', CAST(N'2019-03-19 16:00:52.377' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 258, N'D', CAST(N'2019-03-19 16:00:52.377' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 264, N'U', CAST(N'2019-03-19 16:00:54.557' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 264, N'D', CAST(N'2019-03-19 16:00:54.557' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 270, N'U', CAST(N'2019-03-19 16:02:00.557' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 270, N'D', CAST(N'2019-03-19 16:02:00.557' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'U', CAST(N'2019-03-17 08:42:17.800' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'D', CAST(N'2019-03-17 08:42:17.800' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-17 08:59:29.130' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-17 08:59:29.130' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'U', CAST(N'2019-03-17 08:59:50.990' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'D', CAST(N'2019-03-17 08:59:50.993' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-17 09:08:00.510' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-17 09:08:00.510' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'U', CAST(N'2019-03-17 09:08:52.343' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'D', CAST(N'2019-03-17 09:08:52.343' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH06      ', 100, N'D', CAST(N'2019-03-19 15:21:21.450' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH06      ', 105, N'U', CAST(N'2019-03-19 15:22:33.810' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH06      ', 105, N'D', CAST(N'2019-03-19 15:22:33.810' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD06      ', N'HH07      ', 150, N'U', CAST(N'2019-03-19 15:23:44.830' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD06      ', N'HH07      ', 150, N'D', CAST(N'2019-03-19 15:23:44.830' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD06      ', N'HH02      ', 100, N'I', CAST(N'2019-03-19 16:11:00.153' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH13      ', N'Macbook', N'10', 800, 984, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 05:04:50.920' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH13      ', N'Macbook', N'10', 800, 984, N'LH01      ', N'D                                                 ', CAST(N'2019-03-17 05:04:50.940' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH12      ', N'Asus', N'40', 700, 984, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 05:09:08.063' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH12      ', N'Asus', N'40', 700, 100, N'LH01      ', N'D                                                 ', CAST(N'2019-03-17 05:12:16.040' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HPP', N'10', 600, 984, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 05:13:33.453' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HPP', N'10', 600, 200, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 05:13:59.777' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 984, N'LH02      ', N'U                                                 ', CAST(N'2019-03-17 07:26:46.020' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 980, N'LH02      ', N'U                                                 ', CAST(N'2019-03-17 07:26:46.877' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 942, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:26:52.800' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 936, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:56:52.570' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 896, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 08:42:17.800' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 893, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 08:59:29.130' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 889, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 08:59:50.993' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 886, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 09:08:01.140' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 852, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:10.833' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 848, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:11.923' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 844, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:12.637' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 840, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:13.157' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 836, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:13.570' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 882, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 09:08:52.537' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 878, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 12:06:14.563' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 875, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 12:07:14.363' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 872, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 12:09:27.180' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 869, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 12:13:17.967' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 866, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 12:15:23.820' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH03      ', N'Sony', N'44', 600, 957, N'LH03      ', N'U                                                 ', CAST(N'2019-03-17 13:17:20.863' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 820, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 13:17:26.227' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 815, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 13:17:27.010' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 810, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 13:17:50.903' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 807, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 13:17:53.233' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 862, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 13:17:55.787' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 976, N'LH02      ', N'U                                                 ', CAST(N'2019-03-17 13:18:27.997' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 973, N'LH02      ', N'U                                                 ', CAST(N'2019-03-17 13:18:28.620' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 970, N'LH02      ', N'U                                                 ', CAST(N'2019-03-17 13:18:29.210' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 967, N'LH02      ', N'U                                                 ', CAST(N'2019-03-17 13:18:29.227' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 859, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 13:23:37.810' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 804, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 15:30:51.790' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 855, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 15:36:48.767' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 852, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 15:38:54.987' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 960, N'LH02      ', N'U                                                 ', CAST(N'2019-03-17 15:39:49.693' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 841, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 15:40:37.163' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 932, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:56:59.040' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 926, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:56:59.053' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 920, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:56:59.067' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 914, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:00.273' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 908, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:00.297' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 902, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:02.430' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 983, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:11.197' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 977, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:12.557' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 971, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:12.987' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 965, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:13.617' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 959, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:13.623' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 953, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:13.643' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 947, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:14.040' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 941, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:14.687' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 935, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:24.060' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 927, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:24.800' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 919, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:24.813' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 911, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:24.943' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH03      ', N'Sony', N'44', 600, 973, N'LH03      ', N'U                                                 ', CAST(N'2019-03-17 09:08:05.107' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH03      ', N'Sony', N'44', 600, 969, N'LH03      ', N'U                                                 ', CAST(N'2019-03-17 09:08:05.260' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH03      ', N'Sony', N'44', 600, 965, N'LH03      ', N'U                                                 ', CAST(N'2019-03-17 09:08:05.433' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH03      ', N'Sony', N'44', 600, 961, N'LH03      ', N'U                                                 ', CAST(N'2019-03-17 09:08:05.583' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 832, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:17.140' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 828, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:17.673' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH07      ', N'Daikin', N'50', 80000, 961, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:22.190' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH07      ', N'Daikin', N'50', 80000, 957, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:22.713' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH07      ', N'Daikin', N'50', 80000, 953, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:22.843' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH07      ', N'Daikin', N'50', 80000, 949, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:23.330' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH07      ', N'Daikin', N'50', 80000, 945, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:23.880' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 824, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:26.297' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 848, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 15:40:17.090' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 957, N'LH02      ', N'U                                                 ', CAST(N'2019-03-19 13:14:34.753' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 801, N'LH04      ', N'U                                                 ', CAST(N'2019-03-19 13:15:22.387' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH07      ', N'Daikin', N'50', 80000, 941, N'LH04      ', N'U                                                 ', CAST(N'2019-03-19 13:15:54.650' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 838, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 13:21:57.910' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 738, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 13:22:42.827' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 688, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 13:23:20.537' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH03      ', N'Sony', N'44', 600, 954, N'LH03      ', N'U                                                 ', CAST(N'2019-03-19 13:24:14.793' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH03      ', N'Sony', N'44', 600, 954, N'LH03      ', N'U                                                 ', CAST(N'2019-03-19 13:24:20.747' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 600, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 15:12:04.523' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 597, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 15:15:00.660' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 964, N'LH02      ', N'U                                                 ', CAST(N'2019-03-17 13:23:45.263' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 594, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 15:17:42.800' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 590, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 15:17:48.643' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 586, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 15:32:15.303' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 937, N'LH02      ', N'U                                                 ', CAST(N'2019-03-19 15:32:33.083' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 583, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 16:00:52.377' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 577, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 16:00:54.557' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 571, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 16:02:00.553' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 701, N'LH04      ', N'U                                                 ', CAST(N'2019-03-19 15:21:21.363' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 696, N'LH04      ', N'U                                                 ', CAST(N'2019-03-19 15:22:33.810' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH07      ', N'Daikin', N'50', 80000, 791, N'LH04      ', N'U                                                 ', CAST(N'2019-03-19 15:23:44.830' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH02      ', N'AA', N'15', 300, 100, N'LH03      ', N'I                                                 ', CAST(N'2019-03-19 16:08:53.940' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH02      ', N'AA', N'15', 300, 100, N'LH03      ', N'U                                                 ', CAST(N'2019-03-19 16:09:28.003' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH02      ', N'AA', N'15', 300, 200, N'LH03      ', N'U                                                 ', CAST(N'2019-03-19 16:11:00.153' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 947, N'LH02      ', N'U                                                 ', CAST(N'2019-03-19 15:23:23.460' AS DateTime))
INSERT [dbo].[Audit_LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu], [ThaoTac], [NgayGio]) VALUES (N'LH05      ', N'Gia Dụng                                          ', N'sdfsd                                                                                               ', N'Insert                                            ', CAST(N'2019-03-13 00:00:00.000' AS DateTime))
INSERT [dbo].[Audit_LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu], [ThaoTac], [NgayGio]) VALUES (N'LH05      ', N'Chip                                              ', N'sdfsdg                                                                                              ', N'I                                                 ', CAST(N'2019-03-15 20:11:23.660' AS DateTime))
INSERT [dbo].[Audit_LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu], [ThaoTac], [NgayGio]) VALUES (N'LH11      ', N'sdfsd                                             ', N'                                                                                                    ', N'I                                                 ', CAST(N'2019-03-16 07:39:42.447' AS DateTime))
INSERT [dbo].[CTHD] ([MaHD], [MaHang], [SL]) VALUES (N'HD01      ', N'HH01      ', 273)
INSERT [dbo].[CTHD] ([MaHD], [MaHang], [SL]) VALUES (N'HD02      ', N'HH05      ', 24)
INSERT [dbo].[CTHD] ([MaHD], [MaHang], [SL]) VALUES (N'HD04      ', N'HH06      ', 114)
INSERT [dbo].[CTHD] ([MaHD], [MaHang], [SL]) VALUES (N'HD06      ', N'HH02      ', 100)
INSERT [dbo].[CTHD] ([MaHD], [MaHang], [SL]) VALUES (N'HD06      ', N'HH07      ', 157)
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 568, N'LH01      ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH02      ', N'AA', N'15', 300, 100, N'LH03      ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH03      ', N'Sony', N'44', 600, 957, N'LH03      ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH05      ', N'Asus', N'20', 600, 933, N'LH02      ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 687, N'LH04      ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH07      ', N'Daikin', N'50', 80000, 784, N'LH04      ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH10      ', N'Dell', N'20', 500, 903, N'LH01      ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH11      ', N'HP', N'10', 600, 200, N'LH01      ')
INSERT [dbo].[HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV]) VALUES (N'HD01      ', CAST(N'2019-02-23' AS Date), N'KH04      ', N'NV01      ')
INSERT [dbo].[HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV]) VALUES (N'HD02      ', CAST(N'2019-03-08' AS Date), N'KH05      ', N'NV02      ')
INSERT [dbo].[HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV]) VALUES (N'HD04      ', CAST(N'2019-03-08' AS Date), N'KH02      ', N'NV03      ')
INSERT [dbo].[HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV]) VALUES (N'HD06      ', CAST(N'2019-03-08' AS Date), N'KH02      ', N'NV01      ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST]) VALUES (N'KH01      ', N'Dung', N'Hue', N'21432432  ', N'2394923492          ', N'1                   ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST]) VALUES (N'KH02      ', N'Tien', N'Da Nang', N'32432424  ', N'3245345345          ', N'1                   ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST]) VALUES (N'KH03      ', N'De', N'Hue', N'23523564  ', N'0345345345          ', N'2                   ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST]) VALUES (N'KH04      ', N'Tuyen', N'Hue', N'23523523  ', N'2345432555          ', N'3                   ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST]) VALUES (N'KH05      ', N'Nhi', N'Da Nang', N'32523523  ', N'3453246246          ', N'2                   ')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'LH01      ', N'Computer', N'dsfsdsdf                                                                                                                                                                                                ')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'LH02      ', N'DienThoai', N'gdfgdfg                                                                                                                                                                                                 ')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'LH03      ', N'TiVi', N'sdfsdf                                                                                                                                                                                                  ')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'LH04      ', N'DieuHoa', N'sdkfjsd                                                                                                                                                                                                 ')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'LH05      ', N'Chip', N'sdfsdg                                                                                                                                                                                                  ')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'LH11      ', N'sdfsd     ', N'                                                                                                                                                                                                        ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT]) VALUES (N'NV01      ', N'Huy', CAST(N'1998-05-05 00:00:00.000' AS DateTime), 1, N'23432     ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT]) VALUES (N'NV02      ', N'Thinh', CAST(N'2000-06-02 00:00:00.000' AS DateTime), 1, N'234234532 ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT]) VALUES (N'NV03      ', N'Toan', CAST(N'1998-04-02 00:00:00.000' AS DateTime), 1, N'435034095 ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT]) VALUES (N'NV04      ', N'Tam', CAST(N'1998-04-03 00:00:00.000' AS DateTime), 0, N'345345    ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT]) VALUES (N'NV05      ', N'Hue', CAST(N'1999-05-04 00:00:00.000' AS DateTime), 0, N'2345236   ')
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HangHoa] FOREIGN KEY([MaHang])
REFERENCES [dbo].[HangHoa] ([MaHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_HangHoa]
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HoaDon1] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_HoaDon1]
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_HangHoa_LoaiHang] FOREIGN KEY([MaLoaiHang])
REFERENCES [dbo].[LoaiHang] ([MaLoaiHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_HangHoa_LoaiHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
/****** Object:  StoredProcedure [dbo].[Delete_CTHD]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Delete_CTHD] @MaHD nchar(10), @MaHang nchar(10)
as
begin
	Delete from CTHD where MaHD = @MaHD and MaHang = @MaHang
end

GO
/****** Object:  StoredProcedure [dbo].[Delete_HangHoa]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Delete_HangHoa] @MaHang nchar(10)
as
begin
	Delete from HangHoa where MaHang = @MaHang
end
GO
/****** Object:  StoredProcedure [dbo].[Delete_HoaDon]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_HoaDon] @MaHD nchar(10)
as
begin
	Delete from HoaDon where MaHD = @MaHD
end

GO
/****** Object:  StoredProcedure [dbo].[Delete_KhachHang]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[Delete_KhachHang] @MaKH nchar(10)
as
begin
	Delete from KhachHang where MaKH = @MaKH
end

GO
/****** Object:  StoredProcedure [dbo].[Delete_LoaiHang]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Delete_LoaiHang] @MaLoaiHang nchar(10)
as
begin
	Delete from LoaiHang where MaLoaiHang = @MaLoaiHang
end

GO
/****** Object:  StoredProcedure [dbo].[Delete_NhanVien]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_NhanVien] @MaNV nchar(10)
as
begin
	Delete from NhanVien where MaNV = @MaNV
end

GO
/****** Object:  StoredProcedure [dbo].[Insert_CTHD]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Insert_CTHD] @MaHD nchar(10), @MaHang nchar(10), @SL int
as
begin
	insert into CTHD values(@MaHD, @MaHang,@SL)
end

GO
/****** Object:  StoredProcedure [dbo].[Insert_HangHoa]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Insert_HangHoa] @MaHang nchar(10), @TenHang nvarchar(50), @DVT nvarchar(20), @DonGia float, @SLcon int, @MaLoaiHang nchar(10)
as 
begin
	Insert into HangHoa values(@MaHang,@TenHang,@DVT,@DonGia,@SLcon,@MaLoaiHang)
end

GO
/****** Object:  StoredProcedure [dbo].[Insert_HoaDon]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Insert_HoaDon] @MaHD nchar(10), @NgayHD date, @MaKH nchar(10), @MaNV nchar(10)
as
begin
	insert into HoaDon values(@MaHD,@NgayHD,@MaKH,@MaNV)
end

GO
/****** Object:  StoredProcedure [dbo].[Insert_LoaiHang]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Insert_LoaiHang] @MaLoaiHang nchar(10), @TenLoaiHang nchar(10), @GhiChu nchar(20)
as
begin
	insert into LoaiHang values(@MaLoaiHang, @TenLoaiHang, @GhiChu)
end

GO
/****** Object:  StoredProcedure [dbo].[Insert_NhanVien]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Insert_NhanVien] @MaNV nchar(10), @TenNV nvarchar(50), @NgaySinh datetime, @GioiTinh bit, @SDT nchar(10)
as
begin
	insert into NhanVien values(@MaNV,@TenNV,@NgaySinh,@GioiTinh,@SDT)
end

GO
/****** Object:  StoredProcedure [dbo].[proc_ThemMoiCTHD]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_ThemMoiCTHD] @MaHang nchar(10), @SL int
as
begin
	update CTHD set SL = SL + @Sl where MaHang = @MaHang
	Select TenLoaiHang, TenHang, SL, DVT, DonGia 
	from LoaiHang lh, HangHoa hh, CTHD 
	where hh.MaLoaiHang = lh.MaLoaiHang and hh.MaHang = CTHD.MaHang and hh.MaHang = @MaHang 
end
GO
/****** Object:  StoredProcedure [dbo].[Select_CTHD]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_CTHD] 
as
begin
	select * from CTHD
end

GO
/****** Object:  StoredProcedure [dbo].[Select_CTHDByMaHD]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_CTHDByMaHD] @MaHD nchar(10)
as
begin
	select * from CTHD where MaHD = @MaHD
end

GO
/****** Object:  StoredProcedure [dbo].[Select_HangHoa]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_HangHoa] 
as
begin
	Select * from HangHoa
end

GO
/****** Object:  StoredProcedure [dbo].[Select_HangHoaByMa]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_HangHoaByMa] @MaHang nchar(10)
as
begin
	select * from HangHoa where MaHang = @MaHang
end

GO
/****** Object:  StoredProcedure [dbo].[Select_HoaDon]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_HoaDon] 
as
begin
	select * from HoaDon
end

GO
/****** Object:  StoredProcedure [dbo].[Select_HoaDonByMa]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_HoaDonByMa] @MaHD nchar(10)
as
begin
	select * from HoaDon where MaHD = @MaHD
end

GO
/****** Object:  StoredProcedure [dbo].[Select_KhachHangByMa]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_KhachHangByMa] @MaKH nchar(10)
as
begin
	select * from KhachHang where MaKH = @MaKH
end

GO
/****** Object:  StoredProcedure [dbo].[Select_LoaiHang]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Select_LoaiHang] 
as
begin
	select * from LoaiHang
end

GO
/****** Object:  StoredProcedure [dbo].[Select_LoaiHangByMa]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_LoaiHangByMa] @MaLoaiHang nchar(10)
as
begin
	select * from LoaiHang where MaLoaiHang = @MaLoaiHang
end

GO
/****** Object:  StoredProcedure [dbo].[Select_NhanVien]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_NhanVien]
as
begin
	select * from NhanVien
end

GO
/****** Object:  StoredProcedure [dbo].[Select_NhanVienByMa]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_NhanVienByMa] @MaNV nchar(10)
as
begin
	select * from NhanVien where MaNV = @MaNV
end

GO
/****** Object:  StoredProcedure [dbo].[Update_CTHD]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_CTHD] @MaHD nchar(10), @MaHang nchar(10), @SL int
as
begin
	update CTHD set MaHang = @MaHang, SL = @SL where MaHD = @MaHD
end

GO
/****** Object:  StoredProcedure [dbo].[Update_HangHoa]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_HangHoa] @MaHang nchar(10), @TenHang nvarchar(50), @DVT nvarchar(20), @DonGia float, @SLcon int, @MaLoaiHang nchar(10)
as
begin
	Update HangHoa set TenHang = @TenHang, DVT = @DVT, DonGia = @DonGia, SLcon = @SLcon, MaLoaiHang = @MaLoaiHang where MaHang = @MaHang
end

GO
/****** Object:  StoredProcedure [dbo].[Update_HoaDon]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_HoaDon] @MaHD nchar(10), @NgayHD date, @MaKH nchar(10), @MaNV nchar(10)
as
begin
	update HoaDon set NgayHD = @NgayHD, MaKH = @MaKH, MaNV = @MaNV where MaHD = @MaHD
end

GO
/****** Object:  StoredProcedure [dbo].[Update_KhachHang]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_KhachHang] @MaKH nchar(10), @TenKH nvarchar(50), @DiaChi nvarchar(100), @SDT nchar(10), @STK nchar(20), @MST nchar(20)
as
begin
	Update KhachHang set TenKH = @TenKH, DiaChi = @DiaChi, SDT = @SDT, STK = @STK, MST = @MST where MaKH = @MaKH
end

GO
/****** Object:  StoredProcedure [dbo].[Update_LoaiHang]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Update_LoaiHang] @MaLoaiHang nchar(10), @TenLoaiHang nchar(10), @GhiChu nchar(20)
as
begin
	update LoaiHang set TenLoaiHang = @TenLoaiHang, GhiChu = @GhiChu where MaLoaiHang = @MaLoaiHang
end

GO
/****** Object:  StoredProcedure [dbo].[Update_NhanVien]    Script Date: 3/19/2019 4:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_NhanVien] @MaNV nchar(10), @TenNV nvarchar(50), @NgaySinh datetime, @GioiTinh bit, @SDT nchar(10)
as
begin
	update NhanVien set TenNV = @TenNV, NgaySinh = @NgaySinh, GioiTinh = @GioiTinh, SDT = @SDT where MaNV = @MaNV
end

GO
USE [master]
GO
ALTER DATABASE [QLBH] SET  READ_WRITE 
GO
