USE [master]
GO
/****** Object:  Database [APICoreDB]    Script Date: 29-12-2020 18:17:34 ******/
CREATE DATABASE [APICoreDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'APICoreDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\APICoreDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'APICoreDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\APICoreDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [APICoreDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [APICoreDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [APICoreDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [APICoreDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [APICoreDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [APICoreDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [APICoreDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [APICoreDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [APICoreDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [APICoreDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [APICoreDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [APICoreDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [APICoreDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [APICoreDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [APICoreDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [APICoreDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [APICoreDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [APICoreDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [APICoreDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [APICoreDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [APICoreDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [APICoreDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [APICoreDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [APICoreDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [APICoreDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [APICoreDB] SET  MULTI_USER 
GO
ALTER DATABASE [APICoreDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [APICoreDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [APICoreDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [APICoreDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [APICoreDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [APICoreDB] SET QUERY_STORE = OFF
GO
USE [APICoreDB]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 29-12-2020 18:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Department] [varchar](20) NULL,
	[Salary] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [Name], [Department], [Salary]) VALUES (1, N'John', N'DotNet', CAST(50000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Employee] OFF
USE [master]
GO
ALTER DATABASE [APICoreDB] SET  READ_WRITE 
GO
