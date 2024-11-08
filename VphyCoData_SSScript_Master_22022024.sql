USE [master]
GO
/****** Object:  Database [VPhyCoData]    Script Date: 22-02-2024 19:22:05 ******/
CREATE DATABASE [VPhyCoData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VPhyCoData', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VENTURESQLEXP\MSSQL\DATA\VPhyCoData.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VPhyCoData_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VENTURESQLEXP\MSSQL\DATA\VPhyCoData_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [VPhyCoData] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VPhyCoData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VPhyCoData] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VPhyCoData] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VPhyCoData] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VPhyCoData] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VPhyCoData] SET ARITHABORT OFF 
GO
ALTER DATABASE [VPhyCoData] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VPhyCoData] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VPhyCoData] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VPhyCoData] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VPhyCoData] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VPhyCoData] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VPhyCoData] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VPhyCoData] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VPhyCoData] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VPhyCoData] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VPhyCoData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VPhyCoData] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VPhyCoData] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VPhyCoData] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VPhyCoData] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VPhyCoData] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VPhyCoData] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VPhyCoData] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VPhyCoData] SET  MULTI_USER 
GO
ALTER DATABASE [VPhyCoData] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VPhyCoData] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VPhyCoData] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VPhyCoData] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VPhyCoData] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VPhyCoData] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [VPhyCoData] SET QUERY_STORE = OFF
GO
USE [VPhyCoData]
GO
/****** Object:  Table [dbo].[Master_Holding]    Script Date: 22-02-2024 19:22:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_Holding](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ISIN] [varchar](12) NULL,
	[Folio_No] [varchar](16) NULL,
	[Name] [varchar](100) NULL,
	[FH_Name] [varchar](40) NULL,
	[Occupation] [varchar](50) NULL,
	[Status_Code] [varchar](2) NULL,
	[Address1] [varchar](40) NULL,
	[Address2] [varchar](40) NULL,
	[Address3] [varchar](40) NULL,
	[City] [varchar](40) NULL,
	[State] [varchar](40) NULL,
	[Pincode] [varchar](7) NULL,
	[Jh1] [varchar](40) NULL,
	[Jh2] [varchar](40) NULL,
	[FHold_Pan] [varchar](15) NULL,
	[SHold_Pan] [varchar](15) NULL,
	[THold_Pan] [varchar](15) NULL,
	[Remarks] [varchar](100) NULL,
	[Remarks1] [varchar](100) NULL,
	[Remarks2] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_Cert]    Script Date: 22-02-2024 19:22:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_Cert](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ISIN] [varchar](12) NULL,
	[Folio_No] [varchar](16) NULL,
	[Cert_No] [int] NULL,
	[Dist_From] [int] NULL,
	[Dist_To] [int] NULL,
	[Shares] [int] NULL,
	[Face_Value] [int] NULL,
	[Allotment_Date] [datetime] NULL,
	[Transfer_Date] [datetime] NULL,
	[Remarks1] [varchar](100) NULL,
	[Remarks2] [varchar](100) NULL,
	[Remarks3] [varchar](100) NULL,
	[OldCert_no] [varchar](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[FESS]    Script Date: 22-02-2024 19:22:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FESS] AS
SELECT ISIN,Folio_No 
FROM master_cert
WHERE isin = 'ISINPHY-0001'
union
select ISIN,Folio_No 
From Master_Holding
where isin = 'ISINPHY-0001'
GO
/****** Object:  Table [dbo].[Master_CertBackup]    Script Date: 22-02-2024 19:22:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_CertBackup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ISIN] [varchar](12) NULL,
	[Folio_No] [varchar](16) NULL,
	[Cert_No] [int] NULL,
	[Dist_From] [int] NULL,
	[Dist_To] [int] NULL,
	[Shares] [int] NULL,
	[Face_Value] [int] NULL,
	[Allotment_Date] [datetime] NULL,
	[Transfer_Date] [datetime] NULL,
	[Remarks1] [varchar](100) NULL,
	[Remarks2] [varchar](100) NULL,
	[Remarks3] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_Status]    Script Date: 22-02-2024 19:22:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_Status](
	[Status_Code] [varchar](2) NULL,
	[Status_Desc] [varchar](25) NULL,
	[Company_Name] [varchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MASTER_TRANSFERS]    Script Date: 22-02-2024 19:22:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTER_TRANSFERS](
	[ISIN] [varchar](12) NULL,
	[Folio_No] [varchar](16) NULL,
	[Cert_No] [int] NULL,
	[Dist_From] [int] NULL,
	[Dist_To] [int] NULL,
	[Shares] [int] NULL,
	[Face_Value] [int] NULL,
	[Allotment_Date] [datetime] NULL,
	[Transfer_Date] [datetime] NULL,
	[Remarks1] [varchar](100) NULL,
	[Remarks2] [varchar](100) NULL,
	[Remarks3] [varchar](100) NULL,
	[OldCert_no] [varchar](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MASTER_TRANSFERS1]    Script Date: 22-02-2024 19:22:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTER_TRANSFERS1](
	[ISIN] [varchar](12) NULL,
	[Folio_No] [varchar](16) NULL,
	[Cert_No] [int] NULL,
	[Dist_From] [int] NULL,
	[Dist_To] [int] NULL,
	[Shares] [int] NULL,
	[Face_Value] [int] NULL,
	[Allotment_Date] [datetime] NULL,
	[Transfer_Date] [datetime] NULL,
	[Remarks1] [varchar](100) NULL,
	[Remarks2] [varchar](100) NULL,
	[Remarks3] [varchar](100) NULL,
	[OldCert_no] [varchar](7) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [VPhyCoData] SET  READ_WRITE 
GO
