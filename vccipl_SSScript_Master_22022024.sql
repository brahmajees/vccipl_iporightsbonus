USE [master]
GO
/****** Object:  Database [vccipl]    Script Date: 22-02-2024 19:18:57 ******/
CREATE DATABASE [vccipl]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'vccipl', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VENTURESQLEXP\MSSQL\DATA\vccipl.mdf' , SIZE = 204800KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'vccipl_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VENTURESQLEXP\MSSQL\DATA\vccipl_log.ldf' , SIZE = 204800KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [vccipl] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [vccipl].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [vccipl] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [vccipl] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [vccipl] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [vccipl] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [vccipl] SET ARITHABORT OFF 
GO
ALTER DATABASE [vccipl] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [vccipl] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [vccipl] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [vccipl] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [vccipl] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [vccipl] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [vccipl] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [vccipl] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [vccipl] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [vccipl] SET  ENABLE_BROKER 
GO
ALTER DATABASE [vccipl] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [vccipl] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [vccipl] SET TRUSTWORTHY ON 
GO
ALTER DATABASE [vccipl] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [vccipl] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [vccipl] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [vccipl] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [vccipl] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [vccipl] SET  MULTI_USER 
GO
ALTER DATABASE [vccipl] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [vccipl] SET DB_CHAINING OFF 
GO
ALTER DATABASE [vccipl] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [vccipl] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [vccipl] SET DELAYED_DURABILITY = ALLOWED 
GO
ALTER DATABASE [vccipl] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [vccipl] SET QUERY_STORE = OFF
GO
USE [vccipl]
GO
/****** Object:  User [Sparkkk]    Script Date: 22-02-2024 19:18:57 ******/
CREATE USER [Sparkkk] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Murthykk]    Script Date: 22-02-2024 19:18:57 ******/
CREATE USER [Murthykk] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[db_owner]
GO
/****** Object:  User [ITManager]    Script Date: 22-02-2024 19:18:57 ******/
CREATE USER [ITManager] FOR LOGIN [ITManager] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [brahmajee]    Script Date: 22-02-2024 19:18:57 ******/
CREATE USER [brahmajee] FOR LOGIN [brahmajee] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Sparkkk]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Sparkkk]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Sparkkk]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Sparkkk]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Sparkkk]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Sparkkk]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Sparkkk]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [Sparkkk]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [Sparkkk]
GO
ALTER ROLE [db_owner] ADD MEMBER [brahmajee]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [brahmajee]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [brahmajee]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [brahmajee]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [brahmajee]
GO
ALTER ROLE [db_datareader] ADD MEMBER [brahmajee]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [brahmajee]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [brahmajee]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [brahmajee]
GO
/****** Object:  Table [dbo].[09RT95UONE-30092023]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[09RT95UONE-30092023](
	[Isin_Alpha_Code] [varchar](50) NULL,
	[Isin_Description] [varchar](250) NULL,
	[Confirmation_Status] [varchar](250) NULL,
	[Confirm_Description] [varchar](250) NULL,
	[CDS_Opening_Bal] [varchar](50) NULL,
	[RTA_Opening_Bal] [varchar](50) NULL,
	[CDS_Demat_Confirmation_Bal] [varchar](50) NULL,
	[RTA_Demat_Confirmation_Bal] [varchar](50) NULL,
	[CDS_Remat_Confirmation_Bal] [varchar](50) NULL,
	[RTA_Remat_Confirmation_Bal] [varchar](50) NULL,
	[CDS_Inter_Dep_Trf_IN_balance] [varchar](50) NULL,
	[RTA_Inter_Dep_Trf_IN_balance] [varchar](50) NULL,
	[CDS_Inter_Dep_Trf_OUT_balance] [varchar](50) NULL,
	[RTA_Inter_Dep_Trf_OUT_balance] [varchar](50) NULL,
	[CDS_Corp_Actions_Trf_Additions] [varchar](50) NULL,
	[RTA_Corp_Actions_Trf_Additions] [varchar](50) NULL,
	[CDS_Corp_Actions_Trf_Subtractions] [varchar](50) NULL,
	[RTA_Corp_Actions_Trf_Subtractions] [varchar](50) NULL,
	[CDS_IPO_Additions] [varchar](50) NULL,
	[RTA_IPO_Additions] [varchar](50) NULL,
	[CDS_Closing_bal] [varchar](50) NULL,
	[RTA_Closing_bal] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aaatest1]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aaatest1](
	[remsource] [varchar](1000) NULL,
	[FileName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aatest2]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aatest2](
	[remsource] [varchar](1000) NULL,
	[FileName] [varchar](50) NULL,
	[FileRecords] [varchar](25) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aatest3]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aatest3](
	[remsource] [varchar](1000) NULL,
	[FileName] [varchar](50) NULL,
	[FileRecords] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABC1]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABC1](
	[ISIN] [varchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[abc123]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[abc123](
	[bo_id] [varchar](16) NULL,
	[bo_category] [varchar](2) NULL,
	[bo_type] [varchar](2) NULL,
	[bo_account_status] [varchar](2) NULL,
	[bo_sub_type] [varchar](4) NULL,
	[first_holder_name] [varchar](142) NULL,
	[second_holder_name] [varchar](142) NULL,
	[third_holders_name] [varchar](142) NULL,
	[freeze_flag] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[abc1234]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[abc1234](
	[remsource] [varchar](250) NULL,
	[Copy of remsource] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABC2]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABC2](
	[ISIN] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[abcdefg]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[abcdefg](
	[remsource                                                                                              ] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[adrasba_refund_file]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adrasba_refund_file](
	[Symbol] [varchar](50) NULL,
	[IFSC_Code] [varchar](50) NULL,
	[Application_No] [varchar](50) NULL,
	[DP_ID] [varchar](50) NULL,
	[Client_ID_Beneficiary_ID] [varchar](50) NULL,
	[Bid_Quantity] [varchar](20) NULL,
	[Rate_Price] [varchar](20) NULL,
	[Amount_to_be_blocked] [varchar](20) NULL,
	[PAN_no] [varchar](50) NULL,
	[Investor_Category] [varchar](50) NULL,
	[Bank_Refernce_No] [varchar](50) NULL,
	[Account_No] [varchar](50) NULL,
	[Created_Date] [varchar](50) NULL,
	[Modified_Date] [varchar](50) NULL,
	[Order_No] [varchar](50) NULL,
	[Share_Alloted] [varchar](20) NULL,
	[Amount_to_be_Transferred] [varchar](40) NULL,
	[Amount_to_be_Refunded] [varchar](40) NULL,
	[Reason_for_Non_Allotment] [varchar](75) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aif_01]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aif_01](
	[btempf] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aif_01out]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aif_01out](
	[Filler01] [varchar](2) NULL,
	[DP_ID] [varchar](8) NULL,
	[Filler02] [varchar](2) NULL,
	[Client_ID] [varchar](8) NULL,
	[Filler03] [varchar](2) NULL,
	[First_holder_Name] [varchar](250) NULL,
	[Filler04] [varchar](2) NULL,
	[First_Holder_PAN] [varchar](30) NULL,
	[Filler05] [varchar](2) NULL,
	[First_Holder_PAN_status] [varchar](8) NULL,
	[Filler06] [varchar](2) NULL,
	[Second_Holder_Name] [varchar](45) NULL,
	[Filler07] [varchar](2) NULL,
	[Second_Holder_PAN] [varchar](30) NULL,
	[Filler08] [varchar](2) NULL,
	[Second_Holder_PAN_status] [varchar](8) NULL,
	[Filler09] [varchar](2) NULL,
	[Third_Holder_Name] [varchar](45) NULL,
	[Filler10] [varchar](2) NULL,
	[Third_Holder_PAN] [varchar](30) NULL,
	[Filler11] [varchar](2) NULL,
	[Third_Holder_PAN_status] [varchar](8) NULL,
	[Filler12] [varchar](2) NULL,
	[Minor_indicator] [varchar](10) NULL,
	[Filler13] [varchar](2) NULL,
	[Nominee_Guardian_Indicator] [varchar](10) NULL,
	[Filler14] [varchar](2) NULL,
	[Nominee_Guardian_Name] [varchar](45) NULL,
	[Filler15] [varchar](2) NULL,
	[Client_Account_Status] [varchar](13) NULL,
	[Filler16] [varchar](2) NULL,
	[Account_Category] [varchar](13) NULL,
	[Filler17] [varchar](2) NULL,
	[Account_Type] [varchar](5) NULL,
	[Filler18] [varchar](2) NULL,
	[Account_Sub_Type] [varchar](8) NULL,
	[Filler19] [varchar](2) NULL,
	[Ahdealingewhreceipt] [varchar](16) NULL,
	[Filler20] [varchar](2) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masteruniqno] [int] NULL,
	[present_status] [varchar](50) NULL,
	[rem1] [varchar](700) NULL,
	[rem] [varchar](700) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aif_02]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aif_02](
	[btempf] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aif_02out]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aif_02out](
	[Filler01] [varchar](2) NULL,
	[DP_ID] [varchar](8) NULL,
	[Filler02] [varchar](2) NULL,
	[Client_ID] [varchar](8) NULL,
	[Filler03] [varchar](2) NULL,
	[First_holder_Name] [varchar](250) NULL,
	[Filler04] [varchar](2) NULL,
	[First_Holder_PAN] [varchar](30) NULL,
	[Filler05] [varchar](2) NULL,
	[First_Holder_PAN_status] [varchar](8) NULL,
	[Filler06] [varchar](2) NULL,
	[Second_Holder_Name] [varchar](45) NULL,
	[Filler07] [varchar](2) NULL,
	[Second_Holder_PAN] [varchar](30) NULL,
	[Filler08] [varchar](2) NULL,
	[Second_Holder_PAN_status] [varchar](8) NULL,
	[Filler09] [varchar](2) NULL,
	[Third_Holder_Name] [varchar](45) NULL,
	[Filler10] [varchar](2) NULL,
	[Third_Holder_PAN] [varchar](30) NULL,
	[Filler11] [varchar](2) NULL,
	[Third_Holder_PAN_status] [varchar](8) NULL,
	[Filler12] [varchar](2) NULL,
	[Minor_indicator] [varchar](10) NULL,
	[Filler13] [varchar](2) NULL,
	[Nominee_Guardian_Indicator] [varchar](10) NULL,
	[Filler14] [varchar](2) NULL,
	[Nominee_Guardian_Name] [varchar](45) NULL,
	[Filler15] [varchar](2) NULL,
	[Client_Account_Status] [varchar](13) NULL,
	[Filler16] [varchar](2) NULL,
	[Account_Category] [varchar](13) NULL,
	[Filler17] [varchar](2) NULL,
	[Account_Type] [varchar](5) NULL,
	[Filler18] [varchar](2) NULL,
	[Account_Sub_Type] [varchar](8) NULL,
	[Filler19] [varchar](2) NULL,
	[Ahdealingewhreceipt] [varchar](16) NULL,
	[Filler20] [varchar](2) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masteruniqno] [int] NULL,
	[present_status] [varchar](50) NULL,
	[rem1] [varchar](700) NULL,
	[rem] [varchar](700) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aif_03]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aif_03](
	[btempf] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aif_03out]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aif_03out](
	[Filler01] [varchar](2) NULL,
	[DP_ID] [varchar](8) NULL,
	[Filler02] [varchar](2) NULL,
	[Client_ID] [varchar](8) NULL,
	[Filler03] [varchar](2) NULL,
	[First_holder_Name] [varchar](250) NULL,
	[Filler04] [varchar](2) NULL,
	[First_Holder_PAN] [varchar](30) NULL,
	[Filler05] [varchar](2) NULL,
	[First_Holder_PAN_status] [varchar](8) NULL,
	[Filler06] [varchar](2) NULL,
	[Second_Holder_Name] [varchar](45) NULL,
	[Filler07] [varchar](2) NULL,
	[Second_Holder_PAN] [varchar](30) NULL,
	[Filler08] [varchar](2) NULL,
	[Second_Holder_PAN_status] [varchar](8) NULL,
	[Filler09] [varchar](2) NULL,
	[Third_Holder_Name] [varchar](45) NULL,
	[Filler10] [varchar](2) NULL,
	[Third_Holder_PAN] [varchar](30) NULL,
	[Filler11] [varchar](2) NULL,
	[Third_Holder_PAN_status] [varchar](8) NULL,
	[Filler12] [varchar](2) NULL,
	[Minor_indicator] [varchar](10) NULL,
	[Filler13] [varchar](2) NULL,
	[Nominee_Guardian_Indicator] [varchar](10) NULL,
	[Filler14] [varchar](2) NULL,
	[Nominee_Guardian_Name] [varchar](45) NULL,
	[Filler15] [varchar](2) NULL,
	[Client_Account_Status] [varchar](13) NULL,
	[Filler16] [varchar](2) NULL,
	[Account_Category] [varchar](13) NULL,
	[Filler17] [varchar](2) NULL,
	[Account_Type] [varchar](5) NULL,
	[Filler18] [varchar](2) NULL,
	[Account_Sub_Type] [varchar](8) NULL,
	[Filler19] [varchar](2) NULL,
	[Ahdealingewhreceipt] [varchar](16) NULL,
	[Filler20] [varchar](2) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masteruniqno] [int] NULL,
	[present_status] [varchar](50) NULL,
	[rem1] [varchar](700) NULL,
	[rem] [varchar](700) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aif_04]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aif_04](
	[btempf] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aif_04out]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aif_04out](
	[Filler01] [varchar](2) NULL,
	[DP_ID] [varchar](8) NULL,
	[Filler02] [varchar](2) NULL,
	[Client_ID] [varchar](8) NULL,
	[Filler03] [varchar](2) NULL,
	[First_holder_Name] [varchar](250) NULL,
	[Filler04] [varchar](2) NULL,
	[First_Holder_PAN] [varchar](30) NULL,
	[Filler05] [varchar](2) NULL,
	[First_Holder_PAN_status] [varchar](8) NULL,
	[Filler06] [varchar](2) NULL,
	[Second_Holder_Name] [varchar](45) NULL,
	[Filler07] [varchar](2) NULL,
	[Second_Holder_PAN] [varchar](30) NULL,
	[Filler08] [varchar](2) NULL,
	[Second_Holder_PAN_status] [varchar](8) NULL,
	[Filler09] [varchar](2) NULL,
	[Third_Holder_Name] [varchar](45) NULL,
	[Filler10] [varchar](2) NULL,
	[Third_Holder_PAN] [varchar](30) NULL,
	[Filler11] [varchar](2) NULL,
	[Third_Holder_PAN_status] [varchar](8) NULL,
	[Filler12] [varchar](2) NULL,
	[Minor_indicator] [varchar](10) NULL,
	[Filler13] [varchar](2) NULL,
	[Nominee_Guardian_Indicator] [varchar](10) NULL,
	[Filler14] [varchar](2) NULL,
	[Nominee_Guardian_Name] [varchar](45) NULL,
	[Filler15] [varchar](2) NULL,
	[Client_Account_Status] [varchar](13) NULL,
	[Filler16] [varchar](2) NULL,
	[Account_Category] [varchar](13) NULL,
	[Filler17] [varchar](2) NULL,
	[Account_Type] [varchar](5) NULL,
	[Filler18] [varchar](2) NULL,
	[Account_Sub_Type] [varchar](8) NULL,
	[Filler19] [varchar](2) NULL,
	[Ahdealingewhreceipt] [varchar](16) NULL,
	[Filler20] [varchar](2) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masteruniqno] [int] NULL,
	[present_status] [varchar](50) NULL,
	[rem1] [varchar](700) NULL,
	[rem] [varchar](700) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aif_file01]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aif_file01](
	[DPID] [varchar](8) NULL,
	[CLID] [varchar](8) NULL,
	[rem] [varchar](100) NULL,
	[record_type] [varchar](2) NULL,
	[line_no] [varchar](7) NULL,
	[masteruniqno] [int] NULL,
	[aif_fname] [varchar](100) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aif_file02]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aif_file02](
	[DPID] [varchar](8) NULL,
	[CLID] [varchar](8) NULL,
	[rem] [varchar](100) NULL,
	[record_type] [varchar](2) NULL,
	[line_no] [varchar](7) NULL,
	[masteruniqno] [int] NULL,
	[aif_fname] [varchar](100) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aif_file03]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aif_file03](
	[DPID] [varchar](8) NULL,
	[CLID] [varchar](8) NULL,
	[rem] [varchar](100) NULL,
	[record_type] [varchar](2) NULL,
	[line_no] [varchar](7) NULL,
	[masteruniqno] [int] NULL,
	[aif_fname] [varchar](100) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aif_file04]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aif_file04](
	[DPID] [varchar](8) NULL,
	[CLID] [varchar](8) NULL,
	[rem] [varchar](100) NULL,
	[record_type] [varchar](2) NULL,
	[line_no] [varchar](7) NULL,
	[masteruniqno] [int] NULL,
	[aif_fname] [varchar](100) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aif_file05]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aif_file05](
	[DPID] [varchar](8) NULL,
	[CLID] [varchar](8) NULL,
	[rem] [varchar](100) NULL,
	[record_type] [varchar](2) NULL,
	[line_no] [varchar](7) NULL,
	[masteruniqno] [int] NULL,
	[aif_fname] [varchar](100) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aif_file06]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aif_file06](
	[DPID] [varchar](8) NULL,
	[CLID] [varchar](8) NULL,
	[rem] [varchar](100) NULL,
	[record_type] [varchar](2) NULL,
	[line_no] [varchar](7) NULL,
	[masteruniqno] [int] NULL,
	[aif_fname] [varchar](100) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AIF_FILE1]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIF_FILE1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rem] [varchar](200) NULL,
	[record_Type] [varchar](2) NULL,
	[Line_no] [varchar](7) NULL,
	[dpid] [varchar](8) NULL,
	[clid] [varchar](8) NULL,
	[filler1] [varchar](100) NULL,
	[masteruniqno] [int] NULL,
	[AIF_FNAME] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AIF_FILE2]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIF_FILE2](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rem] [varchar](200) NULL,
	[record_Type] [varchar](2) NULL,
	[Line_no] [varchar](7) NULL,
	[dpid] [varchar](8) NULL,
	[clid] [varchar](8) NULL,
	[filler1] [varchar](100) NULL,
	[masteruniqno] [int] NULL,
	[AIF_FNAME] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AIF_FILE3]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIF_FILE3](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rem] [varchar](200) NULL,
	[record_Type] [varchar](2) NULL,
	[Line_no] [varchar](7) NULL,
	[dpid] [varchar](8) NULL,
	[clid] [varchar](8) NULL,
	[filler1] [varchar](100) NULL,
	[masteruniqno] [int] NULL,
	[AIF_FNAME] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AIF_FILE4]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIF_FILE4](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rem] [varchar](200) NULL,
	[record_Type] [varchar](2) NULL,
	[Line_no] [varchar](7) NULL,
	[dpid] [varchar](8) NULL,
	[clid] [varchar](8) NULL,
	[filler1] [varchar](100) NULL,
	[masteruniqno] [int] NULL,
	[AIF_FNAME] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aif_fin]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aif_fin](
	[btempf] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aif_finc]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aif_finc](
	[btempg] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aif_fincc]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aif_fincc](
	[btempg] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aif_SourceFiles]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aif_SourceFiles](
	[SINo] [int] NULL,
	[Folio_Number_Application number] [nvarchar](255) NULL,
	[Name_Of_The_Sole_1St _Contributor] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[PAN_Number] [nvarchar](255) NULL,
	[Class_of_units] [nvarchar](255) NULL,
	[Mode_of_holding] [nvarchar](255) NULL,
	[Bank_Details] [nvarchar](255) NULL,
	[Nominee] [nvarchar](255) NULL,
	[Comments] [nvarchar](255) NULL,
	[CML_Status] [nvarchar](255) NULL,
	[DP_id] [nvarchar](255) NULL,
	[Client_id] [int] NULL,
	[Demat_Account] [nvarchar](255) NULL,
	[SRCFilename] [nvarchar](77) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AIF_TOTALBENDEMFILES]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIF_TOTALBENDEMFILES](
	[Filler01] [varchar](2) NULL,
	[DP_ID] [varchar](8) NULL,
	[Filler02] [varchar](2) NULL,
	[Client_ID] [varchar](8) NULL,
	[Filler03] [varchar](2) NULL,
	[First_holder_Name] [varchar](250) NULL,
	[Filler04] [varchar](2) NULL,
	[First_Holder_PAN] [varchar](30) NULL,
	[Filler05] [varchar](2) NULL,
	[First_Holder_PAN_status] [varchar](8) NULL,
	[Filler06] [varchar](2) NULL,
	[Second_Holder_Name] [varchar](45) NULL,
	[Filler07] [varchar](2) NULL,
	[Second_Holder_PAN] [varchar](30) NULL,
	[Filler08] [varchar](2) NULL,
	[Second_Holder_PAN_status] [varchar](8) NULL,
	[Filler09] [varchar](2) NULL,
	[Third_Holder_Name] [varchar](45) NULL,
	[Filler10] [varchar](2) NULL,
	[Third_Holder_PAN] [varchar](30) NULL,
	[Filler11] [varchar](2) NULL,
	[Third_Holder_PAN_status] [varchar](8) NULL,
	[Filler12] [varchar](2) NULL,
	[Minor_indicator] [varchar](10) NULL,
	[Filler13] [varchar](2) NULL,
	[Nominee_Guardian_Indicator] [varchar](10) NULL,
	[Filler14] [varchar](2) NULL,
	[Nominee_Guardian_Name] [varchar](45) NULL,
	[Filler15] [varchar](2) NULL,
	[Client_Account_Status] [varchar](13) NULL,
	[Filler16] [varchar](2) NULL,
	[Account_Category] [varchar](13) NULL,
	[Filler17] [varchar](2) NULL,
	[Account_Type] [varchar](5) NULL,
	[Filler18] [varchar](2) NULL,
	[Account_Sub_Type] [varchar](8) NULL,
	[Filler19] [varchar](2) NULL,
	[Ahdealingewhreceipt] [varchar](16) NULL,
	[Filler20] [varchar](2) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masteruniqno] [int] NULL,
	[present_status] [varchar](50) NULL,
	[rem1] [varchar](700) NULL,
	[rem] [varchar](700) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aif1235]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aif1235](
	[ftemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aifbulcdsl03d]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aifbulcdsl03d](
	[isin] [varchar](16) NULL,
	[bo_id] [varchar](16) NULL,
	[shares] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aifbulkcdsl02]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aifbulkcdsl02](
	[bo_id] [varchar](16) NULL,
	[units] [varchar](16) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_Type] [varchar](2) NULL,
	[Total_Records] [varchar](10) NULL,
	[Tot_Curr_Qty] [varchar](16) NULL,
	[Tot_Freeze_Qty] [varchar](16) NULL,
	[Tot_Lockin_Qty] [varchar](16) NULL,
	[Tot_Detail_Rec02] [varchar](10) NULL,
	[Tot_Detail_Rec03] [varchar](10) NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[inward_dt] [datetime] NULL,
	[calcflag] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aifbulkcdsl03a]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aifbulkcdsl03a](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_Type] [varchar](2) NULL,
	[Total_Records] [varchar](10) NULL,
	[Tot_Curr_Qty] [varchar](16) NULL,
	[Tot_Freeze_Qty] [varchar](16) NULL,
	[Tot_Lockin_Qty] [varchar](16) NULL,
	[Tot_Detail_Rec02] [varchar](10) NULL,
	[Tot_Detail_Rec03] [varchar](10) NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[inward_dt] [datetime] NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aifbulkcdsl03d]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aifbulkcdsl03d](
	[isin] [varchar](12) NULL,
	[bo_id] [varchar](16) NULL,
	[shares] [varchar](16) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_Type] [varchar](2) NULL,
	[RTA_IntRef_No] [varchar](16) NULL,
	[PISIN] [varchar](12) NULL,
	[PCurr_Qty] [varchar](16) NULL,
	[PFrozen_Qty] [varchar](16) NULL,
	[PLockin_Qty] [varchar](16) NULL,
	[PLockin_Reason_Cd] [varchar](2) NULL,
	[PLockin_Reason] [varchar](50) NULL,
	[PLockin_Exp_Date] [datetime] NULL,
	[PDRCR_Flag] [varchar](1) NULL,
	[Benefit_Isin] [varchar](12) NULL,
	[BCurr_Qty] [varchar](16) NULL,
	[BFrozen_Qty] [varchar](16) NULL,
	[BLockin_Qty] [varchar](16) NULL,
	[BLockin_Reason_Cd] [varchar](2) NULL,
	[BLockin_Reason] [varchar](50) NULL,
	[BLockin_Exp_Date] [datetime] NULL,
	[BDRCR_Flag] [varchar](1) NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL,
	[OfferPrice] [varchar](16) NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[calcflag] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aifbulkcdsl03ds]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aifbulkcdsl03ds](
	[isin] [varchar](16) NULL,
	[bo_id] [varchar](16) NULL,
	[shares] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aifbulkfile01]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aifbulkfile01](
	[slno] [varchar](5) NULL,
	[isin] [varchar](12) NULL,
	[dpid] [varchar](8) NULL,
	[clid] [varchar](8) NULL,
	[units] [varchar](18) NULL,
	[name] [varchar](50) NULL,
	[jh1] [varchar](50) NULL,
	[all_date] [varchar](10) NULL,
	[paidval] [varchar](18) NULL,
	[tissamt] [varchar](18) NULL,
	[paidamt] [varchar](18) NULL,
	[stampduty] [varchar](1) NULL,
	[catype] [int] NULL,
	[cadesc] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aifbulkfile01s]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aifbulkfile01s](
	[slno] [varchar](5) NULL,
	[isin] [varchar](12) NULL,
	[dpid] [varchar](8) NULL,
	[clid] [varchar](8) NULL,
	[units] [varchar](18) NULL,
	[name] [varchar](50) NULL,
	[jh1] [varchar](50) NULL,
	[all_date] [varchar](10) NULL,
	[paidval] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aifbulkfile02]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aifbulkfile02](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [varchar](18) NULL,
	[Issued_Amount] [varchar](18) NULL,
	[Paidup_Price] [varchar](18) NULL,
	[Paidup_Amount] [varchar](18) NULL,
	[Filler] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[FractionFlag] [char](1) NULL,
	[calcflag] [char](1) NULL,
	[issamt] [varchar](18) NULL,
	[tissamt] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aifbulkfile02a]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aifbulkfile02a](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[File_IDentification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Debit_Credit_Indicator] [varchar](1) NULL,
	[ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](12) NULL,
	[Allotment_Date] [datetime] NULL,
	[Allocation_Allotment_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[Total_Allotted_Quantity_Free_Lockin] [varchar](18) NULL,
	[Total_Allotted_Quantity_Lockin] [varchar](18) NULL,
	[Total_No_detail_records] [varchar](7) NULL,
	[Total_Issued_Amount] [varchar](18) NULL,
	[Total_Paidup_Amount] [varchar](18) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[Basis_calculation_Stamp_Duty] [varchar](2) NULL,
	[EBP_Name] [varchar](2) NULL,
	[Funds_collected_through] [varchar](2) NULL,
	[Filler] [varchar](2) NULL,
	[MasterUniqNo] [int] NULL,
	[opfv] [decimal](18, 0) NULL,
	[opfvvalue] [decimal](18, 2) NULL,
	[StampDutyPaid] [varchar](18) NULL,
	[Processflag] [varchar](1) NULL,
	[Issue_pr] [varchar](18) NULL,
	[Paidup_pr] [varchar](18) NULL,
	[Stmpparam] [varchar](1) NULL,
	[typeofca] [varchar](50) NULL,
	[company_name] [varchar](100) NULL,
	[Inward_Date] [datetime] NULL,
	[aadesc] [varchar](100) NULL,
	[FractionFlag] [char](1) NULL,
	[Paidup_prFract] [float] NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aifcdsltotaltemp]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aifcdsltotaltemp](
	[bcq] [int] NULL,
	[cdslrec1] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aifcdst1]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aifcdst1](
	[ctemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AIFFIN1]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIFFIN1](
	[FTEMP1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aifimpdpidclidisin]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aifimpdpidclidisin](
	[dpidclid] [varchar](18) NULL,
	[ISIN] [varchar](14) NULL,
	[dpid] [varchar](8) NULL,
	[clid] [varchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aiftemp1]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aiftemp1](
	[ftemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aiftemp12]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aiftemp12](
	[ftemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aiftemp2]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aiftemp2](
	[ftemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aiftotshr]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aiftotshr](
	[totshr] [int] NULL,
	[totrec1] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aiftotshr1]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aiftotshr1](
	[totshr] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ajustnow123]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ajustnow123](
	[remsource] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[anydpidclidisin]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[anydpidclidisin](
	[dpidclid] [varchar](18) NULL,
	[ISIN] [varchar](16) NULL,
	[dpid] [varchar](8) NULL,
	[clid] [varchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aTEMP11H]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aTEMP11H](
	[ctempf] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[atemp2]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[atemp2](
	[RowN] [bigint] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aTEMP22D]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aTEMP22D](
	[ctempf] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BBBB]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BBBB](
	[Record_Type] [varchar](50) NULL,
	[Line_No] [varchar](50) NULL,
	[DP_ID] [varchar](50) NULL,
	[Ben_Acc_No] [varchar](50) NULL,
	[Ben_Type] [varchar](50) NULL,
	[Ben_sub_type] [varchar](50) NULL,
	[Ben_Acc_Category] [varchar](50) NULL,
	[Ben_Occupation] [varchar](50) NULL,
	[FHlderName_BP] [varchar](250) NULL,
	[FH_FH_name] [varchar](50) NULL,
	[BenBPAdd1] [varchar](50) NULL,
	[BenBPAdd2] [varchar](50) NULL,
	[BenBPAdd3] [varchar](50) NULL,
	[BenBPAdd4] [varchar](50) NULL,
	[BenBPPin] [varchar](50) NULL,
	[BenBPPhno] [varchar](50) NULL,
	[BenBPFaxNo] [varchar](50) NULL,
	[SH_Name] [varchar](50) NULL,
	[SH_FH_name] [varchar](50) NULL,
	[TH_Name] [varchar](50) NULL,
	[TH_FH_name] [varchar](50) NULL,
	[Filler1] [varchar](50) NULL,
	[Filler2] [varchar](50) NULL,
	[FH_PAN] [varchar](50) NULL,
	[SH_PAN] [varchar](50) NULL,
	[TH_PAN] [varchar](50) NULL,
	[NomG_Indicator] [varchar](50) NULL,
	[NomG_Name] [varchar](50) NULL,
	[NomG_Add1] [varchar](50) NULL,
	[NomG_Add2] [varchar](50) NULL,
	[NomG_Add3] [varchar](50) NULL,
	[NomG_Add4] [varchar](50) NULL,
	[NomG_Pincode] [varchar](50) NULL,
	[Dob_minor] [varchar](50) NULL,
	[Minor_Indicator] [varchar](50) NULL,
	[Ben_Bank_AccNo] [varchar](50) NULL,
	[Bank_NameBranch] [varchar](50) NULL,
	[Bank_Add1] [varchar](50) NULL,
	[Bank_Add2] [varchar](50) NULL,
	[Bank_Add3] [varchar](50) NULL,
	[Bank_Add4] [varchar](50) NULL,
	[Bank_Pincode] [varchar](50) NULL,
	[RBI_RefNRI] [varchar](50) NULL,
	[RBI_AppDtNRI] [varchar](50) NULL,
	[SEBI_Regn_No] [varchar](50) NULL,
	[Ben_TDS] [varchar](50) NULL,
	[Ben_Status] [varchar](50) NULL,
	[Ben_Free_Pos] [varchar](50) NULL,
	[Ben_Lockin_Pos] [varchar](50) NULL,
	[Ben_Block_Pos] [varchar](50) NULL,
	[Ben_Pl_Pos] [varchar](50) NULL,
	[Ben_PlLockin_Pos] [varchar](50) NULL,
	[Ben_PlUncPos] [varchar](50) NULL,
	[BenUnconPlLockin_Pos] [varchar](50) NULL,
	[Ben_Remat_Pos] [varchar](50) NULL,
	[Ben_Remat_Lockin_Pos] [varchar](50) NULL,
	[BenCM_IDD_Pos] [varchar](50) NULL,
	[CMPoolPosPooldelivery] [varchar](50) NULL,
	[CC_Settlement_Pos] [varchar](50) NULL,
	[MICR_Code] [varchar](50) NULL,
	[IFSC] [varchar](50) NULL,
	[Bank_Account_Type] [varchar](50) NULL,
	[Filler] [varchar](50) NULL,
	[FHMapin_ID] [varchar](50) NULL,
	[SHMapin_ID] [varchar](50) NULL,
	[THMapin_ID] [varchar](50) NULL,
	[FHEmail_ID] [varchar](50) NULL,
	[SHEmail_ID] [varchar](50) NULL,
	[THEmail_ID] [varchar](50) NULL,
	[RGESS_Flag] [varchar](50) NULL,
	[BenFreePosHlddueNDU] [varchar](50) NULL,
	[BenLockinPosHlddueNDU] [varchar](50) NULL,
	[BenUncFreePosHldNDU] [varchar](50) NULL,
	[BenUncLockinPosHldNDU] [varchar](50) NULL,
	[BenBPAddStatecode] [varchar](50) NULL,
	[BenBPCountrycode] [varchar](50) NULL,
	[LEI_No] [varchar](50) NULL,
	[PAN_Flag_for_FH] [varchar](50) NULL,
	[PAN_Flag_for_SH] [varchar](50) NULL,
	[PAN_Flag_for_TH] [varchar](50) NULL,
	[Filler4] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bcdslbulkfile03a]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bcdslbulkfile03a](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_Type] [varchar](2) NULL,
	[Total_Records] [varchar](10) NULL,
	[Tot_Curr_Qty] [varchar](16) NULL,
	[Tot_Freeze_Qty] [varchar](16) NULL,
	[Tot_Lockin_Qty] [varchar](16) NULL,
	[Tot_Detail_Rec02] [varchar](10) NULL,
	[Tot_Detail_Rec03] [varchar](10) NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[inward_dt] [datetime] NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bcdslbulkfile03b]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bcdslbulkfile03b](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_Type] [varchar](2) NULL,
	[CA_Isin] [varchar](12) NULL,
	[From_DistNo_CDSL] [varchar](18) NULL,
	[To_DistNo_CDSL] [varchar](18) NULL,
	[Quantity] [varchar](18) NULL,
	[DRCR_Flag] [varchar](1) NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BcdslbulkFile03d]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BcdslbulkFile03d](
	[isin] [varchar](12) NULL,
	[bo_id] [varchar](16) NULL,
	[shares] [varchar](16) NULL,
	[DRCRFLAG] [varchar](1) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_Type] [varchar](2) NULL,
	[RTA_IntRef_No] [varchar](16) NULL,
	[PISIN] [varchar](12) NULL,
	[PCurr_Qty] [varchar](16) NULL,
	[PFrozen_Qty] [varchar](16) NULL,
	[PLockin_Qty] [varchar](16) NULL,
	[PLockin_Reason_Cd] [varchar](2) NULL,
	[PLockin_Reason] [varchar](50) NULL,
	[PLockin_Exp_Date] [datetime] NULL,
	[PDRCR_Flag] [varchar](1) NULL,
	[Benefit_Isin] [varchar](12) NULL,
	[BCurr_Qty] [varchar](16) NULL,
	[BFrozen_Qty] [varchar](16) NULL,
	[BLockin_Qty] [varchar](16) NULL,
	[BLockin_Reason_Cd] [varchar](2) NULL,
	[BLockin_Reason] [varchar](50) NULL,
	[BLockin_Exp_Date] [datetime] NULL,
	[BDRCR_Flag] [varchar](1) NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL,
	[OfferPrice] [varchar](16) NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[calcflag] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bcdslst1]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bcdslst1](
	[ctemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bcdsltotaltemp]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bcdsltotaltemp](
	[bcq] [int] NULL,
	[cdslrec1] [int] NULL,
	[cdslrec2] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bendem_fin]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bendem_fin](
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[First_holder_Name] [varchar](250) NULL,
	[First_Holder_PAN] [varchar](30) NULL,
	[First_Holder_PAN_status] [varchar](8) NULL,
	[Second_Holder_Name] [varchar](45) NULL,
	[Second_Holder_PAN] [varchar](30) NULL,
	[Second_Holder_PAN_status] [varchar](8) NULL,
	[Third_Holder_Name] [varchar](45) NULL,
	[Third_Holder_PAN] [varchar](30) NULL,
	[Third_Holder_PAN_status] [varchar](8) NULL,
	[Minor_indicator] [varchar](10) NULL,
	[Nominee_Guardian_Indicator] [varchar](10) NULL,
	[Nominee_Guardian_Name] [varchar](45) NULL,
	[Client_Account_Status] [varchar](13) NULL,
	[Account_Category] [varchar](13) NULL,
	[Account_Type] [varchar](5) NULL,
	[Account_Sub_Type] [varchar](8) NULL,
	[Ahdealingewhreceipt] [varchar](16) NULL,
	[present_status] [varchar](50) NULL,
	[rem1] [varchar](700) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bendem01]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bendem01](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[record_Type] [varchar](2) NULL,
	[batch_no] [varchar](7) NULL,
	[rta_id] [varchar](8) NULL,
	[isin] [varchar](12) NULL,
	[request_type] [varchar](1) NULL,
	[sender_id] [varchar](8) NULL,
	[sender_date] [varchar](8) NULL,
	[filler1] [varchar](8) NULL,
	[rem] [varchar](100) NULL,
	[masteruniqno] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BENDEM02]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BENDEM02](
	[dpid] [varchar](8) NULL,
	[clid] [varchar](8) NULL,
	[record_type] [varchar](2) NULL,
	[line_no] [varchar](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BENDEM02U]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BENDEM02U](
	[DPID] [varchar](8) NULL,
	[CLID] [varchar](8) NULL,
	[record_type] [varchar](2) NULL,
	[line_no] [varchar](7) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bendem02v]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bendem02v](
	[dpid] [varchar](8) NULL,
	[clid] [varchar](8) NULL,
	[record_type] [varchar](2) NULL,
	[line_no] [varchar](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bendem03]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bendem03](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[totalrec] [varchar](10) NULL,
	[masteruniqno] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BENDEM04]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BENDEM04](
	[dpid] [varchar](8) NULL,
	[clid] [varchar](8) NULL,
	[record_type] [varchar](2) NULL,
	[line_no] [varchar](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BENDEM04U]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BENDEM04U](
	[DPID] [varchar](8) NULL,
	[CLID] [varchar](8) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bendem2o]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bendem2o](
	[btempf] [varchar](54) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bendem2out]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bendem2out](
	[ctempf] [varchar](54) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bendem4out]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bendem4out](
	[ctempf] [varchar](54) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bendem630_dt]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bendem630_dt](
	[Filler01] [varchar](2) NULL,
	[DP_ID] [varchar](8) NULL,
	[Filler02] [varchar](2) NULL,
	[Client_ID] [varchar](8) NULL,
	[Filler03] [varchar](2) NULL,
	[First_holder_Name] [varchar](250) NULL,
	[Filler04] [varchar](2) NULL,
	[First_Holder_PAN] [varchar](30) NULL,
	[Filler05] [varchar](2) NULL,
	[First_Holder_PAN_status] [varchar](8) NULL,
	[Filler06] [varchar](2) NULL,
	[Second_Holder_Name] [varchar](45) NULL,
	[Filler07] [varchar](2) NULL,
	[Second_Holder_PAN] [varchar](30) NULL,
	[Filler08] [varchar](2) NULL,
	[Second_Holder_PAN_status] [varchar](8) NULL,
	[Filler09] [varchar](2) NULL,
	[Third_Holder_Name] [varchar](45) NULL,
	[Filler10] [varchar](2) NULL,
	[Third_Holder_PAN] [varchar](30) NULL,
	[Filler11] [varchar](2) NULL,
	[Third_Holder_PAN_status] [varchar](8) NULL,
	[Filler12] [varchar](2) NULL,
	[Minor_indicator] [varchar](10) NULL,
	[Filler13] [varchar](2) NULL,
	[Nominee_Guardian_Indicator] [varchar](10) NULL,
	[Filler14] [varchar](2) NULL,
	[Nominee_Guardian_Name] [varchar](45) NULL,
	[Filler15] [varchar](2) NULL,
	[Client_Account_Status] [varchar](13) NULL,
	[Filler16] [varchar](2) NULL,
	[Account_Category] [varchar](13) NULL,
	[Filler17] [varchar](2) NULL,
	[Account_Type] [varchar](5) NULL,
	[Filler18] [varchar](2) NULL,
	[Account_Sub_Type] [varchar](8) NULL,
	[Filler19] [varchar](2) NULL,
	[Ahdealingewhreceipt] [varchar](16) NULL,
	[Filler20] [varchar](2) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masteruniqno] [int] NULL,
	[present_status] [varchar](50) NULL,
	[rem1] [varchar](700) NULL,
	[rem] [varchar](700) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bendem630_dt18012023]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bendem630_dt18012023](
	[Filler01] [varchar](2) NULL,
	[DP_ID] [varchar](8) NULL,
	[Filler02] [varchar](2) NULL,
	[Client_ID] [varchar](8) NULL,
	[Filler03] [varchar](2) NULL,
	[First_holder_Name] [varchar](250) NULL,
	[Filler04] [varchar](2) NULL,
	[First_Holder_PAN] [varchar](30) NULL,
	[Filler05] [varchar](2) NULL,
	[First_Holder_PAN_status] [varchar](8) NULL,
	[Filler06] [varchar](2) NULL,
	[Second_Holder_Name] [varchar](45) NULL,
	[Filler07] [varchar](2) NULL,
	[Second_Holder_PAN] [varchar](30) NULL,
	[Filler08] [varchar](2) NULL,
	[Second_Holder_PAN_status] [varchar](8) NULL,
	[Filler09] [varchar](2) NULL,
	[Third_Holder_Name] [varchar](45) NULL,
	[Filler10] [varchar](2) NULL,
	[Third_Holder_PAN] [varchar](30) NULL,
	[Filler11] [varchar](2) NULL,
	[Third_Holder_PAN_status] [varchar](8) NULL,
	[Filler12] [varchar](2) NULL,
	[Minor_indicator] [varchar](10) NULL,
	[Filler13] [varchar](2) NULL,
	[Nominee_Guardian_Indicator] [varchar](10) NULL,
	[Filler14] [varchar](2) NULL,
	[Nominee_Guardian_Name] [varchar](45) NULL,
	[Filler15] [varchar](2) NULL,
	[Client_Account_Status] [varchar](13) NULL,
	[Filler16] [varchar](2) NULL,
	[Account_Category] [varchar](13) NULL,
	[Filler17] [varchar](2) NULL,
	[Account_Type] [varchar](5) NULL,
	[Filler18] [varchar](2) NULL,
	[Account_Sub_Type] [varchar](8) NULL,
	[Filler19] [varchar](2) NULL,
	[Ahdealingewhreceipt] [varchar](16) NULL,
	[Filler20] [varchar](2) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masteruniqno] [int] NULL,
	[present_status] [varchar](50) NULL,
	[rem1] [varchar](700) NULL,
	[rem] [varchar](700) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bendem630_dt22122023]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bendem630_dt22122023](
	[Filler01] [varchar](2) NULL,
	[DP_ID] [varchar](8) NULL,
	[Filler02] [varchar](2) NULL,
	[Client_ID] [varchar](8) NULL,
	[Filler03] [varchar](2) NULL,
	[First_holder_Name] [varchar](250) NULL,
	[Filler04] [varchar](2) NULL,
	[First_Holder_PAN] [varchar](30) NULL,
	[Filler05] [varchar](2) NULL,
	[First_Holder_PAN_status] [varchar](8) NULL,
	[Filler06] [varchar](2) NULL,
	[Second_Holder_Name] [varchar](45) NULL,
	[Filler07] [varchar](2) NULL,
	[Second_Holder_PAN] [varchar](30) NULL,
	[Filler08] [varchar](2) NULL,
	[Second_Holder_PAN_status] [varchar](8) NULL,
	[Filler09] [varchar](2) NULL,
	[Third_Holder_Name] [varchar](45) NULL,
	[Filler10] [varchar](2) NULL,
	[Third_Holder_PAN] [varchar](30) NULL,
	[Filler11] [varchar](2) NULL,
	[Third_Holder_PAN_status] [varchar](8) NULL,
	[Filler12] [varchar](2) NULL,
	[Minor_indicator] [varchar](10) NULL,
	[Filler13] [varchar](2) NULL,
	[Nominee_Guardian_Indicator] [varchar](10) NULL,
	[Filler14] [varchar](2) NULL,
	[Nominee_Guardian_Name] [varchar](45) NULL,
	[Filler15] [varchar](2) NULL,
	[Client_Account_Status] [varchar](13) NULL,
	[Filler16] [varchar](2) NULL,
	[Account_Category] [varchar](13) NULL,
	[Filler17] [varchar](2) NULL,
	[Account_Type] [varchar](5) NULL,
	[Filler18] [varchar](2) NULL,
	[Account_Sub_Type] [varchar](8) NULL,
	[Filler19] [varchar](2) NULL,
	[Ahdealingewhreceipt] [varchar](16) NULL,
	[Filler20] [varchar](2) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masteruniqno] [int] NULL,
	[present_status] [varchar](50) NULL,
	[rem1] [varchar](700) NULL,
	[rem] [varchar](700) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bendem630_hd]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bendem630_hd](
	[Filler01] [varchar](2) NULL,
	[DP_ID] [varchar](8) NULL,
	[Filler02] [varchar](2) NULL,
	[CLNT_ID] [varchar](8) NULL,
	[Filler03] [varchar](2) NULL,
	[SOLE_FIRST_HOLDER_NAME] [varchar](250) NULL,
	[Filler04] [varchar](2) NULL,
	[SOLE_FIRST_HOLDER_PAN] [varchar](30) NULL,
	[Filler05] [varchar](2) NULL,
	[PAN_STAT1] [varchar](8) NULL,
	[Filler06] [varchar](2) NULL,
	[SECOND_HOLDER_NAME] [varchar](45) NULL,
	[Filler07] [varchar](2) NULL,
	[SECOND_HOLDER_PAN] [varchar](30) NULL,
	[Filler08] [varchar](2) NULL,
	[PAN_STAT2] [varchar](8) NULL,
	[Filler09] [varchar](2) NULL,
	[THIRD_HOLDER_NAME] [varchar](45) NULL,
	[Filler10] [varchar](2) NULL,
	[THIRD_HOLDER_PAN] [varchar](30) NULL,
	[Filler11] [varchar](2) NULL,
	[PAN_STAT3] [varchar](8) NULL,
	[Filler12] [varchar](2) NULL,
	[MNOR_MAJOR] [varchar](10) NULL,
	[Filler13] [varchar](2) NULL,
	[NOMI_GUARD] [varchar](10) NULL,
	[Filler14] [varchar](2) NULL,
	[NOMI_GUARD_NAME] [varchar](45) NULL,
	[Filler15] [varchar](2) NULL,
	[CLIENT_STATUS] [varchar](13) NULL,
	[Filler16] [varchar](2) NULL,
	[ACCT_CATEGORY] [varchar](13) NULL,
	[Filler17] [varchar](2) NULL,
	[TYPE] [varchar](5) NULL,
	[Filler18] [varchar](2) NULL,
	[SUB_TYPE] [varchar](8) NULL,
	[Filler19] [varchar](2) NULL,
	[CLIENT_INDICATOR] [varchar](16) NULL,
	[Filler20] [varchar](2) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masteruniqno] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bendemcdslTransactionFile]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bendemcdslTransactionFile](
	[dpid] [varchar](8) NULL,
	[clid] [varchar](8) NULL,
	[gendate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bendemnsdloutfile]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bendemnsdloutfile](
	[remarks] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bendemt0]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bendemt0](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rem] [varchar](200) NULL,
	[record_Type] [varchar](2) NULL,
	[batch_no] [varchar](7) NULL,
	[rta_id] [varchar](8) NULL,
	[isin] [varchar](12) NULL,
	[request_type] [varchar](1) NULL,
	[sender_id] [varchar](8) NULL,
	[sender_date] [varchar](8) NULL,
	[filler1] [varchar](8) NULL,
	[masteruniqno] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bendemt1]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bendemt1](
	[isin] [varchar](12) NULL,
	[dpid] [varchar](8) NULL,
	[clid] [varchar](8) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[record_Type] [varchar](2) NULL,
	[Line_no] [varchar](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bendemt2]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bendemt2](
	[rem] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bendemt3]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bendemt3](
	[rem] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdlbulkdnmast]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdlbulkdnmast](
	[cnt] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdlbulkfile01]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdlbulkfile01](
	[slno] [varchar](5) NULL,
	[isin] [varchar](12) NULL,
	[dpid] [varchar](8) NULL,
	[clid] [varchar](8) NULL,
	[units] [varchar](18) NULL,
	[name] [varchar](50) NULL,
	[jh1] [varchar](50) NULL,
	[all_date] [varchar](10) NULL,
	[paidval] [varchar](18) NULL,
	[tissamt] [varchar](18) NULL,
	[paidamt] [varchar](18) NULL,
	[stampduty] [varchar](1) NULL,
	[catype] [int] NULL,
	[cadesc] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdlbulkfile02]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdlbulkfile02](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [varchar](18) NULL,
	[Issued_Amount] [varchar](18) NULL,
	[Paidup_Price] [varchar](18) NULL,
	[Paidup_Amount] [varchar](18) NULL,
	[Filler] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[FractionFlag] [char](1) NULL,
	[calcflag] [char](1) NULL,
	[issamt] [varchar](18) NULL,
	[tissamt] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BNSDLBULKFILE02A]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BNSDLBULKFILE02A](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[File_IDentification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Debit_Credit_Indicator] [varchar](1) NULL,
	[ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](12) NULL,
	[Allotment_Date] [datetime] NULL,
	[Allocation_Allotment_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[Total_Allotted_Quantity_Free_Lockin] [varchar](18) NULL,
	[Total_Allotted_Quantity_Lockin] [varchar](18) NULL,
	[Total_No_detail_records] [varchar](7) NULL,
	[Total_Issued_Amount] [varchar](18) NULL,
	[Total_Paidup_Amount] [varchar](18) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[Basis_calculation_Stamp_Duty] [varchar](2) NULL,
	[EBP_Name] [varchar](2) NULL,
	[Funds_collected_through] [varchar](2) NULL,
	[Filler] [varchar](2) NULL,
	[MasterUniqNo] [int] NULL,
	[opfv] [decimal](18, 0) NULL,
	[opfvvalue] [decimal](18, 2) NULL,
	[StampDutyPaid] [varchar](18) NULL,
	[Processflag] [varchar](1) NULL,
	[Issue_pr] [varchar](18) NULL,
	[Paidup_pr] [varchar](18) NULL,
	[Stmpparam] [varchar](1) NULL,
	[typeofca] [varchar](50) NULL,
	[company_name] [varchar](100) NULL,
	[Inward_Date] [datetime] NULL,
	[aadesc] [varchar](100) NULL,
	[FractionFlag] [char](1) NULL,
	[Paidup_prFract] [float] NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdlbulkfileDN]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdlbulkfileDN](
	[slno] [int] NULL,
	[distfrom] [varchar](18) NULL,
	[distto] [varchar](18) NULL,
	[shares] [varchar](18) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdlbulkfilednout]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdlbulkfilednout](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[Debit_Credit_ISIN] [varchar](12) NULL,
	[Debit_Credit_Indicator] [char](1) NULL,
	[From_Distinctive_No_NSDL] [varchar](18) NULL,
	[To_Distinctive_No_NSDL] [varchar](18) NULL,
	[Quantity] [varchar](18) NULL,
	[Flag_status_DN_Range] [varchar](2) NULL,
	[CA_Type] [varchar](4) NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdlbulkfileF01]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdlbulkfileF01](
	[slno] [varchar](5) NULL,
	[isin] [varchar](12) NULL,
	[dpid] [varchar](8) NULL,
	[clid] [varchar](8) NULL,
	[units] [varchar](18) NULL,
	[name] [varchar](50) NULL,
	[jh1] [varchar](50) NULL,
	[all_date] [varchar](10) NULL,
	[paidval] [numeric](18, 2) NULL,
	[tissamt] [varchar](18) NULL,
	[paidamt] [varchar](18) NULL,
	[stampduty] [varchar](1) NULL,
	[catype] [int] NULL,
	[cadesc] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdlbulkfilef02]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdlbulkfilef02](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [varchar](18) NULL,
	[Issued_Amount] [varchar](18) NULL,
	[Paidup_Price] [varchar](18) NULL,
	[Paidup_Amount] [varchar](18) NULL,
	[Filler] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[FractionFlag] [char](1) NULL,
	[calcflag] [char](1) NULL,
	[issamt] [varchar](18) NULL,
	[tissamt] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdlbulkfilef02a]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdlbulkfilef02a](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[File_IDentification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Debit_Credit_Indicator] [varchar](1) NULL,
	[ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](12) NULL,
	[Allotment_Date] [datetime] NULL,
	[Allocation_Allotment_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[Total_Allotted_Quantity_Free_Lockin] [varchar](18) NULL,
	[Total_Allotted_Quantity_Lockin] [varchar](18) NULL,
	[Total_No_detail_records] [varchar](7) NULL,
	[Total_Issued_Amount] [varchar](18) NULL,
	[Total_Paidup_Amount] [varchar](18) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[Basis_calculation_Stamp_Duty] [varchar](2) NULL,
	[EBP_Name] [varchar](2) NULL,
	[Funds_collected_through] [varchar](2) NULL,
	[Filler] [varchar](2) NULL,
	[MasterUniqNo] [int] NULL,
	[opfv] [decimal](18, 0) NULL,
	[opfvvalue] [decimal](18, 2) NULL,
	[StampDutyPaid] [varchar](18) NULL,
	[Processflag] [varchar](1) NULL,
	[Issue_pr] [varchar](18) NULL,
	[Paidup_pr] [varchar](18) NULL,
	[Stmpparam] [varchar](1) NULL,
	[typeofca] [varchar](50) NULL,
	[company_name] [varchar](100) NULL,
	[Inward_Date] [datetime] NULL,
	[aadesc] [varchar](100) NULL,
	[FractionFlag] [char](1) NULL,
	[Paidup_prFract] [float] NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdlbulkfileM01]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdlbulkfileM01](
	[slno] [varchar](5) NULL,
	[isin] [varchar](12) NULL,
	[dpid] [varchar](8) NULL,
	[clid] [varchar](8) NULL,
	[units] [varchar](18) NULL,
	[name] [varchar](100) NULL,
	[jh1] [varchar](100) NULL,
	[all_date] [varchar](10) NULL,
	[paidval] [varchar](18) NULL,
	[tissamt] [varchar](18) NULL,
	[paidamt] [varchar](18) NULL,
	[stampduty] [varchar](1) NULL,
	[catype] [int] NULL,
	[cadesc] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdlbulkfileM02]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdlbulkfileM02](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [varchar](18) NULL,
	[Issued_Amount] [varchar](18) NULL,
	[Paidup_Price] [varchar](18) NULL,
	[Paidup_Amount] [varchar](18) NULL,
	[Filler] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[FractionFlag] [char](1) NULL,
	[calcflag] [char](1) NULL,
	[issamt] [varchar](18) NULL,
	[tissamt] [varchar](18) NULL,
	[misin] [varchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BNSDLControl_file]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BNSDLControl_file](
	[ISIN] [varchar](12) NULL,
	[records] [int] NULL,
	[filename] [varchar](20) NULL,
	[masteruniqno] [int] IDENTITY(8000,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdlFtemp1]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdlFtemp1](
	[ftemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdlFtemp12]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdlFtemp12](
	[ftemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdlFtmp11]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdlFtmp11](
	[ftemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdlFtmp2]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdlFtmp2](
	[ftemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdlFtotisamt]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdlFtotisamt](
	[tsamt] [numeric](37, 4) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdlftotshr]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdlftotshr](
	[totshr] [int] NULL,
	[totfrec1] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdltemp1]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdltemp1](
	[ftemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdltemp12]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdltemp12](
	[ftemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdltmp12a]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdltmp12a](
	[ftemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdltmp2]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdltmp2](
	[ftemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdltotisamt]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdltotisamt](
	[tsamt] [numeric](37, 4) NULL,
	[id] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdltotmulshr]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdltotmulshr](
	[totshr] [int] NULL,
	[totrecm1] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bnsdltotshr]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bnsdltotshr](
	[totshr] [int] NULL,
	[totrec1] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bovcrec]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bovcrec](
	[bovercdsoutfilerecords] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bover5]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bover5](
	[Btemp] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bover6]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bover6](
	[btemp] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoverifforIEPFCDSL]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoverifforIEPFCDSL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SLNO] [varchar](7) NULL,
	[BOID] [varchar](16) NULL,
	[BO_CATEGORY] [varchar](1) NULL,
	[BO_TYPE] [varchar](2) NULL,
	[BO_ACCOUNT_STATUS] [varchar](1) NULL,
	[BO_SUB_TYPE] [varchar](2) NULL,
	[FIRST_HOLDER_NAME] [varchar](75) NULL,
	[SECOND_HOLDER_NAME] [varchar](75) NULL,
	[THIRD_HOLDER_NAME] [varchar](75) NULL,
	[FREEZE_FLAG] [varchar](1) NULL,
	[Remarks] [varchar](20) NULL,
	[remsource] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[btempftxt]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[btempftxt](
	[btempf] [varchar](35) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[btempftxt1]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[btempftxt1](
	[btempf] [varchar](54) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[btempftxt2]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[btempftxt2](
	[btempf] [varchar](35) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[btempftxt3]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[btempftxt3](
	[btempg] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[btempftxt4]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[btempftxt4](
	[btempg] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CCA_DUPCHK01]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCA_DUPCHK01](
	[bo_id] [varchar](16) NULL,
	[shares] [varchar](16) NULL,
	[DUPLICATES_TIMES] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cca_muno01]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cca_muno01](
	[mmuno] [int] NULL,
	[id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CCADUPCHKFILE]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCADUPCHKFILE](
	[CNT] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cccc]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cccc](
	[Record_Type] [varchar](50) NULL,
	[Line_No] [varchar](50) NULL,
	[DP_ID] [varchar](50) NULL,
	[Ben_Acc_No] [varchar](50) NULL,
	[Ben_Type] [varchar](50) NULL,
	[Ben_sub_type] [varchar](50) NULL,
	[Ben_Acc_Category] [varchar](50) NULL,
	[Ben_Occupation] [varchar](50) NULL,
	[FHlderName_BP] [varchar](250) NULL,
	[FH_FH_name] [varchar](50) NULL,
	[BenBPAdd1] [varchar](50) NULL,
	[BenBPAdd2] [varchar](50) NULL,
	[BenBPAdd3] [varchar](50) NULL,
	[BenBPAdd4] [varchar](50) NULL,
	[BenBPPin] [varchar](50) NULL,
	[BenBPPhno] [varchar](50) NULL,
	[BenBPFaxNo] [varchar](50) NULL,
	[SH_Name] [varchar](50) NULL,
	[SH_FH_name] [varchar](50) NULL,
	[TH_Name] [varchar](50) NULL,
	[TH_FH_name] [varchar](50) NULL,
	[Filler1] [varchar](50) NULL,
	[Filler2] [varchar](54) NULL,
	[FH_PAN] [varchar](50) NULL,
	[SH_PAN] [varchar](50) NULL,
	[TH_PAN] [varchar](50) NULL,
	[NomG_Indicator] [varchar](50) NULL,
	[NomG_Name] [varchar](50) NULL,
	[NomG_Add1] [varchar](50) NULL,
	[NomG_Add2] [varchar](50) NULL,
	[NomG_Add3] [varchar](50) NULL,
	[NomG_Add4] [varchar](50) NULL,
	[NomG_Pincode] [varchar](50) NULL,
	[Dob_minor] [varchar](50) NULL,
	[Minor_Indicator] [varchar](50) NULL,
	[Ben_Bank_AccNo] [varchar](50) NULL,
	[Bank_NameBranch] [varchar](135) NULL,
	[Bank_Add1] [varchar](50) NULL,
	[Bank_Add2] [varchar](50) NULL,
	[Bank_Add3] [varchar](50) NULL,
	[Bank_Add4] [varchar](50) NULL,
	[Bank_Pincode] [varchar](50) NULL,
	[RBI_RefNRI] [varchar](50) NULL,
	[RBI_AppDtNRI] [varchar](50) NULL,
	[SEBI_Regn_No] [varchar](50) NULL,
	[Ben_TDS] [varchar](50) NULL,
	[Ben_Status] [varchar](50) NULL,
	[Ben_Free_Pos] [varchar](50) NULL,
	[Ben_Lockin_Pos] [varchar](50) NULL,
	[Ben_Block_Pos] [varchar](50) NULL,
	[Ben_Pl_Pos] [varchar](50) NULL,
	[Ben_PlLockin_Pos] [varchar](50) NULL,
	[Ben_PlUncPos] [varchar](50) NULL,
	[BenUnconPlLockin_Pos] [varchar](50) NULL,
	[Ben_Remat_Pos] [varchar](50) NULL,
	[Ben_Remat_Lockin_Pos] [varchar](50) NULL,
	[BenCM_IDD_Pos] [varchar](50) NULL,
	[CMPoolPosPooldelivery] [varchar](50) NULL,
	[CC_Settlement_Pos] [varchar](50) NULL,
	[MICR_Code] [varchar](50) NULL,
	[IFSC] [varchar](50) NULL,
	[Bank_Account_Type] [varchar](50) NULL,
	[Filler] [varchar](50) NULL,
	[FHMapin_ID] [varchar](50) NULL,
	[SHMapin_ID] [varchar](50) NULL,
	[THMapin_ID] [varchar](50) NULL,
	[FHEmail_ID] [varchar](50) NULL,
	[SHEmail_ID] [varchar](50) NULL,
	[THEmail_ID] [varchar](50) NULL,
	[RGESS_Flag] [varchar](50) NULL,
	[BenFreePosHlddueNDU] [varchar](50) NULL,
	[BenLockinPosHlddueNDU] [varchar](50) NULL,
	[BenUncFreePosHldNDU] [varchar](50) NULL,
	[BenUncLockinPosHldNDU] [varchar](50) NULL,
	[BenBPAddStatecode] [varchar](50) NULL,
	[BenBPCountrycode] [varchar](50) NULL,
	[LEI_No] [varchar](50) NULL,
	[PAN_Flag_for_FH] [varchar](50) NULL,
	[PAN_Flag_for_SH] [varchar](50) NULL,
	[PAN_Flag_for_TH] [varchar](50) NULL,
	[Filler4] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cctempdb1]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cctempdb1](
	[ctemp1] [varchar](80) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cctempdb2]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cctempdb2](
	[ctemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cctempdb3]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cctempdb3](
	[ctemp1] [varchar](71) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cctempdb4]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cctempdb4](
	[ctemp1] [varchar](3000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CD031101U]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CD031101U](
	[ISIN_Numeric_Code] [varchar](50) NULL,
	[ISIN_Alpha_Code] [varchar](50) NULL,
	[ISIN_Short_Name] [varchar](150) NULL,
	[ISIN_Description] [varchar](250) NULL,
	[Issuer_ID] [varchar](50) NULL,
	[Issuer_Name] [varchar](50) NULL,
	[Issuer_Address_1] [varchar](50) NULL,
	[Issuer_Address_2] [varchar](50) NULL,
	[Issuer_Address_3] [varchar](50) NULL,
	[Issuer_City] [varchar](50) NULL,
	[Issuer_State] [varchar](50) NULL,
	[Issuer_Country] [varchar](50) NULL,
	[Issuer_Zip_Code] [varchar](50) NULL,
	[Issuer_Phone_1] [varchar](50) NULL,
	[Issuer_Phone_2] [varchar](50) NULL,
	[Issuer_Fax] [varchar](50) NULL,
	[Issuer_Email] [varchar](50) NULL,
	[Issuer__Contact_Person_Name] [varchar](50) NULL,
	[Contact_Person_Designation] [varchar](50) NULL,
	[Contact_Person_Address_1] [varchar](50) NULL,
	[Contact_Person_Address_2] [varchar](50) NULL,
	[Contact_Person_Address_3] [varchar](50) NULL,
	[Contact_Person_City] [varchar](50) NULL,
	[Contact_Person_State] [varchar](50) NULL,
	[Contact_Person_Country] [varchar](50) NULL,
	[Contact_Person_Zip_Code] [varchar](50) NULL,
	[Contact_Person_Phone_1] [varchar](50) NULL,
	[Contact_Person_Phone_2] [varchar](50) NULL,
	[Contact_Person_Fax] [varchar](50) NULL,
	[Contact_Person_Email] [varchar](50) NULL,
	[RTA_ID] [varchar](50) NULL,
	[RTA_Name] [varchar](50) NULL,
	[SEBI_Registration_From_Date] [varchar](50) NULL,
	[SEBI_Registration_To_Date] [varchar](50) NULL,
	[RTA_Address_1] [varchar](50) NULL,
	[RTA_Address_2] [varchar](50) NULL,
	[RTA_Address_3] [varchar](50) NULL,
	[RTA_City] [varchar](50) NULL,
	[RTA_State] [varchar](50) NULL,
	[RTA_Country] [varchar](50) NULL,
	[RTA_Zip_Code] [varchar](50) NULL,
	[RTA_Phone_1] [varchar](50) NULL,
	[RTA_Phone_2] [varchar](50) NULL,
	[RTA_Fax] [varchar](50) NULL,
	[RTA_Email] [varchar](50) NULL,
	[ISIN_Share_Name] [varchar](50) NULL,
	[ISIN_Second_Name] [varchar](50) NULL,
	[ISIN_Last_Name] [varchar](50) NULL,
	[ISIN_Address_1] [varchar](50) NULL,
	[ISIN_Address_2] [varchar](50) NULL,
	[ISIN_Address_3] [varchar](50) NULL,
	[ISIN_City] [varchar](50) NULL,
	[ISIN_State] [varchar](50) NULL,
	[ISIN_Country] [varchar](50) NULL,
	[ISIN_Zip_Code] [varchar](50) NULL,
	[ISIN_Phone_1] [varchar](50) NULL,
	[ISIN_Phone_2] [varchar](50) NULL,
	[ISIN_Fax] [varchar](50) NULL,
	[ISIN_Email] [varchar](50) NULL,
	[Security_Type] [varchar](50) NULL,
	[Security_Type_Description] [varchar](50) NULL,
	[Market_Type] [varchar](50) NULL,
	[Market_Type_Description] [varchar](50) NULL,
	[ISIN_Status] [varchar](50) NULL,
	[ISIN_Status_Description] [varchar](50) NULL,
	[Hold_Demat_Flag] [varchar](50) NULL,
	[Hold_Remat_Flag] [varchar](50) NULL,
	[Expiry_Date] [varchar](50) NULL,
	[Market_Lot] [varchar](50) NULL,
	[CFI_Code] [varchar](50) NULL,
	[Par_Value] [varchar](50) NULL,
	[Paidup_Value] [varchar](50) NULL,
	[Redemption_Price] [varchar](50) NULL,
	[Redemption_Date] [varchar](50) NULL,
	[Close_Price] [varchar](50) NULL,
	[Close_Date] [varchar](50) NULL,
	[Issue_Date] [varchar](50) NULL,
	[Close_Price_Decimal_Indicator] [varchar](50) NULL,
	[Conversion_Date] [varchar](50) NULL,
	[Distinct_Range_Exists] [varchar](50) NULL,
	[ISIN_Decimal_Code] [varchar](50) NULL,
	[ISIN_Decimal_Code_Description] [varchar](50) NULL,
	[ISIN_Suspension_Flag] [varchar](50) NULL,
	[ISIN_Suspension_Flag_Description] [varchar](50) NULL,
	[Money_Due_Date] [varchar](50) NULL,
	[Liquidation_Winding_Up_Status] [varchar](150) NULL,
	[Remarks] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cdsbenrec]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdsbenrec](
	[cdsbrec] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CDSL_ISIN_DETAIL]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CDSL_ISIN_DETAIL](
	[ISIN_Numeric_Code] [varchar](20) NULL,
	[ISIN_Alpha_Code] [varchar](100) NULL,
	[ISIN_Short_Name] [varchar](100) NULL,
	[ISIN_Description] [varchar](300) NULL,
	[Issuer_ID] [varchar](10) NULL,
	[Issuer_Name] [varchar](200) NULL,
	[Issuer_Address_1] [varchar](100) NULL,
	[Issuer_Address_2] [varchar](100) NULL,
	[Issuer_Address_3] [varchar](100) NULL,
	[Issuer_City] [varchar](100) NULL,
	[Issuer_State] [varchar](100) NULL,
	[Issuer_Country] [varchar](100) NULL,
	[Issuer_Zip_Code] [varchar](100) NULL,
	[Issuer_Phone_1] [varchar](100) NULL,
	[Issuer_Phone_2] [varchar](100) NULL,
	[Issuer_Fax] [varchar](100) NULL,
	[Issuer_Email] [varchar](200) NULL,
	[Issuer_Contact_Person_Name] [varchar](100) NULL,
	[Contact_Person_Designation] [varchar](100) NULL,
	[Contact_Person_Address_1] [varchar](100) NULL,
	[Contact_Person_Address_2] [varchar](100) NULL,
	[Contact_Person_Address_3] [varchar](100) NULL,
	[Contact_Person_City] [varchar](100) NULL,
	[Contact_Person_State] [varchar](100) NULL,
	[Contact_Person_Country] [varchar](100) NULL,
	[Contact_Person_Zip_Code] [varchar](100) NULL,
	[Contact_Person_Phone_1] [varchar](100) NULL,
	[Contact_Person_Phone_2] [varchar](100) NULL,
	[Contact_Person_Fax] [varchar](100) NULL,
	[Contact_Person_Email] [varchar](200) NULL,
	[RTA_ID] [varchar](10) NULL,
	[RTA_Name] [varchar](200) NULL,
	[SEBI_Registration_From_Date] [varchar](10) NULL,
	[SEBI_Registration_To_Date] [varchar](100) NULL,
	[RTA_Address_1] [varchar](100) NULL,
	[RTA_Address_2] [varchar](100) NULL,
	[RTA_Address_3] [varchar](100) NULL,
	[RTA_City] [varchar](100) NULL,
	[RTA_State] [varchar](100) NULL,
	[RTA_Country] [varchar](100) NULL,
	[RTA_Zip_Code] [varchar](100) NULL,
	[RTA_Phone_1] [varchar](100) NULL,
	[RTA_Phone_2] [varchar](100) NULL,
	[RTA_Fax] [varchar](100) NULL,
	[RTA_Email] [varchar](100) NULL,
	[ISIN_Share_Name] [varchar](200) NULL,
	[ISIN_Second_Name] [varchar](100) NULL,
	[ISIN_Last_Name] [varchar](100) NULL,
	[ISIN_Address_1] [varchar](100) NULL,
	[ISIN_Address_2] [varchar](100) NULL,
	[ISIN_Address_3] [varchar](100) NULL,
	[ISIN_City] [varchar](100) NULL,
	[ISIN_State] [varchar](100) NULL,
	[ISIN_Country] [varchar](100) NULL,
	[ISIN_Zip_Code] [varchar](100) NULL,
	[ISIN_Phone_1] [varchar](100) NULL,
	[ISIN_Phone_2] [varchar](100) NULL,
	[ISIN_Fax] [varchar](100) NULL,
	[ISIN_Email] [varchar](200) NULL,
	[Security_Type] [varchar](10) NULL,
	[Security_Type_Description] [varchar](100) NULL,
	[Market_Type] [varchar](10) NULL,
	[Market_Type_Description] [varchar](100) NULL,
	[ISIN_Status] [varchar](100) NULL,
	[ISIN_Status_Description] [varchar](100) NULL,
	[Hold_Demat_Flag] [varchar](10) NULL,
	[Hold_Remat_Flag] [varchar](10) NULL,
	[Expiry_Date] [varchar](12) NULL,
	[Market_Lot] [varchar](10) NULL,
	[CFI_Code] [varchar](10) NULL,
	[Par_Value] [varchar](18) NULL,
	[Paidup_Value] [varchar](18) NULL,
	[Redemption_Price] [varchar](18) NULL,
	[Redemption_Date] [varchar](12) NULL,
	[Close_Price] [varchar](18) NULL,
	[Close_Date] [varchar](12) NULL,
	[Issue_Date] [varchar](12) NULL,
	[Close_Price_Decimal_Indicator] [varchar](10) NULL,
	[Conversion_Date] [varchar](12) NULL,
	[Distinct_Range_Exists] [varchar](10) NULL,
	[ISIN_Decimal_Code] [varchar](10) NULL,
	[ISIN_Decimal_Code_Description] [varchar](100) NULL,
	[ISIN_Suspension_Flag] [varchar](200) NULL,
	[ISIN_Suspension_Flag_Description] [varchar](100) NULL,
	[Money_Due_Date] [varchar](12) NULL,
	[Liquidation_Winding_Up_Status] [varchar](200) NULL,
	[Remarks] [varchar](200) NULL,
	[vslno] [int] NULL,
	[vslno1] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CDSL_PARAM01]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CDSL_PARAM01](
	[ID] [int] NULL,
	[PISIN] [varchar](12) NULL,
	[BISIN] [varchar](12) NULL,
	[DFROM] [int] NULL,
	[DTO] [int] NULL,
	[DRCRFLAG] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cdsl0101a]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdsl0101a](
	[dematrtaid] [varchar](6) NULL,
	[dematdpid] [varchar](6) NULL,
	[demat_reqno] [varchar](8) NULL,
	[qty_typecode] [varchar](1) NULL,
	[qty_typedesc] [varchar](40) NULL,
	[demat_reqqty] [varchar](20) NULL,
	[demat_accqty] [varchar](20) NULL,
	[demat_rejqty] [varchar](20) NULL,
	[lin_qty] [varchar](20) NULL,
	[lin_reasoncode] [varchar](2) NULL,
	[lin_reasondesc] [varchar](40) NULL,
	[noofcertificates] [varchar](5) NULL,
	[dr_statuscode] [varchar](1) NULL,
	[dr_statusdesc] [varchar](40) NULL,
	[isin] [varchar](12) NULL,
	[isin_name] [varchar](20) NULL,
	[security_type] [varchar](2) NULL,
	[security_desc] [varchar](40) NULL,
	[drn_setup_dt] [varchar](11) NULL,
	[drn_recd_RTA_dt] [varchar](11) NULL,
	[drn_Closed_Rta_Dt] [varchar](11) NULL,
	[bo_accno] [varchar](16) NULL,
	[drfno] [varchar](16) NULL,
	[rtaintrefno] [varchar](16) NULL,
	[dayspending] [varchar](6) NULL,
	[daysrem_confirm] [varchar](6) NULL,
	[name1] [varchar](142) NULL,
	[name2] [varchar](142) NULL,
	[name3] [varchar](142) NULL,
	[boadd1] [varchar](55) NULL,
	[boadd2] [varchar](55) NULL,
	[boadd3] [varchar](55) NULL,
	[bocity] [varchar](25) NULL,
	[bostate] [varchar](25) NULL,
	[bocountry] [varchar](25) NULL,
	[bopin] [varchar](10) NULL,
	[bopoaname] [varchar](142) NULL,
	[rem1] [varchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cdsl0102a]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdsl0102a](
	[remsource] [varchar](5000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cdsl0102b]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdsl0102b](
	[remsource] [varchar](5000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CDSLBENDEM01_3287]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CDSLBENDEM01_3287](
	[ISIN] [varchar](12) NULL,
	[BOID] [varchar](16) NULL,
	[NAME] [varchar](164) NULL,
	[JH1] [varchar](164) NULL,
	[JH2] [varchar](164) NULL,
	[GNAME] [varchar](142) NULL,
	[NNAME] [varchar](142) NULL,
	[FHNAME] [varchar](50) NULL,
	[GENDER] [varchar](1) NULL,
	[DOB] [varchar](11) NULL,
	[ACCSTATUS] [varchar](1) NULL,
	[BOCATEGORY] [varchar](2) NULL,
	[BOPRODUCT] [varchar](2) NULL,
	[CUST_TYPE] [varchar](2) NULL,
	[BOSUBSTATUS] [varchar](4) NULL,
	[OCC] [varchar](4) NULL,
	[PAN1] [varchar](25) NULL,
	[PAN2] [varchar](25) NULL,
	[PAN3] [varchar](25) NULL,
	[BOFREEZEFLAG] [varchar](1) NULL,
	[FRZREASONCODE] [varchar](2) NULL,
	[ISINSTAT] [varchar](1) NULL,
	[ACCOPDATE] [varchar](11) NULL,
	[SEBIREGN] [varchar](24) NULL,
	[SEIDNO] [varchar](2) NULL,
	[CHCIDNO] [varchar](6) NULL,
	[CMID] [varchar](8) NULL,
	[TRID] [varchar](8) NULL,
	[RBIREGN] [varchar](30) NULL,
	[RBIAPRDATE] [varchar](11) NULL,
	[TDSNO] [varchar](2) NULL,
	[Nationality] [varchar](3) NULL,
	[BOADD1] [varchar](55) NULL,
	[BOADD2] [varchar](55) NULL,
	[BOADD3] [varchar](55) NULL,
	[BOCITY] [varchar](25) NULL,
	[BOSTATE] [varchar](25) NULL,
	[BOCOUNTRY] [varchar](25) NULL,
	[BOPIN] [varchar](10) NULL,
	[PBOADD1] [varchar](55) NULL,
	[PBOADD2] [varchar](55) NULL,
	[PBOADD3] [varchar](55) NULL,
	[PBOCITY] [varchar](25) NULL,
	[PBOSTATE] [varchar](25) NULL,
	[PBOCOUNTRY] [varchar](25) NULL,
	[PBOPIN] [varchar](10) NULL,
	[MOBILE1] [varchar](17) NULL,
	[TEL1] [varchar](17) NULL,
	[FAXNO] [varchar](17) NULL,
	[EMAILID] [varchar](100) NULL,
	[ECSFLAG] [varchar](1) NULL,
	[DIVMICR] [varchar](12) NULL,
	[DIVIFSC] [varchar](12) NULL,
	[BANKNAME] [varchar](100) NULL,
	[BANKADD1] [varchar](40) NULL,
	[BANKADD2] [varchar](40) NULL,
	[BANKADD3] [varchar](40) NULL,
	[BANKCITY] [varchar](25) NULL,
	[BANKSTATE] [varchar](25) NULL,
	[BANKCOUNTRY] [varchar](25) NULL,
	[BANKPIN] [varchar](10) NULL,
	[DIVBANKCUR] [varchar](6) NULL,
	[DIVBKACTYPE] [varchar](5) NULL,
	[DIVBKACCNO] [varchar](20) NULL,
	[TOTHOLD] [varchar](22) NULL,
	[TOTLOCKIN] [varchar](22) NULL,
	[PLEDGEBAL] [varchar](22) NULL,
	[SAFEKEEPBAL] [varchar](22) NULL,
	[EARMARKBAL] [varchar](22) NULL,
	[PDREMATCONF] [varchar](22) NULL,
	[FREEBALANCE] [varchar](22) NULL,
	[PDEMATV] [varchar](22) NULL,
	[PDEMACONF] [varchar](22) NULL,
	[DOBENPOS] [varchar](8) NULL,
	[PLEDGESBAL] [varchar](22) NULL,
	[REMAGALINBAL] [varchar](22) NULL,
	[ARFLAG] [varchar](1) NULL,
	[UID1] [varchar](15) NULL,
	[UID2] [varchar](15) NULL,
	[UID3] [varchar](15) NULL,
	[PANGUARD] [varchar](10) NULL,
	[UDIGUARD] [varchar](15) NULL,
	[CUSTPMSEMAIL] [varchar](100) NULL,
	[LEI] [varchar](20) NULL,
	[LEIEXPDT] [varchar](8) NULL,
	[FILLER1] [varchar](25) NULL,
	[BORGESSFLAG] [varchar](1) NULL,
	[MOOPERA] [varchar](1) NULL,
	[COMMPRE] [varchar](1) NULL,
	[FILLER2] [varchar](1) NULL,
	[FILLER3] [varchar](1) NULL,
	[NOMGNAME1] [varchar](142) NULL,
	[NOMRELA1] [varchar](2) NULL,
	[NOMPERC1] [varchar](5) NULL,
	[NOM2NAME] [varchar](142) NULL,
	[NOMGNAME2] [varchar](142) NULL,
	[NOMRELA2] [varchar](2) NULL,
	[NOMPERC2] [varchar](5) NULL,
	[NOM3NAME] [varchar](142) NULL,
	[NOMGNAME3] [varchar](142) NULL,
	[NOMRELA3] [varchar](2) NULL,
	[NOMPERC3] [varchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cdslbenrec]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdslbenrec](
	[cdsbrec] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cdslcounttemp]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdslcounttemp](
	[id] [varchar](1) NOT NULL,
	[recincdsl] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CDSLDISTNOS]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CDSLDISTNOS](
	[DFROM] [int] NULL,
	[DTO] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CDSLFULLBENDEM]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CDSLFULLBENDEM](
	[BOID] [varchar](16) NULL,
	[DPID] [varchar](8) NULL,
	[BONAME] [varchar](164) NULL,
	[JH1] [varchar](164) NULL,
	[JH2] [varchar](164) NULL,
	[FHNAME] [varchar](164) NULL,
	[GMNAME] [varchar](164) NULL,
	[OCC] [varchar](4) NULL,
	[DOB] [varchar](11) NULL,
	[PANEX] [varchar](1) NULL,
	[PAN] [varchar](25) NULL,
	[PANVER] [varchar](1) NULL,
	[PAN1EX] [varchar](1) NULL,
	[PAN1] [varchar](25) NULL,
	[PAN1VER] [varchar](1) NULL,
	[PAN2EX] [varchar](1) NULL,
	[PAN2] [varchar](25) NULL,
	[PANEVER] [varchar](1) NULL,
	[ADD1] [varchar](60) NULL,
	[ADD2] [varchar](60) NULL,
	[ADD3] [varchar](60) NULL,
	[ADDCITY] [varchar](60) NULL,
	[ADDSTATE] [varchar](60) NULL,
	[ADDZIP] [varchar](10) NULL,
	[ADDCNTRY] [varchar](25) NULL,
	[TEL1] [varchar](17) NULL,
	[TEL2] [varchar](17) NULL,
	[FAX] [varchar](17) NULL,
	[EMAIL] [varchar](50) NULL,
	[PADD1] [varchar](60) NULL,
	[PADD2] [varchar](60) NULL,
	[PADD3] [varchar](60) NULL,
	[PADDCITY] [varchar](60) NULL,
	[PADDSTATE] [varchar](60) NULL,
	[PADDZIP] [varchar](10) NULL,
	[PADDCNTRY] [varchar](50) NULL,
	[PTEL1] [varchar](100) NULL,
	[PTEL2] [varchar](100) NULL,
	[PFAX] [varchar](17) NULL,
	[CEMAIL] [varchar](50) NULL,
	[BOCAT] [varchar](2) NULL,
	[BOPROD] [varchar](2) NULL,
	[BOSUBSTAT] [varchar](4) NULL,
	[BOSTATUS] [varchar](2) NULL,
	[BOACCSTAT] [varchar](2) NULL,
	[ECS] [varchar](1) NULL,
	[DBCODE] [varchar](12) NULL,
	[DBBRANCH] [varchar](12) NULL,
	[DBNAME] [varchar](100) NULL,
	[DBADD1] [varchar](50) NULL,
	[DBADD2] [varchar](50) NULL,
	[DBADD3] [varchar](50) NULL,
	[DBCITY] [varchar](50) NULL,
	[DBSTATE] [varchar](50) NULL,
	[DBZIP] [varchar](10) NULL,
	[DBCNTRY] [varchar](50) NULL,
	[DBACCNO] [varchar](20) NULL,
	[DBACTYPE] [varchar](5) NULL,
	[FRZFLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CDSLFULLBENDEM_2476]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CDSLFULLBENDEM_2476](
	[BOID] [varchar](16) NULL,
	[DPID] [varchar](8) NULL,
	[BONAME] [varchar](164) NULL,
	[JH1] [varchar](164) NULL,
	[JH2] [varchar](164) NULL,
	[FHNAME] [varchar](142) NULL,
	[GMNAME] [varchar](142) NULL,
	[GENDER] [varchar](2) NULL,
	[DOB] [varchar](11) NULL,
	[PANEX] [varchar](1) NULL,
	[PAN] [varchar](25) NULL,
	[PANVER] [varchar](1) NULL,
	[PAN1EX] [varchar](1) NULL,
	[PAN1] [varchar](25) NULL,
	[PAN1VER] [varchar](1) NULL,
	[PAN2EX] [varchar](1) NULL,
	[PAN2] [varchar](25) NULL,
	[PANEVER] [varchar](1) NULL,
	[ADD1] [varchar](60) NULL,
	[ADD2] [varchar](60) NULL,
	[ADD3] [varchar](60) NULL,
	[ADDCITY] [varchar](60) NULL,
	[ADDSTATE] [varchar](60) NULL,
	[ADDZIP] [varchar](10) NULL,
	[ADDCNTRY] [varchar](25) NULL,
	[TEL1] [varchar](17) NULL,
	[TEL2] [varchar](17) NULL,
	[FAX] [varchar](17) NULL,
	[EMAIL] [varchar](50) NULL,
	[PADD1] [varchar](60) NULL,
	[PADD2] [varchar](60) NULL,
	[PADD3] [varchar](60) NULL,
	[PADDCITY] [varchar](60) NULL,
	[PADDSTATE] [varchar](60) NULL,
	[PADDZIP] [varchar](10) NULL,
	[PADDCNTRY] [varchar](50) NULL,
	[PTEL1] [varchar](100) NULL,
	[PTEL2] [varchar](100) NULL,
	[PFAX] [varchar](17) NULL,
	[CEMAIL] [varchar](50) NULL,
	[BOCAT] [varchar](2) NULL,
	[BOPROD] [varchar](2) NULL,
	[BOSUBSTAT] [varchar](4) NULL,
	[BOSTATUS] [varchar](2) NULL,
	[BOACCSTAT] [varchar](2) NULL,
	[ECS] [varchar](1) NULL,
	[DBCODE] [varchar](12) NULL,
	[DBBRANCH] [varchar](12) NULL,
	[DBNAME] [varchar](100) NULL,
	[DBADD1] [varchar](50) NULL,
	[DBADD2] [varchar](50) NULL,
	[DBADD3] [varchar](50) NULL,
	[DBCITY] [varchar](50) NULL,
	[DBSTATE] [varchar](50) NULL,
	[DBZIP] [varchar](10) NULL,
	[DBCNTRY] [varchar](50) NULL,
	[DBACCNO] [varchar](20) NULL,
	[DBACTYPE] [varchar](5) NULL,
	[FRZFLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CDSLFULLBENDEM_ADR_REJ_19022024]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CDSLFULLBENDEM_ADR_REJ_19022024](
	[BOID] [varchar](16) NULL,
	[DPID] [varchar](8) NULL,
	[BONAME] [varchar](164) NULL,
	[JH1] [varchar](164) NULL,
	[JH2] [varchar](164) NULL,
	[FHNAME] [varchar](164) NULL,
	[GMNAME] [varchar](164) NULL,
	[OCC] [varchar](4) NULL,
	[DOB] [varchar](11) NULL,
	[PANEX] [varchar](1) NULL,
	[PAN] [varchar](25) NULL,
	[PANVER] [varchar](1) NULL,
	[PAN1EX] [varchar](1) NULL,
	[PAN1] [varchar](25) NULL,
	[PAN1VER] [varchar](1) NULL,
	[PAN2EX] [varchar](1) NULL,
	[PAN2] [varchar](25) NULL,
	[PANEVER] [varchar](1) NULL,
	[ADD1] [varchar](60) NULL,
	[ADD2] [varchar](60) NULL,
	[ADD3] [varchar](60) NULL,
	[ADDCITY] [varchar](60) NULL,
	[ADDSTATE] [varchar](60) NULL,
	[ADDZIP] [varchar](10) NULL,
	[ADDCNTRY] [varchar](25) NULL,
	[TEL1] [varchar](17) NULL,
	[TEL2] [varchar](17) NULL,
	[FAX] [varchar](17) NULL,
	[EMAIL] [varchar](50) NULL,
	[PADD1] [varchar](60) NULL,
	[PADD2] [varchar](60) NULL,
	[PADD3] [varchar](60) NULL,
	[PADDCITY] [varchar](60) NULL,
	[PADDSTATE] [varchar](60) NULL,
	[PADDZIP] [varchar](10) NULL,
	[PADDCNTRY] [varchar](50) NULL,
	[PTEL1] [varchar](100) NULL,
	[PTEL2] [varchar](100) NULL,
	[PFAX] [varchar](17) NULL,
	[CEMAIL] [varchar](50) NULL,
	[BOCAT] [varchar](2) NULL,
	[BOPROD] [varchar](2) NULL,
	[BOSUBSTAT] [varchar](4) NULL,
	[BOSTATUS] [varchar](2) NULL,
	[BOACCSTAT] [varchar](2) NULL,
	[ECS] [varchar](1) NULL,
	[DBCODE] [varchar](12) NULL,
	[DBBRANCH] [varchar](12) NULL,
	[DBNAME] [varchar](100) NULL,
	[DBADD1] [varchar](50) NULL,
	[DBADD2] [varchar](50) NULL,
	[DBADD3] [varchar](50) NULL,
	[DBCITY] [varchar](50) NULL,
	[DBSTATE] [varchar](50) NULL,
	[DBZIP] [varchar](10) NULL,
	[DBCNTRY] [varchar](50) NULL,
	[DBACCNO] [varchar](20) NULL,
	[DBACTYPE] [varchar](5) NULL,
	[FRZFLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cdslimport]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdslimport](
	[ISIN_Numeric_Code] [varchar](20) NULL,
	[ISIN_Alpha_Code] [varchar](100) NULL,
	[ISIN_Short_Name] [varchar](100) NULL,
	[ISIN_Description] [varchar](300) NULL,
	[Issuer_ID] [varchar](10) NULL,
	[Issuer_Name] [varchar](200) NULL,
	[Issuer_Address_1] [varchar](100) NULL,
	[Issuer_Address_2] [varchar](100) NULL,
	[Issuer_Address_3] [varchar](100) NULL,
	[Issuer_City] [varchar](100) NULL,
	[Issuer_State] [varchar](100) NULL,
	[Issuer_Country] [varchar](100) NULL,
	[Issuer_Zip_Code] [varchar](100) NULL,
	[Issuer_Phone_1] [varchar](100) NULL,
	[Issuer_Phone_2] [varchar](100) NULL,
	[Issuer_Fax] [varchar](100) NULL,
	[Issuer_Email] [varchar](200) NULL,
	[Issuer_Contact_Person_Name] [varchar](100) NULL,
	[Contact_Person_Designation] [varchar](100) NULL,
	[Contact_Person_Address_1] [varchar](100) NULL,
	[Contact_Person_Address_2] [varchar](100) NULL,
	[Contact_Person_Address_3] [varchar](100) NULL,
	[Contact_Person_City] [varchar](100) NULL,
	[Contact_Person_State] [varchar](100) NULL,
	[Contact_Person_Country] [varchar](100) NULL,
	[Contact_Person_Zip_Code] [varchar](100) NULL,
	[Contact_Person_Phone_1] [varchar](100) NULL,
	[Contact_Person_Phone_2] [varchar](100) NULL,
	[Contact_Person_Fax] [varchar](100) NULL,
	[Contact_Person_Email] [varchar](200) NULL,
	[RTA_ID] [varchar](10) NULL,
	[RTA_Name] [varchar](200) NULL,
	[SEBI_Registration_From_Date] [varchar](10) NULL,
	[SEBI_Registration_To_Date] [varchar](100) NULL,
	[RTA_Address_1] [varchar](100) NULL,
	[RTA_Address_2] [varchar](100) NULL,
	[RTA_Address_3] [varchar](100) NULL,
	[RTA_City] [varchar](100) NULL,
	[RTA_State] [varchar](100) NULL,
	[RTA_Country] [varchar](100) NULL,
	[RTA_Zip_Code] [varchar](100) NULL,
	[RTA_Phone_1] [varchar](100) NULL,
	[RTA_Phone_2] [varchar](100) NULL,
	[RTA_Fax] [varchar](100) NULL,
	[RTA_Email] [varchar](100) NULL,
	[ISIN_Share_Name] [varchar](200) NULL,
	[ISIN_Second_Name] [varchar](100) NULL,
	[ISIN_Last_Name] [varchar](100) NULL,
	[ISIN_Address_1] [varchar](100) NULL,
	[ISIN_Address_2] [varchar](100) NULL,
	[ISIN_Address_3] [varchar](100) NULL,
	[ISIN_City] [varchar](100) NULL,
	[ISIN_State] [varchar](100) NULL,
	[ISIN_Country] [varchar](100) NULL,
	[ISIN_Zip_Code] [varchar](100) NULL,
	[ISIN_Phone_1] [varchar](100) NULL,
	[ISIN_Phone_2] [varchar](100) NULL,
	[ISIN_Fax] [varchar](100) NULL,
	[ISIN_Email] [varchar](200) NULL,
	[Security_Type] [varchar](10) NULL,
	[Security_Type_Description] [varchar](100) NULL,
	[Market_Type] [varchar](10) NULL,
	[Market_Type_Description] [varchar](100) NULL,
	[ISIN_Status] [varchar](100) NULL,
	[ISIN_Status_Description] [varchar](100) NULL,
	[Hold_Demat_Flag] [varchar](10) NULL,
	[Hold_Remat_Flag] [varchar](10) NULL,
	[Expiry_Date] [varchar](12) NULL,
	[Market_Lot] [varchar](10) NULL,
	[CFI_Code] [varchar](10) NULL,
	[Par_Value] [varchar](18) NULL,
	[Paidup_Value] [varchar](18) NULL,
	[Redemption_Price] [varchar](18) NULL,
	[Redemption_Date] [varchar](12) NULL,
	[Close_Price] [varchar](18) NULL,
	[Close_Date] [varchar](12) NULL,
	[Issue_Date] [varchar](12) NULL,
	[Close_Price_Decimal_Indicator] [varchar](10) NULL,
	[Conversion_Date] [varchar](12) NULL,
	[Distinct_Range_Exists] [varchar](10) NULL,
	[ISIN_Decimal_Code] [varchar](10) NULL,
	[ISIN_Decimal_Code_Description] [varchar](100) NULL,
	[ISIN_Suspension_Flag] [varchar](200) NULL,
	[ISIN_Suspension_Flag_Description] [varchar](100) NULL,
	[Money_Due_Date] [varchar](12) NULL,
	[Liquidation_Winding_Up_Status] [varchar](200) NULL,
	[Remarks] [varchar](200) NULL,
	[vslno] [int] NULL,
	[vslno1] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cdslimportbef04012024]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdslimportbef04012024](
	[ISIN_Numeric_Code] [varchar](20) NULL,
	[ISIN_Alpha_Code] [varchar](100) NULL,
	[ISIN_Short_Name] [varchar](100) NULL,
	[ISIN_Description] [varchar](300) NULL,
	[Issuer_ID] [varchar](10) NULL,
	[Issuer_Name] [varchar](200) NULL,
	[Issuer_Address_1] [varchar](100) NULL,
	[Issuer_Address_2] [varchar](100) NULL,
	[Issuer_Address_3] [varchar](100) NULL,
	[Issuer_City] [varchar](100) NULL,
	[Issuer_State] [varchar](100) NULL,
	[Issuer_Country] [varchar](100) NULL,
	[Issuer_Zip_Code] [varchar](100) NULL,
	[Issuer_Phone_1] [varchar](100) NULL,
	[Issuer_Phone_2] [varchar](100) NULL,
	[Issuer_Fax] [varchar](100) NULL,
	[Issuer_Email] [varchar](200) NULL,
	[Issuer_Contact_Person_Name] [varchar](100) NULL,
	[Contact_Person_Designation] [varchar](100) NULL,
	[Contact_Person_Address_1] [varchar](100) NULL,
	[Contact_Person_Address_2] [varchar](100) NULL,
	[Contact_Person_Address_3] [varchar](100) NULL,
	[Contact_Person_City] [varchar](100) NULL,
	[Contact_Person_State] [varchar](100) NULL,
	[Contact_Person_Country] [varchar](100) NULL,
	[Contact_Person_Zip_Code] [varchar](100) NULL,
	[Contact_Person_Phone_1] [varchar](100) NULL,
	[Contact_Person_Phone_2] [varchar](100) NULL,
	[Contact_Person_Fax] [varchar](100) NULL,
	[Contact_Person_Email] [varchar](200) NULL,
	[RTA_ID] [varchar](10) NULL,
	[RTA_Name] [varchar](200) NULL,
	[SEBI_Registration_From_Date] [varchar](10) NULL,
	[SEBI_Registration_To_Date] [varchar](100) NULL,
	[RTA_Address_1] [varchar](100) NULL,
	[RTA_Address_2] [varchar](100) NULL,
	[RTA_Address_3] [varchar](100) NULL,
	[RTA_City] [varchar](100) NULL,
	[RTA_State] [varchar](100) NULL,
	[RTA_Country] [varchar](100) NULL,
	[RTA_Zip_Code] [varchar](100) NULL,
	[RTA_Phone_1] [varchar](100) NULL,
	[RTA_Phone_2] [varchar](100) NULL,
	[RTA_Fax] [varchar](100) NULL,
	[RTA_Email] [varchar](100) NULL,
	[ISIN_Share_Name] [varchar](200) NULL,
	[ISIN_Second_Name] [varchar](100) NULL,
	[ISIN_Last_Name] [varchar](100) NULL,
	[ISIN_Address_1] [varchar](100) NULL,
	[ISIN_Address_2] [varchar](100) NULL,
	[ISIN_Address_3] [varchar](100) NULL,
	[ISIN_City] [varchar](100) NULL,
	[ISIN_State] [varchar](100) NULL,
	[ISIN_Country] [varchar](100) NULL,
	[ISIN_Zip_Code] [varchar](100) NULL,
	[ISIN_Phone_1] [varchar](100) NULL,
	[ISIN_Phone_2] [varchar](100) NULL,
	[ISIN_Fax] [varchar](100) NULL,
	[ISIN_Email] [varchar](200) NULL,
	[Security_Type] [varchar](10) NULL,
	[Security_Type_Description] [varchar](100) NULL,
	[Market_Type] [varchar](10) NULL,
	[Market_Type_Description] [varchar](100) NULL,
	[ISIN_Status] [varchar](100) NULL,
	[ISIN_Status_Description] [varchar](100) NULL,
	[Hold_Demat_Flag] [varchar](10) NULL,
	[Hold_Remat_Flag] [varchar](10) NULL,
	[Expiry_Date] [varchar](12) NULL,
	[Market_Lot] [varchar](10) NULL,
	[CFI_Code] [varchar](10) NULL,
	[Par_Value] [varchar](18) NULL,
	[Paidup_Value] [varchar](18) NULL,
	[Redemption_Price] [varchar](18) NULL,
	[Redemption_Date] [varchar](12) NULL,
	[Close_Price] [varchar](18) NULL,
	[Close_Date] [varchar](12) NULL,
	[Issue_Date] [varchar](12) NULL,
	[Close_Price_Decimal_Indicator] [varchar](10) NULL,
	[Conversion_Date] [varchar](12) NULL,
	[Distinct_Range_Exists] [varchar](10) NULL,
	[ISIN_Decimal_Code] [varchar](10) NULL,
	[ISIN_Decimal_Code_Description] [varchar](100) NULL,
	[ISIN_Suspension_Flag] [varchar](200) NULL,
	[ISIN_Suspension_Flag_Description] [varchar](100) NULL,
	[Money_Due_Date] [varchar](12) NULL,
	[Liquidation_Winding_Up_Status] [varchar](200) NULL,
	[Remarks] [varchar](200) NULL,
	[vslno] [int] NULL,
	[vslno1] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CDSLISIN_DETAIL]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CDSLISIN_DETAIL](
	[ISIN_Numeric_Code] [int] NOT NULL,
	[ISIN_Alpha_Code] [nvarchar](50) NOT NULL,
	[ISIN_Short_Name] [nvarchar](50) NOT NULL,
	[ISIN_Description] [nvarchar](150) NOT NULL,
	[Issuer_ID] [int] NOT NULL,
	[Issuer_Name] [nvarchar](100) NOT NULL,
	[Issuer_Address_1] [nvarchar](50) NOT NULL,
	[Issuer_Address_2] [nvarchar](50) NULL,
	[Issuer_Address_3] [nvarchar](50) NULL,
	[Issuer_City] [nvarchar](50) NOT NULL,
	[Issuer_State] [nvarchar](50) NOT NULL,
	[Issuer_Country] [nvarchar](50) NOT NULL,
	[Issuer_Zip_Code] [nvarchar](50) NOT NULL,
	[Issuer_Phone_1] [nvarchar](50) NULL,
	[Issuer_Phone_2] [nvarchar](50) NULL,
	[Issuer_Fax] [nvarchar](50) NULL,
	[Issuer_Email] [nvarchar](100) NULL,
	[Issuer_Contact_Person_Name] [nvarchar](50) NOT NULL,
	[Contact_Person_Designation] [nvarchar](50) NOT NULL,
	[Contact_Person_Address_1] [nvarchar](50) NOT NULL,
	[Contact_Person_Address_2] [nvarchar](50) NULL,
	[Contact_Person_Address_3] [nvarchar](50) NULL,
	[Contact_Person_City] [nvarchar](50) NOT NULL,
	[Contact_Person_State] [nvarchar](50) NOT NULL,
	[Contact_Person_Country] [nvarchar](50) NOT NULL,
	[Contact_Person_Zip_Code] [nvarchar](50) NOT NULL,
	[Contact_Person_Phone_1] [nvarchar](50) NULL,
	[Contact_Person_Phone_2] [nvarchar](50) NULL,
	[Contact_Person_Fax] [nvarchar](50) NULL,
	[Contact_Person_Email] [nvarchar](100) NULL,
	[RTA_ID] [tinyint] NOT NULL,
	[RTA_Name] [nvarchar](100) NOT NULL,
	[SEBI_Registration_From_Date] [date] NOT NULL,
	[SEBI_Registration_To_Date] [nvarchar](50) NOT NULL,
	[RTA_Address_1] [nvarchar](50) NOT NULL,
	[RTA_Address_2] [nvarchar](50) NOT NULL,
	[RTA_Address_3] [nvarchar](50) NOT NULL,
	[RTA_City] [nvarchar](50) NOT NULL,
	[RTA_State] [nvarchar](50) NOT NULL,
	[RTA_Country] [nvarchar](50) NOT NULL,
	[RTA_Zip_Code] [nvarchar](50) NOT NULL,
	[RTA_Phone_1] [nvarchar](50) NOT NULL,
	[RTA_Phone_2] [nvarchar](50) NOT NULL,
	[RTA_Fax] [nvarchar](50) NOT NULL,
	[RTA_Email] [nvarchar](50) NOT NULL,
	[ISIN_Share_Name] [nvarchar](100) NOT NULL,
	[ISIN_Second_Name] [date] NULL,
	[ISIN_Last_Name] [nvarchar](50) NULL,
	[ISIN_Address_1] [nvarchar](50) NOT NULL,
	[ISIN_Address_2] [nvarchar](50) NULL,
	[ISIN_Address_3] [nvarchar](50) NULL,
	[ISIN_City] [nvarchar](50) NOT NULL,
	[ISIN_State] [nvarchar](50) NOT NULL,
	[ISIN_Country] [nvarchar](50) NOT NULL,
	[ISIN_Zip_Code] [nvarchar](50) NOT NULL,
	[ISIN_Phone_1] [nvarchar](50) NULL,
	[ISIN_Phone_2] [nvarchar](50) NULL,
	[ISIN_Fax] [nvarchar](50) NULL,
	[ISIN_Email] [nvarchar](100) NULL,
	[Security_Type] [tinyint] NOT NULL,
	[Security_Type_Description] [nvarchar](50) NOT NULL,
	[Market_Type] [tinyint] NOT NULL,
	[Market_Type_Description] [nvarchar](50) NOT NULL,
	[ISIN_Status] [nvarchar](50) NOT NULL,
	[ISIN_Status_Description] [nvarchar](50) NOT NULL,
	[Hold_Demat_Flag] [bit] NOT NULL,
	[Hold_Remat_Flag] [bit] NOT NULL,
	[Expiry_Date] [date] NULL,
	[Market_Lot] [tinyint] NOT NULL,
	[CFI_Code] [tinyint] NOT NULL,
	[Par_Value] [float] NOT NULL,
	[Paidup_Value] [float] NOT NULL,
	[Redemption_Price] [float] NOT NULL,
	[Redemption_Date] [date] NULL,
	[Close_Price] [float] NOT NULL,
	[Close_Date] [date] NULL,
	[Issue_Date] [date] NOT NULL,
	[Close_Price_Decimal_Indicator] [tinyint] NOT NULL,
	[Conversion_Date] [nvarchar](1) NULL,
	[Distinct_Range_Exists] [tinyint] NOT NULL,
	[ISIN_Decimal_Code] [tinyint] NOT NULL,
	[ISIN_Decimal_Code_Description] [nvarchar](50) NOT NULL,
	[ISIN_Suspension_Flag] [nvarchar](100) NOT NULL,
	[ISIN_Suspension_Flag_Description] [nvarchar](50) NOT NULL,
	[Money_Due_Date] [nvarchar](1) NULL,
	[Liquidation_Winding_Up_Status] [nvarchar](100) NOT NULL,
	[Remarks] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cdslisindata]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdslisindata](
	[ISIN_Numeric_Code] [int] NOT NULL,
	[ISIN_Alpha_Code] [nvarchar](50) NOT NULL,
	[ISIN_Short_Name] [nvarchar](50) NOT NULL,
	[ISIN_Description] [nvarchar](150) NOT NULL,
	[Issuer_ID] [int] NOT NULL,
	[Issuer_Name] [nvarchar](100) NOT NULL,
	[Issuer_Address_1] [nvarchar](50) NOT NULL,
	[Issuer_Address_2] [nvarchar](50) NULL,
	[Issuer_Address_3] [nvarchar](50) NULL,
	[Issuer_City] [nvarchar](50) NOT NULL,
	[Issuer_State] [nvarchar](50) NOT NULL,
	[Issuer_Country] [nvarchar](50) NOT NULL,
	[Issuer_Zip_Code] [nvarchar](50) NOT NULL,
	[Issuer_Phone_1] [nvarchar](50) NULL,
	[Issuer_Phone_2] [nvarchar](50) NULL,
	[Issuer_Fax] [nvarchar](50) NULL,
	[Issuer_Email] [nvarchar](100) NULL,
	[Issuer_Contact_Person_Name] [nvarchar](50) NOT NULL,
	[Contact_Person_Designation] [nvarchar](50) NOT NULL,
	[Contact_Person_Address_1] [nvarchar](50) NOT NULL,
	[Contact_Person_Address_2] [nvarchar](50) NULL,
	[Contact_Person_Address_3] [nvarchar](50) NULL,
	[Contact_Person_City] [nvarchar](50) NOT NULL,
	[Contact_Person_State] [nvarchar](50) NOT NULL,
	[Contact_Person_Country] [nvarchar](50) NOT NULL,
	[Contact_Person_Zip_Code] [nvarchar](50) NOT NULL,
	[Contact_Person_Phone_1] [nvarchar](50) NULL,
	[Contact_Person_Phone_2] [nvarchar](50) NULL,
	[Contact_Person_Fax] [nvarchar](50) NULL,
	[Contact_Person_Email] [nvarchar](100) NULL,
	[RTA_ID] [tinyint] NOT NULL,
	[RTA_Name] [nvarchar](100) NOT NULL,
	[SEBI_Registration_From_Date] [date] NOT NULL,
	[SEBI_Registration_To_Date] [nvarchar](50) NOT NULL,
	[RTA_Address_1] [nvarchar](50) NOT NULL,
	[RTA_Address_2] [nvarchar](50) NOT NULL,
	[RTA_Address_3] [nvarchar](50) NOT NULL,
	[RTA_City] [nvarchar](50) NOT NULL,
	[RTA_State] [nvarchar](50) NOT NULL,
	[RTA_Country] [nvarchar](50) NOT NULL,
	[RTA_Zip_Code] [nvarchar](50) NOT NULL,
	[RTA_Phone_1] [nvarchar](50) NOT NULL,
	[RTA_Phone_2] [nvarchar](50) NOT NULL,
	[RTA_Fax] [nvarchar](50) NOT NULL,
	[RTA_Email] [nvarchar](50) NOT NULL,
	[ISIN_Share_Name] [nvarchar](100) NOT NULL,
	[ISIN_Second_Name] [date] NULL,
	[ISIN_Last_Name] [nvarchar](50) NULL,
	[ISIN_Address_1] [nvarchar](50) NOT NULL,
	[ISIN_Address_2] [nvarchar](50) NULL,
	[ISIN_Address_3] [nvarchar](50) NULL,
	[ISIN_City] [nvarchar](50) NOT NULL,
	[ISIN_State] [nvarchar](50) NOT NULL,
	[ISIN_Country] [nvarchar](50) NOT NULL,
	[ISIN_Zip_Code] [nvarchar](50) NOT NULL,
	[ISIN_Phone_1] [nvarchar](50) NULL,
	[ISIN_Phone_2] [nvarchar](50) NULL,
	[ISIN_Fax] [nvarchar](50) NULL,
	[ISIN_Email] [nvarchar](100) NULL,
	[Security_Type] [tinyint] NOT NULL,
	[Security_Type_Description] [nvarchar](50) NOT NULL,
	[Market_Type] [tinyint] NOT NULL,
	[Market_Type_Description] [nvarchar](50) NOT NULL,
	[ISIN_Status] [nvarchar](50) NOT NULL,
	[ISIN_Status_Description] [nvarchar](50) NOT NULL,
	[Hold_Demat_Flag] [bit] NOT NULL,
	[Hold_Remat_Flag] [bit] NOT NULL,
	[Expiry_Date] [date] NULL,
	[Market_Lot] [tinyint] NOT NULL,
	[CFI_Code] [tinyint] NOT NULL,
	[Par_Value] [float] NOT NULL,
	[Paidup_Value] [float] NOT NULL,
	[Redemption_Price] [float] NOT NULL,
	[Redemption_Date] [date] NULL,
	[Close_Price] [float] NOT NULL,
	[Close_Date] [date] NULL,
	[Issue_Date] [date] NOT NULL,
	[Close_Price_Decimal_Indicator] [tinyint] NOT NULL,
	[Conversion_Date] [nvarchar](1) NULL,
	[Distinct_Range_Exists] [tinyint] NOT NULL,
	[ISIN_Decimal_Code] [tinyint] NOT NULL,
	[ISIN_Decimal_Code_Description] [nvarchar](50) NOT NULL,
	[ISIN_Suspension_Flag] [bit] NOT NULL,
	[ISIN_Suspension_Flag_Description] [nvarchar](50) NOT NULL,
	[Money_Due_Date] [nvarchar](1) NULL,
	[Liquidation_Winding_Up_Status] [nvarchar](100) NOT NULL,
	[Remarks] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cdslisindata1]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdslisindata1](
	[ISIN_Numeric_Code] [int] NOT NULL,
	[ISIN_Alpha_Code] [nvarchar](50) NOT NULL,
	[ISIN_Short_Name] [nvarchar](50) NOT NULL,
	[ISIN_Description] [nvarchar](150) NOT NULL,
	[Issuer_ID] [int] NOT NULL,
	[Issuer_Name] [nvarchar](100) NOT NULL,
	[Issuer_Address_1] [nvarchar](50) NOT NULL,
	[Issuer_Address_2] [nvarchar](50) NULL,
	[Issuer_Address_3] [nvarchar](50) NULL,
	[Issuer_City] [nvarchar](50) NOT NULL,
	[Issuer_State] [nvarchar](50) NOT NULL,
	[Issuer_Country] [nvarchar](50) NOT NULL,
	[Issuer_Zip_Code] [nvarchar](50) NOT NULL,
	[Issuer_Phone_1] [nvarchar](50) NULL,
	[Issuer_Phone_2] [nvarchar](50) NULL,
	[Issuer_Fax] [nvarchar](50) NULL,
	[Issuer_Email] [nvarchar](100) NULL,
	[Issuer_Contact_Person_Name] [nvarchar](50) NOT NULL,
	[Contact_Person_Designation] [nvarchar](50) NOT NULL,
	[Contact_Person_Address_1] [nvarchar](50) NOT NULL,
	[Contact_Person_Address_2] [nvarchar](50) NULL,
	[Contact_Person_Address_3] [nvarchar](50) NULL,
	[Contact_Person_City] [nvarchar](50) NOT NULL,
	[Contact_Person_State] [nvarchar](50) NOT NULL,
	[Contact_Person_Country] [nvarchar](50) NOT NULL,
	[Contact_Person_Zip_Code] [nvarchar](50) NOT NULL,
	[Contact_Person_Phone_1] [nvarchar](50) NULL,
	[Contact_Person_Phone_2] [nvarchar](50) NULL,
	[Contact_Person_Fax] [nvarchar](50) NULL,
	[Contact_Person_Email] [nvarchar](100) NULL,
	[RTA_ID] [tinyint] NOT NULL,
	[RTA_Name] [nvarchar](100) NOT NULL,
	[SEBI_Registration_From_Date] [date] NOT NULL,
	[SEBI_Registration_To_Date] [nvarchar](50) NOT NULL,
	[RTA_Address_1] [nvarchar](50) NOT NULL,
	[RTA_Address_2] [nvarchar](50) NOT NULL,
	[RTA_Address_3] [nvarchar](50) NOT NULL,
	[RTA_City] [nvarchar](50) NOT NULL,
	[RTA_State] [nvarchar](50) NOT NULL,
	[RTA_Country] [nvarchar](50) NOT NULL,
	[RTA_Zip_Code] [nvarchar](50) NOT NULL,
	[RTA_Phone_1] [nvarchar](50) NOT NULL,
	[RTA_Phone_2] [nvarchar](50) NOT NULL,
	[RTA_Fax] [nvarchar](50) NOT NULL,
	[RTA_Email] [nvarchar](50) NOT NULL,
	[ISIN_Share_Name] [nvarchar](100) NOT NULL,
	[ISIN_Second_Name] [date] NULL,
	[ISIN_Last_Name] [nvarchar](50) NULL,
	[ISIN_Address_1] [nvarchar](50) NOT NULL,
	[ISIN_Address_2] [nvarchar](50) NULL,
	[ISIN_Address_3] [nvarchar](50) NULL,
	[ISIN_City] [nvarchar](50) NOT NULL,
	[ISIN_State] [nvarchar](50) NOT NULL,
	[ISIN_Country] [nvarchar](50) NOT NULL,
	[ISIN_Zip_Code] [nvarchar](50) NOT NULL,
	[ISIN_Phone_1] [nvarchar](50) NULL,
	[ISIN_Phone_2] [nvarchar](50) NULL,
	[ISIN_Fax] [nvarchar](50) NULL,
	[ISIN_Email] [nvarchar](100) NULL,
	[Security_Type] [tinyint] NOT NULL,
	[Security_Type_Description] [nvarchar](50) NOT NULL,
	[Market_Type] [tinyint] NOT NULL,
	[Market_Type_Description] [nvarchar](50) NOT NULL,
	[ISIN_Status] [nvarchar](50) NOT NULL,
	[ISIN_Status_Description] [nvarchar](50) NOT NULL,
	[Hold_Demat_Flag] [bit] NOT NULL,
	[Hold_Remat_Flag] [bit] NOT NULL,
	[Expiry_Date] [date] NULL,
	[Market_Lot] [tinyint] NOT NULL,
	[CFI_Code] [tinyint] NOT NULL,
	[Par_Value] [float] NOT NULL,
	[Paidup_Value] [float] NOT NULL,
	[Redemption_Price] [float] NOT NULL,
	[Redemption_Date] [date] NULL,
	[Close_Price] [float] NOT NULL,
	[Close_Date] [date] NULL,
	[Issue_Date] [date] NOT NULL,
	[Close_Price_Decimal_Indicator] [tinyint] NOT NULL,
	[Conversion_Date] [nvarchar](1) NULL,
	[Distinct_Range_Exists] [tinyint] NOT NULL,
	[ISIN_Decimal_Code] [tinyint] NOT NULL,
	[ISIN_Decimal_Code_Description] [nvarchar](50) NOT NULL,
	[ISIN_Suspension_Flag] [nvarchar](100) NOT NULL,
	[ISIN_Suspension_Flag_Description] [nvarchar](50) NOT NULL,
	[Money_Due_Date] [nvarchar](1) NULL,
	[Liquidation_Winding_Up_Status] [nvarchar](100) NOT NULL,
	[Remarks] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CDSLISINMASTER]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CDSLISINMASTER](
	[ISIN_Numeric_Code] [int] NOT NULL,
	[ISIN_Alpha_Code] [nvarchar](50) NOT NULL,
	[ISIN_Short_Name] [nvarchar](50) NOT NULL,
	[ISIN_Description] [nvarchar](150) NOT NULL,
	[Issuer_ID] [int] NOT NULL,
	[Issuer_Name] [nvarchar](100) NOT NULL,
	[Issuer_Address_1] [nvarchar](50) NOT NULL,
	[Issuer_Address_2] [nvarchar](50) NULL,
	[Issuer_Address_3] [nvarchar](50) NULL,
	[Issuer_City] [nvarchar](50) NOT NULL,
	[Issuer_State] [nvarchar](50) NOT NULL,
	[Issuer_Country] [nvarchar](50) NOT NULL,
	[Issuer_Zip_Code] [nvarchar](50) NOT NULL,
	[Issuer_Phone_1] [nvarchar](50) NULL,
	[Issuer_Phone_2] [nvarchar](50) NULL,
	[Issuer_Fax] [nvarchar](50) NULL,
	[Issuer_Email] [nvarchar](100) NULL,
	[Issuer_Contact_Person_Name] [nvarchar](50) NOT NULL,
	[Contact_Person_Designation] [nvarchar](50) NOT NULL,
	[Contact_Person_Address_1] [nvarchar](50) NOT NULL,
	[Contact_Person_Address_2] [nvarchar](50) NULL,
	[Contact_Person_Address_3] [nvarchar](50) NULL,
	[Contact_Person_City] [nvarchar](50) NOT NULL,
	[Contact_Person_State] [nvarchar](50) NOT NULL,
	[Contact_Person_Country] [nvarchar](50) NOT NULL,
	[Contact_Person_Zip_Code] [nvarchar](50) NOT NULL,
	[Contact_Person_Phone_1] [nvarchar](50) NULL,
	[Contact_Person_Phone_2] [nvarchar](50) NULL,
	[Contact_Person_Fax] [nvarchar](50) NULL,
	[Contact_Person_Email] [nvarchar](100) NULL,
	[RTA_ID] [int] NOT NULL,
	[RTA_Name] [nvarchar](100) NOT NULL,
	[SEBI_Registration_From_Date] [date] NOT NULL,
	[SEBI_Registration_To_Date] [nvarchar](50) NOT NULL,
	[RTA_Address_1] [nvarchar](50) NOT NULL,
	[RTA_Address_2] [nvarchar](50) NOT NULL,
	[RTA_Address_3] [nvarchar](50) NOT NULL,
	[RTA_City] [nvarchar](50) NOT NULL,
	[RTA_State] [nvarchar](50) NOT NULL,
	[RTA_Country] [nvarchar](50) NOT NULL,
	[RTA_Zip_Code] [nvarchar](50) NOT NULL,
	[RTA_Phone_1] [nvarchar](50) NOT NULL,
	[RTA_Phone_2] [nvarchar](50) NOT NULL,
	[RTA_Fax] [nvarchar](50) NOT NULL,
	[RTA_Email] [nvarchar](50) NOT NULL,
	[ISIN_Share_Name] [nvarchar](100) NOT NULL,
	[ISIN_Second_Name] [date] NULL,
	[ISIN_Last_Name] [nvarchar](50) NULL,
	[ISIN_Address_1] [nvarchar](50) NOT NULL,
	[ISIN_Address_2] [nvarchar](50) NULL,
	[ISIN_Address_3] [nvarchar](50) NULL,
	[ISIN_City] [nvarchar](50) NOT NULL,
	[ISIN_State] [nvarchar](50) NOT NULL,
	[ISIN_Country] [nvarchar](50) NOT NULL,
	[ISIN_Zip_Code] [nvarchar](50) NOT NULL,
	[ISIN_Phone_1] [nvarchar](50) NULL,
	[ISIN_Phone_2] [nvarchar](50) NULL,
	[ISIN_Fax] [nvarchar](50) NULL,
	[ISIN_Email] [nvarchar](100) NULL,
	[Security_Type] [int] NOT NULL,
	[Security_Type_Description] [nvarchar](50) NOT NULL,
	[Market_Type] [int] NOT NULL,
	[Market_Type_Description] [nvarchar](50) NOT NULL,
	[ISIN_Status] [nvarchar](50) NOT NULL,
	[ISIN_Status_Description] [nvarchar](50) NOT NULL,
	[Hold_Demat_Flag] [nvarchar](100) NOT NULL,
	[Hold_Remat_Flag] [nvarchar](100) NOT NULL,
	[Expiry_Date] [date] NULL,
	[Market_Lot] [int] NOT NULL,
	[CFI_Code] [int] NOT NULL,
	[Par_Value] [float] NOT NULL,
	[Paidup_Value] [float] NOT NULL,
	[Redemption_Price] [float] NOT NULL,
	[Redemption_Date] [date] NULL,
	[Close_Price] [float] NOT NULL,
	[Close_Date] [date] NULL,
	[Issue_Date] [date] NOT NULL,
	[Close_Price_Decimal_Indicator] [int] NOT NULL,
	[Conversion_Date] [nvarchar](1) NULL,
	[Distinct_Range_Exists] [int] NOT NULL,
	[ISIN_Decimal_Code] [int] NOT NULL,
	[ISIN_Decimal_Code_Description] [nvarchar](50) NOT NULL,
	[nvarchar(100)] [nvarchar](100) NOT NULL,
	[ISIN_Suspension_Flag_Description] [nvarchar](50) NOT NULL,
	[Money_Due_Date] [nvarchar](1) NULL,
	[Liquidation_Winding_Up_Status] [nvarchar](100) NOT NULL,
	[Remarks] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cdslisinmasterfile]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdslisinmasterfile](
	[a1] [nvarchar](255) NULL,
	[a2] [nvarchar](255) NULL,
	[a3] [nvarchar](255) NULL,
	[a4] [nvarchar](255) NULL,
	[a5] [nvarchar](255) NULL,
	[a6] [nvarchar](255) NULL,
	[a7] [nvarchar](255) NULL,
	[a8] [nvarchar](255) NULL,
	[a9] [nvarchar](255) NULL,
	[a10] [nvarchar](255) NULL,
	[a11] [nvarchar](255) NULL,
	[a12] [nvarchar](255) NULL,
	[a13] [nvarchar](255) NULL,
	[a14] [nvarchar](255) NULL,
	[a15] [nvarchar](255) NULL,
	[a16] [nvarchar](255) NULL,
	[a17] [nvarchar](255) NULL,
	[a18] [nvarchar](255) NULL,
	[a19] [nvarchar](255) NULL,
	[a20] [nvarchar](255) NULL,
	[a21] [nvarchar](255) NULL,
	[a22] [nvarchar](255) NULL,
	[a23] [nvarchar](255) NULL,
	[a24] [nvarchar](255) NULL,
	[a25] [nvarchar](255) NULL,
	[a26] [nvarchar](255) NULL,
	[a27] [nvarchar](255) NULL,
	[a28] [nvarchar](255) NULL,
	[a29] [nvarchar](255) NULL,
	[a30] [nvarchar](255) NULL,
	[a31] [nvarchar](255) NULL,
	[a32] [nvarchar](255) NULL,
	[a33] [nvarchar](255) NULL,
	[a34] [nvarchar](255) NULL,
	[a35] [nvarchar](255) NULL,
	[a36] [nvarchar](255) NULL,
	[a37] [nvarchar](255) NULL,
	[a38] [nvarchar](255) NULL,
	[a39] [nvarchar](255) NULL,
	[a40] [nvarchar](255) NULL,
	[a41] [nvarchar](255) NULL,
	[a42] [nvarchar](255) NULL,
	[a43] [nvarchar](255) NULL,
	[a44] [nvarchar](255) NULL,
	[a45] [nvarchar](255) NULL,
	[a46] [nvarchar](255) NULL,
	[a47] [nvarchar](255) NULL,
	[a48] [nvarchar](255) NULL,
	[a49] [nvarchar](255) NULL,
	[a50] [nvarchar](255) NULL,
	[a51] [nvarchar](255) NULL,
	[a52] [nvarchar](255) NULL,
	[a53] [nvarchar](255) NULL,
	[a54] [nvarchar](255) NULL,
	[a55] [nvarchar](255) NULL,
	[a56] [nvarchar](255) NULL,
	[a57] [nvarchar](255) NULL,
	[a58] [nvarchar](255) NULL,
	[a59] [nvarchar](255) NULL,
	[a60] [nvarchar](255) NULL,
	[a61] [nvarchar](255) NULL,
	[a62] [nvarchar](255) NULL,
	[a63] [nvarchar](255) NULL,
	[a64] [nvarchar](255) NULL,
	[a65] [nvarchar](255) NULL,
	[a66] [nvarchar](255) NULL,
	[a67] [nvarchar](255) NULL,
	[a68] [nvarchar](255) NULL,
	[a69] [nvarchar](255) NULL,
	[a70] [nvarchar](255) NULL,
	[a71] [nvarchar](255) NULL,
	[a72] [nvarchar](255) NULL,
	[a73] [nvarchar](255) NULL,
	[a74] [nvarchar](255) NULL,
	[a75] [nvarchar](255) NULL,
	[a76] [nvarchar](255) NULL,
	[a77] [nvarchar](255) NULL,
	[a78] [nvarchar](255) NULL,
	[a79] [nvarchar](255) NULL,
	[a80] [nvarchar](255) NULL,
	[a81] [nvarchar](255) NULL,
	[a82] [nvarchar](255) NULL,
	[a83] [nvarchar](255) NULL,
	[a84] [nvarchar](255) NULL,
	[a85] [nvarchar](255) NULL,
	[a86] [nvarchar](255) NULL,
	[a87] [nvarchar](255) NULL,
	[a88] [nvarchar](255) NULL,
	[a89] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CDSLRECON_MASTER]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CDSLRECON_MASTER](
	[Isin_Alpha_Code] [varchar](12) NULL,
	[Isin_Description] [varchar](100) NULL,
	[Confirmation_Status] [varchar](1) NULL,
	[Confirm_Description] [varchar](40) NULL,
	[CDS_Opening_Bal] [varchar](17) NULL,
	[RTA_Opening_Bal] [varchar](17) NULL,
	[CDS_Demat_Confirmation_Bal] [varchar](17) NULL,
	[RTA_Demat_Confirmation_Bal] [varchar](17) NULL,
	[CDS_Remat_Confirmation_Bal] [varchar](17) NULL,
	[RTA_Remat_Confirmation_Bal] [varchar](17) NULL,
	[CDS_Inter_Dep_Trf_IN_balance] [varchar](17) NULL,
	[RTA_Inter_Dep_Trf_IN_balance] [varchar](17) NULL,
	[CDS_Inter_Dep_Trf_OUT_balance] [varchar](17) NULL,
	[RTA_Inter_Dep_Trf_OUT_balance] [varchar](17) NULL,
	[CDS_Corp_Actions_Trf_Additions] [varchar](17) NULL,
	[RTA_Corp_Actions_Trf_Additions] [varchar](17) NULL,
	[CDS_Corp_Actions_Trf_Subtractions] [varchar](17) NULL,
	[RTA_Corp_Actions_Trf_Subtractions] [varchar](17) NULL,
	[CDS_IPO_Additions] [varchar](17) NULL,
	[RTA_IPO_Additions] [varchar](17) NULL,
	[CDS_Closing_bal] [varchar](17) NULL,
	[RTA_Closing_bal] [varchar](17) NULL,
	[REMARKS] [varchar](50) NULL,
	[REMARKS1] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cdslrecon_out]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdslrecon_out](
	[isin] [varchar](12) NULL,
	[name] [varchar](100) NULL,
	[conf_status] [varchar](1) NULL,
	[conf_desc] [varchar](40) NULL,
	[cds_opbal] [varchar](17) NULL,
	[rta_opbal] [varchar](17) NULL,
	[cds_dconf_bal] [varchar](17) NULL,
	[rta_dconf_bal] [varchar](17) NULL,
	[cds_rconf_bal] [varchar](17) NULL,
	[rta_rconf_bal] [varchar](17) NULL,
	[cds_intdep_in_bal] [varchar](17) NULL,
	[rta_intdep_in_bal] [varchar](17) NULL,
	[cds_intdep_out_bal] [varchar](17) NULL,
	[rta_intdep_out_bal] [varchar](17) NULL,
	[cds_ca_trf_Add] [varchar](17) NULL,
	[rta_ca_trf_Add] [varchar](17) NULL,
	[cds_ca_trf_Minus] [varchar](17) NULL,
	[rta_ca_trf_Minus] [varchar](17) NULL,
	[cds_ipo_add] [varchar](17) NULL,
	[rta_ipo_add] [varchar](17) NULL,
	[cds_closebal] [varchar](17) NULL,
	[rta_closebal] [varchar](17) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CdslRT25F01]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CdslRT25F01](
	[isin] [varchar](12) NULL,
	[isin_shortdesc] [varchar](20) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masteruniqno] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CdslRT25F02]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CdslRT25F02](
	[bo_id] [varchar](16) NULL,
	[bo_category] [varchar](2) NULL,
	[bo_type] [varchar](2) NULL,
	[bo_account_status] [varchar](2) NULL,
	[bo_sub_type] [varchar](4) NULL,
	[first_holder_name] [varchar](142) NULL,
	[second_holder_name] [varchar](142) NULL,
	[third_holders_name] [varchar](142) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FREEZE_FLAG] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CdslRT25F02NEW]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CdslRT25F02NEW](
	[bo_id] [varchar](16) NULL,
	[bo_category] [varchar](2) NULL,
	[bo_type] [varchar](2) NULL,
	[bo_account_status] [varchar](2) NULL,
	[bo_sub_type] [varchar](4) NULL,
	[first_holder_name] [varchar](142) NULL,
	[second_holder_name] [varchar](142) NULL,
	[third_holders_name] [varchar](142) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cdslrt25f02newTransactionsFile]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdslrt25f02newTransactionsFile](
	[bo_id] [varchar](16) NULL,
	[bo_category] [varchar](2) NULL,
	[bo_type] [varchar](2) NULL,
	[bo_account_status] [varchar](2) NULL,
	[bo_sub_type] [varchar](4) NULL,
	[first_holder_name] [varchar](142) NULL,
	[second_holder_name] [varchar](142) NULL,
	[third_holders_name] [varchar](142) NULL,
	[FREEZE_FLAG] [varchar](1) NULL,
	[id] [int] NULL,
	[masteruniqno] [int] NULL,
	[present_status] [varchar](100) NULL,
	[freeze_flag_desc] [varchar](100) NULL,
	[gendate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CdslRT25F03]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CdslRT25F03](
	[total_bos] [varchar](9) NULL,
	[Existing_bos] [varchar](9) NULL,
	[Non_Existing_Bos] [varchar](9) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masteruniqno] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cdslrta25f02_28112023]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdslrta25f02_28112023](
	[bo_id] [varchar](16) NULL,
	[bo_category] [varchar](2) NULL,
	[bo_type] [varchar](2) NULL,
	[bo_account_status] [varchar](2) NULL,
	[bo_sub_type] [varchar](4) NULL,
	[first_holder_name] [varchar](142) NULL,
	[second_holder_name] [varchar](142) NULL,
	[third_holders_name] [varchar](142) NULL,
	[freeze_flag] [varchar](1) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masteruniqno] [int] NULL,
	[present_status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cdst1]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdst1](
	[ctemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cdupl]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdupl](
	[ctemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CO_EvoteSourceFile]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CO_EvoteSourceFile](
	[REC_TYPE] [nvarchar](255) NULL,
	[LIN_NUM] [int] NULL,
	[DPID] [nvarchar](255) NULL,
	[FOLIO] [nvarchar](255) NULL,
	[STATUS] [int] NULL,
	[BTYPE] [int] NULL,
	[BTAC] [int] NULL,
	[OC] [int] NULL,
	[NAME] [nvarchar](255) NULL,
	[FNAME] [nvarchar](255) NULL,
	[ADDR1] [nvarchar](255) NULL,
	[ADDR2] [nvarchar](255) NULL,
	[ADDR3] [nvarchar](255) NULL,
	[ADDR4] [nvarchar](255) NULL,
	[PIN] [nvarchar](255) NULL,
	[PHONE1] [nvarchar](255) NULL,
	[FAX] [nvarchar](255) NULL,
	[JH1] [nvarchar](255) NULL,
	[J1_FATHER] [nvarchar](255) NULL,
	[JH2] [nvarchar](255) NULL,
	[J2_FATHER] [nvarchar](255) NULL,
	[FILER] [nvarchar](255) NULL,
	[FHOLD_PAN] [nvarchar](255) NULL,
	[SHOLD_PAN] [nvarchar](255) NULL,
	[THOLD_PAN] [nvarchar](255) NULL,
	[NOMINE_IN] [nvarchar](255) NULL,
	[NOMINE_GU] [nvarchar](255) NULL,
	[NADD1] [nvarchar](255) NULL,
	[NADD2] [nvarchar](255) NULL,
	[NADD3] [nvarchar](255) NULL,
	[NADD4] [nvarchar](255) NULL,
	[NPIN] [nvarchar](255) NULL,
	[DOB_MNR] [nvarchar](255) NULL,
	[MINORIND] [nvarchar](255) NULL,
	[BACNO] [nvarchar](255) NULL,
	[BNAME] [nvarchar](255) NULL,
	[BADDR1] [nvarchar](255) NULL,
	[BADDR2] [nvarchar](255) NULL,
	[BADDR3] [nvarchar](255) NULL,
	[BADDR4] [nvarchar](255) NULL,
	[BPIN] [nvarchar](255) NULL,
	[RBI_NRI] [nvarchar](255) NULL,
	[RBI_DATE] [nvarchar](255) NULL,
	[SIBIREGNO] [nvarchar](255) NULL,
	[BTAX] [nvarchar](255) NULL,
	[B_STATUS] [int] NULL,
	[OSHARES] [int] NULL,
	[SHARES] [int] NULL,
	[FSHARES] [int] NULL,
	[LSHARES] [int] NULL,
	[BENBLKPO] [int] NULL,
	[PLSHARES] [int] NULL,
	[PLGWTLCK] [int] NULL,
	[PLGUNCFP] [int] NULL,
	[BPLUNLK] [int] NULL,
	[BREMTPO] [int] NULL,
	[BDMTLOCK] [int] NULL,
	[CMIDDPO] [int] NULL,
	[CMPOOLPO] [int] NULL,
	[CCSETLPO] [int] NULL,
	[MICR] [nvarchar](255) NULL,
	[IFSC] [nvarchar](255) NULL,
	[BAC_TYPE] [int] NULL,
	[FILER1] [nvarchar](255) NULL,
	[MAPID1] [nvarchar](255) NULL,
	[MAPID2] [nvarchar](255) NULL,
	[MAPID3] [nvarchar](255) NULL,
	[EMAILID1] [nvarchar](255) NULL,
	[EMAILID2] [nvarchar](255) NULL,
	[EMAILID3] [nvarchar](255) NULL,
	[RGESS] [nvarchar](255) NULL,
	[NDUFSH] [int] NULL,
	[NDULSH] [int] NULL,
	[NDUUCF] [int] NULL,
	[NDUUCL] [int] NULL,
	[FILER2] [nvarchar](255) NULL,
	[STATUS2] [int] NULL,
	[CLID] [nvarchar](255) NULL,
	[REM] [nvarchar](255) NULL,
	[RBI] [nvarchar](255) NULL,
	[REMARK] [nvarchar](255) NULL,
	[LOCKOUT] [nvarchar](255) NULL,
	[ISIN] [nvarchar](255) NULL,
	[MAND] [nvarchar](255) NULL,
	[STAT] [nvarchar](255) NULL,
	[PLSTPBAL] [nvarchar](255) NULL,
	[RMTLKBAL] [nvarchar](255) NULL,
	[ARFLAG] [nvarchar](255) NULL,
	[UIDNAME] [nvarchar](255) NULL,
	[UIDJH1] [nvarchar](255) NULL,
	[UIDJH2] [nvarchar](255) NULL,
	[FILER3] [nvarchar](255) NULL,
	[PASSWORD] [nvarchar](255) NULL,
	[STATD] [nvarchar](255) NULL,
	[SrfFilename] [nvarchar](28) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[corpactCDSLDetail]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[corpactCDSLDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_Type] [varchar](2) NULL,
	[BO_ID] [varchar](16) NULL,
	[RTA_IntRef_No] [varchar](16) NULL,
	[PISIN] [varchar](12) NULL,
	[PCurr_Qty] [varchar](16) NULL,
	[PFrozen_Qty] [varchar](16) NULL,
	[PLockin_Qty] [varchar](16) NULL,
	[PLockin_Reason_Cd] [varchar](2) NULL,
	[PLockin_Reason] [varchar](50) NULL,
	[PLockin_Exp_Date] [datetime] NULL,
	[PDRCR_Flag] [varchar](1) NULL,
	[Benefit_Isin] [varchar](12) NULL,
	[BCurr_Qty] [varchar](16) NULL,
	[BFrozen_Qty] [varchar](16) NULL,
	[BLockin_Qty] [varchar](16) NULL,
	[BLockin_Reason_Cd] [varchar](2) NULL,
	[BLockin_Reason] [varchar](50) NULL,
	[BLockin_Exp_Date] [datetime] NULL,
	[BDRCR_Flag] [varchar](1) NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL,
	[OfferPrice] [varchar](16) NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[corpactCDSLDetailDist]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[corpactCDSLDetailDist](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_Type] [varchar](2) NULL,
	[CA_Isin] [varchar](12) NULL,
	[From_DistNo_CDSL] [varchar](18) NULL,
	[To_DistNo_CDSL] [varchar](18) NULL,
	[Quantity] [varchar](18) NULL,
	[DRCR_Flag] [varchar](1) NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[corpactcdsldetaildistTT]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[corpactcdsldetaildistTT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_Type] [varchar](2) NULL,
	[CA_Isin] [varchar](12) NULL,
	[From_DistNo_CDSL] [varchar](18) NULL,
	[To_DistNo_CDSL] [varchar](18) NULL,
	[Quantity] [varchar](18) NULL,
	[DRCR_Flag] [varchar](1) NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[corpactCDSLDetailTT]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[corpactCDSLDetailTT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_Type] [varchar](2) NULL,
	[BO_ID] [varchar](16) NULL,
	[RTA_IntRef_No] [varchar](16) NULL,
	[PISIN] [varchar](12) NULL,
	[PCurr_Qty] [varchar](16) NULL,
	[PFrozen_Qty] [varchar](16) NULL,
	[PLockin_Qty] [varchar](16) NULL,
	[PLockin_Reason_Cd] [varchar](2) NULL,
	[PLockin_Reason] [varchar](50) NULL,
	[PLockin_Exp_Date] [datetime] NULL,
	[PDRCR_Flag] [varchar](1) NULL,
	[Benefit_Isin] [varchar](12) NULL,
	[BCurr_Qty] [varchar](16) NULL,
	[BFrozen_Qty] [varchar](16) NULL,
	[BLockin_Qty] [varchar](16) NULL,
	[BLockin_Reason_Cd] [varchar](2) NULL,
	[BLockin_Reason] [varchar](50) NULL,
	[BLockin_Exp_Date] [datetime] NULL,
	[BDRCR_Flag] [varchar](1) NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL,
	[OfferPrice] [varchar](16) NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[corpactCDSLHeader]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[corpactCDSLHeader](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_Type] [varchar](2) NULL,
	[Total_Records] [varchar](10) NULL,
	[Tot_Curr_Qty] [varchar](16) NULL,
	[Tot_Freeze_Qty] [varchar](16) NULL,
	[Tot_Lockin_Qty] [varchar](16) NULL,
	[Tot_Detail_Rec02] [varchar](10) NULL,
	[Tot_Detail_Rec03] [varchar](10) NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[inward_dt] [datetime] NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[corpactCDSLHeaderTT]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[corpactCDSLHeaderTT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_Type] [varchar](2) NULL,
	[Total_Records] [varchar](10) NULL,
	[Tot_Curr_Qty] [varchar](16) NULL,
	[Tot_Freeze_Qty] [varchar](16) NULL,
	[Tot_Lockin_Qty] [varchar](16) NULL,
	[Tot_Detail_Rec02] [varchar](10) NULL,
	[Tot_Detail_Rec03] [varchar](10) NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[inward_dt] [datetime] NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CorpactNSDLDetailDistss]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CorpactNSDLDetailDistss](
	[SLNO] [varchar](10) NULL,
	[DFROM] [int] NULL,
	[DTO] [int] NULL,
	[SHARES] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ctemp7]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctemp7](
	[totissamt] [int] NULL,
	[totpdamt] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datafromxls]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datafromxls](
	[Debit_Credit_Indicator] [nvarchar](255) NULL,
	[ISIN] [nvarchar](255) NULL,
	[CA_Type] [float] NULL,
	[Allotment_Date] [datetime] NULL,
	[Allocation_Allotment_Description] [float] NULL,
	[Execution_Date] [datetime] NULL,
	[Total_Allotted_Quantity_Free_Lockin] [float] NULL,
	[Total_Allotted_Quantity_Lockin] [float] NULL,
	[Total_No_detail_records] [float] NULL,
	[Total_Issued_Amount] [float] NULL,
	[Total_Paidup_Amount] [float] NULL,
	[Stamp_Duty_Payable] [nvarchar](255) NULL,
	[Basis_calculation_Stamp_Duty] [float] NULL,
	[EBP_Name] [float] NULL,
	[Funds_collected_through] [float] NULL,
	[Filler] [nvarchar](255) NULL,
	[DP_ID] [nvarchar](255) NULL,
	[Client_ID] [float] NULL,
	[Client_Account_Category] [float] NULL,
	[Allotment_Quantity] [float] NULL,
	[Lockin_Reason_Code] [float] NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [float] NULL,
	[Paidup_Price] [float] NULL,
	[Filler1] [nvarchar](255) NULL,
	[Debit_Credit_Indicator1] [nvarchar](255) NULL,
	[From_Distinctive_No_NSDL] [float] NULL,
	[To_Distinctive_No_NSDL] [float] NULL,
	[Quantity] [float] NULL,
	[Flag_status_DN_Range] [float] NULL,
	[CA_Type1] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[drnmastn]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[drnmastn](
	[rem] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DRNNSDL1BH]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DRNNSDL1BH](
	[Batch_Number] [varchar](8) NULL,
	[Record_Type] [varchar](2) NULL,
	[Branch_Code] [varchar](6) NULL,
	[SR_BP_ID] [varchar](8) NULL,
	[BP_Role] [varchar](2) NULL,
	[TDConvUnitsAccPos] [varchar](18) NULL,
	[TDConvUnitsRejPos] [varchar](18) NULL,
	[TRRecoUnitsSOAAccPos] [varchar](18) NULL,
	[TRRecoUnitsSOARejPos] [varchar](18) NULL,
	[TRepurRedAccPos] [varchar](18) NULL,
	[TRepRedRejPos] [varchar](18) NULL,
	[TNDetailRecords] [varchar](7) NULL,
	[Sender] [date] NULL,
	[User_Id_Import] [varchar](8) NULL,
	[Filler] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DRNNSDL2DT]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DRNNSDL2DT](
	[Batch_Number] [varchar](8) NULL,
	[Record_Type] [varchar](2) NULL,
	[Line_Number] [varchar](7) NULL,
	[Transaction_type] [varchar](3) NULL,
	[Transaction_Flag] [varchar](1) NULL,
	[DP_ID] [varchar](8) NULL,
	[Orig_Order_Ref_No] [varchar](14) NULL,
	[RRF_DRF_Rec_Dt_CRF_Rec_Dt] [date] NULL,
	[DCURReconUSOARepurRedAcc_Qty] [varchar](18) NULL,
	[DCURReconUSOARepRedRej_Qty] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [date] NULL,
	[Internal_Reference_Number] [varchar](35) NULL,
	[Rejection_Reason_Code1] [varchar](4) NULL,
	[Rejection_Reason_Code2] [varchar](4) NULL,
	[Rejection_Reason_Code3] [varchar](4) NULL,
	[Rejection_Reason_Code4] [varchar](4) NULL,
	[Sender_Reference_Number_1] [varchar](50) NULL,
	[Sender_Reference_Number_2] [varchar](50) NULL,
	[Mutual_Fund_Indicator] [varchar](1) NULL,
	[Final_Confirmation_Indicator] [varchar](1) NULL,
	[Filler] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dup1]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dup1](
	[date5] [datetime] NULL,
	[isin_no] [varchar](12) NULL,
	[shares] [varchar](18) NULL,
	[IDTFILETYPE] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorBendem]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorBendem](
	[rem] [varchar](1000) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EvNsdlDT02]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EvNsdlDT02](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Batch_NoDT] [varchar](7) NULL,
	[Filler01] [char](1) NULL,
	[Rec_Type] [varchar](2) NULL,
	[Filler02] [char](1) NULL,
	[Dep_Type] [char](1) NULL,
	[Filler03] [char](1) NULL,
	[Account_No] [varchar](16) NULL,
	[Filler04] [char](1) NULL,
	[Name1] [varchar](135) NULL,
	[Filler05] [char](1) NULL,
	[Pan1] [varchar](10) NULL,
	[Filler06] [char](1) NULL,
	[Name2] [varchar](45) NULL,
	[Filler07] [char](1) NULL,
	[Pan2] [varchar](10) NULL,
	[Filler08] [char](1) NULL,
	[Name3] [varchar](45) NULL,
	[Filler09] [char](1) NULL,
	[Pan3] [varchar](10) NULL,
	[Filler10] [char](1) NULL,
	[Add1] [varchar](36) NULL,
	[Filler11] [char](1) NULL,
	[Add2] [varchar](36) NULL,
	[Filler12] [char](1) NULL,
	[Add3] [varchar](36) NULL,
	[Filler13] [char](1) NULL,
	[Add4] [varchar](36) NULL,
	[Filler14] [char](1) NULL,
	[Pincode] [varchar](6) NULL,
	[Filler15] [char](1) NULL,
	[Mobile_No] [varchar](10) NULL,
	[Filler16] [char](1) NULL,
	[Email_Id] [varchar](50) NULL,
	[Filler17] [char](1) NULL,
	[Holdings_Shr] [varchar](18) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[extrarecfromnsdl]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[extrarecfromnsdl](
	[isin_alpha_code] [varchar](12) NULL,
	[isin_description] [varchar](140) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fdt45f]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fdt45f](
	[stemp1] [varchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fdt46f]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fdt46f](
	[ftem46] [varchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fftemp1]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fftemp1](
	[ftemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fftemp2]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fftemp2](
	[ftemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fftemp3]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fftemp3](
	[ftemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fftemp4]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fftemp4](
	[ftemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filefromxl]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filefromxl](
	[credit_isin] [varchar](12) NULL,
	[totcrqty_flinb] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FINALBENDEM]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FINALBENDEM](
	[DP_ID] [nvarchar](255) NULL,
	[CLNT_ID] [float] NULL,
	[SOLE_FIRST_HOLDER_NAME] [nvarchar](255) NULL,
	[SECOND_HOLDER_NAME] [nvarchar](255) NULL,
	[THIRD_HOLDER_NAME] [nvarchar](255) NULL,
	[FTHR_HSBND_NAME] [nvarchar](255) NULL,
	[OCCUPATION] [float] NULL,
	[BDLS] [nvarchar](255) NULL,
	[CLNTTYP] [float] NULL,
	[CATEGORY] [float] NULL,
	[SUB_TYPE] [float] NULL,
	[STATUS] [float] NULL,
	[MNORMAJOR] [nvarchar](255) NULL,
	[BANK_ACC_NO] [float] NULL,
	[BANK_ACC_TYPE] [float] NULL,
	[BANK_NAME1] [nvarchar](255) NULL,
	[MICR_NO] [float] NULL,
	[IFSC] [nvarchar](255) NULL,
	[SOLE_FIRST_HOLDER_PAN] [nvarchar](255) NULL,
	[PAN_STAT1] [nvarchar](255) NULL,
	[SECOND_HOLDER_PAN] [nvarchar](255) NULL,
	[PAN_STAT2] [nvarchar](255) NULL,
	[THIRD_HOLDER_PAN] [nvarchar](255) NULL,
	[PAN_STAT3] [nvarchar](255) NULL,
	[RBI_AP_DT] [nvarchar](255) NULL,
	[BCD_RBI_REF] [nvarchar](255) NULL,
	[BCD_SEBI_RGN] [nvarchar](255) NULL,
	[CLIENT_ADDRESS1] [nvarchar](255) NULL,
	[CLIENT_ADDRESS2] [nvarchar](255) NULL,
	[CLIENT_ADDRESS3] [nvarchar](255) NULL,
	[CLIENT_ADDRESS4] [nvarchar](255) NULL,
	[PIN] [float] NULL,
	[CLIENT_PHONE] [float] NULL,
	[CLIENT_FAX] [float] NULL,
	[BANK_ADDRESS1] [nvarchar](255) NULL,
	[BANK_ADDRESS2] [nvarchar](255) NULL,
	[BANK_ADDRESS3] [nvarchar](255) NULL,
	[BANK_ADDRESS4] [nvarchar](255) NULL,
	[B_PIN] [float] NULL,
	[CLIENT_INDICATOR] [nvarchar](255) NULL,
	[FIRST_HOLDER_EMAIL_ID] [nvarchar](255) NULL,
	[F42] [nvarchar](255) NULL,
	[F43] [nvarchar](255) NULL,
	[F44] [nvarchar](255) NULL,
	[F45] [nvarchar](255) NULL,
	[F46] [nvarchar](255) NULL,
	[F47] [nvarchar](255) NULL,
	[F48] [nvarchar](255) NULL,
	[F49] [nvarchar](255) NULL,
	[F50] [nvarchar](255) NULL,
	[F51] [nvarchar](255) NULL,
	[F52] [nvarchar](255) NULL,
	[F53] [nvarchar](255) NULL,
	[F54] [nvarchar](255) NULL,
	[F55] [nvarchar](255) NULL,
	[F56] [nvarchar](255) NULL,
	[F57] [nvarchar](255) NULL,
	[F58] [nvarchar](255) NULL,
	[F59] [nvarchar](255) NULL,
	[F60] [nvarchar](255) NULL,
	[F61] [nvarchar](255) NULL,
	[F62] [nvarchar](255) NULL,
	[F63] [nvarchar](255) NULL,
	[F64] [nvarchar](255) NULL,
	[F65] [nvarchar](255) NULL,
	[F66] [nvarchar](255) NULL,
	[F67] [nvarchar](255) NULL,
	[F68] [nvarchar](255) NULL,
	[F69] [nvarchar](255) NULL,
	[F70] [nvarchar](255) NULL,
	[F71] [nvarchar](255) NULL,
	[F72] [nvarchar](255) NULL,
	[F73] [nvarchar](255) NULL,
	[F74] [nvarchar](255) NULL,
	[F75] [nvarchar](255) NULL,
	[F76] [nvarchar](255) NULL,
	[F77] [nvarchar](255) NULL,
	[F78] [nvarchar](255) NULL,
	[F79] [nvarchar](255) NULL,
	[F80] [nvarchar](255) NULL,
	[F81] [nvarchar](255) NULL,
	[F82] [nvarchar](255) NULL,
	[F83] [nvarchar](255) NULL,
	[SUBTYPEDESCRIPTION] [varchar](40) NULL,
	[STATUSDESCRIPTION] [varchar](40) NULL,
	[CATEGORYDESCRIPTION] [varchar](40) NULL,
	[OCCUPATIONDESCRIPTION] [varchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FINALUPL08]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FINALUPL08](
	[ftemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FINALUPL8]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FINALUPL8](
	[ftemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ft451]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ft451](
	[ftem45] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ft452]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ft452](
	[ftem45] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ft453]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ft453](
	[ftem45] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[g1file]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[g1file](
	[opentexta] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[g2file]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[g2file](
	[opentexta] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[g3file]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[g3file](
	[opentexta] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gpl_SrcFile]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gpl_SrcFile](
	[REC_TYPE] [nvarchar](255) NULL,
	[LIN_NUM] [int] NULL,
	[DPID] [nvarchar](255) NULL,
	[FOLIO] [nvarchar](255) NULL,
	[STATUS] [int] NULL,
	[BTYPE] [int] NULL,
	[BTAC] [int] NULL,
	[OC] [int] NULL,
	[NAME] [nvarchar](255) NULL,
	[FNAME] [nvarchar](255) NULL,
	[ADDR1] [nvarchar](255) NULL,
	[ADDR2] [nvarchar](255) NULL,
	[ADDR3] [nvarchar](255) NULL,
	[ADDR4] [nvarchar](255) NULL,
	[PIN] [nvarchar](255) NULL,
	[PHONE1] [nvarchar](255) NULL,
	[FAX] [nvarchar](255) NULL,
	[JH1] [nvarchar](255) NULL,
	[J1_FATHER] [nvarchar](255) NULL,
	[JH2] [nvarchar](255) NULL,
	[J2_FATHER] [nvarchar](255) NULL,
	[FILER] [nvarchar](255) NULL,
	[FHOLD_PAN] [nvarchar](255) NULL,
	[SHOLD_PAN] [nvarchar](255) NULL,
	[THOLD_PAN] [nvarchar](255) NULL,
	[NOMINE_IN] [nvarchar](255) NULL,
	[NOMINE_GU] [nvarchar](255) NULL,
	[NADD1] [nvarchar](255) NULL,
	[NADD2] [nvarchar](255) NULL,
	[NADD3] [nvarchar](255) NULL,
	[NADD4] [nvarchar](255) NULL,
	[NPIN] [nvarchar](255) NULL,
	[DOB_MNR] [nvarchar](255) NULL,
	[MINORIND] [nvarchar](255) NULL,
	[BACNO] [nvarchar](255) NULL,
	[BNAME] [nvarchar](255) NULL,
	[BADDR1] [nvarchar](255) NULL,
	[BADDR2] [nvarchar](255) NULL,
	[BADDR3] [nvarchar](255) NULL,
	[BADDR4] [nvarchar](255) NULL,
	[BPIN] [nvarchar](255) NULL,
	[RBI_NRI] [nvarchar](255) NULL,
	[RBI_DATE] [nvarchar](255) NULL,
	[SIBIREGNO] [nvarchar](255) NULL,
	[BTAX] [nvarchar](255) NULL,
	[B_STATUS] [int] NULL,
	[OSHARES] [int] NULL,
	[SHARES] [int] NULL,
	[FSHARES] [int] NULL,
	[LSHARES] [int] NULL,
	[BENBLKPO] [int] NULL,
	[PLSHARES] [int] NULL,
	[PLGWTLCK] [int] NULL,
	[PLGUNCFP] [int] NULL,
	[BPLUNLK] [int] NULL,
	[BREMTPO] [int] NULL,
	[BDMTLOCK] [int] NULL,
	[CMIDDPO] [int] NULL,
	[CMPOOLPO] [int] NULL,
	[CCSETLPO] [int] NULL,
	[MICR] [nvarchar](255) NULL,
	[IFSC] [nvarchar](255) NULL,
	[BAC_TYPE] [int] NULL,
	[FILER1] [nvarchar](255) NULL,
	[MAPID1] [nvarchar](255) NULL,
	[MAPID2] [nvarchar](255) NULL,
	[MAPID3] [nvarchar](255) NULL,
	[EMAILID1] [nvarchar](255) NULL,
	[EMAILID2] [nvarchar](255) NULL,
	[EMAILID3] [nvarchar](255) NULL,
	[RGESS] [nvarchar](255) NULL,
	[NDUFSH] [int] NULL,
	[NDULSH] [int] NULL,
	[NDUUCF] [int] NULL,
	[NDUUCL] [int] NULL,
	[FILER2] [nvarchar](255) NULL,
	[STATUS2] [int] NULL,
	[CLID] [nvarchar](255) NULL,
	[REM] [nvarchar](255) NULL,
	[RBI] [nvarchar](255) NULL,
	[REMARK] [nvarchar](255) NULL,
	[LOCKOUT] [nvarchar](255) NULL,
	[ISIN] [nvarchar](255) NULL,
	[MAND] [nvarchar](255) NULL,
	[STAT] [nvarchar](255) NULL,
	[PLSTPBAL] [nvarchar](255) NULL,
	[RMTLKBAL] [nvarchar](255) NULL,
	[ARFLAG] [nvarchar](255) NULL,
	[UIDNAME] [nvarchar](255) NULL,
	[UIDJH1] [nvarchar](255) NULL,
	[UIDJH2] [nvarchar](255) NULL,
	[FILER3] [nvarchar](255) NULL,
	[PASSWORD] [nvarchar](255) NULL,
	[STATD] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idt_mast5190]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idt_mast5190](
	[Remsource] [varchar](250) NULL,
	[Type_id] [varchar](2) NULL,
	[Line_no] [varchar](7) NULL,
	[Date2] [datetime] NULL,
	[Filler1] [varchar](4) NULL,
	[isin_no] [varchar](12) NULL,
	[Shares] [varchar](18) NULL,
	[Date3] [datetime] NULL,
	[Date4] [datetime] NULL,
	[Date5] [datetime] NULL,
	[Filler2] [varchar](1) NULL,
	[Idtfiletype] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idt_mast51Fin]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idt_mast51Fin](
	[Remsource] [varchar](250) NULL,
	[Type_id] [varchar](2) NULL,
	[Line_no] [varchar](7) NULL,
	[Date2] [datetime] NULL,
	[Filler1] [varchar](4) NULL,
	[isin_no] [varchar](12) NULL,
	[Shares] [varchar](18) NULL,
	[Date3] [datetime] NULL,
	[Date4] [datetime] NULL,
	[Date5] [datetime] NULL,
	[Filler2] [varchar](1) NULL,
	[Idtfiletype] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idt_mast51outf]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idt_mast51outf](
	[type_id] [varchar](2) NULL,
	[line_no] [varchar](7) NULL,
	[date2] [varchar](8000) NULL,
	[filler1] [varchar](4) NULL,
	[isin_no] [varchar](12) NULL,
	[shares] [varchar](18) NULL,
	[date3] [varchar](8000) NULL,
	[date4] [varchar](8000) NULL,
	[date5] [varchar](8000) NULL,
	[filler2] [varchar](1) NULL,
	[idtfiletype] [varchar](18) NULL,
	[filler3] [varchar](9) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idt_mast90Fin]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idt_mast90Fin](
	[Remsource] [varchar](250) NULL,
	[Type_id] [varchar](2) NULL,
	[Line_no] [varchar](7) NULL,
	[Date2] [datetime] NULL,
	[Filler1] [varchar](4) NULL,
	[isin_no] [varchar](12) NULL,
	[Shares] [varchar](18) NULL,
	[Date3] [datetime] NULL,
	[Date4] [datetime] NULL,
	[Date5] [datetime] NULL,
	[Filler2] [varchar](1) NULL,
	[Idtfiletype] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idt_mast90out]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idt_mast90out](
	[type_id] [varchar](2) NULL,
	[line_no] [varchar](7) NULL,
	[date2] [varchar](8000) NULL,
	[filler1] [varchar](4) NULL,
	[isin_no] [varchar](12) NULL,
	[shares] [varchar](18) NULL,
	[date3] [varchar](8000) NULL,
	[date4] [varchar](8000) NULL,
	[date5] [varchar](8000) NULL,
	[filler2] [varchar](1) NULL,
	[idtfiletype] [varchar](18) NULL,
	[filler3] [varchar](9) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idt_mast90outf]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idt_mast90outf](
	[type_id] [varchar](2) NULL,
	[line_no] [varchar](7) NULL,
	[date2] [varchar](8000) NULL,
	[filler1] [varchar](4) NULL,
	[isin_no] [varchar](12) NULL,
	[shares] [varchar](18) NULL,
	[date3] [varchar](8000) NULL,
	[date4] [varchar](8000) NULL,
	[date5] [varchar](8000) NULL,
	[filler2] [varchar](1) NULL,
	[idtfiletype] [varchar](18) NULL,
	[filler3] [varchar](9) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idt_out51]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idt_out51](
	[Remsource] [varchar](250) NULL,
	[Type_id] [varchar](2) NULL,
	[Line_no] [varchar](7) NULL,
	[Date2] [datetime] NULL,
	[Filler1] [varchar](4) NULL,
	[isin_no] [varchar](12) NULL,
	[Shares] [varchar](18) NULL,
	[Date3] [datetime] NULL,
	[Date4] [datetime] NULL,
	[Date5] [datetime] NULL,
	[Filler2] [varchar](1) NULL,
	[Idtfiletype] [varchar](18) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idt_out90]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idt_out90](
	[Remsource] [varchar](250) NULL,
	[Type_id] [varchar](2) NULL,
	[Line_no] [varchar](7) NULL,
	[Date2] [datetime] NULL,
	[Filler1] [varchar](4) NULL,
	[isin_no] [varchar](12) NULL,
	[Shares] [varchar](18) NULL,
	[Date3] [datetime] NULL,
	[Date4] [datetime] NULL,
	[Date5] [datetime] NULL,
	[Filler2] [varchar](1) NULL,
	[Idtfiletype] [varchar](18) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IDT51]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IDT51](
	[itempf] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IDT90]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IDT90](
	[itempf] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iepf47fl]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iepf47fl](
	[ftem47] [varchar](5000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Iepfcacdsl45dt]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iepfcacdsl45dt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Id] [varchar](2) NULL,
	[Rec_Lineno] [varchar](5) NULL,
	[Credit_Boid] [varchar](16) NULL,
	[Debit_Boid] [varchar](16) NULL,
	[Dr_Qty] [varchar](19) NULL,
	[Dr_Qty_Lin] [varchar](19) NULL,
	[Dr_Lin_Code] [varchar](2) NULL,
	[Dr_Lin_Exp_Dt] [datetime] NULL,
	[Filler01] [varchar](19) NULL,
	[Cr_Qty] [varchar](19) NULL,
	[Cr_Qty_Lin] [varchar](19) NULL,
	[Cr_Lin_Code] [varchar](2) NULL,
	[Cr_Lin_Exp_Dt] [datetime] NULL,
	[Filler02] [varchar](100) NULL,
	[Processedflag] [varchar](1) NULL,
	[MasterUniqNo] [int] NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Iepfcacdsl45hd]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iepfcacdsl45hd](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Id] [varchar](2) NULL,
	[Rta_Id] [varchar](6) NULL,
	[Rtaint_Refno] [varchar](16) NULL,
	[Isin] [varchar](12) NULL,
	[Ca_Type] [varchar](4) NULL,
	[Bapr_Dt] [datetime] NULL,
	[Exec_Dt] [datetime] NULL,
	[Totdrqty] [varchar](19) NULL,
	[Totdrqty_Lin] [varchar](19) NULL,
	[Filler01] [varchar](19) NULL,
	[Totcrqty] [varchar](19) NULL,
	[Totcrqty_Lin] [varchar](19) NULL,
	[Totdetrec] [varchar](5) NULL,
	[Filler02] [varchar](5) NULL,
	[Cin_Bcin_No] [varchar](21) NULL,
	[Email_Co] [varchar](50) NULL,
	[Fywdivrel] [varchar](9) NULL,
	[Totnomamt_Shr] [varchar](19) NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[MasterUniqNo] [int] NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Iepfcacdsl46dt]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iepfcacdsl46dt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Id] [varchar](2) NULL,
	[Rec_Lineno] [varchar](5) NULL,
	[Credit_Boid] [varchar](16) NULL,
	[Debit_Dpid] [varchar](8) NULL,
	[Debit_Clid] [varchar](8) NULL,
	[Dr_Qty] [varchar](19) NULL,
	[Dr_Qty_Lin] [varchar](19) NULL,
	[Dr_Lin_Code] [varchar](2) NULL,
	[Dr_Lin_Exp_Dt] [datetime] NULL,
	[Filler01] [varchar](19) NULL,
	[Cr_Qty] [varchar](19) NULL,
	[Cr_Qty_Lin] [varchar](19) NULL,
	[Cr_Lin_Code] [varchar](2) NULL,
	[Cr_Lin_Exp_Dt] [datetime] NULL,
	[Name1] [varchar](250) NULL,
	[Pan1] [varchar](30) NULL,
	[Name2] [varchar](45) NULL,
	[Pan2] [varchar](30) NULL,
	[Name3] [varchar](45) NULL,
	[Pan3] [varchar](30) NULL,
	[Gur_Name] [varchar](45) NULL,
	[Filler02] [varchar](10) NULL,
	[Nom_Name] [varchar](45) NULL,
	[Filler03] [varchar](10) NULL,
	[Fh_Name] [varchar](45) NULL,
	[Filler04] [varchar](1) NULL,
	[Birth_Dt] [datetime] NULL,
	[Acc_type_Desc] [varchar](100) NULL,
	[Acc_stype_Desc] [varchar](100) NULL,
	[Occ] [varchar](100) NULL,
	[Filler05] [varchar](25) NULL,
	[Cadd1] [varchar](36) NULL,
	[Cadd2] [varchar](36) NULL,
	[Cadd3] [varchar](36) NULL,
	[Cadd4] [varchar](36) NULL,
	[Caddpin] [varchar](10) NULL,
	[Padd1] [varchar](36) NULL,
	[Padd2] [varchar](36) NULL,
	[Padd3] [varchar](36) NULL,
	[Padd4] [varchar](36) NULL,
	[Paddpin] [varchar](10) NULL,
	[Tel1] [varchar](24) NULL,
	[Filler06] [varchar](20) NULL,
	[Fax_No] [varchar](24) NULL,
	[Email_Id] [varchar](50) NULL,
	[Uid1] [varchar](12) NULL,
	[Uid2] [varchar](12) NULL,
	[Uid3] [varchar](12) NULL,
	[Filler07] [varchar](12) NULL,
	[Filler08] [varchar](12) NULL,
	[Filler09] [varchar](100) NULL,
	[Processedflag] [varchar](1) NULL,
	[MasterUniqNo] [int] NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Iepfcacdsl46hd]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iepfcacdsl46hd](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Id] [varchar](2) NULL,
	[Rta_Id] [varchar](6) NULL,
	[Rtaint_Refno] [varchar](16) NULL,
	[Isin] [varchar](12) NULL,
	[Ca_Type] [varchar](4) NULL,
	[Bapr_Dt] [datetime] NULL,
	[Exec_Dt] [datetime] NULL,
	[Totdrqty] [varchar](19) NULL,
	[Totdrqty_Lin] [varchar](19) NULL,
	[Filler01] [varchar](19) NULL,
	[Totcrqty] [varchar](19) NULL,
	[Totcrqty_Lin] [varchar](19) NULL,
	[Totdetrec] [varchar](5) NULL,
	[Filler02] [varchar](5) NULL,
	[Cin_Bcin_No] [varchar](21) NULL,
	[Email_Co] [varchar](50) NULL,
	[Fywdivrel] [varchar](9) NULL,
	[Totnomamt_Shr] [varchar](19) NULL,
	[Processedflag] [varchar](1) NULL,
	[MasterUniqNo] [int] NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Iepfcacdsl47dt]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iepfcacdsl47dt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Id] [varchar](2) NULL,
	[Rec_Lineno] [varchar](5) NULL,
	[Credit_Boid] [varchar](16) NULL,
	[Folio_No] [varchar](16) NULL,
	[Dr_Qty] [varchar](19) NULL,
	[Dr_Qty_Lin] [varchar](19) NULL,
	[Dr_Lin_Rcode] [varchar](2) NULL,
	[Dr_Lin_Exp_Dt] [datetime] NULL,
	[Cr_Qty] [varchar](19) NULL,
	[Cr_Qty_Lin] [varchar](19) NULL,
	[Cr_Lin_Rcode] [varchar](2) NULL,
	[Cr_Lin_Exp_Dt] [datetime] NULL,
	[Name1] [varchar](164) NULL,
	[Pan1] [varchar](10) NULL,
	[Name2] [varchar](164) NULL,
	[Pan2] [varchar](10) NULL,
	[Name3] [varchar](164) NULL,
	[Pan3] [varchar](10) NULL,
	[Name4] [varchar](164) NULL,
	[Pan4] [varchar](10) NULL,
	[Gur_Name] [varchar](164) NULL,
	[Gur_Pan] [varchar](10) NULL,
	[Nom_Name] [varchar](164) NULL,
	[Nom_Pan] [varchar](10) NULL,
	[Fh_Name] [varchar](50) NULL,
	[Name1Gender] [varchar](1) NULL,
	[Birth_Dt] [datetime] NULL,
	[Occ] [varchar](4) NULL,
	[Nationality] [varchar](25) NULL,
	[Inv_Category] [varchar](25) NULL,
	[Cadd1] [varchar](50) NULL,
	[Cadd2] [varchar](50) NULL,
	[Cadd3] [varchar](50) NULL,
	[Caddcity] [varchar](25) NULL,
	[Caddstate] [varchar](25) NULL,
	[Caddcountry] [varchar](25) NULL,
	[Caddpin] [varchar](10) NULL,
	[Padd1] [varchar](50) NULL,
	[Padd2] [varchar](50) NULL,
	[Padd3] [varchar](50) NULL,
	[Paddcity] [varchar](25) NULL,
	[Paddstate] [varchar](25) NULL,
	[Paddcountry] [varchar](25) NULL,
	[Paddpin] [varchar](10) NULL,
	[Tel1] [varchar](17) NULL,
	[Tel2_No] [varchar](17) NULL,
	[Bo_Faxno] [varchar](17) NULL,
	[Email_Id] [varchar](50) NULL,
	[Uid1] [varchar](12) NULL,
	[Uid2] [varchar](12) NULL,
	[Uid3] [varchar](12) NULL,
	[Name4_Uid] [varchar](12) NULL,
	[Gua_Uid] [varchar](12) NULL,
	[Nom_Uid] [varchar](12) NULL,
	[Filler01] [varchar](100) NULL,
	[Processedflag] [varchar](1) NULL,
	[MasterUniqNo] [int] NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Iepfcacdsl47dtDist]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iepfcacdsl47dtDist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Id] [varchar](2) NULL,
	[Rec_Lineno] [varchar](5) NULL,
	[Isin] [varchar](12) NULL,
	[Drcr_Ind] [varchar](1) NULL,
	[Distno_From] [varchar](18) NULL,
	[Distno_To] [varchar](18) NULL,
	[Qty] [varchar](18) NULL,
	[Processedflag] [varchar](1) NULL,
	[MasterUniqNo] [int] NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Iepfcacdsl47hd]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iepfcacdsl47hd](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Id] [varchar](2) NULL,
	[Rta_Id] [varchar](6) NULL,
	[Rtaint_Refno] [varchar](16) NULL,
	[Isin] [varchar](12) NULL,
	[Ca_Type] [varchar](4) NULL,
	[Bapr_Dt] [datetime] NULL,
	[Exec_Dt] [datetime] NULL,
	[Totdrqty] [varchar](19) NULL,
	[Totdrqty_Lin] [varchar](19) NULL,
	[Totcrqty] [varchar](19) NULL,
	[Totcrqty_Lin] [varchar](19) NULL,
	[Totdetrec] [varchar](5) NULL,
	[Tot_DetRec_Dnr] [varchar](5) NULL,
	[Cin_Bcin_No] [varchar](21) NULL,
	[Email_Co] [varchar](50) NULL,
	[Fywdivrel] [varchar](9) NULL,
	[Totnomamt_Shr] [varchar](19) NULL,
	[Processedflag] [varchar](1) NULL,
	[MasterUniqNo] [int] NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Iepfcacdsl48dt]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iepfcacdsl48dt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Id] [varchar](2) NULL,
	[Rec_Lineno] [varchar](5) NULL,
	[Debit_Isin] [varchar](12) NULL,
	[Credit_Isin] [varchar](12) NULL,
	[Credit_Boid] [varchar](16) NULL,
	[Cdsl_Clid] [varchar](16) NULL,
	[Nsdl_Dpid] [varchar](8) NULL,
	[Nsdl_Clid] [varchar](8) NULL,
	[Folio_No] [varchar](16) NULL,
	[Dr_Qty] [varchar](19) NULL,
	[Dr_Qty_Lin] [varchar](19) NULL,
	[Dr_Lin_Code] [varchar](2) NULL,
	[Dr_Lin_Exp_Dt] [varchar](8) NULL,
	[Cr_Qty] [varchar](19) NULL,
	[Cr_Qty_Lin] [varchar](19) NULL,
	[Cr_Lin_Code] [varchar](2) NULL,
	[Cr_Lin_Exp_Dt] [varchar](8) NULL,
	[Fract_CR_Type] [varchar](1) NULL,
	[Fract_Amt] [varchar](17) NULL,
	[Filler01] [varchar](100) NULL,
	[Processedflag] [varchar](1) NULL,
	[MasterUniqNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Iepfcacdsl48dtDist]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iepfcacdsl48dtDist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Id] [varchar](2) NULL,
	[Rec_Lineno] [varchar](5) NULL,
	[Isin] [varchar](12) NULL,
	[Drcr_Ind] [varchar](1) NULL,
	[Distno_From] [varchar](18) NULL,
	[Distno_To] [varchar](18) NULL,
	[Qty] [varchar](18) NULL,
	[Processedflag] [varchar](1) NULL,
	[MasterUniqNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Iepfcacdsl48hd]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iepfcacdsl48hd](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Id] [varchar](2) NULL,
	[File_Type] [varchar](1) NULL,
	[Rta_Id] [varchar](6) NULL,
	[Rtaint_Refno] [varchar](16) NULL,
	[Ca_Type] [varchar](4) NULL,
	[Exec_Dt] [varchar](8) NULL,
	[Ca_Seqno] [varchar](8) NULL,
	[Totdrqty] [varchar](19) NULL,
	[Totdrqty_Lin] [varchar](19) NULL,
	[Totcrqty] [varchar](19) NULL,
	[Totcrqty_Lin] [varchar](19) NULL,
	[Totdetrec] [varchar](5) NULL,
	[Cin_Bcin_No] [varchar](21) NULL,
	[Email_Co] [varchar](50) NULL,
	[Processedflag] [varchar](1) NULL,
	[MasterUniqNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IepfNSDLDetailDistRecord]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IepfNSDLDetailDistRecord](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[ISIN] [varchar](12) NULL,
	[DRCRINDICATOR] [varchar](1) NULL,
	[From_DistNo_NSDL] [varchar](18) NULL,
	[To_DistNo_NSDL] [varchar](18) NULL,
	[Quantity] [varchar](18) NULL,
	[Flag_Status_DN_Range] [varchar](2) NULL,
	[CA_Type] [varchar](4) NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IepfNSDLDetailRecord]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IepfNSDLDetailRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[Credit_DP_ID] [varchar](8) NULL,
	[Credit_Client_ID] [varchar](8) NULL,
	[CrClient_AccCat] [varchar](2) NULL,
	[Debit_DP_ID] [varchar](8) NULL,
	[Debit_Client_ID] [varchar](8) NULL,
	[DrClient_AccCat] [varchar](2) NULL,
	[Cr_Qty] [varchar](18) NULL,
	[Dr_Qty] [varchar](18) NULL,
	[CrQty_LinReasonCd] [varchar](2) NULL,
	[CrQty_Lin_RelDt] [datetime] NULL,
	[DrQty_LinReasonCd] [varchar](2) NULL,
	[DrQty_Lin_RelDt] [datetime] NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IepfNSDLHeaderRecord]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IepfNSDLHeaderRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Identification] [varchar](2) NULL,
	[File_Identification] [varchar](7) NULL,
	[RTA_IntRefNo] [varchar](16) NULL,
	[Credit_ISIN] [varchar](12) NULL,
	[Debit_ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](4) NULL,
	[BApproval_Dt] [datetime] NULL,
	[CA_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[TotCrQty_FLinBl] [varchar](18) NULL,
	[TotDrQty_FLinBl] [varchar](18) NULL,
	[TotCrQty_Lin] [varchar](18) NULL,
	[TotDrQty_Lin] [varchar](18) NULL,
	[Tot_detrec] [varchar](7) NULL,
	[CIN_BCIN_No] [varchar](21) NULL,
	[FY_WAmtRel] [varchar](7) NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IepfNSDLOutFile]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IepfNSDLOutFile](
	[Batch_No] [varchar](8) NULL,
	[Record_Type] [varchar](2) NULL,
	[RtaIntRef_No] [varchar](16) NULL,
	[Sr_Bp_Id] [varchar](8) NULL,
	[TotRec_Header] [varchar](7) NULL,
	[Batch_Status] [varchar](1) NULL,
	[CrDrSi_Indicator] [varchar](1) NULL,
	[BpInstruction_Id] [varchar](14) NULL,
	[Execution_Dt] [datetime] NULL,
	[TotCr_Qty] [varchar](18) NULL,
	[TotCr_Acc_Qty] [varchar](18) NULL,
	[TotCr_Rej_Qty] [varchar](18) NULL,
	[TotCr_Lock_Qty] [varchar](18) NULL,
	[TotDr_Qty] [varchar](18) NULL,
	[TotDr_Acc_Qty] [varchar](18) NULL,
	[TotDr_Rej_Qty] [varchar](18) NULL,
	[TotDr_Lock_Qty] [varchar](18) NULL,
	[CurrBusi_Date] [datetime] NULL,
	[UserId_Import] [varchar](8) NULL,
	[Filler_out] [varchar](3) NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iepftypeaDt]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iepftypeaDt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Identification] [varchar](2) NULL,
	[Detrecline] [varchar](7) NULL,
	[Cr_Dpid] [varchar](8) NULL,
	[Cr_Clid] [varchar](8) NULL,
	[Crclacccat] [varchar](2) NULL,
	[Dr_Dpid] [varchar](8) NULL,
	[Dr_Clid] [varchar](8) NULL,
	[Drclacccat] [varchar](2) NULL,
	[Cr_Qty] [varchar](18) NULL,
	[Dr_Qty] [varchar](18) NULL,
	[Crqtylin_Rcode] [varchar](2) NULL,
	[Crqtylin_Rdt] [datetime] NULL,
	[Drqtylin_Rcode] [varchar](2) NULL,
	[Drqtylin_Rdt] [datetime] NULL,
	[MasterUniqNo] [int] NULL,
	[processedflag] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iepftypeaHd]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iepftypeaHd](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Identification] [varchar](2) NULL,
	[File_Identification] [varchar](7) NULL,
	[Rta_Internal_Reference_No] [varchar](16) NULL,
	[Credit_Isin] [varchar](12) NULL,
	[Debit_Isin] [varchar](12) NULL,
	[Ca_Type] [varchar](4) NULL,
	[Board_Dt] [datetime] NULL,
	[Ca_Desc] [varchar](4) NULL,
	[Execution_Dt] [datetime] NULL,
	[Totcrqty_Flinb] [varchar](18) NULL,
	[Totdrqty_Flinb] [varchar](18) NULL,
	[Totcrqty_Lin] [varchar](18) NULL,
	[Totdrqty_Lin] [varchar](18) NULL,
	[Totdetrec] [varchar](7) NULL,
	[Cinbcin_No] [varchar](21) NULL,
	[Finyr_Rel] [varchar](7) NULL,
	[MasterUniqNo] [int] NULL,
	[processedflag] [varchar](1) NULL,
	[inward_dt] [datetime] NULL,
	[company_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iepftypebDIST]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iepftypebDIST](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RECORD_IDENTIFICATION] [varchar](2) NULL,
	[DETRECLINE] [varchar](7) NULL,
	[ISIN] [varchar](12) NULL,
	[DR_CR_INDI] [varchar](1) NULL,
	[FROMDIST_NSDL] [varchar](18) NULL,
	[TODIST_NSDL] [varchar](18) NULL,
	[QTY] [varchar](18) NULL,
	[FLAGSTATDNR] [varchar](2) NULL,
	[CA_TYPE] [varchar](4) NULL,
	[MasterUniqNo] [int] NULL,
	[processedflag] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iepftypebDT]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iepftypebDT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RECORD_IDENTIFICATION] [varchar](2) NULL,
	[DETRECLINE] [varchar](7) NULL,
	[CRDPID] [varchar](8) NULL,
	[CRCLID] [varchar](8) NULL,
	[CRCLACCCAT] [varchar](2) NULL,
	[DRDPIDDRCLIDCDSL] [varchar](16) NULL,
	[FILLER1] [varchar](2) NULL,
	[CREDIT_QTY] [varchar](18) NULL,
	[DEBIT_QTY] [varchar](18) NULL,
	[CRQTYLIN_RCODE] [varchar](2) NULL,
	[CRQTYLIN_RDT] [datetime] NULL,
	[DRQTYLIN_RCODE] [varchar](2) NULL,
	[DRQTYLIN_RDT] [datetime] NULL,
	[SHNAME] [varchar](164) NULL,
	[NAME2] [varchar](164) NULL,
	[NAME3] [varchar](164) NULL,
	[GURNAME] [varchar](142) NULL,
	[NOMNAME] [varchar](142) NULL,
	[FHNAME] [varchar](50) NULL,
	[FHGENDER] [varchar](1) NULL,
	[BIRTH_DT] [datetime] NULL,
	[ACCSTATUS] [varchar](2) NULL,
	[BOCAT] [varchar](2) NULL,
	[BOPRODUCT] [varchar](4) NULL,
	[CUST_TYPE] [varchar](2) NULL,
	[BOSUB_STAT] [varchar](4) NULL,
	[OCC] [varchar](4) NULL,
	[PAN1] [varchar](25) NULL,
	[PAN2] [varchar](25) NULL,
	[PAN3] [varchar](25) NULL,
	[FILLER2] [varchar](1) NULL,
	[FILLER3] [varchar](2) NULL,
	[FILLER4] [varchar](1) NULL,
	[ACOPEN_DT] [datetime] NULL,
	[SEBIREGN] [varchar](24) NULL,
	[SE_ID] [varchar](2) NULL,
	[CHCORP_ID] [varchar](6) NULL,
	[CM_ID] [varchar](8) NULL,
	[TRADING_ID] [varchar](8) NULL,
	[RBI_REGNNO] [varchar](30) NULL,
	[RBIAPP_DT] [datetime] NULL,
	[TAXDED_STAT] [varchar](2) NULL,
	[NATIONALITY] [varchar](3) NULL,
	[BOADD1] [varchar](50) NULL,
	[BOADD2] [varchar](50) NULL,
	[BOADD3] [varchar](50) NULL,
	[BOCITY] [varchar](30) NULL,
	[BOSTATE] [varchar](30) NULL,
	[BOCOUNTRY] [varchar](30) NULL,
	[BOPINCODE] [varchar](10) NULL,
	[BOADD1P] [varchar](50) NULL,
	[BOADD2P] [varchar](50) NULL,
	[BOADD3P] [varchar](50) NULL,
	[BOCITYP] [varchar](30) NULL,
	[BOSTATEP] [varchar](30) NULL,
	[BOCOUNTRYP] [varchar](30) NULL,
	[BOPINCODEP] [varchar](10) NULL,
	[PHONE_1] [varchar](17) NULL,
	[PHONE_2] [varchar](17) NULL,
	[BO_FAX] [varchar](17) NULL,
	[BO_EMAIL] [varchar](50) NULL,
	[ECS_MANDT_FLAG] [varchar](1) NULL,
	[DIVMICR_BCODE] [varchar](12) NULL,
	[DIVBANK_BR] [varchar](12) NULL,
	[BNKNAME] [varchar](100) NULL,
	[BNKADD1] [varchar](40) NULL,
	[BNKADD2] [varchar](40) NULL,
	[BNKADD3] [varchar](40) NULL,
	[BNKCITY] [varchar](25) NULL,
	[BNKSTATE] [varchar](25) NULL,
	[BNKCOUNTRY] [varchar](25) NULL,
	[BNKPINCODE] [varchar](10) NULL,
	[DIVBANK_CURR] [varchar](6) NULL,
	[DIVBANK_ACTYPE] [varchar](5) NULL,
	[DIVBANK_ACC] [varchar](20) NULL,
	[FILLER5] [varchar](22) NULL,
	[FILLER6] [varchar](22) NULL,
	[FILLER7] [varchar](22) NULL,
	[FILLER8] [varchar](22) NULL,
	[FILLER9] [varchar](22) NULL,
	[FILLER10] [varchar](22) NULL,
	[FILLER11] [varchar](22) NULL,
	[FILLER12] [varchar](22) NULL,
	[FILLER13] [varchar](22) NULL,
	[FILLER14] [varchar](8) NULL,
	[FILLER15] [varchar](22) NULL,
	[FILLER16] [varchar](22) NULL,
	[AR_FLAG] [varchar](1) NULL,
	[UID1] [varchar](12) NULL,
	[UID2] [varchar](12) NULL,
	[UID3] [varchar](12) NULL,
	[PANGUARD] [varchar](10) NULL,
	[UIDGUARD] [varchar](12) NULL,
	[FILLER17] [varchar](25) NULL,
	[FILLER18] [varchar](25) NULL,
	[FILLER19] [varchar](25) NULL,
	[FILLER20] [varchar](25) NULL,
	[FILLER21] [varchar](25) NULL,
	[BO_RGESS_FLAG] [varchar](1) NULL,
	[FILLER22] [varchar](1) NULL,
	[FILLER23] [varchar](1) NULL,
	[FILLER24] [varchar](1) NULL,
	[FILLER25] [varchar](1) NULL,
	[MasterUniqNo] [int] NULL,
	[processedflag] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iepftypebHd]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iepftypebHd](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RECORD_IDENTIFICATION] [varchar](2) NULL,
	[FILE_IDENTIFICATION] [varchar](7) NULL,
	[RTAINTREFNO] [varchar](16) NULL,
	[CREDIT_ISIN] [varchar](12) NULL,
	[FILLER] [varchar](12) NULL,
	[CA_TYPE] [varchar](4) NULL,
	[BAPP_DT] [datetime] NULL,
	[CA_DESCRIPTION] [varchar](4) NULL,
	[EXECUTION_DT] [datetime] NULL,
	[TOTCRQTY_FLIN] [varchar](18) NULL,
	[TOTDRQTY_FLIN] [varchar](18) NULL,
	[TOTCRQTY_LIN] [varchar](18) NULL,
	[TOTDRQTY_LIN] [varchar](18) NULL,
	[TOTDETREC] [varchar](7) NULL,
	[CINBCIN] [varchar](21) NULL,
	[FINYR_REL] [varchar](7) NULL,
	[MasterUniqNo] [int] NULL,
	[inward_dt] [datetime] NULL,
	[company_name] [varchar](100) NULL,
	[typeofca] [varchar](50) NULL,
	[ca_desc] [varchar](100) NULL,
	[processedflag] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iepftypecDIST]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iepftypecDIST](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RECORD_IDENTIFICATION] [varchar](2) NULL,
	[DETRECLINE] [varchar](7) NULL,
	[DR_CR_ISIN] [varchar](12) NULL,
	[DR_CR_INDI] [varchar](1) NULL,
	[FROMDIST_NSDL] [varchar](18) NULL,
	[TODIST_NSDL] [varchar](18) NULL,
	[QTY] [varchar](18) NULL,
	[FLAGSTATDNR] [varchar](2) NULL,
	[CA_TYPE] [varchar](4) NULL,
	[MasterUniqNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iepftypecDt]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iepftypecDt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Identification] [varchar](2) NULL,
	[Detrecline] [varchar](7) NULL,
	[Cr_Dpid] [varchar](8) NULL,
	[Cr_Clid] [varchar](8) NULL,
	[Crclacccat] [varchar](2) NULL,
	[FolioNo] [varchar](16) NULL,
	[Filler01] [varchar](2) NULL,
	[Cr_Qty] [varchar](18) NULL,
	[Dr_Qty] [varchar](18) NULL,
	[Crqtylin_Rcode] [varchar](2) NULL,
	[Crqtylin_Rdt] [datetime] NULL,
	[Drqtylin_Rcode] [varchar](2) NULL,
	[Drqtylin_Rdt] [datetime] NULL,
	[SHNAME] [varchar](164) NULL,
	[NAME2] [varchar](164) NULL,
	[NAME3] [varchar](164) NULL,
	[GURNAME] [varchar](142) NULL,
	[NOMNAME] [varchar](142) NULL,
	[FHNAME] [varchar](50) NULL,
	[FHGENDER] [varchar](1) NULL,
	[BIRTH_DT] [varchar](11) NULL,
	[Filler02] [varchar](2) NULL,
	[Filler03] [varchar](2) NULL,
	[Filler04] [varchar](4) NULL,
	[Filler05] [varchar](2) NULL,
	[Filler06] [varchar](4) NULL,
	[OCC] [varchar](4) NULL,
	[PAN1] [varchar](25) NULL,
	[PAN2] [varchar](25) NULL,
	[PAN3] [varchar](25) NULL,
	[Filler07] [varchar](1) NULL,
	[Filler08] [varchar](2) NULL,
	[Filler09] [varchar](1) NULL,
	[Filler10] [varchar](11) NULL,
	[Filler11] [varchar](24) NULL,
	[Filler12] [varchar](2) NULL,
	[Filler13] [varchar](6) NULL,
	[Filler14] [varchar](8) NULL,
	[Filler15] [varchar](8) NULL,
	[Filler16] [varchar](30) NULL,
	[Filler17] [varchar](11) NULL,
	[Filler18] [varchar](2) NULL,
	[NATIONALITY] [varchar](3) NULL,
	[BOADD1] [varchar](50) NULL,
	[BOADD2] [varchar](50) NULL,
	[BOADD3] [varchar](50) NULL,
	[BOCITY] [varchar](30) NULL,
	[BOSTATE] [varchar](30) NULL,
	[BOCOUNTRY] [varchar](30) NULL,
	[BOPINCODE] [varchar](10) NULL,
	[BOADD1P] [varchar](50) NULL,
	[BOADD2P] [varchar](50) NULL,
	[BOADD3P] [varchar](50) NULL,
	[BOCITYP] [varchar](30) NULL,
	[BOSTATEP] [varchar](30) NULL,
	[BOCOUNTRYP] [varchar](30) NULL,
	[BOPINCODEP] [varchar](10) NULL,
	[PHONE_1] [varchar](17) NULL,
	[PHONE_2] [varchar](17) NULL,
	[BO_FAX] [varchar](17) NULL,
	[BO_EMAIL] [varchar](50) NULL,
	[ECS_MANDT_FLAG] [varchar](1) NULL,
	[DIVMICR_BCODE] [varchar](12) NULL,
	[DIVBANK_BR] [varchar](12) NULL,
	[BNKNAME] [varchar](100) NULL,
	[BNKADD1] [varchar](40) NULL,
	[BNKADD2] [varchar](40) NULL,
	[BNKADD3] [varchar](40) NULL,
	[BNKCITY] [varchar](25) NULL,
	[BNKSTATE] [varchar](25) NULL,
	[BNKCOUNTRY] [varchar](25) NULL,
	[BNKPINCODE] [varchar](10) NULL,
	[DIVBANK_CURR] [varchar](6) NULL,
	[DIVBANK_ACTYPE] [varchar](5) NULL,
	[DIVBANK_ACC] [varchar](20) NULL,
	[Filler19] [varchar](22) NULL,
	[Filler20] [varchar](22) NULL,
	[Filler21] [varchar](22) NULL,
	[Filler22] [varchar](22) NULL,
	[Filler23] [varchar](22) NULL,
	[Filler24] [varchar](22) NULL,
	[Filler25] [varchar](22) NULL,
	[Filler26] [varchar](22) NULL,
	[Filler27] [varchar](22) NULL,
	[Filler28] [varchar](8) NULL,
	[Filler29] [varchar](22) NULL,
	[Filler30] [varchar](22) NULL,
	[AR_FLAG] [varchar](1) NULL,
	[UID1] [varchar](12) NULL,
	[UID2] [varchar](12) NULL,
	[UID3] [varchar](12) NULL,
	[PANGUARD] [varchar](10) NULL,
	[UIDGUARD] [varchar](12) NULL,
	[FILLER31] [varchar](25) NULL,
	[FILLER32] [varchar](25) NULL,
	[FILLER33] [varchar](25) NULL,
	[FILLER34] [varchar](25) NULL,
	[FILLER35] [varchar](25) NULL,
	[BO_RGESS_FLAG] [varchar](1) NULL,
	[FILLER36] [varchar](1) NULL,
	[FILLER37] [varchar](1) NULL,
	[FILLER38] [varchar](1) NULL,
	[FILLER39] [varchar](1) NULL,
	[MasterUniqNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iepftypecextrafieldsfromexcel]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iepftypecextrafieldsfromexcel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DP_TYPE] [varchar](8) NULL,
	[NAME1] [varchar](100) NULL,
	[NAME2] [varchar](100) NULL,
	[NAME3] [varchar](100) NULL,
	[Filler] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[ISIN] [varchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iepftypecoutNSDL]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iepftypecoutNSDL](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rem] [varchar](500) NULL,
	[BATCH_NO] [varchar](8) NULL,
	[RECORD_NO] [varchar](2) NULL,
	[RTAINTREFNO] [varchar](16) NULL,
	[SRBPID] [varchar](8) NULL,
	[TOTRECINHD] [varchar](7) NULL,
	[BATCH_STATUS] [varchar](1) NULL,
	[CRDRSIMIND] [varchar](1) NULL,
	[BPINSTRID] [varchar](14) NULL,
	[EXEC_DATE] [varchar](8) NULL,
	[TOTCRQTY] [varchar](18) NULL,
	[TOTCRACCQTY] [varchar](18) NULL,
	[TOTCRREJQTY] [varchar](18) NULL,
	[TOTCRLOCKQTY] [varchar](18) NULL,
	[TOTDRQTY] [varchar](18) NULL,
	[TOTDRACCQTY] [varchar](18) NULL,
	[TOTDRREJQTY] [varchar](18) NULL,
	[TOTDRLOCKQTY] [varchar](18) NULL,
	[CURRBUS_DT] [datetime] NULL,
	[USERID_IMP] [varchar](8) NULL,
	[FILLER01] [varchar](3) NULL,
	[MASTERUNIQNO] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iepftypedDist]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iepftypedDist](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[ISIN] [varchar](12) NULL,
	[DRCRINDICATOR] [varchar](1) NULL,
	[From_DistNo_NSDL] [varchar](18) NULL,
	[To_DistNo_NSDL] [varchar](18) NULL,
	[Quantity] [varchar](18) NULL,
	[Flag_Status_DN_Range] [varchar](2) NULL,
	[CA_Type] [varchar](4) NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iepftypedDt]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iepftypedDt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[Credit_DP_ID] [varchar](8) NULL,
	[Credit_Client_ID] [varchar](8) NULL,
	[CrClient_AccCat] [varchar](2) NULL,
	[Debit_DP_ID] [varchar](8) NULL,
	[Debit_Client_ID] [varchar](8) NULL,
	[DrClient_AccCat] [varchar](2) NULL,
	[Cr_Qty] [varchar](18) NULL,
	[Dr_Qty] [varchar](18) NULL,
	[CrQty_LinReasonCd] [varchar](2) NULL,
	[CrQty_Lin_RelDt] [datetime] NULL,
	[DrQty_LinReasonCd] [varchar](2) NULL,
	[DrQty_Lin_RelDt] [datetime] NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iepftypedHd]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iepftypedHd](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Identification] [varchar](2) NULL,
	[File_Identification] [varchar](7) NULL,
	[RTA_IntRefNo] [varchar](16) NULL,
	[Credit_ISIN] [varchar](12) NULL,
	[Debit_ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](4) NULL,
	[BApproval_Dt] [datetime] NULL,
	[CA_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[TotCrQty_FLinBl] [varchar](18) NULL,
	[TotDrQty_FLinBl] [varchar](18) NULL,
	[TotCrQty_Lin] [varchar](18) NULL,
	[TotDrQty_Lin] [varchar](18) NULL,
	[Tot_detrec] [varchar](7) NULL,
	[CIN_BCIN_No] [varchar](21) NULL,
	[FY_WAmtRel] [varchar](7) NULL,
	[CDT] [datetime] NULL,
	[MasterUniqNo] [int] NULL,
	[processedflag] [varchar](1) NULL,
	[inw_dt] [datetime] NULL,
	[company_name] [varchar](100) NULL,
	[typeofca] [varchar](50) NULL,
	[ca_description1] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ifinalupl]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ifinalupl](
	[itemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iitemp1]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iitemp1](
	[itemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iitemp2]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iitemp2](
	[itemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iitemp3]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iitemp3](
	[Itemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inoogarecon]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inoogarecon](
	[slno] [int] NULL,
	[isin] [varchar](12) NULL,
	[companyname] [varchar](75) NULL,
	[mov_date] [varchar](10) NULL,
	[nsdl_cb] [int] NULL,
	[cdsl_cb] [int] NULL,
	[phy_cb1] [int] NULL,
	[phy_cb2] [int] NULL,
	[remarks] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[isinmaster]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[isinmaster](
	[id] [int] NULL,
	[isin] [varchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[justnow]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[justnow](
	[remsource] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[justnow2]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[justnow2](
	[remsource] [varchar](1000) NULL,
	[FileName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mast_Nsdl_Security_Status]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mast_Nsdl_Security_Status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[security_status] [varchar](2) NULL,
	[security_status_Desc] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mast_Nsdl_Security_Type]    Script Date: 22-02-2024 19:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mast_Nsdl_Security_Type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[security_type] [varchar](2) NULL,
	[security_type_Desc] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mast51file]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mast51file](
	[Remsource] [varchar](250) NULL,
	[Type_id] [varchar](2) NULL,
	[Line_no] [varchar](7) NULL,
	[Date2] [datetime] NULL,
	[Filler1] [varchar](4) NULL,
	[isin_no] [varchar](12) NULL,
	[Shares] [varchar](18) NULL,
	[Date3] [datetime] NULL,
	[Date4] [datetime] NULL,
	[Date5] [datetime] NULL,
	[Filler2] [varchar](1) NULL,
	[Idtfiletype] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mast90file]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mast90file](
	[Remsource] [varchar](250) NULL,
	[Type_id] [varchar](2) NULL,
	[Line_no] [varchar](7) NULL,
	[Date2] [datetime] NULL,
	[Filler1] [varchar](4) NULL,
	[isin_no] [varchar](12) NULL,
	[Shares] [varchar](18) NULL,
	[Date3] [datetime] NULL,
	[Date4] [datetime] NULL,
	[Date5] [datetime] NULL,
	[Filler2] [varchar](1) NULL,
	[Idtfiletype] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MASTCDSL02DT]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTCDSL02DT](
	[ISIN_Numeric_Code] [varchar](20) NULL,
	[ISIN_Alpha_Code] [varchar](100) NULL,
	[ISIN_Short_Name] [varchar](100) NULL,
	[ISIN_Description] [varchar](300) NULL,
	[Issuer_ID] [varchar](10) NULL,
	[Issuer_Name] [varchar](200) NULL,
	[Issuer_Address_1] [varchar](100) NULL,
	[Issuer_Address_2] [varchar](100) NULL,
	[Issuer_Address_3] [varchar](100) NULL,
	[Issuer_City] [varchar](100) NULL,
	[Issuer_State] [varchar](100) NULL,
	[Issuer_Country] [varchar](100) NULL,
	[Issuer_Zip_Code] [varchar](100) NULL,
	[Issuer_Phone_1] [varchar](100) NULL,
	[Issuer_Phone_2] [varchar](100) NULL,
	[Issuer_Fax] [varchar](100) NULL,
	[Issuer_Email] [varchar](200) NULL,
	[Issuer_Contact_Person_Name] [varchar](100) NULL,
	[Contact_Person_Designation] [varchar](100) NULL,
	[Contact_Person_Address_1] [varchar](100) NULL,
	[Contact_Person_Address_2] [varchar](100) NULL,
	[Contact_Person_Address_3] [varchar](100) NULL,
	[Contact_Person_City] [varchar](100) NULL,
	[Contact_Person_State] [varchar](100) NULL,
	[Contact_Person_Country] [varchar](100) NULL,
	[Contact_Person_Zip_Code] [varchar](100) NULL,
	[Contact_Person_Phone_1] [varchar](100) NULL,
	[Contact_Person_Phone_2] [varchar](100) NULL,
	[Contact_Person_Fax] [varchar](100) NULL,
	[Contact_Person_Email] [varchar](200) NULL,
	[RTA_ID] [varchar](10) NULL,
	[RTA_Name] [varchar](200) NULL,
	[SEBI_Registration_From_Date] [varchar](10) NULL,
	[SEBI_Registration_To_Date] [varchar](100) NULL,
	[RTA_Address_1] [varchar](100) NULL,
	[RTA_Address_2] [varchar](100) NULL,
	[RTA_Address_3] [varchar](100) NULL,
	[RTA_City] [varchar](100) NULL,
	[RTA_State] [varchar](100) NULL,
	[RTA_Country] [varchar](100) NULL,
	[RTA_Zip_Code] [varchar](100) NULL,
	[RTA_Phone_1] [varchar](100) NULL,
	[RTA_Phone_2] [varchar](100) NULL,
	[RTA_Fax] [varchar](100) NULL,
	[RTA_Email] [varchar](100) NULL,
	[ISIN_Share_Name] [varchar](200) NULL,
	[ISIN_Second_Name] [varchar](100) NULL,
	[ISIN_Last_Name] [varchar](100) NULL,
	[ISIN_Address_1] [varchar](100) NULL,
	[ISIN_Address_2] [varchar](100) NULL,
	[ISIN_Address_3] [varchar](100) NULL,
	[ISIN_City] [varchar](100) NULL,
	[ISIN_State] [varchar](100) NULL,
	[ISIN_Country] [varchar](100) NULL,
	[ISIN_Zip_Code] [varchar](100) NULL,
	[ISIN_Phone_1] [varchar](100) NULL,
	[ISIN_Phone_2] [varchar](100) NULL,
	[ISIN_Fax] [varchar](100) NULL,
	[ISIN_Email] [varchar](200) NULL,
	[Security_Type] [varchar](10) NULL,
	[Security_Type_Description] [varchar](100) NULL,
	[Market_Type] [varchar](10) NULL,
	[Market_Type_Description] [varchar](100) NULL,
	[ISIN_Status] [varchar](100) NULL,
	[ISIN_Status_Description] [varchar](100) NULL,
	[Hold_Demat_Flag] [varchar](10) NULL,
	[Hold_Remat_Flag] [varchar](10) NULL,
	[Expiry_Dt] [varchar](12) NULL,
	[Market_Lot] [varchar](10) NULL,
	[CFI_Code] [varchar](10) NULL,
	[Par_Value] [varchar](18) NULL,
	[Paidup_Value] [varchar](18) NULL,
	[Redemption_Price] [varchar](18) NULL,
	[Redemption_Date] [varchar](12) NULL,
	[Close_Price] [varchar](18) NULL,
	[Close_Date] [varchar](12) NULL,
	[Issue_Date] [varchar](12) NULL,
	[Close_Price_Decimal_Indicator] [varchar](10) NULL,
	[Conversion_Date] [varchar](12) NULL,
	[Distinct_Range_Exists] [varchar](10) NULL,
	[ISIN_Decimal_Code] [varchar](10) NULL,
	[ISIN_Decimal_Code_Description] [varchar](100) NULL,
	[ISIN_Suspension_Flag] [varchar](200) NULL,
	[ISIN_Suspension_Flag_Description] [varchar](100) NULL,
	[Money_Due_Date] [varchar](12) NULL,
	[Liquidation_Winding_Up_Status] [varchar](200) NULL,
	[Remarks] [varchar](200) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_Alloc_Allot_Desc]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_Alloc_Allot_Desc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AACode] [varchar](4) NULL,
	[AADesc] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_CA_Type_Normal]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_CA_Type_Normal](
	[cacode] [varchar](4) NULL,
	[cadesc] [varchar](50) NULL,
	[DEPFlag] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_CA_Type_Simul]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_CA_Type_Simul](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cacode] [varchar](4) NULL,
	[cadesc] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[master_LockinReason_CDSLIEPF]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[master_LockinReason_CDSLIEPF](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Lin_Code] [varchar](2) NULL,
	[lin_Reason] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MASTER_NSDL_SECURITY_STATUS]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTER_NSDL_SECURITY_STATUS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[security_status] [varchar](2) NULL,
	[security_status_Desc] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MASTER_NSDL_SECURITY_TYPE]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTER_NSDL_SECURITY_TYPE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[security_type] [varchar](2) NULL,
	[security_type_Desc] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_Occupation_IEPFCDSL]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_Occupation_IEPFCDSL](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Occ_Code] [varchar](2) NULL,
	[Occ_Desc] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MASTERACCOUNTSTATUS]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTERACCOUNTSTATUS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[deptype] [varchar](4) NULL,
	[account_status] [varchar](2) NULL,
	[Status_Description] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[masterbendem630_dt]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[masterbendem630_dt](
	[Filler01] [varchar](2) NULL,
	[DP_ID] [varchar](8) NULL,
	[Filler02] [varchar](2) NULL,
	[Client_ID] [varchar](8) NULL,
	[Filler03] [varchar](2) NULL,
	[First_holder_Name] [varchar](250) NULL,
	[Filler04] [varchar](2) NULL,
	[First_Holder_PAN] [varchar](30) NULL,
	[Filler05] [varchar](2) NULL,
	[First_Holder_PAN_status] [varchar](8) NULL,
	[Filler06] [varchar](2) NULL,
	[Second_Holder_Name] [varchar](45) NULL,
	[Filler07] [varchar](2) NULL,
	[Second_Holder_PAN] [varchar](30) NULL,
	[Filler08] [varchar](2) NULL,
	[Second_Holder_PAN_status] [varchar](8) NULL,
	[Filler09] [varchar](2) NULL,
	[Third_Holder_Name] [varchar](45) NULL,
	[Filler10] [varchar](2) NULL,
	[Third_Holder_PAN] [varchar](30) NULL,
	[Filler11] [varchar](2) NULL,
	[Third_Holder_PAN_status] [varchar](8) NULL,
	[Filler12] [varchar](2) NULL,
	[Minor_indicator] [varchar](10) NULL,
	[Filler13] [varchar](2) NULL,
	[Nominee_Guardian_Indicator] [varchar](10) NULL,
	[Filler14] [varchar](2) NULL,
	[Nominee_Guardian_Name] [varchar](45) NULL,
	[Filler15] [varchar](2) NULL,
	[Client_Account_Status] [varchar](13) NULL,
	[Filler16] [varchar](2) NULL,
	[Account_Category] [varchar](13) NULL,
	[Filler17] [varchar](2) NULL,
	[Account_Type] [varchar](5) NULL,
	[Filler18] [varchar](2) NULL,
	[Account_Sub_Type] [varchar](8) NULL,
	[Filler19] [varchar](2) NULL,
	[Ahdealingewhreceipt] [varchar](16) NULL,
	[Filler20] [varchar](2) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masteruniqno] [int] NULL,
	[present_status] [varchar](50) NULL,
	[rem1] [varchar](700) NULL,
	[rem] [varchar](700) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MASTERCDSLBENDEM01_3287]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTERCDSLBENDEM01_3287](
	[ISIN] [varchar](12) NULL,
	[BOID] [varchar](16) NULL,
	[NAME] [varchar](164) NULL,
	[JH1] [varchar](164) NULL,
	[JH2] [varchar](164) NULL,
	[GNAME] [varchar](142) NULL,
	[NNAME] [varchar](142) NULL,
	[FHNAME] [varchar](50) NULL,
	[GENDER] [varchar](1) NULL,
	[DOB] [varchar](11) NULL,
	[ACCSTATUS] [varchar](1) NULL,
	[BOCATEGORY] [varchar](2) NULL,
	[BOPRODUCT] [varchar](2) NULL,
	[CUST_TYPE] [varchar](2) NULL,
	[BOSUBSTATUS] [varchar](4) NULL,
	[OCC] [varchar](4) NULL,
	[PAN1] [varchar](25) NULL,
	[PAN2] [varchar](25) NULL,
	[PAN3] [varchar](25) NULL,
	[BOFREEZEFLAG] [varchar](1) NULL,
	[FRZREASONCODE] [varchar](2) NULL,
	[ISINSTAT] [varchar](1) NULL,
	[ACCOPDATE] [varchar](11) NULL,
	[SEBIREGN] [varchar](24) NULL,
	[SEIDNO] [varchar](2) NULL,
	[CHCIDNO] [varchar](6) NULL,
	[CMID] [varchar](8) NULL,
	[TRID] [varchar](8) NULL,
	[RBIREGN] [varchar](30) NULL,
	[RBIAPRDATE] [varchar](11) NULL,
	[TDSNO] [varchar](2) NULL,
	[Nationality] [varchar](3) NULL,
	[BOADD1] [varchar](55) NULL,
	[BOADD2] [varchar](55) NULL,
	[BOADD3] [varchar](55) NULL,
	[BOCITY] [varchar](25) NULL,
	[BOSTATE] [varchar](25) NULL,
	[BOCOUNTRY] [varchar](25) NULL,
	[BOPIN] [varchar](10) NULL,
	[PBOADD1] [varchar](55) NULL,
	[PBOADD2] [varchar](55) NULL,
	[PBOADD3] [varchar](55) NULL,
	[PBOCITY] [varchar](25) NULL,
	[PBOSTATE] [varchar](25) NULL,
	[PBOCOUNTRY] [varchar](25) NULL,
	[PBOPIN] [varchar](10) NULL,
	[MOBILE1] [varchar](17) NULL,
	[TEL1] [varchar](17) NULL,
	[FAXNO] [varchar](17) NULL,
	[EMAILID] [varchar](100) NULL,
	[ECSFLAG] [varchar](1) NULL,
	[DIVMICR] [varchar](12) NULL,
	[DIVIFSC] [varchar](12) NULL,
	[BANKNAME] [varchar](100) NULL,
	[BANKADD1] [varchar](40) NULL,
	[BANKADD2] [varchar](40) NULL,
	[BANKADD3] [varchar](40) NULL,
	[BANKCITY] [varchar](25) NULL,
	[BANKSTATE] [varchar](25) NULL,
	[BANKCOUNTRY] [varchar](25) NULL,
	[BANKPIN] [varchar](10) NULL,
	[DIVBANKCUR] [varchar](6) NULL,
	[DIVBKACTYPE] [varchar](5) NULL,
	[DIVBKACCNO] [varchar](20) NULL,
	[TOTHOLD] [varchar](22) NULL,
	[TOTLOCKIN] [varchar](22) NULL,
	[PLEDGEBAL] [varchar](22) NULL,
	[SAFEKEEPBAL] [varchar](22) NULL,
	[EARMARKBAL] [varchar](22) NULL,
	[PDREMATCONF] [varchar](22) NULL,
	[FREEBALANCE] [varchar](22) NULL,
	[PDEMATV] [varchar](22) NULL,
	[PDEMACONF] [varchar](22) NULL,
	[DOBENPOS] [varchar](8) NULL,
	[PLEDGESBAL] [varchar](22) NULL,
	[REMAGALINBAL] [varchar](22) NULL,
	[ARFLAG] [varchar](1) NULL,
	[UID1] [varchar](15) NULL,
	[UID2] [varchar](15) NULL,
	[UID3] [varchar](15) NULL,
	[PANGUARD] [varchar](10) NULL,
	[UDIGUARD] [varchar](15) NULL,
	[CUSTPMSEMAIL] [varchar](100) NULL,
	[LEI] [varchar](20) NULL,
	[LEIEXPDT] [varchar](8) NULL,
	[FILLER1] [varchar](25) NULL,
	[BORGESSFLAG] [varchar](1) NULL,
	[MOOPERA] [varchar](1) NULL,
	[COMMPRE] [varchar](1) NULL,
	[FILLER2] [varchar](1) NULL,
	[FILLER3] [varchar](1) NULL,
	[NOMGNAME1] [varchar](142) NULL,
	[NOMRELA1] [varchar](2) NULL,
	[NOMPERC1] [varchar](5) NULL,
	[NOM2NAME] [varchar](142) NULL,
	[NOMGNAME2] [varchar](142) NULL,
	[NOMRELA2] [varchar](2) NULL,
	[NOMPERC2] [varchar](5) NULL,
	[NOM3NAME] [varchar](142) NULL,
	[NOMGNAME3] [varchar](142) NULL,
	[NOMRELA3] [varchar](2) NULL,
	[NOMPERC3] [varchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MASTERCLIENTTYPESUBTYPE]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTERCLIENTTYPESUBTYPE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CL_TYPESTYPE_CODE] [varchar](4) NULL,
	[CL_TYPESTYPE_DESC] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MASTERFROZENFLAGCDSL]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTERFROZENFLAGCDSL](
	[FREEZE_FLAG] [varchar](1) NULL,
	[FREEZE_FLAG_DESC] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MASTNSDL01]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTNSDL01](
	[rem] [varchar](1000) NULL,
	[Record_Type] [varchar](2) NULL,
	[Line_Number] [varchar](7) NULL,
	[ISIN] [varchar](12) NULL,
	[National_Security_Code] [varchar](9) NULL,
	[Booking_Basis] [varchar](2) NULL,
	[ISIN_Short_Name] [varchar](140) NULL,
	[Company_Code] [varchar](8) NULL,
	[Company_Name] [varchar](140) NULL,
	[Security_Type] [varchar](2) NULL,
	[Security_Sub_Type] [varchar](2) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Maturity_Date] [varchar](8) NULL,
	[Convert_Date] [varchar](8) NULL,
	[Face_Value] [varchar](15) NULL,
	[Convert_Amount] [varchar](15) NULL,
	[Share_Registrar_Code] [varchar](8) NULL,
	[Share_Registrar_Name] [varchar](140) NULL,
	[Security_Status] [varchar](2) NULL,
	[Security_Remark] [varchar](60) NULL,
	[Decimal_allowed] [varchar](1) NULL,
	[Creation_Date] [varchar](8) NULL,
	[Last_Update_date] [varchar](8) NULL,
	[Security_Status_Description] [varchar](30) NULL,
	[Security_Type_Description] [varchar](30) NULL,
	[vslno] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MASTNSDL01HD]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTNSDL01HD](
	[rem] [varchar](1000) NULL,
	[Record_Type] [varchar](2) NULL,
	[DP_ID] [varchar](8) NULL,
	[Full_Incremental_Flag] [varchar](1) NULL,
	[Incremental_RefDateTime] [varchar](14) NULL,
	[Statement_Preparation_Datetime] [varchar](14) NULL,
	[Total_number_of_Detail_Records] [varchar](7) NULL,
	[Filler] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MASTNSDL02]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTNSDL02](
	[rem] [varchar](100) NULL,
	[Record_Type] [varchar](2) NULL,
	[DP_ID] [varchar](8) NULL,
	[Full_Incremental_Flag] [varchar](1) NULL,
	[Incremental_RefDateTime] [varchar](14) NULL,
	[Statement_Preparation_Date] [varchar](8) NULL,
	[Statement_Preparation_Time] [varchar](6) NULL,
	[Total_number_of_Detail_Records] [varchar](7) NULL,
	[Filler] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MASTNSDL02DT]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTNSDL02DT](
	[rem] [varchar](1000) NULL,
	[Record_Type] [varchar](2) NULL,
	[Line_Number] [varchar](7) NULL,
	[ISIN] [varchar](12) NULL,
	[National_Security_Code] [varchar](9) NULL,
	[Booking_Basis] [varchar](2) NULL,
	[ISIN_Short_Name] [varchar](140) NULL,
	[Company_Code] [varchar](8) NULL,
	[Company_Name] [varchar](140) NULL,
	[Security_Type] [varchar](2) NULL,
	[Security_Sub_Type] [varchar](2) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Maturity_Date] [varchar](8) NULL,
	[Convert_Date] [varchar](8) NULL,
	[Face_Value] [varchar](15) NULL,
	[Convert_Amount] [varchar](15) NULL,
	[Share_Registrar_Code] [varchar](8) NULL,
	[Share_Registrar_Name] [varchar](140) NULL,
	[Security_Status] [varchar](2) NULL,
	[Security_Remark] [varchar](60) NULL,
	[Decimal_allowed] [varchar](1) NULL,
	[Creation_Date] [varchar](8) NULL,
	[Last_Update_date] [varchar](8) NULL,
	[Security_Status_Description] [varchar](30) NULL,
	[Security_Type_Description] [varchar](30) NULL,
	[vslno] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mft1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mft1](
	[opentexta] [varchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonthlyCAReport01]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonthlyCAReport01](
	[VCA] [varchar](10) NULL,
	[Inw_Dt] [datetime] NULL,
	[Isin] [varchar](12) NULL,
	[Co_Name] [varchar](100) NULL,
	[CA_Type] [varchar](100) NULL,
	[CA_Description] [varchar](100) NULL,
	[Tot_Records] [varchar](18) NULL,
	[Quantity] [varchar](18) NULL,
	[Exec_Dt] [datetime] NULL,
	[masteruniqno] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MutualFunddt01]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MutualFunddt01](
	[mfdt01_id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Id] [varchar](2) NULL,
	[File_ident] [nvarchar](7) NULL,
	[RTA_Int_No] [varchar](16) NULL,
	[DRCR_Ind] [varchar](1) NULL,
	[ISIN] [varchar](12) NULL,
	[CAType] [varchar](4) NULL,
	[Allot_dt] [datetime] NULL,
	[Allocation_Desc] [varchar](4) NULL,
	[Exec_Dt] [datetime] NULL,
	[TotAllQty_FL] [varchar](18) NULL,
	[TotAllQty_L] [varchar](18) NULL,
	[Tot_Ded_Rec] [varchar](7) NULL,
	[TotIssued_Amt] [varchar](18) NULL,
	[TotPaidup_Amt] [varchar](18) NULL,
	[StampDuty_Payable] [varchar](1) NULL,
	[Basis_Calc_SD] [varchar](2) NULL,
	[Filler2] [varchar](6) NULL,
	[MasterUniqNo] [int] NULL,
	[processedflag] [varchar](1) NULL,
	[inward_dt] [datetime] NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[mfdt01_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MutualFunddt02]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MutualFunddt02](
	[mfdt02_id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Id] [varchar](2) NULL,
	[Dt_Line_No] [varchar](7) NULL,
	[DPID] [varchar](8) NULL,
	[CLID] [varchar](8) NULL,
	[CL_Acc_Cat] [varchar](2) NULL,
	[AllQty] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Dt] [datetime] NULL,
	[Iss_Price] [varchar](18) NULL,
	[Iss_Amt] [varchar](18) NULL,
	[Paidup_Price] [varchar](18) NULL,
	[Paidup_Amt] [varchar](18) NULL,
	[Filler3] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL,
	[processedflag] [varchar](1) NULL,
	[inward_dt] [datetime] NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[mfdt02_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MutualFundhd00]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MutualFundhd00](
	[mfhd00_id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Id] [varchar](2) NULL,
	[Batch_No] [varchar](7) NULL,
	[Shr_ID] [varchar](8) NULL,
	[Tot_CA_Orders] [varchar](5) NULL,
	[Sender_Dt] [datetime] NULL,
	[Filler1] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL,
	[processedflag] [varchar](1) NULL,
	[inward_dt] [datetime] NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[mfhd00_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nbovname]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nbovname](
	[Column 0] [varchar](5000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCA_DUPCHK01]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCA_DUPCHK01](
	[clid] [varchar](8) NULL,
	[name] [varchar](50) NULL,
	[units] [varchar](18) NULL,
	[DUPLICATES_TIMES] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCA_DUPCHK01DN]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCA_DUPCHK01DN](
	[distfrom] [varchar](18) NULL,
	[distto] [varchar](18) NULL,
	[shares] [varchar](18) NULL,
	[DUPLICATES_TIMES] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCA_DUPCHK01DNCHK]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCA_DUPCHK01DNCHK](
	[CNT] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCA_DUPCHKF01]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCA_DUPCHKF01](
	[clid] [varchar](8) NULL,
	[name] [varchar](50) NULL,
	[units] [varchar](18) NULL,
	[DUPLICATES_TIMES] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCA_MUNO01]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCA_MUNO01](
	[MMUNO] [int] NULL,
	[id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nca01out]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nca01out](
	[rem] [varchar](1000) NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [varchar](8) NULL,
	[Issue_Price] [varchar](18) NULL,
	[Issued_Amount] [varchar](18) NULL,
	[Paidup_Price] [varchar](18) NULL,
	[Paidup_Amount] [varchar](18) NULL,
	[Filler] [varchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nca02out]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nca02out](
	[rem] [varchar](1000) NULL,
	[Record_IDentification] [varchar](2) NULL,
	[File_IDentification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Debit_Credit_Indicator] [varchar](1) NULL,
	[ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](12) NULL,
	[Allotment_Date] [varchar](8) NULL,
	[Allocation_Allotment_Description] [varchar](4) NULL,
	[Execution_Date] [varchar](8) NULL,
	[Total_Allotted_Quantity_Free_Lockin] [varchar](18) NULL,
	[Total_Allotted_Quantity_Lockin] [varchar](18) NULL,
	[Total_No_detail_records] [varchar](7) NULL,
	[Total_Issued_Amount] [varchar](18) NULL,
	[Total_Paidup_Amount] [varchar](18) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[Basis_calculation_Stamp_Duty] [varchar](2) NULL,
	[EBP_Name] [varchar](2) NULL,
	[Funds_collected_through] [varchar](2) NULL,
	[Filler] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCADUPCHKFILE]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCADUPCHKFILE](
	[CNT] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCADUPCHKFILEF]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCADUPCHKFILEF](
	[CNT] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ncaf_muno01]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ncaf_muno01](
	[MMUNO] [int] NULL,
	[id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ncidata]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ncidata](
	[isin] [varchar](12) NULL,
	[depflag] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ncidatau]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ncidatau](
	[isin] [varchar](12) NULL,
	[depflag] [varchar](2) NULL,
	[issuer_id] [varchar](10) NULL,
	[issue_date] [varchar](12) NULL,
	[redemption_date] [varchar](12) NULL,
	[expiry_date] [varchar](12) NULL,
	[close_date] [varchar](12) NULL,
	[conversion_date] [varchar](12) NULL,
	[company_name] [varchar](100) NULL,
	[money_due_date] [varchar](12) NULL,
	[ISIN_Numeric_Code] [varchar](10) NULL,
	[Security_Type] [varchar](10) NULL,
	[ISIN_Suspension_Flag_Description] [varchar](50) NULL,
	[Security_Type_Description] [varchar](50) NULL,
	[Market_Type] [varchar](10) NULL,
	[ISIN_Suspension_Flag] [varchar](50) NULL,
	[Market_Type_Description] [varchar](50) NULL,
	[ISIN_Status] [varchar](50) NULL,
	[ISIN_Status_Description] [varchar](50) NULL,
	[Par_Value] [varchar](20) NULL,
	[security_status_Desc] [varchar](50) NULL,
	[security_type_desc] [varchar](50) NULL,
	[maturity_date] [varchar](20) NULL,
	[creation_date] [varchar](20) NULL,
	[Last_Update_date] [varchar](20) NULL,
	[Security_Status] [varchar](10) NULL,
	[Security_Remark] [varchar](60) NULL,
	[Company_Code] [varchar](10) NULL,
	[Face_Value] [varchar](20) NULL,
	[Convert_Amount] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NEWAIF45]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEWAIF45](
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Issue_Price] [varchar](18) NULL,
	[Issued_Amount] [varchar](18) NULL,
	[Paidup_Price] [varchar](18) NULL,
	[Paidup_Amount] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[newnsdlcos]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[newnsdlcos](
	[rem] [varchar](1000) NULL,
	[Record_Type] [varchar](2) NULL,
	[Line_Number] [varchar](7) NULL,
	[ISIN] [varchar](12) NULL,
	[National_Security_Code] [varchar](9) NULL,
	[Booking_Basis] [varchar](2) NULL,
	[ISIN_Short_Name] [varchar](140) NULL,
	[Company_Code] [varchar](8) NULL,
	[Company_Name] [varchar](140) NULL,
	[Security_Type] [varchar](2) NULL,
	[Security_Sub_Type] [varchar](2) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Maturity_Date] [varchar](8) NULL,
	[Convert_Date] [varchar](8) NULL,
	[Face_Value] [varchar](15) NULL,
	[Convert_Amount] [varchar](15) NULL,
	[Share_Registrar_Code] [varchar](8) NULL,
	[Share_Registrar_Name] [varchar](140) NULL,
	[Security_Status] [varchar](2) NULL,
	[Security_Remark] [varchar](60) NULL,
	[Decimal_allowed] [varchar](1) NULL,
	[Creation_Date] [varchar](8) NULL,
	[Last_Update_date] [varchar](8) NULL,
	[Security_Status_Description] [varchar](30) NULL,
	[Security_Type_Description] [varchar](30) NULL,
	[vslno] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nftemp2]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nftemp2](
	[RowN] [bigint] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NormalCADetailDistRecord]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NormalCADetailDistRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[Debit_Credit_ISIN] [varchar](12) NULL,
	[Debit_Credit_Indicator] [char](1) NULL,
	[From_Distinctive_No_NSDL] [varchar](18) NULL,
	[To_Distinctive_No_NSDL] [varchar](18) NULL,
	[Quantity] [varchar](18) NULL,
	[Flag_status_DN_Range] [varchar](2) NULL,
	[CA_Type] [varchar](4) NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NormalCADetailDistRecordF]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NormalCADetailDistRecordF](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[Debit_Credit_ISIN] [varchar](12) NULL,
	[Debit_Credit_Indicator] [char](1) NULL,
	[From_Distinctive_No_NSDL] [varchar](18) NULL,
	[To_Distinctive_No_NSDL] [varchar](18) NULL,
	[Quantity] [varchar](18) NULL,
	[Flag_status_DN_Range] [varchar](2) NULL,
	[CA_Type] [varchar](4) NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NormalCADetailDistRecordFromExcel]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NormalCADetailDistRecordFromExcel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[Debit_Credit_ISIN] [varchar](12) NULL,
	[Debit_Credit_Indicator] [char](1) NULL,
	[From_Distinctive_No_NSDL] [varchar](18) NULL,
	[To_Distinctive_No_NSDL] [varchar](18) NULL,
	[Quantity] [varchar](18) NULL,
	[Flag_status_DN_Range] [varchar](2) NULL,
	[CA_Type] [varchar](4) NULL,
	[MasterUniqNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NORMALCADETAILDISTRECORDTT]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NORMALCADETAILDISTRECORDTT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[Debit_Credit_ISIN] [varchar](12) NULL,
	[Debit_Credit_Indicator] [char](1) NULL,
	[From_Distinctive_No_NSDL] [varchar](18) NULL,
	[To_Distinctive_No_NSDL] [varchar](18) NULL,
	[Quantity] [varchar](18) NULL,
	[Flag_status_DN_Range] [varchar](2) NULL,
	[CA_Type] [varchar](4) NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NormalCADetailRecord]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NormalCADetailRecord](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [varchar](18) NULL,
	[Issued_Amount] [varchar](18) NULL,
	[Paidup_Price] [varchar](18) NULL,
	[Paidup_Amount] [varchar](18) NULL,
	[Filler] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[FractionFlag] [char](1) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NormalCADetailRecordF]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NormalCADetailRecordF](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [decimal](18, 6) NULL,
	[Issued_Amount] [decimal](18, 2) NULL,
	[Paidup_Price] [decimal](18, 6) NULL,
	[Paidup_Amount] [decimal](18, 2) NULL,
	[Filler] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[FractionFlag] [char](1) NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NormalCADetailRecordfromExcel]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NormalCADetailRecordfromExcel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [varchar](18) NULL,
	[Issued_Amount] [varchar](18) NULL,
	[Paidup_Price] [varchar](18) NULL,
	[Paidup_Amount] [varchar](18) NULL,
	[Filler] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[normalcadetailrecordFtt]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[normalcadetailrecordFtt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [varchar](18) NULL,
	[Issued_Amount] [varchar](18) NULL,
	[Paidup_Price] [varchar](18) NULL,
	[Paidup_Amount] [varchar](18) NULL,
	[Filler] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[FractionFlag] [char](1) NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NORMALCADETAILRECORDMTT]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NORMALCADETAILRECORDMTT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [varchar](18) NULL,
	[Issued_Amount] [varchar](18) NULL,
	[Paidup_Price] [varchar](18) NULL,
	[Paidup_Amount] [varchar](18) NULL,
	[Filler] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[FractionFlag] [char](1) NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NORMALCADETAILRECORDTT]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NORMALCADETAILRECORDTT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [varchar](18) NULL,
	[Issued_Amount] [varchar](18) NULL,
	[Paidup_Price] [varchar](18) NULL,
	[Paidup_Amount] [varchar](18) NULL,
	[Filler] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[FractionFlag] [char](1) NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NormalCAExtraFieldsfromExcel]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NormalCAExtraFieldsfromExcel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DP_TYPE] [varchar](8) NULL,
	[NAME1] [varchar](100) NULL,
	[NAME2] [varchar](100) NULL,
	[NAME3] [varchar](100) NULL,
	[Filler] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[ISIN] [varchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[normalcaFieldsfromKK]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[normalcaFieldsfromKK](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Debit_Credit_Indicator] [varchar](1) NULL,
	[CA_Type] [varchar](12) NULL,
	[Allocation_Allotment_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[Total_Allotted_Quantity_Lockin] [varchar](18) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[Basis_calculation_Stamp_Duty] [varchar](2) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Flag_status_DN_Range] [varchar](2) NULL,
	[MasterUniqNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NormalCAHeaderRecord]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NormalCAHeaderRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[File_IDentification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Debit_Credit_Indicator] [varchar](1) NULL,
	[ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](12) NULL,
	[Allotment_Date] [datetime] NULL,
	[Allocation_Allotment_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[Total_Allotted_Quantity_Free_Lockin] [varchar](18) NULL,
	[Total_Allotted_Quantity_Lockin] [varchar](18) NULL,
	[Total_No_detail_records] [varchar](7) NULL,
	[Total_Issued_Amount] [varchar](18) NULL,
	[Total_Paidup_Amount] [varchar](18) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[Basis_calculation_Stamp_Duty] [varchar](2) NULL,
	[EBP_Name] [varchar](2) NULL,
	[Funds_collected_through] [varchar](2) NULL,
	[Filler] [varchar](2) NULL,
	[MasterUniqNo] [int] NULL,
	[opfv] [decimal](18, 0) NULL,
	[opfvvalue] [decimal](18, 2) NULL,
	[StampDutyPaid] [varchar](18) NULL,
	[Processflag] [varchar](1) NULL,
	[Issue_pr] [varchar](18) NULL,
	[Paidup_pr] [varchar](18) NULL,
	[Stmpparam] [varchar](1) NULL,
	[typeofca] [varchar](50) NULL,
	[company_name] [varchar](100) NULL,
	[Inward_Date] [datetime] NULL,
	[aadesc] [varchar](100) NULL,
	[FractionFlag] [char](1) NULL,
	[Paidup_prFract] [float] NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NormalCAHeaderRecordF]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NormalCAHeaderRecordF](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[File_IDentification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Debit_Credit_Indicator] [varchar](1) NULL,
	[ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](12) NULL,
	[Allotment_Date] [datetime] NULL,
	[Allocation_Allotment_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[Total_Allotted_Quantity_Free_Lockin] [int] NULL,
	[Total_Allotted_Quantity_Lockin] [int] NULL,
	[Total_No_detail_records] [varchar](7) NULL,
	[Total_Issued_Amount] [varchar](18) NULL,
	[Total_Paidup_Amount] [decimal](18, 2) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[Basis_calculation_Stamp_Duty] [varchar](2) NULL,
	[EBP_Name] [varchar](2) NULL,
	[Funds_collected_through] [varchar](2) NULL,
	[Filler] [varchar](2) NULL,
	[MasterUniqNo] [int] NULL,
	[opfv] [decimal](18, 6) NULL,
	[opfvvalue] [decimal](18, 6) NULL,
	[StampDutyPaid] [decimal](18, 2) NULL,
	[Processflag] [varchar](1) NULL,
	[Issue_pr] [decimal](18, 6) NULL,
	[Paidup_pr] [decimal](18, 6) NULL,
	[Stmpparam] [varchar](1) NULL,
	[typeofca] [varchar](50) NULL,
	[company_name] [varchar](100) NULL,
	[Inward_Date] [datetime] NULL,
	[aadesc] [varchar](100) NULL,
	[FractionFlag] [char](1) NULL,
	[Paidup_prFract] [float] NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NormalCAHeaderRecordFromExcel]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NormalCAHeaderRecordFromExcel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[File_IDentification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Debit_Credit_Indicator] [varchar](1) NULL,
	[ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](12) NULL,
	[Allotment_Date] [datetime] NULL,
	[Allocation_Allotment_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[Total_Allotted_Quantity_Free_Lockin] [varchar](18) NULL,
	[Total_Allotted_Quantity_Lockin] [varchar](18) NULL,
	[Total_No_detail_records] [varchar](7) NULL,
	[Total_Issued_Amount] [varchar](18) NULL,
	[Total_Paidup_Amount] [varchar](18) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[Basis_calculation_Stamp_Duty] [varchar](2) NULL,
	[EBP_Name] [varchar](2) NULL,
	[Funds_collected_through] [varchar](2) NULL,
	[Filler] [varchar](2) NULL,
	[MasterUniqNo] [int] NULL,
	[opfv] [decimal](18, 0) NULL,
	[opfvvalue] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[normalcaheaderrecordftt]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[normalcaheaderrecordftt](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[File_IDentification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Debit_Credit_Indicator] [varchar](1) NULL,
	[ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](12) NULL,
	[Allotment_Date] [datetime] NULL,
	[Allocation_Allotment_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[Total_Allotted_Quantity_Free_Lockin] [varchar](18) NULL,
	[Total_Allotted_Quantity_Lockin] [varchar](18) NULL,
	[Total_No_detail_records] [varchar](7) NULL,
	[Total_Issued_Amount] [varchar](18) NULL,
	[Total_Paidup_Amount] [varchar](18) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[Basis_calculation_Stamp_Duty] [varchar](2) NULL,
	[EBP_Name] [varchar](2) NULL,
	[Funds_collected_through] [varchar](2) NULL,
	[Filler] [varchar](2) NULL,
	[MasterUniqNo] [int] NULL,
	[opfv] [decimal](18, 0) NULL,
	[opfvvalue] [decimal](18, 2) NULL,
	[StampDutyPaid] [varchar](18) NULL,
	[Processflag] [varchar](1) NULL,
	[Issue_pr] [varchar](18) NULL,
	[Paidup_pr] [varchar](18) NULL,
	[Stmpparam] [varchar](1) NULL,
	[typeofca] [varchar](50) NULL,
	[company_name] [varchar](100) NULL,
	[Inward_Date] [datetime] NULL,
	[aadesc] [varchar](100) NULL,
	[FractionFlag] [char](1) NULL,
	[Paidup_prFract] [float] NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NormalCAHeaderRecordkk]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NormalCAHeaderRecordkk](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[File_IDentification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Debit_Credit_Indicator] [varchar](1) NULL,
	[ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](12) NULL,
	[Allotment_Date] [datetime] NULL,
	[Allocation_Allotment_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[Total_Allotted_Quantity_Free_Lockin] [varchar](18) NULL,
	[Total_Allotted_Quantity_Lockin] [varchar](18) NULL,
	[Total_No_detail_records] [varchar](7) NULL,
	[Total_Issued_Amount] [varchar](18) NULL,
	[Total_Paidup_Amount] [varchar](18) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[Basis_calculation_Stamp_Duty] [varchar](2) NULL,
	[EBP_Name] [varchar](2) NULL,
	[Funds_collected_through] [varchar](2) NULL,
	[Filler] [varchar](2) NULL,
	[MasterUniqNo] [int] NULL,
	[opfv] [decimal](18, 0) NULL,
	[opfvvalue] [decimal](18, 2) NULL,
	[StampDutyPaid] [varchar](18) NULL,
	[Processflag] [varchar](1) NULL,
	[Issue_pr] [varchar](18) NULL,
	[Paidup_pr] [varchar](18) NULL,
	[Stmpparam] [varchar](1) NULL,
	[typeofca] [varchar](50) NULL,
	[company_name] [varchar](100) NULL,
	[Inward_Date] [datetime] NULL,
	[aadesc] [varchar](100) NULL,
	[FractionFlag] [char](1) NULL,
	[Paidup_prFract] [float] NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[normalcaheaderrecordtt]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[normalcaheaderrecordtt](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[File_IDentification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Debit_Credit_Indicator] [varchar](1) NULL,
	[ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](12) NULL,
	[Allotment_Date] [datetime] NULL,
	[Allocation_Allotment_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[Total_Allotted_Quantity_Free_Lockin] [varchar](18) NULL,
	[Total_Allotted_Quantity_Lockin] [varchar](18) NULL,
	[Total_No_detail_records] [varchar](7) NULL,
	[Total_Issued_Amount] [varchar](18) NULL,
	[Total_Paidup_Amount] [varchar](18) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[Basis_calculation_Stamp_Duty] [varchar](2) NULL,
	[EBP_Name] [varchar](2) NULL,
	[Funds_collected_through] [varchar](2) NULL,
	[Filler] [varchar](2) NULL,
	[MasterUniqNo] [int] NULL,
	[opfv] [decimal](18, 0) NULL,
	[opfvvalue] [decimal](18, 2) NULL,
	[StampDutyPaid] [varchar](18) NULL,
	[Processflag] [varchar](1) NULL,
	[Issue_pr] [varchar](18) NULL,
	[Paidup_pr] [varchar](18) NULL,
	[Stmpparam] [varchar](1) NULL,
	[typeofca] [varchar](50) NULL,
	[company_name] [varchar](100) NULL,
	[Inward_Date] [datetime] NULL,
	[aadesc] [varchar](100) NULL,
	[FractionFlag] [char](1) NULL,
	[Paidup_prFract] [float] NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[normalcareport1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[normalcareport1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [varchar](18) NULL,
	[Issued_Amount] [varchar](18) NULL,
	[Paidup_Price] [varchar](18) NULL,
	[Paidup_Amount] [varchar](18) NULL,
	[Filler] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Debit_Credit_Indicator] [varchar](16) NULL,
	[ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](12) NULL,
	[Allotment_Date] [datetime] NULL,
	[Allocation_Allotment_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[Total_Allotted_Quantity_Free_Lockin] [varchar](18) NULL,
	[Total_Allotted_Quantity_Lockin] [varchar](18) NULL,
	[Total_No_detail_records] [varchar](7) NULL,
	[Total_Issued_Amount] [varchar](18) NULL,
	[Total_Paidup_Amount] [varchar](18) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[Basis_calculation_Stamp_Duty] [varchar](2) NULL,
	[EBP_Name] [varchar](2) NULL,
	[Funds_collected_through] [varchar](2) NULL,
	[StampDutyPaid] [varchar](18) NULL,
	[Processflag] [varchar](1) NULL,
	[Issue_pr] [varchar](18) NULL,
	[Paidup_pr] [varchar](18) NULL,
	[Stmpparam] [varchar](1) NULL,
	[Debit_Credit_ISIN] [varchar](12) NULL,
	[From_Distinctive_No_NSDL] [varchar](18) NULL,
	[To_Distinctive_No_NSDL] [varchar](18) NULL,
	[Quantity] [varchar](18) NULL,
	[Flag_status_DN_Range] [varchar](2) NULL,
	[company_name] [varchar](100) NULL,
	[typeofca] [varchar](50) NULL,
	[inward_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NORMCORPXLSDATA]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NORMCORPXLSDATA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [varchar](18) NULL,
	[Issued_Amount] [varchar](18) NULL,
	[ISIN] [varchar](12) NULL,
	[Allotment_Date] [datetime] NULL,
	[Total_Allotted_Quantity_Free_Lockin] [varchar](18) NULL,
	[Total_Allotted_Quantity_Lockin] [varchar](18) NULL,
	[Total_Issued_Amount] [varchar](18) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[From_Distinctive_No_NSDL] [varchar](18) NULL,
	[To_Distinctive_No_NSDL] [varchar](18) NULL,
	[MastUniqNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nsdbrec]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nsdbrec](
	[nsdlrec] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSDFFIN1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSDFFIN1](
	[FTEMP1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSDFIN1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSDFIN1](
	[FTEMP1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nsdl_DematRemat_Detail02]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nsdl_DematRemat_Detail02](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Rec_Type] [varchar](2) NULL,
	[Line_No] [varchar](7) NULL,
	[Dpid] [varchar](8) NULL,
	[Dr_Indicator] [varchar](1) NULL,
	[Drn_Rrn_Crn] [varchar](14) NULL,
	[Ben_Acno] [varchar](8) NULL,
	[Name1] [varchar](135) NULL,
	[Filler01] [varchar](115) NULL,
	[Name2] [varchar](45) NULL,
	[Name3] [varchar](45) NULL,
	[Free_Lock_Flag] [varchar](1) NULL,
	[Lock_Reas_Code] [varchar](2) NULL,
	[Lock_Reas_Dt] [varchar](8) NULL,
	[Req_Qty] [varchar](18) NULL,
	[Intrefno] [varchar](35) NULL,
	[Instr_Recd_Dt] [varchar](8) NULL,
	[Drc_Recd_Dt] [varchar](8) NULL,
	[Drc_Status] [varchar](2) NULL,
	[Conf_No] [varchar](14) NULL,
	[Conf_Dt] [varchar](8) NULL,
	[Acc_Qty] [varchar](18) NULL,
	[Rej_Qty] [varchar](18) NULL,
	[Conf_Cap_Dt] [varchar](14) NULL,
	[Vr_Dt] [varchar](14) NULL,
	[Inst_Rdt_Dm] [varchar](14) NULL,
	[Conf_Status] [varchar](2) NULL,
	[Rejrej_1] [varchar](4) NULL,
	[Rejrej_2] [varchar](4) NULL,
	[Rejrej_3] [varchar](4) NULL,
	[Rejrej_4] [varchar](4) NULL,
	[No_Certs] [varchar](8) NULL,
	[Allunits_Ind] [varchar](1) NULL,
	[Allunits_Fc_Ind] [varchar](1) NULL,
	[Ben_Type] [varchar](2) NULL,
	[Ben_Subtype] [varchar](2) NULL,
	[Badd1] [varchar](36) NULL,
	[Badd2] [varchar](36) NULL,
	[Badd3] [varchar](36) NULL,
	[Badd4] [varchar](36) NULL,
	[Bpincode] [varchar](10) NULL,
	[Pan1] [varchar](30) NULL,
	[Pan2] [varchar](30) NULL,
	[Pan3] [varchar](30) NULL,
	[Phone1] [varchar](24) NULL,
	[Fhbank_Nm] [varchar](30) NULL,
	[Fhbank_Acc] [varchar](30) NULL,
	[Micr_Code] [varchar](9) NULL,
	[Ifsc] [varchar](11) NULL,
	[Acc_Status] [varchar](10) NULL,
	[Filler02] [varchar](18) NULL,
	[remsource] [varchar](1000) NULL,
	[SourceFilename] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nsdl_DematRemat_Detail03]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nsdl_DematRemat_Detail03](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Rec_Type] [varchar](2) NULL,
	[Line_No] [varchar](7) NULL,
	[Dpid] [varchar](8) NULL,
	[Durr_Ind] [varchar](1) NULL,
	[Drc] [varchar](14) NULL,
	[Ben_Acno] [varchar](8) NULL,
	[Folio] [varchar](20) NULL,
	[Certno] [varchar](18) NULL,
	[Dnrfrom] [varchar](18) NULL,
	[Dnrto] [varchar](18) NULL,
	[Qty] [varchar](18) NULL,
	[Name_Mism_Ind] [varchar](1) NULL,
	[Filler01] [varchar](100) NULL,
	[remsource] [varchar](1000) NULL,
	[SourceFilename] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nsdl_DematRemat_Header01]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nsdl_DematRemat_Header01](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Rec_Type] [varchar](2) NULL,
	[Isin] [varchar](12) NULL,
	[Sr_Bpid] [varchar](8) NULL,
	[Sr_Name] [varchar](135) NULL,
	[Stprep_Date] [varchar](8) NULL,
	[Stprep_Time] [varchar](6) NULL,
	[Tot_Dem_Req] [varchar](18) NULL,
	[Tot_Dem_Acc] [varchar](18) NULL,
	[Tot_Dem_Rej] [varchar](18) NULL,
	[Tot_Dem_Pen] [varchar](18) NULL,
	[Tot_Rem_Req] [varchar](18) NULL,
	[Tot_Rem_Acc] [varchar](18) NULL,
	[Tot_Rem_Rej] [varchar](18) NULL,
	[Tot_Rem_Pen] [varchar](18) NULL,
	[Tot_Repred_Req] [varchar](18) NULL,
	[Tot_Repred_Acc] [varchar](18) NULL,
	[Tot_Repred_Rej] [varchar](18) NULL,
	[Tot_Repred_Pen] [varchar](18) NULL,
	[Tot_Dem_Instr] [varchar](8) NULL,
	[Tot_Rem_Instr] [varchar](8) NULL,
	[Tot_Repred_Instr] [varchar](8) NULL,
	[Tot_PartPen_DemUnits] [varchar](8) NULL,
	[Tot_Partpen_Remat] [varchar](8) NULL,
	[Tot_Partpen_Repred] [varchar](8) NULL,
	[Tot_FullPen_DemUnits] [varchar](8) NULL,
	[Tot_Fullpen_Remat] [varchar](8) NULL,
	[Tot_Fullpen_Repred] [varchar](8) NULL,
	[Tot_Det_Records] [varchar](7) NULL,
	[Full_Inc_Flag] [varchar](1) NULL,
	[Inc_Ref_Dt] [varchar](8) NULL,
	[Filler01] [varchar](10) NULL,
	[remsource] [varchar](1000) NULL,
	[SourceFilename] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nsdl_isin_detail]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nsdl_isin_detail](
	[rem] [varchar](1000) NULL,
	[Record_Type] [varchar](2) NULL,
	[Line_Number] [varchar](7) NULL,
	[ISIN] [varchar](12) NULL,
	[National_Security_Code] [varchar](9) NULL,
	[Booking_Basis] [varchar](2) NULL,
	[ISIN_Short_Name] [varchar](140) NULL,
	[Company_Code] [varchar](8) NULL,
	[Company_Name] [varchar](140) NULL,
	[Security_Type] [varchar](2) NULL,
	[Security_Sub_Type] [varchar](2) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Maturity_Date] [varchar](8) NULL,
	[Convert_Date] [varchar](8) NULL,
	[Face_Value] [varchar](15) NULL,
	[Convert_Amount] [varchar](15) NULL,
	[Share_Registrar_Code] [varchar](8) NULL,
	[Share_Registrar_Name] [varchar](140) NULL,
	[Security_Status] [varchar](2) NULL,
	[Security_Remark] [varchar](60) NULL,
	[Decimal_allowed] [varchar](1) NULL,
	[Creation_Date] [varchar](8) NULL,
	[Last_Update_date] [varchar](8) NULL,
	[Security_Status_Description] [varchar](30) NULL,
	[Security_Type_Description] [varchar](30) NULL,
	[vslno] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nsdlbenpos2023]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nsdlbenpos2023](
	[Record_Type] [varchar](2) NULL,
	[Line_Number] [varchar](7) NULL,
	[DP_ID] [varchar](8) NULL,
	[Ben_Account_Number] [varchar](8) NULL,
	[Ben_Type] [varchar](2) NULL,
	[Ben_sub_type] [varchar](2) NULL,
	[Ben_Account_Category] [varchar](2) NULL,
	[Ben_Occupation] [varchar](2) NULL,
	[First_Holders_Name_BP_Name] [varchar](250) NULL,
	[First_Holders_Father_Husband_name] [varchar](45) NULL,
	[Ben_Add_Part_1_BP_Addr_1] [varchar](36) NULL,
	[Ben_Add_Part_2_BP_Addr_2] [varchar](36) NULL,
	[Ben_Add_Part_3_BP_Addr_3] [varchar](36) NULL,
	[Ben_Add_Part_4_BP_Addr_4] [varchar](36) NULL,
	[Ben_Add_Pin_code_BP_Pin_Code] [varchar](10) NULL,
	[Ben_Phone_Number_BP_Phone_No] [varchar](24) NULL,
	[Ben_Fax_Number_BP_Fax_No] [varchar](24) NULL,
	[Second_Holders_Name] [varchar](45) NULL,
	[Second_Holders_Father_Husband_name] [varchar](45) NULL,
	[Third_Holders_Name] [varchar](45) NULL,
	[Third_Holders_Father_Husband_name] [varchar](45) NULL,
	[Filler1] [varchar](16) NULL,
	[Filler2] [varchar](54) NULL,
	[First_holders_Income_Tax_PAN] [varchar](30) NULL,
	[Second_holders_Income_Tax_PAN] [varchar](30) NULL,
	[Third_holders_Income_Tax_PAN] [varchar](30) NULL,
	[Nom_Guardian_Indicator] [varchar](1) NULL,
	[Nom_Guardian_Name] [varchar](45) NULL,
	[Nom_Guardian_Add_Part_1] [varchar](36) NULL,
	[Nom_Guardian_Add_Part_2] [varchar](36) NULL,
	[Nom_Guardian_Add_Part_3] [varchar](36) NULL,
	[Nom_Guardian_Add_Part_4] [varchar](36) NULL,
	[Nom_Guardian_Add_Pin_code] [varchar](10) NULL,
	[Date_of_Birth_in_case_of_minor] [varchar](8) NULL,
	[Minor_Indicator] [varchar](1) NULL,
	[Ben_Bank_Account_Number] [varchar](30) NULL,
	[Bank_Name_and_Branch] [varchar](135) NULL,
	[Bank_Add_Part_1] [varchar](36) NULL,
	[Bank_Add_Part_2] [varchar](36) NULL,
	[Bank_Add_Part_3] [varchar](36) NULL,
	[Bank_Add_Part_4] [varchar](36) NULL,
	[Bank_Add_Pin_code] [varchar](10) NULL,
	[RBI_Reference_Number_In_case_of_NRI] [varchar](50) NULL,
	[RBI_Approval_Date_In_case_of_NRI] [varchar](8) NULL,
	[SEBI_Registration_Number] [varchar](24) NULL,
	[Ben_Tax_Deduction_Status] [varchar](20) NULL,
	[Ben_Status] [varchar](2) NULL,
	[Ben_Free_Positions] [varchar](19) NULL,
	[Ben_Lockin_Positions] [varchar](19) NULL,
	[Ben_Block_Positions] [varchar](19) NULL,
	[Ben_Pledged_Positions] [varchar](19) NULL,
	[Ben_Pledged_with_Lockin_Positions] [varchar](19) NULL,
	[Ben_Pledged_Unc_Positions] [varchar](19) NULL,
	[Ben_Un_confirmed_Pledged_with_Lockin_Positions] [varchar](19) NULL,
	[Ben_Remat_Positions] [varchar](19) NULL,
	[Ben_Remat_Lockin_Positions] [varchar](19) NULL,
	[Ben_CM_IDD_Positions] [varchar](19) NULL,
	[CM_Pool_Positions_include_Pooldelivery] [varchar](19) NULL,
	[CC_Settlement_Positions] [varchar](19) NULL,
	[MICR_Code] [varchar](9) NULL,
	[IFSC] [varchar](11) NULL,
	[Bank_Account_Type] [varchar](2) NULL,
	[Filler3] [varchar](30) NULL,
	[First_Holder_Mapin_ID] [varchar](9) NULL,
	[Second_Holder_Mapin_ID] [varchar](9) NULL,
	[Third_Holder_Mapin_ID] [varchar](9) NULL,
	[First_Holder_Email_ID] [varchar](50) NULL,
	[Second_Holder_Email_ID] [varchar](50) NULL,
	[Third_Holder_Email_ID] [varchar](50) NULL,
	[RGESS_Flag] [varchar](1) NULL,
	[Beeficiary_Free_Positions_Hold_due_to_NDU] [varchar](19) NULL,
	[Ben_Lockin_Positions_Hold_due_to_NDU] [varchar](19) NULL,
	[Ben_Unc_Free_Positions_Hold_due_to_NDU] [varchar](19) NULL,
	[Ben_Unc_Lockin_Positions_Hold_due_to_NDU] [varchar](19) NULL,
	[Ben_Add_State_code_BP_State_Code] [varchar](2) NULL,
	[Ben_Add_Country_code_BP_Country_Code] [varchar](3) NULL,
	[LEI_No] [varchar](20) NULL,
	[PAN_Flag_for_First_Holder] [varchar](1) NULL,
	[PAN_Flag_for_Second_Holder] [varchar](1) NULL,
	[PAN_Flag_for_Third_Holder] [varchar](1) NULL,
	[Filler4] [varchar](9) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSDLCDSLISIN]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSDLCDSLISIN](
	[isin_no] [varchar](12) NULL,
	[co_name] [varchar](100) NULL,
	[Depository] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSDLFULLBENDEM]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSDLFULLBENDEM](
	[DP_ID] [varchar](8) NULL,
	[CLNT_ID] [varchar](8) NULL,
	[SOLE_FIRST_HOLDER_NAME] [varchar](100) NULL,
	[SECOND_HOLDER_NAME] [varchar](100) NULL,
	[THIRD_HOLDER_NAME] [varchar](100) NULL,
	[FTHR_HSBND_NAME] [varchar](100) NULL,
	[OCCUPATION] [varchar](5) NULL,
	[BDLS] [varchar](10) NULL,
	[CLNTTYP] [varchar](5) NULL,
	[CATEGORY] [varchar](5) NULL,
	[SUB_T] [varchar](5) NULL,
	[STATUS] [varchar](5) NULL,
	[MNOR_MAJOR] [varchar](5) NULL,
	[BANK_ACC_NO] [varchar](40) NULL,
	[BANK_ACC_TYPE] [varchar](10) NULL,
	[BANK_NAME1] [varchar](50) NULL,
	[MICR_NO] [varchar](20) NULL,
	[IFSC] [varchar](20) NULL,
	[SOLE_FIRST_HOLDER_PAN] [varchar](20) NULL,
	[PAN_STAT] [varchar](5) NULL,
	[SECOND_HOLDER_PAN] [varchar](20) NULL,
	[PAN_STAT1] [varchar](5) NULL,
	[THIRD_HOLDER_PAN] [varchar](20) NULL,
	[PAN_STAT2] [varchar](5) NULL,
	[RBI_AP_DT] [varchar](20) NULL,
	[BCD_RBI_REF] [varchar](25) NULL,
	[BCD_SEBI_RGN] [varchar](20) NULL,
	[CLIENT_ADDRESS1] [varchar](50) NULL,
	[CLIENT_ADDRESS2] [varchar](50) NULL,
	[CLIENT_ADDRESS3] [varchar](50) NULL,
	[CLIENT_ADDRESS4] [varchar](50) NULL,
	[PIN] [varchar](10) NULL,
	[CLIENT_PHONE] [varchar](20) NULL,
	[CLIENT_FAX] [varchar](20) NULL,
	[BANK_ADDRESS1] [varchar](50) NULL,
	[BANK_ADDRESS2] [varchar](50) NULL,
	[BANK_ADDRESS3] [varchar](50) NULL,
	[BANK_ADDRESS4] [varchar](50) NULL,
	[B_PIN] [varchar](20) NULL,
	[CLIENT_INDICATOR] [varchar](5) NULL,
	[FIRST_HOLDER_EMAIL_ID] [varchar](50) NULL,
	[REM] [varchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSDLINCREMENT]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSDLINCREMENT](
	[rem] [varchar](1000) NULL,
	[Record_Type] [varchar](2) NULL,
	[Line_Number] [varchar](7) NULL,
	[ISIN] [varchar](12) NULL,
	[National_Security_Code] [varchar](9) NULL,
	[Booking_Basis] [varchar](2) NULL,
	[ISIN_Short_Name] [varchar](140) NULL,
	[Company_Code] [varchar](8) NULL,
	[Company_Name] [varchar](140) NULL,
	[Security_Type] [varchar](2) NULL,
	[Security_Sub_Type] [varchar](2) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Maturity_Date] [varchar](8) NULL,
	[Convert_Date] [varchar](8) NULL,
	[Face_Value] [varchar](15) NULL,
	[Convert_Amount] [varchar](15) NULL,
	[Share_Registrar_Code] [varchar](8) NULL,
	[Share_Registrar_Name] [varchar](140) NULL,
	[Security_Status] [varchar](2) NULL,
	[Security_Remark] [varchar](60) NULL,
	[Decimal_allowed] [varchar](1) NULL,
	[Creation_Date] [varchar](8) NULL,
	[Last_Update_date] [varchar](8) NULL,
	[Security_Status_Description] [varchar](30) NULL,
	[Security_Type_Description] [varchar](30) NULL,
	[vslno] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSDLISIN_DETAIL]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSDLISIN_DETAIL](
	[rem] [varchar](1000) NULL,
	[Record_Type] [varchar](2) NULL,
	[Line_Number] [varchar](7) NULL,
	[ISIN] [varchar](12) NULL,
	[National_Security_Code] [varchar](9) NULL,
	[Booking_Basis] [varchar](2) NULL,
	[ISIN_Short_Name] [varchar](140) NULL,
	[Company_Code] [varchar](8) NULL,
	[Company_Name] [varchar](140) NULL,
	[Security_Type] [varchar](2) NULL,
	[Security_Sub_Type] [varchar](2) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Maturity_Date] [varchar](8) NULL,
	[Convert_Date] [varchar](8) NULL,
	[Face_Value] [varchar](15) NULL,
	[Convert_Amount] [varchar](15) NULL,
	[Share_Registrar_Code] [varchar](8) NULL,
	[Share_Registrar_Name] [varchar](140) NULL,
	[Security_Status] [varchar](2) NULL,
	[Security_Remark] [varchar](60) NULL,
	[Decimal_allowed] [varchar](1) NULL,
	[Creation_Date] [varchar](8) NULL,
	[Last_Update_date] [varchar](8) NULL,
	[Security_Status_Description] [varchar](30) NULL,
	[Security_Type_Description] [varchar](30) NULL,
	[vslno] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSDLISIN_HEADER]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSDLISIN_HEADER](
	[rem] [varchar](100) NULL,
	[Record_Type] [varchar](2) NULL,
	[DP_ID] [varchar](8) NULL,
	[Full_Incremental_Flag] [varchar](1) NULL,
	[Incremental_RefDateTime] [varchar](14) NULL,
	[Statement_Preparation_Date] [varchar](8) NULL,
	[Statement_Preparation_Time] [varchar](6) NULL,
	[Total_number_of_Detail_Records] [varchar](7) NULL,
	[Filler] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSDLRAWDATA]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSDLRAWDATA](
	[NSDLDATA] [varchar](3000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSDLRECON_MASTER]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSDLRECON_MASTER](
	[rem] [varchar](1000) NULL,
	[Record_Identification] [varchar](2) NULL,
	[File_identification] [varchar](5) NULL,
	[ISIN] [varchar](12) NULL,
	[ISIN_Short_Name] [varchar](140) NULL,
	[Company_Name] [varchar](140) NULL,
	[Flag_for_Decimal_ISIN] [varchar](2) NULL,
	[NSDL_Free_Positions] [varchar](18) NULL,
	[NSDL_Lock_Positions] [varchar](18) NULL,
	[NSDL_Unlock_Bal] [varchar](18) NULL,
	[NSDL_Lock_Bal] [varchar](18) NULL,
	[Pending_Demat_Bal] [varchar](18) NULL,
	[Pending_Remat_free_Bal] [varchar](18) NULL,
	[NSDL_Receipt_transit_Balance] [varchar](18) NULL,
	[Pending_Remat_Lock_Bal] [varchar](18) NULL,
	[NSDL_Delivery_transit_Bal] [varchar](18) NULL,
	[Filler] [varchar](162) NULL,
	[Security_Type] [varchar](2) NULL,
	[Filler1] [varchar](13) NULL,
	[Remarks] [varchar](50) NULL,
	[Remarks1] [varchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nsdlrecon_out]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nsdlrecon_out](
	[ISIN] [varchar](12) NULL,
	[Company_Name] [varchar](140) NULL,
	[NSDL_FREE_POSITIONS1] [bigint] NULL,
	[NSDL_Lock_Positions1] [bigint] NULL,
	[NSDL_Unlock_Bal1] [bigint] NULL,
	[NSDL_Lock_Bal1] [bigint] NULL,
	[Pending_Demat_Bal1] [bigint] NULL,
	[Pending_Remat_free_Bal1] [bigint] NULL,
	[NSDL_Receipt_transit_Balance1] [bigint] NULL,
	[Pending_Remat_Lock_Bal1] [bigint] NULL,
	[NSDL_Delivery_Transit_Bal1] [bigint] NULL,
	[Security_Type] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nsdlrecon2024]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nsdlrecon2024](
	[rem] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSDLRECONTABLE1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSDLRECONTABLE1](
	[ISIN] [varchar](12) NULL,
	[Company_Name] [varchar](140) NULL,
	[NFS] [bigint] NULL,
	[NLP] [bigint] NULL,
	[NUB] [bigint] NULL,
	[NLB] [bigint] NULL,
	[PDB] [bigint] NULL,
	[PRFB] [bigint] NULL,
	[PRLB] [bigint] NULL,
	[NDTB] [bigint] NULL,
	[NRTB] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nsdlstat_master]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nsdlstat_master](
	[status] [varchar](3) NULL,
	[cltype] [varchar](60) NULL,
	[btype] [varchar](3) NULL,
	[cldesc] [varchar](60) NULL,
	[status_btype] [varchar](10) NULL,
	[cltype_desc] [varchar](60) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSDLTOTALFILE]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSDLTOTALFILE](
	[rem] [varchar](1000) NULL,
	[Record_Type] [varchar](2) NULL,
	[Line_Number] [varchar](7) NULL,
	[ISIN] [varchar](12) NULL,
	[National_Security_Code] [varchar](9) NULL,
	[Booking_Basis] [varchar](2) NULL,
	[ISIN_Short_Name] [varchar](140) NULL,
	[Company_Code] [varchar](8) NULL,
	[Company_Name] [varchar](140) NULL,
	[Security_Type] [varchar](2) NULL,
	[Security_Sub_Type] [varchar](2) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Maturity_Date] [varchar](8) NULL,
	[Convert_Date] [varchar](8) NULL,
	[Face_Value] [varchar](15) NULL,
	[Convert_Amount] [varchar](15) NULL,
	[Share_Registrar_Code] [varchar](8) NULL,
	[Share_Registrar_Name] [varchar](140) NULL,
	[Security_Status] [varchar](2) NULL,
	[Security_Remark] [varchar](60) NULL,
	[Decimal_allowed] [varchar](1) NULL,
	[Creation_Date] [varchar](8) NULL,
	[Last_Update_date] [varchar](8) NULL,
	[Security_Status_Description] [varchar](30) NULL,
	[Security_Type_Description] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSDLUNIQUEISIN]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSDLUNIQUEISIN](
	[rem] [varchar](1000) NULL,
	[Record_Type] [varchar](2) NULL,
	[Line_Number] [varchar](7) NULL,
	[ISIN] [varchar](12) NULL,
	[National_Security_Code] [varchar](9) NULL,
	[Booking_Basis] [varchar](2) NULL,
	[ISIN_Short_Name] [varchar](140) NULL,
	[Company_Code] [varchar](8) NULL,
	[Company_Name] [varchar](140) NULL,
	[Security_Type] [varchar](2) NULL,
	[Security_Sub_Type] [varchar](2) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Maturity_Date] [varchar](8) NULL,
	[Convert_Date] [varchar](8) NULL,
	[Face_Value] [varchar](15) NULL,
	[Convert_Amount] [varchar](15) NULL,
	[Share_Registrar_Code] [varchar](8) NULL,
	[Share_Registrar_Name] [varchar](140) NULL,
	[Security_Status] [varchar](2) NULL,
	[Security_Remark] [varchar](60) NULL,
	[Decimal_allowed] [varchar](1) NULL,
	[Creation_Date] [varchar](8) NULL,
	[Last_Update_date] [varchar](8) NULL,
	[Security_Status_Description] [varchar](30) NULL,
	[Security_Type_Description] [varchar](30) NULL,
	[Vccipl_Remarks] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ntemp2]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ntemp2](
	[RowN] [bigint] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ntemp5]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ntemp5](
	[RowN] [bigint] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ntempF1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ntempF1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bnsdlFispr] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NTEMPF2]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NTEMPF2](
	[TOTHAMT] [numeric](38, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NTEMPF3]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NTEMPF3](
	[TOTHISSAMT] [varchar](18) NULL,
	[ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ntempx1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ntempx1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bnsdlispr] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NTEMPx2]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NTEMPx2](
	[TOTHAMT] [numeric](38, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NTEMPx3]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NTEMPx3](
	[TOTHISSAMT] [varchar](18) NULL,
	[ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NTEMPx4]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NTEMPx4](
	[TOTHAMT] [numeric](38, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OLE DB Destination]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OLE DB Destination](
	[SINo] [int] NULL,
	[Folio_Number_Application number] [nvarchar](255) NULL,
	[Name_Of_The_Sole_1St _Contributor] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[PAN_Number] [nvarchar](255) NULL,
	[Class_of_units] [nvarchar](255) NULL,
	[Mode_of_holding] [nvarchar](255) NULL,
	[Bank_Details] [nvarchar](255) NULL,
	[Nominee] [nvarchar](255) NULL,
	[Comments] [nvarchar](255) NULL,
	[CML_Status] [nvarchar](255) NULL,
	[DP_id] [nvarchar](255) NULL,
	[Client_id] [int] NULL,
	[Demat_Account] [nvarchar](255) NULL,
	[SRCFilename] [nvarchar](77) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Othbulkcdsl02]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Othbulkcdsl02](
	[bo_id] [varchar](16) NULL,
	[units] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Othbulkfile01]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Othbulkfile01](
	[dpidclid] [varchar](18) NULL,
	[units] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[othbulkfile02]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[othbulkfile02](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [varchar](18) NULL,
	[Issued_Amount] [varchar](18) NULL,
	[Paidup_Price] [varchar](18) NULL,
	[Paidup_Amount] [varchar](18) NULL,
	[Filler] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[FractionFlag] [char](1) NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[othbulkfile02a]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[othbulkfile02a](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[File_IDentification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Debit_Credit_Indicator] [varchar](1) NULL,
	[ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](12) NULL,
	[Allotment_Date] [datetime] NULL,
	[Allocation_Allotment_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[Total_Allotted_Quantity_Free_Lockin] [varchar](18) NULL,
	[Total_Allotted_Quantity_Lockin] [varchar](18) NULL,
	[Total_No_detail_records] [varchar](7) NULL,
	[Total_Issued_Amount] [varchar](18) NULL,
	[Total_Paidup_Amount] [varchar](18) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[Basis_calculation_Stamp_Duty] [varchar](2) NULL,
	[EBP_Name] [varchar](2) NULL,
	[Funds_collected_through] [varchar](2) NULL,
	[Filler] [varchar](2) NULL,
	[MasterUniqNo] [int] NULL,
	[opfv] [decimal](18, 0) NULL,
	[opfvvalue] [decimal](18, 2) NULL,
	[StampDutyPaid] [varchar](18) NULL,
	[Processflag] [varchar](1) NULL,
	[Issue_pr] [varchar](18) NULL,
	[Paidup_pr] [varchar](18) NULL,
	[Stmpparam] [varchar](1) NULL,
	[typeofca] [varchar](50) NULL,
	[company_name] [varchar](100) NULL,
	[Inward_Date] [datetime] NULL,
	[aadesc] [varchar](100) NULL,
	[FractionFlag] [char](1) NULL,
	[Paidup_prFract] [float] NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[othbulkfile02fff]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[othbulkfile02fff](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [varchar](18) NULL,
	[Issued_Amount] [varchar](18) NULL,
	[Paidup_Price] [varchar](18) NULL,
	[Paidup_Amount] [varchar](18) NULL,
	[Filler] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[FractionFlag] [char](1) NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OUT51]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OUT51](
	[ISIN_NO] [varchar](12) NULL,
	[nooftimes] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OUT90]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OUT90](
	[ISIN_NO] [varchar](12) NULL,
	[nooftimes] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[outf]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[outf](
	[filenameout] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Outfile]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfile](
	[vtemp1] [nvarchar](76) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OUTX]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OUTX](
	[ISIN_NO] [varchar](12) NULL,
	[nooftimes] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OUTZ]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OUTZ](
	[ISIN_NO] [varchar](12) NULL,
	[UNIQLINE] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PY0923T]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PY0923T](
	[Column 0] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ramramnsdl]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ramramnsdl](
	[rem] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[recon_cdslnsdl]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recon_cdslnsdl](
	[Isin_Alpha_Code] [varchar](12) NULL,
	[Isin_Description] [varchar](100) NULL,
	[Confirmation_Status] [varchar](1) NULL,
	[Confirm_Description] [varchar](40) NULL,
	[CDS_Opening_Bal] [varchar](17) NULL,
	[RTA_Opening_Bal] [varchar](17) NULL,
	[CDS_Demat_Confirmation_Bal] [varchar](17) NULL,
	[RTA_Demat_Confirmation_Bal] [varchar](17) NULL,
	[CDS_Remat_Confirmation_Bal] [varchar](17) NULL,
	[RTA_Remat_Confirmation_Bal] [varchar](17) NULL,
	[CDS_Inter_Dep_Trf_IN_balance] [varchar](17) NULL,
	[RTA_Inter_Dep_Trf_IN_balance] [varchar](17) NULL,
	[CDS_Inter_Dep_Trf_OUT_balance] [varchar](17) NULL,
	[RTA_Inter_Dep_Trf_OUT_balance] [varchar](17) NULL,
	[CDS_Corp_Actions_Trf_Additions] [varchar](17) NULL,
	[RTA_Corp_Actions_Trf_Additions] [varchar](17) NULL,
	[CDS_Corp_Actions_Trf_Subtractions] [varchar](17) NULL,
	[RTA_Corp_Actions_Trf_Subtractions] [varchar](17) NULL,
	[CDS_IPO_Additions] [varchar](17) NULL,
	[RTA_IPO_Additions] [varchar](17) NULL,
	[CDS_Closing_bal] [varchar](17) NULL,
	[RTA_Closing_bal] [varchar](17) NULL,
	[Remarks] [varchar](50) NULL,
	[Remarks1] [varchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nsdl_free_positions] [varchar](18) NULL,
	[NSDL_Lock_Positions] [varchar](18) NULL,
	[NSDL_Unlock_Bal] [varchar](18) NULL,
	[NSDL_Lock_Bal] [varchar](18) NULL,
	[Pending_Demat_Bal] [varchar](18) NULL,
	[Pending_Remat_free_Bal] [varchar](18) NULL,
	[Pending_Remat_Lock_Bal] [varchar](18) NULL,
	[NSDL_Delivery_transit_Bal] [varchar](18) NULL,
	[NSDL_Receipt_transit_Balance] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RECON_CMASTER_FILE]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECON_CMASTER_FILE](
	[Isin_Alpha_Code] [varchar](12) NULL,
	[Isin_Description] [varchar](100) NULL,
	[Confirmation_Status] [varchar](1) NULL,
	[Confirm_Description] [varchar](40) NULL,
	[CDS_Opening_Bal] [varchar](17) NULL,
	[RTA_Opening_Bal] [varchar](17) NULL,
	[CDS_Demat_Confirmation_Bal] [varchar](17) NULL,
	[RTA_Demat_Confirmation_Bal] [varchar](17) NULL,
	[CDS_Remat_Confirmation_Bal] [varchar](17) NULL,
	[RTA_Remat_Confirmation_Bal] [varchar](17) NULL,
	[CDS_Inter_Dep_Trf_IN_balance] [varchar](17) NULL,
	[RTA_Inter_Dep_Trf_IN_balance] [varchar](17) NULL,
	[CDS_Inter_Dep_Trf_OUT_balance] [varchar](17) NULL,
	[RTA_Inter_Dep_Trf_OUT_balance] [varchar](17) NULL,
	[CDS_Corp_Actions_Trf_Additions] [varchar](17) NULL,
	[RTA_Corp_Actions_Trf_Additions] [varchar](17) NULL,
	[CDS_Corp_Actions_Trf_Subtractions] [varchar](17) NULL,
	[RTA_Corp_Actions_Trf_Subtractions] [varchar](17) NULL,
	[CDS_IPO_Additions] [varchar](17) NULL,
	[RTA_IPO_Additions] [varchar](17) NULL,
	[CDS_Closing_bal] [varchar](17) NULL,
	[RTA_Closing_bal] [varchar](17) NULL,
	[Remarks] [varchar](50) NULL,
	[Remarks1] [varchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RECON_NMASTER_FILE]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECON_NMASTER_FILE](
	[rem] [varchar](1000) NULL,
	[Record_Identification] [varchar](2) NULL,
	[File_identification] [varchar](5) NULL,
	[ISIN] [varchar](12) NULL,
	[ISIN_Short_Name] [varchar](140) NULL,
	[Company_Name] [varchar](140) NULL,
	[Flag_for_Decimal_ISIN] [varchar](2) NULL,
	[NSDL_Free_Positions] [varchar](18) NULL,
	[NSDL_Lock_Positions] [varchar](18) NULL,
	[NSDL_Unlock_Bal] [varchar](18) NULL,
	[NSDL_Lock_Bal] [varchar](18) NULL,
	[Pending_Demat_Bal] [varchar](18) NULL,
	[Pending_Remat_free_Bal] [varchar](18) NULL,
	[NSDL_Receipt_transit_Balance] [varchar](18) NULL,
	[Pending_Remat_Lock_Bal] [varchar](18) NULL,
	[NSDL_Delivery_transit_Bal] [varchar](18) NULL,
	[Filler] [varchar](162) NULL,
	[Security_Type] [varchar](2) NULL,
	[Filler1] [varchar](13) NULL,
	[Remarks] [varchar](50) NULL,
	[Remarks1] [varchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReconReport]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReconReport](
	[isin] [varchar](12) NULL,
	[companyname] [varchar](75) NULL,
	[mov_date] [varchar](10) NULL,
	[nsdl_cb] [int] NULL,
	[nsdlpos] [bigint] NULL,
	[cdsl_cb] [int] NULL,
	[cdslpos] [varchar](17) NULL,
	[nsdldiff] [bigint] NULL,
	[cdsldiff] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RT9530092023]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RT9530092023](
	[Isin_Alpha_Code] [varchar](50) NULL,
	[Isin_Description] [varchar](250) NULL,
	[Confirmation_Status] [varchar](250) NULL,
	[Confirm_Description] [varchar](250) NULL,
	[CDS_Opening_Bal] [varchar](50) NULL,
	[RTA_Opening_Bal] [varchar](50) NULL,
	[CDS_Demat_Confirmation_Bal] [varchar](50) NULL,
	[RTA_Demat_Confirmation_Bal] [varchar](50) NULL,
	[CDS_Remat_Confirmation_Bal] [varchar](50) NULL,
	[RTA_Remat_Confirmation_Bal] [varchar](50) NULL,
	[CDS_Inter_Dep_Trf_IN_balance] [varchar](50) NULL,
	[RTA_Inter_Dep_Trf_IN_balance] [varchar](50) NULL,
	[CDS_Inter_Dep_Trf_OUT_balance] [varchar](50) NULL,
	[RTA_Inter_Dep_Trf_OUT_balance] [varchar](50) NULL,
	[CDS_Corp_Actions_Trf_Additions] [varchar](50) NULL,
	[RTA_Corp_Actions_Trf_Additions] [varchar](50) NULL,
	[CDS_Corp_Actions_Trf_Subtractions] [varchar](50) NULL,
	[RTA_Corp_Actions_Trf_Subtractions] [varchar](50) NULL,
	[CDS_IPO_Additions] [varchar](50) NULL,
	[RTA_IPO_Additions] [varchar](50) NULL,
	[CDS_Closing_bal] [varchar](50) NULL,
	[RTA_Closing_bal] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sample1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sample1](
	[id] [int] NULL,
	[name] [varchar](40) NULL,
	[joindate] [date] NULL,
	[remarks] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SampleTable]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SampleTable](
	[Id] [int] NULL,
	[CountryName] [nvarchar](100) NULL,
	[ReadStatus] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sf8]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sf8](
	[stemp1] [varchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sfinalupl]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sfinalupl](
	[stemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sfinaluplx]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sfinaluplx](
	[stemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sheet9REC]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sheet9REC](
	[ISIN_Numeric_Code] [float] NULL,
	[ISIN_Alpha_Code] [nvarchar](255) NULL,
	[ISIN_Short_Name] [nvarchar](255) NULL,
	[ISIN_Description] [nvarchar](255) NULL,
	[Issuer_ID] [float] NULL,
	[Issuer_Name] [nvarchar](255) NULL,
	[Issuer_Address_1] [nvarchar](255) NULL,
	[Issuer_Address_2] [nvarchar](255) NULL,
	[Issuer_Address_3] [nvarchar](255) NULL,
	[Issuer_City] [nvarchar](255) NULL,
	[Issuer_State] [nvarchar](255) NULL,
	[Issuer_Country] [nvarchar](255) NULL,
	[Issuer_Zip_Code] [float] NULL,
	[Issuer_Phone_1] [float] NULL,
	[Issuer_Phone_2] [float] NULL,
	[Issuer_Fax] [nvarchar](255) NULL,
	[Issuer_Email] [nvarchar](255) NULL,
	[Issuer_Contact_Person_Name] [nvarchar](255) NULL,
	[Contact_Person_Designation] [nvarchar](255) NULL,
	[Contact_Person_Address_1] [nvarchar](255) NULL,
	[Contact_Person_Address_2] [nvarchar](255) NULL,
	[Contact_Person_Address_3] [nvarchar](255) NULL,
	[Contact_Person_City] [nvarchar](255) NULL,
	[Contact_Person_State] [nvarchar](255) NULL,
	[Contact_Person_Country] [nvarchar](255) NULL,
	[Contact_Person_Zip_Code] [float] NULL,
	[Contact_Person_Phone_1] [float] NULL,
	[Contact_Person_Phone_2] [float] NULL,
	[Contact_Person_Fax] [nvarchar](255) NULL,
	[Contact_Person_Email] [nvarchar](255) NULL,
	[RTA_ID] [float] NULL,
	[RTA_Name] [nvarchar](255) NULL,
	[SEBI_Registration_From_Date] [datetime] NULL,
	[SEBI_Registration_To_Date] [nvarchar](255) NULL,
	[RTA_Address_1] [nvarchar](255) NULL,
	[RTA_Address_2] [nvarchar](255) NULL,
	[RTA_Address_3] [nvarchar](255) NULL,
	[RTA_City] [nvarchar](255) NULL,
	[RTA_State] [nvarchar](255) NULL,
	[RTA_Country] [nvarchar](255) NULL,
	[RTA_Zip_Code] [nvarchar](255) NULL,
	[RTA_Phone_1] [nvarchar](255) NULL,
	[RTA_Phone_2] [nvarchar](255) NULL,
	[RTA_Fax] [nvarchar](255) NULL,
	[RTA_Email] [nvarchar](255) NULL,
	[ISIN_Share_Name] [nvarchar](255) NULL,
	[ISIN_Second_Name] [nvarchar](255) NULL,
	[ISIN_Last_Name] [nvarchar](255) NULL,
	[ISIN_Address_1] [nvarchar](255) NULL,
	[ISIN_Address_2] [nvarchar](255) NULL,
	[ISIN_Address_3] [nvarchar](255) NULL,
	[ISIN_City] [nvarchar](255) NULL,
	[ISIN_State] [nvarchar](255) NULL,
	[ISIN_Country] [nvarchar](255) NULL,
	[ISIN_Zip_Code] [float] NULL,
	[ISIN_Phone_1] [float] NULL,
	[ISIN_Phone_2] [float] NULL,
	[ISIN_Fax] [nvarchar](255) NULL,
	[ISIN_Email] [nvarchar](255) NULL,
	[Security_Type] [float] NULL,
	[Security_Type_Description] [nvarchar](255) NULL,
	[Market_Type] [float] NULL,
	[Market_Type_Description] [nvarchar](255) NULL,
	[ISIN_Status] [nvarchar](255) NULL,
	[ISIN_Status_Description] [nvarchar](255) NULL,
	[Hold_Demat_Flag] [float] NULL,
	[Hold_Remat_Flag] [float] NULL,
	[Expiry_Date] [nvarchar](255) NULL,
	[Market_Lot] [float] NULL,
	[CFI_Code] [float] NULL,
	[Par_Value] [float] NULL,
	[Paidup_Value] [float] NULL,
	[Redemption_Price] [float] NULL,
	[Redemption_Date] [nvarchar](255) NULL,
	[Close_Price] [float] NULL,
	[Close_Date] [nvarchar](255) NULL,
	[Issue_Date] [datetime] NULL,
	[Close_Price_Decimal_Indicator] [float] NULL,
	[Conversion_Date] [nvarchar](255) NULL,
	[Distinct_Range_Exists] [float] NULL,
	[ISIN_Decimal_Code] [float] NULL,
	[ISIN_Decimal_Code_Description] [nvarchar](255) NULL,
	[ISIN_Suspension_Flag] [float] NULL,
	[ISIN_Suspension_Flag_Description] [nvarchar](255) NULL,
	[Money_Due_Date] [nvarchar](255) NULL,
	[Liquidation_Winding_Up_Status] [float] NULL,
	[Remarks] [nvarchar](255) NULL,
	[vslno] [nvarchar](255) NULL,
	[vslno1] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIF_SourceFile]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIF_SourceFile](
	[SINo] [int] NULL,
	[Folio_Number_Application number] [nvarchar](255) NULL,
	[Name_Of_The_Sole_1St _Contributor] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[PAN_Number] [nvarchar](255) NULL,
	[Class_of_units] [nvarchar](255) NULL,
	[Mode_of_holding] [nvarchar](255) NULL,
	[Bank_Details] [nvarchar](255) NULL,
	[Nominee] [nvarchar](255) NULL,
	[Comments] [nvarchar](255) NULL,
	[CML_Status] [nvarchar](255) NULL,
	[DP_id] [nvarchar](255) NULL,
	[Client_id] [int] NULL,
	[Demat_Account] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SimulCADetailDistRecord]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SimulCADetailDistRecord](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[DetRec_Line_No] [varchar](7) NULL,
	[DrCr_ISIN] [varchar](12) NULL,
	[DrCr_Indicator] [varchar](1) NULL,
	[FromDistNo_NSDL] [varchar](18) NULL,
	[ToDistNo_NSDL] [varchar](18) NULL,
	[Quantity] [varchar](18) NULL,
	[Flag_status_DN_Range] [varchar](2) NULL,
	[CA_Code] [varchar](4) NULL,
	[MasterUniqNo] [int] NULL,
	[processedflag] [varchar](1) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SimulCADetailRecord]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SimulCADetailRecord](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[DetRec_Line_No] [varchar](7) NULL,
	[Credit_DP_ID] [varchar](8) NULL,
	[CrClient_ID] [varchar](8) NULL,
	[CrClient_AccCat] [varchar](2) NULL,
	[DrDP_ID] [varchar](8) NULL,
	[DrClient_ID] [varchar](8) NULL,
	[DrClient_AccCat] [varchar](2) NULL,
	[Cr_Quantity] [varchar](18) NULL,
	[Dr_Quantity] [varchar](18) NULL,
	[CrQty_LinRCd] [varchar](2) NULL,
	[CrQty_LnRDt] [datetime] NULL,
	[drQty_LinRCd] [varchar](2) NULL,
	[drQty_LnRDt] [datetime] NULL,
	[IssPraaCr_ISIN] [varchar](18) NULL,
	[IssAmtaaCr_isin] [varchar](18) NULL,
	[PupPraaCr_ISIN] [varchar](18) NULL,
	[PupAmtaaCr_Isin] [varchar](18) NULL,
	[MasterUniqNo] [int] NULL,
	[processedflag] [varchar](1) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SimulCAHeaderRecord]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SimulCAHeaderRecord](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Identification] [varchar](2) NULL,
	[File_Identification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Cr_Isin] [varchar](12) NULL,
	[Dr_Isin] [varchar](12) NULL,
	[Ca_Type] [varchar](4) NULL,
	[Allotment_Dt] [datetime] NULL,
	[Allot_alloc_Desc] [varchar](4) NULL,
	[Execution_dt] [datetime] NULL,
	[TotCrQty_Flin] [varchar](18) NULL,
	[TotDrQty_Flin] [varchar](18) NULL,
	[TotCrQty_Lin] [varchar](18) NULL,
	[TotDrQty_Lin] [varchar](18) NULL,
	[TotDetRec] [varchar](7) NULL,
	[TotIssAmtaa_CrIsin] [varchar](18) NULL,
	[TotpdAmtaa_CrIsin] [varchar](18) NULL,
	[StampDuty_Pay] [varchar](1) NULL,
	[BcStampDuty] [varchar](2) NULL,
	[MasterUniqNo] [int] NULL,
	[issue_pr] [varchar](18) NULL,
	[Paidup_Pr] [varchar](18) NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[inward_dt] [datetime] NULL,
	[typeofca] [varchar](50) NULL,
	[aadesc] [varchar](100) NULL,
	[company_name] [varchar](100) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SimulCAHeaderRecordKK]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SimulCAHeaderRecordKK](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Identification] [varchar](2) NULL,
	[File_Identification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Cr_Isin] [varchar](12) NULL,
	[Dr_Isin] [varchar](12) NULL,
	[Ca_Type] [varchar](4) NULL,
	[Allotment_Dt] [datetime] NULL,
	[Allot_alloc_Desc] [varchar](4) NULL,
	[Execution_dt] [datetime] NULL,
	[TotCrQty_Flin] [varchar](18) NULL,
	[TotDrQty_Flin] [varchar](18) NULL,
	[TotCrQty_Lin] [varchar](18) NULL,
	[TotDrQty_Lin] [varchar](18) NULL,
	[TotDetRec] [varchar](7) NULL,
	[TotIssAmtaa_CrIsin] [varchar](18) NULL,
	[TotpdAmtaa_CrIsin] [varchar](18) NULL,
	[StampDuty_Pay] [varchar](1) NULL,
	[BcStampDuty] [varchar](2) NULL,
	[MasterUniqNo] [int] NULL,
	[issue_pr] [varchar](18) NULL,
	[Paidup_Pr] [varchar](18) NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[inward_dt] [datetime] NULL,
	[typeofca] [varchar](50) NULL,
	[aadesc] [varchar](100) NULL,
	[company_name] [varchar](100) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOURCE1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOURCE1](
	[rem] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Src1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Src1](
	[Column 0] [varchar](50) NULL,
	[Column 1] [varchar](50) NULL,
	[Column 2] [varchar](50) NULL,
	[Column 3] [varchar](50) NULL,
	[Column 4] [varchar](50) NULL,
	[Column 5] [varchar](50) NULL,
	[Column 6] [varchar](50) NULL,
	[Column 7] [varchar](50) NULL,
	[Column 8] [varchar](50) NULL,
	[Column 9] [varchar](50) NULL,
	[Column 10] [varchar](50) NULL,
	[Column 11] [varchar](50) NULL,
	[Column 12] [varchar](50) NULL,
	[Column 13] [varchar](50) NULL,
	[Column 14] [varchar](50) NULL,
	[Column 15] [varchar](50) NULL,
	[Column 16] [varchar](50) NULL,
	[Column 17] [varchar](50) NULL,
	[Column 18] [varchar](50) NULL,
	[Column 19] [varchar](50) NULL,
	[Column 20] [varchar](50) NULL,
	[Column 21] [varchar](50) NULL,
	[Column 22] [varchar](50) NULL,
	[Column 23] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSDT_ErrorinCDSLConv]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSDT_ErrorinCDSLConv](
	[SLNO] [varchar](50) NULL,
	[ISIN] [varchar](50) NULL,
	[DPID] [varchar](50) NULL,
	[CLID2] [varchar](50) NULL,
	[SHARES] [varchar](50) NULL,
	[NAME] [varchar](50) NULL,
	[JH1] [varchar](50) NULL,
	[Allotment Date] [varchar](50) NULL,
	[PaidupValue] [varchar](50) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ssdtNSDLerrorConv]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ssdtNSDLerrorConv](
	[SLNO] [varchar](50) NULL,
	[ISIN] [varchar](50) NULL,
	[DPID] [varchar](50) NULL,
	[CLID2] [varchar](50) NULL,
	[SHARES] [varchar](50) NULL,
	[NAME] [varchar](50) NULL,
	[JH1] [varchar](50) NULL,
	[Allotment Date] [varchar](50) NULL,
	[PaidupValue] [varchar](50) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp_cdsl_isin_Detail]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_cdsl_isin_Detail](
	[ISIN_Numeric_Code] [varchar](20) NULL,
	[ISIN_Alpha_Code] [varchar](100) NULL,
	[ISIN_Short_Name] [varchar](100) NULL,
	[ISIN_Description] [varchar](300) NULL,
	[Issuer_ID] [varchar](10) NULL,
	[Issuer_Name] [varchar](200) NULL,
	[Issuer_Address_1] [varchar](100) NULL,
	[Issuer_Address_2] [varchar](100) NULL,
	[Issuer_Address_3] [varchar](100) NULL,
	[Issuer_City] [varchar](100) NULL,
	[Issuer_State] [varchar](100) NULL,
	[Issuer_Country] [varchar](100) NULL,
	[Issuer_Zip_Code] [varchar](100) NULL,
	[Issuer_Phone_1] [varchar](100) NULL,
	[Issuer_Phone_2] [varchar](100) NULL,
	[Issuer_Fax] [varchar](100) NULL,
	[Issuer_Email] [varchar](200) NULL,
	[Issuer_Contact_Person_Name] [varchar](100) NULL,
	[Contact_Person_Designation] [varchar](100) NULL,
	[Contact_Person_Address_1] [varchar](100) NULL,
	[Contact_Person_Address_2] [varchar](100) NULL,
	[Contact_Person_Address_3] [varchar](100) NULL,
	[Contact_Person_City] [varchar](100) NULL,
	[Contact_Person_State] [varchar](100) NULL,
	[Contact_Person_Country] [varchar](100) NULL,
	[Contact_Person_Zip_Code] [varchar](100) NULL,
	[Contact_Person_Phone_1] [varchar](100) NULL,
	[Contact_Person_Phone_2] [varchar](100) NULL,
	[Contact_Person_Fax] [varchar](100) NULL,
	[Contact_Person_Email] [varchar](200) NULL,
	[RTA_ID] [varchar](10) NULL,
	[RTA_Name] [varchar](200) NULL,
	[SEBI_Registration_From_Date] [varchar](10) NULL,
	[SEBI_Registration_To_Date] [varchar](100) NULL,
	[RTA_Address_1] [varchar](100) NULL,
	[RTA_Address_2] [varchar](100) NULL,
	[RTA_Address_3] [varchar](100) NULL,
	[RTA_City] [varchar](100) NULL,
	[RTA_State] [varchar](100) NULL,
	[RTA_Country] [varchar](100) NULL,
	[RTA_Zip_Code] [varchar](100) NULL,
	[RTA_Phone_1] [varchar](100) NULL,
	[RTA_Phone_2] [varchar](100) NULL,
	[RTA_Fax] [varchar](100) NULL,
	[RTA_Email] [varchar](100) NULL,
	[ISIN_Share_Name] [varchar](200) NULL,
	[ISIN_Second_Name] [varchar](100) NULL,
	[ISIN_Last_Name] [varchar](100) NULL,
	[ISIN_Address_1] [varchar](100) NULL,
	[ISIN_Address_2] [varchar](100) NULL,
	[ISIN_Address_3] [varchar](100) NULL,
	[ISIN_City] [varchar](100) NULL,
	[ISIN_State] [varchar](100) NULL,
	[ISIN_Country] [varchar](100) NULL,
	[ISIN_Zip_Code] [varchar](100) NULL,
	[ISIN_Phone_1] [varchar](100) NULL,
	[ISIN_Phone_2] [varchar](100) NULL,
	[ISIN_Fax] [varchar](100) NULL,
	[ISIN_Email] [varchar](200) NULL,
	[Security_Type] [varchar](10) NULL,
	[Security_Type_Description] [varchar](100) NULL,
	[Market_Type] [varchar](10) NULL,
	[Market_Type_Description] [varchar](100) NULL,
	[ISIN_Status] [varchar](100) NULL,
	[ISIN_Status_Description] [varchar](100) NULL,
	[Hold_Demat_Flag] [varchar](10) NULL,
	[Hold_Remat_Flag] [varchar](10) NULL,
	[Expiry_Date] [varchar](12) NULL,
	[Market_Lot] [varchar](10) NULL,
	[CFI_Code] [varchar](10) NULL,
	[Par_Value] [varchar](18) NULL,
	[Paidup_Value] [varchar](18) NULL,
	[Redemption_Price] [varchar](18) NULL,
	[Redemption_Date] [varchar](12) NULL,
	[Close_Price] [varchar](18) NULL,
	[Close_Date] [varchar](12) NULL,
	[Issue_Date] [varchar](12) NULL,
	[Close_Price_Decimal_Indicator] [varchar](10) NULL,
	[Conversion_Date] [varchar](12) NULL,
	[Distinct_Range_Exists] [varchar](10) NULL,
	[ISIN_Decimal_Code] [varchar](10) NULL,
	[ISIN_Decimal_Code_Description] [varchar](100) NULL,
	[ISIN_Suspension_Flag] [varchar](200) NULL,
	[ISIN_Suspension_Flag_Description] [varchar](100) NULL,
	[Money_Due_Date] [varchar](12) NULL,
	[Liquidation_Winding_Up_Status] [varchar](200) NULL,
	[Remarks] [varchar](200) NULL,
	[vslno] [int] NULL,
	[vslno1] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp_recon]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_recon](
	[Isin] [varchar](12) NULL,
	[Company_Name] [varchar](100) NULL,
	[NSDL_free_positions] [bigint] NULL,
	[NSDL_Lock_Positions] [bigint] NULL,
	[NSDL_Unlock_Bal] [bigint] NULL,
	[NSDL_Lock_Bal] [bigint] NULL,
	[NSDL_Pending_Demat_Bal] [bigint] NULL,
	[NSDL_Pending_Remat_free_Bal] [bigint] NULL,
	[NSDL_Pending_Remat_Lock_Bal] [bigint] NULL,
	[NSDL_Delivery_transit_Bal] [bigint] NULL,
	[NSDL_Receipt_transit_Balance] [bigint] NULL,
	[CDS_Opening_Bal] [varchar](17) NULL,
	[RTA_Opening_Bal] [varchar](17) NULL,
	[CDS_Demat_Confirmation_Bal] [varchar](17) NULL,
	[RTA_Demat_Confirmation_Bal] [varchar](17) NULL,
	[CDS_Remat_Confirmation_Bal] [varchar](17) NULL,
	[RTA_Remat_Confirmation_Bal] [varchar](17) NULL,
	[CDS_Inter_Dep_Trf_IN_balance] [varchar](17) NULL,
	[RTA_Inter_Dep_Trf_IN_balance] [varchar](17) NULL,
	[CDS_Inter_Dep_Trf_OUT_balance] [varchar](17) NULL,
	[RTA_Inter_Dep_Trf_OUT_balance] [varchar](17) NULL,
	[CDS_Corp_Actions_Trf_Additions] [varchar](17) NULL,
	[RTA_Corp_Actions_Trf_Additions] [varchar](17) NULL,
	[CDS_Corp_Actions_Trf_Subtractions] [varchar](17) NULL,
	[RTA_Corp_Actions_Trf_Subtractions] [varchar](17) NULL,
	[CDS_IPO_Additions] [varchar](17) NULL,
	[RTA_IPO_Additions] [varchar](17) NULL,
	[CDS_Closing_bal] [varchar](17) NULL,
	[RTA_Closing_bal] [varchar](17) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp_reconbackup]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_reconbackup](
	[Isin] [varchar](12) NULL,
	[Company_Name] [varchar](100) NULL,
	[NSDL_free_positions] [bigint] NULL,
	[NSDL_Lock_Positions] [bigint] NULL,
	[NSDL_Unlock_Bal] [bigint] NULL,
	[NSDL_Lock_Bal] [bigint] NULL,
	[NSDL_Pending_Demat_Bal] [bigint] NULL,
	[NSDL_Pending_Remat_free_Bal] [bigint] NULL,
	[NSDL_Pending_Remat_Lock_Bal] [bigint] NULL,
	[NSDL_Delivery_transit_Bal] [bigint] NULL,
	[NSDL_Receipt_transit_Balance] [bigint] NULL,
	[CDS_Opening_Bal] [varchar](17) NULL,
	[RTA_Opening_Bal] [varchar](17) NULL,
	[CDS_Demat_Confirmation_Bal] [varchar](17) NULL,
	[RTA_Demat_Confirmation_Bal] [varchar](17) NULL,
	[CDS_Remat_Confirmation_Bal] [varchar](17) NULL,
	[RTA_Remat_Confirmation_Bal] [varchar](17) NULL,
	[CDS_Inter_Dep_Trf_IN_balance] [varchar](17) NULL,
	[RTA_Inter_Dep_Trf_IN_balance] [varchar](17) NULL,
	[CDS_Inter_Dep_Trf_OUT_balance] [varchar](17) NULL,
	[RTA_Inter_Dep_Trf_OUT_balance] [varchar](17) NULL,
	[CDS_Corp_Actions_Trf_Additions] [varchar](17) NULL,
	[RTA_Corp_Actions_Trf_Additions] [varchar](17) NULL,
	[CDS_Corp_Actions_Trf_Subtractions] [varchar](17) NULL,
	[RTA_Corp_Actions_Trf_Subtractions] [varchar](17) NULL,
	[CDS_IPO_Additions] [varchar](17) NULL,
	[RTA_IPO_Additions] [varchar](17) NULL,
	[CDS_Closing_bal] [varchar](17) NULL,
	[RTA_Closing_bal] [varchar](17) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp10]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp10](
	[tdr] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMP12]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP12](
	[ISIN] [varchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp1234]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp1234](
	[ftemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMP2]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP2](
	[RowN] [bigint] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMP25]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP25](
	[RowN] [bigint] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp3]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp3](
	[totunits] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMP33]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP33](
	[ISIN] [varchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp3a]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp3a](
	[totunitsf] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp4]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp4](
	[headcount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp5]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp5](
	[RowN1] [bigint] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp6]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp6](
	[isin] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp7]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp7](
	[totissamt] [int] NULL,
	[totpdamt] [int] NULL,
	[id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp8]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp8](
	[ISSUED_AMOUNTX] [int] NULL,
	[PAIDUP_AMOUNTX] [int] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp9]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp9](
	[masteruniqno] [int] NULL,
	[HDTOTALALLOTEDQTYX] [int] NULL,
	[HDISSUED_AMOUNTX] [int] NULL,
	[HDPAIDUP_AMOUNTX] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp9ip]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp9ip](
	[isspr] [int] NULL,
	[masteruniqno] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp9pp]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp9pp](
	[paidpr] [int] NULL,
	[masteruniqno] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempben]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tempben](
	[Filler1] [varchar](2) NULL,
	[DP_ID] [varchar](8) NULL,
	[Filler2] [varchar](2) NULL,
	[CLNT_ID] [varchar](8) NULL,
	[Filler3] [varchar](2) NULL,
	[SOLE_FIRST_HOLDER_NAME] [varchar](250) NULL,
	[Filler4] [varchar](2) NULL,
	[SECOND_HOLDER_NAME] [varchar](45) NULL,
	[Filler5] [varchar](2) NULL,
	[THIRD_HOLDER_NAME] [varchar](45) NULL,
	[Filler6] [varchar](2) NULL,
	[FTHR_HSBND_NAME] [varchar](45) NULL,
	[Filler7] [varchar](2) NULL,
	[OCCUPATION] [varchar](10) NULL,
	[Filler8] [varchar](2) NULL,
	[BDLS] [varchar](30) NULL,
	[Filler9] [varchar](2) NULL,
	[CLNTTYP] [varchar](7) NULL,
	[Filler10] [varchar](2) NULL,
	[CATEGORY] [varchar](8) NULL,
	[Filler11] [varchar](2) NULL,
	[SUB_T] [varchar](5) NULL,
	[Filler12] [varchar](2) NULL,
	[STATUS] [varchar](6) NULL,
	[Filler13] [varchar](2) NULL,
	[MNORMAJOR] [varchar](10) NULL,
	[Filler14] [varchar](2) NULL,
	[BANK_ACC_NO] [varchar](30) NULL,
	[Filler15] [varchar](2) NULL,
	[BANK_ACC_TYPE] [varchar](13) NULL,
	[Filler16] [varchar](2) NULL,
	[BANK_NAME1] [varchar](135) NULL,
	[Filler17] [varchar](2) NULL,
	[MICR_NO] [varchar](9) NULL,
	[Filler18] [varchar](2) NULL,
	[IFSC] [varchar](11) NULL,
	[Filler19] [varchar](2) NULL,
	[SOLE_FIRST_HOLDER_PAN] [varchar](30) NULL,
	[Filler20] [varchar](2) NULL,
	[PAN_STAT1] [varchar](8) NULL,
	[Filler21] [varchar](2) NULL,
	[SECOND_HOLDER_PAN] [varchar](30) NULL,
	[Filler22] [varchar](2) NULL,
	[PAN_STAT2] [varchar](8) NULL,
	[Filler23] [varchar](2) NULL,
	[THIRD_HOLDER_PAN] [varchar](30) NULL,
	[Filler24] [varchar](2) NULL,
	[PAN_STAT3] [varchar](8) NULL,
	[Filler25] [varchar](2) NULL,
	[RBI_AP_DT] [varchar](10) NULL,
	[Filler26] [varchar](2) NULL,
	[BCD_RBI_REF] [varchar](50) NULL,
	[Filler27] [varchar](2) NULL,
	[BCD_SEBI_RGN] [varchar](24) NULL,
	[Filler28] [varchar](2) NULL,
	[CLIENT_ADDRESS1] [varchar](36) NULL,
	[Filler29] [varchar](2) NULL,
	[CLIENT_ADDRESS2] [varchar](36) NULL,
	[Filler30] [varchar](2) NULL,
	[CLIENT_ADDRESS3] [varchar](36) NULL,
	[Filler31] [varchar](2) NULL,
	[CLIENT_ADDRESS4] [varchar](36) NULL,
	[Filler32] [varchar](2) NULL,
	[PIN] [varchar](10) NULL,
	[Filler33] [varchar](2) NULL,
	[CLIENT_PHONE] [varchar](24) NULL,
	[Filler34] [varchar](2) NULL,
	[CLIENT_FAX] [varchar](24) NULL,
	[Filler35] [varchar](2) NULL,
	[BANK_ADDRESS1] [varchar](36) NULL,
	[Filler36] [varchar](2) NULL,
	[BANK_ADDRESS2] [varchar](36) NULL,
	[Filler37] [varchar](2) NULL,
	[BANK_ADDRESS3] [varchar](36) NULL,
	[Filler38] [varchar](2) NULL,
	[BANK_ADDRESS4] [varchar](36) NULL,
	[Filler39] [varchar](2) NULL,
	[B_PIN] [varchar](10) NULL,
	[Filler40] [varchar](2) NULL,
	[CLIENT_INDICATOR] [varchar](16) NULL,
	[Filler41] [varchar](2) NULL,
	[FIRST_HOLDER_EMAIL_ID] [varchar](23) NULL,
	[Filler42] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempDetailSummary]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempDetailSummary](
	[Total_Records] [int] NULL,
	[Tot_Free_Pos] [int] NULL,
	[Tot_Lockin_Pos] [int] NULL,
	[Tot_Block_Pos] [int] NULL,
	[Tot_Pledge_Pos] [int] NULL,
	[Tot_PledgeLockin_Pos] [int] NULL,
	[Tot_PledgeUnc_Pos] [int] NULL,
	[Tot_PledgeUncLockin_Pos] [int] NULL,
	[Tot_Remat_Pos] [int] NULL,
	[Tot_Remat_Lockin_Pos] [int] NULL,
	[Tot_CMIDD_Pos] [int] NULL,
	[Tot_CMPool_Pos] [int] NULL,
	[Tot_CCSettle_Pos] [int] NULL,
	[Tot_FPH_NDU_Pos] [int] NULL,
	[Tot_LockinNDU_Pos] [int] NULL,
	[Tot_UncFree_HDU_Pos] [int] NULL,
	[Tot_UncLockinHDU_Pos] [int] NULL,
	[total_NSDL_Positions] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempSummary]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempSummary](
	[Tot_Free_Pos] [int] NULL,
	[Tot_Lockin_Pos] [int] NULL,
	[Tot_Block_Pos] [int] NULL,
	[Tot_Pledge_Pos] [int] NULL,
	[Tot_PledgeLockin_Pos] [int] NULL,
	[Tot_PledgeUnc_Pos] [int] NULL,
	[Tot_PledgeUncLockin_Pos] [int] NULL,
	[Tot_Remat_Pos] [int] NULL,
	[Tot_Remat_Lockin_Pos] [int] NULL,
	[Tot_CMIDD_Pos] [int] NULL,
	[Tot_CMPool_Pos] [int] NULL,
	[Tot_CCSettle_Pos] [int] NULL,
	[Tot_FPH_NDU_Pos] [int] NULL,
	[Tot_LockinNDU_Pos] [int] NULL,
	[Tot_UncFree_HDU_Pos] [int] NULL,
	[Tot_UncLockinHDU_Pos] [int] NULL,
	[total_NSDL_Positions] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temptotrec]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temptotrec](
	[total_Records] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempx]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tempx](
	[Record_Type] [nvarchar](2) NULL,
	[ISIN] [nvarchar](12) NULL,
	[Record_Date] [nvarchar](8) NULL,
	[St_Prep_Dt] [nvarchar](8) NULL,
	[St_Prep_Tm] [nvarchar](6) NULL,
	[Tot_NSDL_Pos] [nvarchar](19) NULL,
	[Tot_Trn_Pos] [nvarchar](19) NULL,
	[Tot_Free_Pos] [nvarchar](19) NULL,
	[Tot_Lockin_Pos] [nvarchar](19) NULL,
	[Tot_Block_Pos] [nvarchar](19) NULL,
	[Tot_Pledged_Pos] [nvarchar](19) NULL,
	[Tot_Pl_Lockin_Pos] [nvarchar](19) NULL,
	[Tot_Unc_Pledged_Pos] [nvarchar](19) NULL,
	[Tot_Unc_PlLockin_Pos] [nvarchar](19) NULL,
	[Tot_OLIDT_Pos] [nvarchar](19) NULL,
	[Tot_Remat_Pos] [nvarchar](19) NULL,
	[Tot_Remat_Lockin_Pos] [nvarchar](19) NULL,
	[Tot_NDU_PosHld] [nvarchar](19) NULL,
	[TotNDULockin_PosHld] [nvarchar](19) NULL,
	[Tot_Unc_NDU_PosHld] [nvarchar](19) NULL,
	[TotUncNDULockinPosHld] [nvarchar](19) NULL,
	[Filler1] [nvarchar](19) NULL,
	[Filler2] [nvarchar](19) NULL,
	[Tot_No_of_Dt_Rec] [nvarchar](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[Column 0] [varchar](5000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TESTBULK1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TESTBULK1](
	[ID] [int] NULL,
	[NAME] [varchar](50) NULL,
	[DESIG] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TFILE01]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TFILE01](
	[CODE] [varchar](4) NULL,
	[SHARES] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TFILE02]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TFILE02](
	[SLNO] [int] NULL,
	[CODE] [varchar](4) NULL,
	[SHARES] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TFILECONTROL]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TFILECONTROL](
	[CODE] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_file4]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_file4](
	[opentexta] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TOTALISIN_BOTH]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOTALISIN_BOTH](
	[Record_Type] [varchar](2) NULL,
	[Line_Number] [varchar](7) NULL,
	[ISIN] [varchar](12) NULL,
	[National_Security_Code] [varchar](9) NULL,
	[Booking_Basis] [varchar](2) NULL,
	[ISIN_Short_Name] [varchar](140) NULL,
	[Company_Code] [varchar](8) NULL,
	[Company_Name] [varchar](140) NULL,
	[Security_Type] [varchar](2) NULL,
	[Security_Sub_Type] [varchar](2) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Maturity_Date] [varchar](8) NULL,
	[Convert_Date] [varchar](8) NULL,
	[Face_Value] [varchar](15) NULL,
	[Convert_Amount] [varchar](15) NULL,
	[Share_Registrar_Code] [varchar](8) NULL,
	[Share_Registrar_Name] [varchar](140) NULL,
	[Security_Status] [varchar](2) NULL,
	[Security_Remark] [varchar](60) NULL,
	[Decimal_allowed] [varchar](1) NULL,
	[Creation_Date] [varchar](8) NULL,
	[Last_Update_date] [varchar](8) NULL,
	[Security_Status_Description] [varchar](30) NULL,
	[Security_Type_Description] [varchar](30) NULL,
	[Vccipl_Remarks] [varchar](100) NULL,
	[NSDLDEPFLAG] [varchar](3) NULL,
	[CDSLDEPFLAG] [varchar](3) NULL,
	[CIssuer_Email] [varchar](200) NULL,
	[CSecurity_Type] [varchar](10) NULL,
	[CSecurity_Type_Description] [varchar](100) NULL,
	[CMarket_Type] [varchar](10) NULL,
	[CMarket_Type_Description] [varchar](100) NULL,
	[CISIN_Status] [varchar](100) NULL,
	[CISIN_Status_Description] [varchar](100) NULL,
	[CExpiry_Date] [datetime] NULL,
	[CCFI_Code] [varchar](2) NULL,
	[CPar_Value] [varchar](18) NULL,
	[CPaidup_Value] [varchar](18) NULL,
	[CRedemption_Price] [varchar](18) NULL,
	[CRedemption_Date] [datetime] NULL,
	[CIssue_Date] [datetime] NULL,
	[CConversion_Date] [datetime] NULL,
	[CISIN_Suspension_Flag] [varchar](100) NULL,
	[CISIN_Suspension_Flag_Description] [varchar](100) NULL,
	[CLiquidation_Winding_Up_Status] [varchar](100) NULL,
	[CRemarks] [varchar](100) NULL,
	[FinalRemarks] [varchar](100) NULL,
	[ISIN_Type] [varchar](40) NULL,
	[ISIN_Status] [varchar](40) NULL,
	[isin_status_spl] [varchar](40) NULL,
	[Serial_Number] [varchar](8) NULL,
	[Issuance_Date] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TOTALISIN_BOTH_01112023]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOTALISIN_BOTH_01112023](
	[Record_Type] [varchar](2) NULL,
	[Line_Number] [varchar](7) NULL,
	[ISIN] [varchar](12) NULL,
	[National_Security_Code] [varchar](9) NULL,
	[Booking_Basis] [varchar](2) NULL,
	[ISIN_Short_Name] [varchar](140) NULL,
	[Company_Code] [varchar](8) NULL,
	[Company_Name] [varchar](140) NULL,
	[Security_Type] [varchar](2) NULL,
	[Security_Sub_Type] [varchar](2) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Maturity_Date] [varchar](8) NULL,
	[Convert_Date] [varchar](8) NULL,
	[Face_Value] [varchar](15) NULL,
	[Convert_Amount] [varchar](15) NULL,
	[Share_Registrar_Code] [varchar](8) NULL,
	[Share_Registrar_Name] [varchar](140) NULL,
	[Security_Status] [varchar](2) NULL,
	[Security_Remark] [varchar](60) NULL,
	[Decimal_allowed] [varchar](1) NULL,
	[Creation_Date] [varchar](8) NULL,
	[Last_Update_date] [varchar](8) NULL,
	[Security_Status_Description] [varchar](30) NULL,
	[Security_Type_Description] [varchar](30) NULL,
	[Vccipl_Remarks] [varchar](100) NULL,
	[NSDLDEPFLAG] [varchar](3) NULL,
	[CDSLDEPFLAG] [varchar](3) NULL,
	[CIssuer_Email] [varchar](200) NULL,
	[CSecurity_Type] [varchar](10) NULL,
	[CSecurity_Type_Description] [varchar](100) NULL,
	[CMarket_Type] [varchar](10) NULL,
	[CMarket_Type_Description] [varchar](100) NULL,
	[CISIN_Status] [varchar](100) NULL,
	[CISIN_Status_Description] [varchar](100) NULL,
	[CExpiry_Date] [datetime] NULL,
	[CCFI_Code] [varchar](2) NULL,
	[CPar_Value] [varchar](18) NULL,
	[CPaidup_Value] [varchar](18) NULL,
	[CRedemption_Price] [varchar](18) NULL,
	[CRedemption_Date] [datetime] NULL,
	[CIssue_Date] [datetime] NULL,
	[CConversion_Date] [datetime] NULL,
	[CISIN_Suspension_Flag] [varchar](100) NULL,
	[CISIN_Suspension_Flag_Description] [varchar](100) NULL,
	[CLiquidation_Winding_Up_Status] [varchar](100) NULL,
	[CRemarks] [varchar](100) NULL,
	[FinalRemarks] [varchar](100) NULL,
	[ISIN_Type] [varchar](40) NULL,
	[ISIN_Status] [varchar](40) NULL,
	[isin_status_spl] [varchar](40) NULL,
	[Serial_Number] [varchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TOTALISIN_BOTH_30092023]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOTALISIN_BOTH_30092023](
	[Record_Type] [varchar](2) NULL,
	[Line_Number] [varchar](7) NULL,
	[ISIN] [varchar](12) NULL,
	[National_Security_Code] [varchar](9) NULL,
	[Booking_Basis] [varchar](2) NULL,
	[ISIN_Short_Name] [varchar](140) NULL,
	[Company_Code] [varchar](8) NULL,
	[Company_Name] [varchar](140) NULL,
	[Security_Type] [varchar](2) NULL,
	[Security_Sub_Type] [varchar](2) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Maturity_Date] [varchar](8) NULL,
	[Convert_Date] [varchar](8) NULL,
	[Face_Value] [varchar](15) NULL,
	[Convert_Amount] [varchar](15) NULL,
	[Share_Registrar_Code] [varchar](8) NULL,
	[Share_Registrar_Name] [varchar](140) NULL,
	[Security_Status] [varchar](2) NULL,
	[Security_Remark] [varchar](60) NULL,
	[Decimal_allowed] [varchar](1) NULL,
	[Creation_Date] [varchar](8) NULL,
	[Last_Update_date] [varchar](8) NULL,
	[Security_Status_Description] [varchar](30) NULL,
	[Security_Type_Description] [varchar](30) NULL,
	[Vccipl_Remarks] [varchar](100) NULL,
	[NSDLDEPFLAG] [varchar](3) NULL,
	[CDSLDEPFLAG] [varchar](3) NULL,
	[CIssuer_Email] [varchar](200) NULL,
	[CSecurity_Type] [varchar](10) NULL,
	[CSecurity_Type_Description] [varchar](100) NULL,
	[CMarket_Type] [varchar](10) NULL,
	[CMarket_Type_Description] [varchar](100) NULL,
	[CISIN_Status] [varchar](100) NULL,
	[CISIN_Status_Description] [varchar](100) NULL,
	[CExpiry_Date] [datetime] NULL,
	[CCFI_Code] [varchar](2) NULL,
	[CPar_Value] [varchar](10) NULL,
	[CPaidup_Value] [varchar](10) NULL,
	[CRedemption_Price] [varchar](10) NULL,
	[CRedemption_Date] [datetime] NULL,
	[CIssue_Date] [datetime] NULL,
	[CConversion_Date] [datetime] NULL,
	[CISIN_Suspension_Flag] [varchar](100) NULL,
	[CISIN_Suspension_Flag_Description] [varchar](100) NULL,
	[CLiquidation_Winding_Up_Status] [varchar](100) NULL,
	[CRemarks] [varchar](100) NULL,
	[FinalRemarks] [varchar](100) NULL,
	[ISIN_Type] [varchar](40) NULL,
	[ISIN_Status] [varchar](40) NULL,
	[isin_status_spl] [varchar](40) NULL,
	[Serial_Number] [varchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[twocases]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[twocases](
	[ISIN_Numeric_Code] [varchar](20) NULL,
	[ISIN_Alpha_Code] [varchar](100) NULL,
	[ISIN_Short_Name] [varchar](100) NULL,
	[ISIN_Description] [varchar](300) NULL,
	[Issuer_ID] [varchar](10) NULL,
	[Issuer_Name] [varchar](200) NULL,
	[Issuer_Address_1] [varchar](100) NULL,
	[Issuer_Address_2] [varchar](100) NULL,
	[Issuer_Address_3] [varchar](100) NULL,
	[Issuer_City] [varchar](100) NULL,
	[Issuer_State] [varchar](100) NULL,
	[Issuer_Country] [varchar](100) NULL,
	[Issuer_Zip_Code] [varchar](100) NULL,
	[Issuer_Phone_1] [varchar](100) NULL,
	[Issuer_Phone_2] [varchar](100) NULL,
	[Issuer_Fax] [varchar](100) NULL,
	[Issuer_Email] [varchar](200) NULL,
	[Issuer_Contact_Person_Name] [varchar](100) NULL,
	[Contact_Person_Designation] [varchar](100) NULL,
	[Contact_Person_Address_1] [varchar](100) NULL,
	[Contact_Person_Address_2] [varchar](100) NULL,
	[Contact_Person_Address_3] [varchar](100) NULL,
	[Contact_Person_City] [varchar](100) NULL,
	[Contact_Person_State] [varchar](100) NULL,
	[Contact_Person_Country] [varchar](100) NULL,
	[Contact_Person_Zip_Code] [varchar](100) NULL,
	[Contact_Person_Phone_1] [varchar](100) NULL,
	[Contact_Person_Phone_2] [varchar](100) NULL,
	[Contact_Person_Fax] [varchar](100) NULL,
	[Contact_Person_Email] [varchar](200) NULL,
	[RTA_ID] [varchar](10) NULL,
	[RTA_Name] [varchar](200) NULL,
	[SEBI_Registration_From_Date] [varchar](10) NULL,
	[SEBI_Registration_To_Date] [varchar](100) NULL,
	[RTA_Address_1] [varchar](100) NULL,
	[RTA_Address_2] [varchar](100) NULL,
	[RTA_Address_3] [varchar](100) NULL,
	[RTA_City] [varchar](100) NULL,
	[RTA_State] [varchar](100) NULL,
	[RTA_Country] [varchar](100) NULL,
	[RTA_Zip_Code] [varchar](100) NULL,
	[RTA_Phone_1] [varchar](100) NULL,
	[RTA_Phone_2] [varchar](100) NULL,
	[RTA_Fax] [varchar](100) NULL,
	[RTA_Email] [varchar](100) NULL,
	[ISIN_Share_Name] [varchar](200) NULL,
	[ISIN_Second_Name] [varchar](100) NULL,
	[ISIN_Last_Name] [varchar](100) NULL,
	[ISIN_Address_1] [varchar](100) NULL,
	[ISIN_Address_2] [varchar](100) NULL,
	[ISIN_Address_3] [varchar](100) NULL,
	[ISIN_City] [varchar](100) NULL,
	[ISIN_State] [varchar](100) NULL,
	[ISIN_Country] [varchar](100) NULL,
	[ISIN_Zip_Code] [varchar](100) NULL,
	[ISIN_Phone_1] [varchar](100) NULL,
	[ISIN_Phone_2] [varchar](100) NULL,
	[ISIN_Fax] [varchar](100) NULL,
	[ISIN_Email] [varchar](200) NULL,
	[Security_Type] [varchar](10) NULL,
	[Security_Type_Description] [varchar](100) NULL,
	[Market_Type] [varchar](10) NULL,
	[Market_Type_Description] [varchar](100) NULL,
	[ISIN_Status] [varchar](100) NULL,
	[ISIN_Status_Description] [varchar](100) NULL,
	[Hold_Demat_Flag] [varchar](10) NULL,
	[Hold_Remat_Flag] [varchar](10) NULL,
	[Expiry_Date] [varchar](12) NULL,
	[Market_Lot] [varchar](10) NULL,
	[CFI_Code] [varchar](10) NULL,
	[Par_Value] [varchar](18) NULL,
	[Paidup_Value] [varchar](18) NULL,
	[Redemption_Price] [varchar](18) NULL,
	[Redemption_Date] [varchar](12) NULL,
	[Close_Price] [varchar](18) NULL,
	[Close_Date] [varchar](12) NULL,
	[Issue_Date] [varchar](12) NULL,
	[Close_Price_Decimal_Indicator] [varchar](10) NULL,
	[Conversion_Date] [varchar](12) NULL,
	[Distinct_Range_Exists] [varchar](10) NULL,
	[ISIN_Decimal_Code] [varchar](10) NULL,
	[ISIN_Decimal_Code_Description] [varchar](100) NULL,
	[ISIN_Suspension_Flag] [varchar](200) NULL,
	[ISIN_Suspension_Flag_Description] [varchar](100) NULL,
	[Money_Due_Date] [varchar](12) NULL,
	[Liquidation_Winding_Up_Status] [varchar](200) NULL,
	[Remarks] [varchar](200) NULL,
	[vslno] [int] NULL,
	[vslno1] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vbenposdownloadedfiledt]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vbenposdownloadedfiledt](
	[Record_Type] [nvarchar](2) NULL,
	[Line_No] [nvarchar](7) NULL,
	[DP_ID] [nvarchar](8) NULL,
	[Ben_Acc_No] [nvarchar](8) NULL,
	[Ben_Type] [nvarchar](2) NULL,
	[Ben_sub_type] [nvarchar](2) NULL,
	[Ben_Acc_Category] [nvarchar](2) NULL,
	[Ben_Occupation] [nvarchar](2) NULL,
	[FHlderName_BP] [nvarchar](250) NULL,
	[FH_FH_name] [nvarchar](45) NULL,
	[BenBPAdd1] [nvarchar](36) NULL,
	[BenBPAdd2] [nvarchar](36) NULL,
	[BenBPAdd3] [nvarchar](36) NULL,
	[BenBPAdd4] [nvarchar](36) NULL,
	[BenBPPin] [nvarchar](10) NULL,
	[BenBPPhno] [nvarchar](24) NULL,
	[BenBPFaxNo] [nvarchar](24) NULL,
	[SH_Name] [nvarchar](45) NULL,
	[SH_FH_name] [nvarchar](45) NULL,
	[TH_Name] [nvarchar](45) NULL,
	[TH_FH_name] [nvarchar](45) NULL,
	[Filler1] [nvarchar](16) NULL,
	[Filler2] [nvarchar](54) NULL,
	[FH_PAN] [nvarchar](30) NULL,
	[SH_PAN] [nvarchar](30) NULL,
	[TH_PAN] [nvarchar](30) NULL,
	[NomG_Indicator] [nvarchar](1) NULL,
	[NomG_Name] [nvarchar](45) NULL,
	[NomG_Add1] [nvarchar](36) NULL,
	[NomG_Add2] [nvarchar](36) NULL,
	[NomG_Add3] [nvarchar](36) NULL,
	[NomG_Add4] [nvarchar](36) NULL,
	[NomG_Pincode] [nvarchar](10) NULL,
	[Dob_minor] [nvarchar](8) NULL,
	[Minor_Indicator] [nvarchar](1) NULL,
	[Ben_Bank_AccNo] [nvarchar](30) NULL,
	[Bank_NameBranch] [nvarchar](135) NULL,
	[Bank_Add1] [nvarchar](36) NULL,
	[Bank_Add2] [nvarchar](36) NULL,
	[Bank_Add3] [nvarchar](36) NULL,
	[Bank_Add4] [nvarchar](36) NULL,
	[Bank_Pincode] [nvarchar](10) NULL,
	[RBI_RefNRI] [nvarchar](50) NULL,
	[RBI_AppDtNRI] [nvarchar](8) NULL,
	[SEBI_Regn_No] [nvarchar](24) NULL,
	[Ben_TDS] [nvarchar](20) NULL,
	[Ben_Status] [nvarchar](2) NULL,
	[Ben_Free_Pos] [nvarchar](19) NULL,
	[Ben_Lockin_Pos] [nvarchar](19) NULL,
	[Ben_Block_Pos] [nvarchar](19) NULL,
	[Ben_Pl_Pos] [nvarchar](19) NULL,
	[Ben_PlLockin_Pos] [nvarchar](19) NULL,
	[Ben_PlUncPos] [nvarchar](19) NULL,
	[BenUnconPlLockin_Pos] [nvarchar](19) NULL,
	[Ben_Remat_Pos] [nvarchar](19) NULL,
	[Ben_Remat_Lockin_Pos] [nvarchar](19) NULL,
	[BenCM_IDD_Pos] [nvarchar](19) NULL,
	[CMPoolPosPooldelivery] [nvarchar](19) NULL,
	[CC_Settlement_Pos] [nvarchar](19) NULL,
	[MICR_Code] [nvarchar](9) NULL,
	[IFSC] [nvarchar](11) NULL,
	[Bank_Account_Type] [nvarchar](2) NULL,
	[Filler3] [nvarchar](30) NULL,
	[FHMapin_ID] [nvarchar](9) NULL,
	[SHMapin_ID] [nvarchar](9) NULL,
	[THMapin_ID] [nvarchar](9) NULL,
	[FHEmail_ID] [nvarchar](50) NULL,
	[SHEmail_ID] [nvarchar](50) NULL,
	[THEmail_ID] [nvarchar](50) NULL,
	[RGESS_Flag] [nvarchar](1) NULL,
	[BenFreePosHlddueNDU] [nvarchar](19) NULL,
	[BenLockinPosHlddueNDU] [nvarchar](19) NULL,
	[BenUncFreePosHldNDU] [nvarchar](19) NULL,
	[BenUncLockinPosHldNDU] [nvarchar](19) NULL,
	[BenBPAddStatecode] [nvarchar](2) NULL,
	[BenBPCountrycode] [nvarchar](3) NULL,
	[LEI_No] [nvarchar](20) NULL,
	[PAN_Flag_for_FH] [nvarchar](1) NULL,
	[PAN_Flag_for_SH] [nvarchar](1) NULL,
	[PAN_Flag_for_TH] [nvarchar](1) NULL,
	[Promoter_Kmp] [nvarchar](2) NULL,
	[FPI_Category] [nvarchar](100) NULL,
	[Filler4] [nvarchar](9) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vbenposdownloadedfileHD]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vbenposdownloadedfileHD](
	[Record_Type] [nvarchar](2) NULL,
	[ISIN] [nvarchar](12) NULL,
	[Record_Date] [nvarchar](8) NULL,
	[St_Prep_Dt] [nvarchar](8) NULL,
	[St_Prep_Tm] [nvarchar](6) NULL,
	[Tot_NSDL_Pos] [nvarchar](19) NULL,
	[Tot_Trn_Pos] [nvarchar](19) NULL,
	[Tot_Free_Pos] [nvarchar](19) NULL,
	[Tot_Lockin_Pos] [nvarchar](19) NULL,
	[Tot_Block_Pos] [nvarchar](19) NULL,
	[Tot_Pledged_Pos] [nvarchar](19) NULL,
	[Tot_Pl_Lockin_Pos] [nvarchar](19) NULL,
	[Tot_Unc_Pledged_Pos] [nvarchar](19) NULL,
	[Tot_Unc_PlLockin_Pos] [nvarchar](19) NULL,
	[Tot_OLIDT_Pos] [nvarchar](19) NULL,
	[Tot_Remat_Pos] [nvarchar](19) NULL,
	[Tot_Remat_Lockin_Pos] [nvarchar](19) NULL,
	[Tot_NDU_PosHld] [nvarchar](19) NULL,
	[TotNDULockin_PosHld] [nvarchar](19) NULL,
	[Tot_Unc_NDU_PosHld] [nvarchar](19) NULL,
	[TotUncNDULockinPosHld] [nvarchar](19) NULL,
	[Filler1] [nvarchar](19) NULL,
	[Filler2] [nvarchar](19) NULL,
	[Tot_No_of_Dt_Rec] [nvarchar](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VcciplUsers]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VcciplUsers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](20) NULL,
	[Pwd] [varbinary](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VcciplUsersMaster]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VcciplUsersMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [varchar](4) NULL,
	[UserID] [varchar](20) NULL,
	[Password] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VMAST_CERT]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VMAST_CERT](
	[CNAME] [varchar](40) NULL,
	[ISIN] [varchar](12) NULL,
	[FOLIO] [varchar](9) NULL,
	[CNO] [int] NULL,
	[FIRST] [int] NULL,
	[FIRST2] [int] NULL,
	[SHARES] [int] NULL,
	[DUPLI] [varchar](10) NULL,
	[OFOLIO] [varchar](9) NULL,
	[TRNDATE] [date] NULL,
	[STOP] [varchar](10) NULL,
	[DATE] [date] NULL,
	[OCNO] [int] NULL,
	[PAID] [varchar](10) NULL,
	[TRNO] [int] NULL,
	[DEMAT] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VMAST_HOLD]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VMAST_HOLD](
	[IEPFSH] [int] NULL,
	[IEPF4] [varchar](12) NULL,
	[NLLFOLIO] [varchar](12) NULL,
	[ISIN] [varchar](12) NULL,
	[DPID] [varchar](8) NULL,
	[BTYPE] [int] NULL,
	[VC_REMARK] [varchar](40) NULL,
	[VC_REMARK2] [varchar](40) NULL,
	[FOLIO] [varchar](9) NULL,
	[FOLIO2] [int] NULL,
	[SHARES] [int] NULL,
	[LSHARES] [int] NULL,
	[LOCKOUT] [datetime] NULL,
	[OSHARES] [int] NULL,
	[HNAME] [varchar](40) NULL,
	[ADDR1] [varchar](40) NULL,
	[ADDR2] [varchar](40) NULL,
	[ADDR3] [varchar](40) NULL,
	[ADDR4] [varchar](40) NULL,
	[PIN] [varchar](7) NULL,
	[OCC] [int] NULL,
	[FNAME] [varchar](35) NULL,
	[JH1] [varchar](40) NULL,
	[JH2] [varchar](40) NULL,
	[DDATE] [datetime] NULL,
	[JOINDATE] [datetime] NULL,
	[HOLD] [int] NULL,
	[STATUS1] [int] NULL,
	[TRNDATE] [datetime] NULL,
	[TRNO] [int] NULL,
	[FHOLD_PAN] [varchar](15) NULL,
	[SHOLD_PAN] [varchar](15) NULL,
	[THOLD_PAN] [varchar](15) NULL,
	[OFOLIO] [varchar](10) NULL,
	[NOMINEE] [varchar](40) NULL,
	[NOMINE_GU] [varchar](40) NULL,
	[NOADDR1] [varchar](40) NULL,
	[NOADDR2] [varchar](40) NULL,
	[NOADDR3] [varchar](40) NULL,
	[NOADDR4] [varchar](40) NULL,
	[NOPIN] [varchar](10) NULL,
	[BACNO] [varchar](20) NULL,
	[BNAME] [varchar](40) NULL,
	[BADDR1] [varchar](40) NULL,
	[BADDR2] [varchar](40) NULL,
	[PLSHARES] [int] NULL,
	[MICR] [varchar](9) NULL,
	[IFSC] [varchar](11) NULL,
	[BAC_TYPE] [int] NULL,
	[EMAILID1] [varchar](50) NULL,
	[PHONE1] [varchar](24) NULL,
	[AADNO] [int] NULL,
	[KYC] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vresponsefromnsdlfileDT]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vresponsefromnsdlfileDT](
	[Record_Type] [nvarchar](2) NULL,
	[Line_Number] [nvarchar](7) NULL,
	[DP_ID] [nvarchar](8) NULL,
	[Client_ID] [nvarchar](8) NULL,
	[Filler1] [nvarchar](10) NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vresponsefromnsdlfileHD]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vresponsefromnsdlfileHD](
	[Record_Type] [nvarchar](2) NULL,
	[Batch_Number] [nvarchar](7) NULL,
	[RTA_ID] [nvarchar](8) NULL,
	[ISIN] [nvarchar](12) NULL,
	[Request_Type] [nvarchar](1) NULL,
	[Sender_ID] [nvarchar](8) NULL,
	[Sender_Date_] [nvarchar](8) NULL,
	[Filler1] [nvarchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vtem1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vtem1](
	[vtemp1] [nvarchar](76) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vtem1a]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vtem1a](
	[vtemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[woemailidcos]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[woemailidcos](
	[co_name] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[X1021]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X1021](
	[rem] [varchar](1000) NULL,
	[Record_Type] [varchar](2) NULL,
	[Line_Number] [varchar](7) NULL,
	[ISIN] [varchar](12) NULL,
	[National_Security_Code] [varchar](9) NULL,
	[Booking_Basis] [varchar](2) NULL,
	[ISIN_Short_Name] [varchar](140) NULL,
	[Company_Code] [varchar](8) NULL,
	[Company_Name] [varchar](140) NULL,
	[Security_Type] [varchar](2) NULL,
	[Security_Sub_Type] [varchar](2) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Maturity_Date] [varchar](8) NULL,
	[Convert_Date] [varchar](8) NULL,
	[Face_Value] [varchar](15) NULL,
	[Convert_Amount] [varchar](15) NULL,
	[Share_Registrar_Code] [varchar](8) NULL,
	[Share_Registrar_Name] [varchar](140) NULL,
	[Security_Status] [varchar](2) NULL,
	[Security_Remark] [varchar](60) NULL,
	[Decimal_allowed] [varchar](1) NULL,
	[Creation_Date] [varchar](8) NULL,
	[Last_Update_date] [varchar](8) NULL,
	[Security_Status_Description] [varchar](30) NULL,
	[Security_Type_Description] [varchar](30) NULL,
	[vslno] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[x1110dt]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[x1110dt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [varchar](18) NULL,
	[Issued_Amount] [varchar](18) NULL,
	[Paidup_Price] [varchar](18) NULL,
	[Paidup_Amount] [varchar](18) NULL,
	[Filler] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[x1110hd]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[x1110hd](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[File_IDentification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Debit_Credit_Indicator] [varchar](1) NULL,
	[ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](12) NULL,
	[Allotment_Date] [datetime] NULL,
	[Allocation_Allotment_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[Total_Allotted_Quantity_Free_Lockin] [varchar](18) NULL,
	[Total_Allotted_Quantity_Lockin] [varchar](18) NULL,
	[Total_No_detail_records] [varchar](7) NULL,
	[Total_Issued_Amount] [varchar](18) NULL,
	[Total_Paidup_Amount] [varchar](18) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[Basis_calculation_Stamp_Duty] [varchar](2) NULL,
	[EBP_Name] [varchar](2) NULL,
	[Funds_collected_through] [varchar](2) NULL,
	[Filler] [varchar](2) NULL,
	[MasterUniqNo] [int] NULL,
	[opfv] [decimal](18, 0) NULL,
	[opfvvalue] [decimal](18, 2) NULL,
	[StampDutyPaid] [varchar](18) NULL,
	[Processflag] [varchar](1) NULL,
	[Issue_pr] [varchar](18) NULL,
	[Paidup_pr] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[x157]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[x157](
	[a1] [nvarchar](255) NULL,
	[a2] [nvarchar](255) NULL,
	[a3] [nvarchar](255) NULL,
	[a4] [nvarchar](255) NULL,
	[a5] [nvarchar](255) NULL,
	[a6] [nvarchar](255) NULL,
	[a7] [nvarchar](255) NULL,
	[a8] [nvarchar](255) NULL,
	[a9] [nvarchar](255) NULL,
	[a10] [nvarchar](255) NULL,
	[a11] [nvarchar](255) NULL,
	[a12] [nvarchar](255) NULL,
	[a13] [nvarchar](255) NULL,
	[a14] [nvarchar](255) NULL,
	[a15] [nvarchar](255) NULL,
	[a16] [nvarchar](255) NULL,
	[a17] [nvarchar](255) NULL,
	[a18] [nvarchar](255) NULL,
	[a19] [nvarchar](255) NULL,
	[a20] [nvarchar](255) NULL,
	[a21] [nvarchar](255) NULL,
	[a22] [nvarchar](255) NULL,
	[a23] [nvarchar](255) NULL,
	[a24] [nvarchar](255) NULL,
	[a25] [nvarchar](255) NULL,
	[a26] [nvarchar](255) NULL,
	[a27] [nvarchar](255) NULL,
	[a28] [nvarchar](255) NULL,
	[a29] [nvarchar](255) NULL,
	[a30] [nvarchar](255) NULL,
	[a31] [nvarchar](255) NULL,
	[a32] [nvarchar](255) NULL,
	[a33] [nvarchar](255) NULL,
	[a34] [nvarchar](255) NULL,
	[a35] [nvarchar](255) NULL,
	[a36] [nvarchar](255) NULL,
	[a37] [nvarchar](255) NULL,
	[a38] [nvarchar](255) NULL,
	[a39] [nvarchar](255) NULL,
	[a40] [nvarchar](255) NULL,
	[a41] [nvarchar](255) NULL,
	[a42] [nvarchar](255) NULL,
	[a43] [nvarchar](255) NULL,
	[a44] [nvarchar](255) NULL,
	[a45] [nvarchar](255) NULL,
	[a46] [nvarchar](255) NULL,
	[a47] [nvarchar](255) NULL,
	[a48] [nvarchar](255) NULL,
	[a49] [nvarchar](255) NULL,
	[a50] [nvarchar](255) NULL,
	[a51] [nvarchar](255) NULL,
	[a52] [nvarchar](255) NULL,
	[a53] [nvarchar](255) NULL,
	[a54] [nvarchar](255) NULL,
	[a55] [nvarchar](255) NULL,
	[a56] [nvarchar](255) NULL,
	[a57] [nvarchar](255) NULL,
	[a58] [nvarchar](255) NULL,
	[a59] [nvarchar](255) NULL,
	[a60] [nvarchar](255) NULL,
	[a61] [nvarchar](255) NULL,
	[a62] [nvarchar](255) NULL,
	[a63] [nvarchar](255) NULL,
	[a64] [nvarchar](255) NULL,
	[a65] [nvarchar](255) NULL,
	[a66] [nvarchar](255) NULL,
	[a67] [nvarchar](255) NULL,
	[a68] [nvarchar](255) NULL,
	[a69] [nvarchar](255) NULL,
	[a70] [nvarchar](255) NULL,
	[a71] [nvarchar](255) NULL,
	[a72] [nvarchar](255) NULL,
	[a73] [nvarchar](255) NULL,
	[a74] [nvarchar](255) NULL,
	[a75] [nvarchar](255) NULL,
	[a76] [nvarchar](255) NULL,
	[a77] [nvarchar](255) NULL,
	[a78] [nvarchar](255) NULL,
	[a79] [nvarchar](255) NULL,
	[a80] [nvarchar](255) NULL,
	[a81] [nvarchar](255) NULL,
	[a82] [nvarchar](255) NULL,
	[a83] [nvarchar](255) NULL,
	[a84] [nvarchar](255) NULL,
	[a85] [nvarchar](255) NULL,
	[a86] [nvarchar](255) NULL,
	[a87] [nvarchar](255) NULL,
	[a88] [nvarchar](255) NULL,
	[a89] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[x3]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[x3](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[Debit_Credit_ISIN] [varchar](12) NULL,
	[Debit_Credit_Indicator] [char](1) NULL,
	[From_Distinctive_No_NSDL] [varchar](18) NULL,
	[To_Distinctive_No_NSDL] [varchar](18) NULL,
	[Quantity] [varchar](18) NULL,
	[Flag_status_DN_Range] [varchar](2) NULL,
	[CA_Type] [varchar](4) NULL,
	[MasterUniqNo] [int] NULL,
	[ProcessedFlag] [varchar](1) NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[X3801]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X3801](
	[DPIDCLID] [varchar](16) NULL,
	[Name1asperDP] [varchar](250) NULL,
	[Name2asperDP] [varchar](45) NULL,
	[Name3asperDP] [varchar](45) NULL,
	[Pan1asperDP] [varchar](30) NULL,
	[Pan2asperDP] [varchar](30) NULL,
	[Pan3asperDP] [varchar](30) NULL,
	[Account_Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[X3802]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X3802](
	[DPIDCLID] [varchar](16) NULL,
	[Name1asperDP] [varchar](250) NULL,
	[Name2asperDP] [varchar](45) NULL,
	[Name3asperDP] [varchar](45) NULL,
	[Pan1asperDP] [varchar](30) NULL,
	[Pan2asperDP] [varchar](30) NULL,
	[Pan3asperDP] [varchar](30) NULL,
	[Account_Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[X3803]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X3803](
	[DPIDCLID] [varchar](16) NULL,
	[Name1asperDP] [varchar](250) NULL,
	[Name2asperDP] [varchar](45) NULL,
	[Name3asperDP] [varchar](45) NULL,
	[Pan1asperDP] [varchar](30) NULL,
	[Pan2asperDP] [varchar](30) NULL,
	[Pan3asperDP] [varchar](30) NULL,
	[Account_Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[X3804]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X3804](
	[DPIDCLID] [varchar](16) NULL,
	[Name1asperDP] [varchar](250) NULL,
	[Name2asperDP] [varchar](45) NULL,
	[Name3asperDP] [varchar](45) NULL,
	[Pan1asperDP] [varchar](30) NULL,
	[Pan2asperDP] [varchar](30) NULL,
	[Pan3asperDP] [varchar](30) NULL,
	[Account_Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[X3805]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X3805](
	[DPIDCLID] [varchar](16) NULL,
	[Name1asperDP] [varchar](250) NULL,
	[Name2asperDP] [varchar](45) NULL,
	[Name3asperDP] [varchar](45) NULL,
	[Pan1asperDP] [varchar](30) NULL,
	[Pan2asperDP] [varchar](30) NULL,
	[Pan3asperDP] [varchar](30) NULL,
	[Account_Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[X3806]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X3806](
	[DPIDCLID] [varchar](16) NULL,
	[Name1asperDP] [varchar](250) NULL,
	[Name2asperDP] [varchar](45) NULL,
	[Name3asperDP] [varchar](45) NULL,
	[Pan1asperDP] [varchar](30) NULL,
	[Pan2asperDP] [varchar](30) NULL,
	[Pan3asperDP] [varchar](30) NULL,
	[Account_Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[X9]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X9](
	[ISIN_Numeric_Code] [varchar](20) NULL,
	[ISIN_Alpha_Code] [varchar](100) NULL,
	[ISIN_Short_Name] [varchar](100) NULL,
	[ISIN_Description] [varchar](300) NULL,
	[Issuer_ID] [varchar](10) NULL,
	[Issuer_Name] [varchar](200) NULL,
	[Issuer_Address_1] [varchar](100) NULL,
	[Issuer_Address_2] [varchar](100) NULL,
	[Issuer_Address_3] [varchar](100) NULL,
	[Issuer_City] [varchar](100) NULL,
	[Issuer_State] [varchar](100) NULL,
	[Issuer_Country] [varchar](100) NULL,
	[Issuer_Zip_Code] [varchar](100) NULL,
	[Issuer_Phone_1] [varchar](100) NULL,
	[Issuer_Phone_2] [varchar](100) NULL,
	[Issuer_Fax] [varchar](100) NULL,
	[Issuer_Email] [varchar](200) NULL,
	[Issuer_Contact_Person_Name] [varchar](100) NULL,
	[Contact_Person_Designation] [varchar](100) NULL,
	[Contact_Person_Address_1] [varchar](100) NULL,
	[Contact_Person_Address_2] [varchar](100) NULL,
	[Contact_Person_Address_3] [varchar](100) NULL,
	[Contact_Person_City] [varchar](100) NULL,
	[Contact_Person_State] [varchar](100) NULL,
	[Contact_Person_Country] [varchar](100) NULL,
	[Contact_Person_Zip_Code] [varchar](100) NULL,
	[Contact_Person_Phone_1] [varchar](100) NULL,
	[Contact_Person_Phone_2] [varchar](100) NULL,
	[Contact_Person_Fax] [varchar](100) NULL,
	[Contact_Person_Email] [varchar](200) NULL,
	[RTA_ID] [varchar](10) NULL,
	[RTA_Name] [varchar](200) NULL,
	[SEBI_Registration_From_Date] [varchar](10) NULL,
	[SEBI_Registration_To_Date] [varchar](100) NULL,
	[RTA_Address_1] [varchar](100) NULL,
	[RTA_Address_2] [varchar](100) NULL,
	[RTA_Address_3] [varchar](100) NULL,
	[RTA_City] [varchar](100) NULL,
	[RTA_State] [varchar](100) NULL,
	[RTA_Country] [varchar](100) NULL,
	[RTA_Zip_Code] [varchar](100) NULL,
	[RTA_Phone_1] [varchar](100) NULL,
	[RTA_Phone_2] [varchar](100) NULL,
	[RTA_Fax] [varchar](100) NULL,
	[RTA_Email] [varchar](100) NULL,
	[ISIN_Share_Name] [varchar](200) NULL,
	[ISIN_Second_Name] [varchar](100) NULL,
	[ISIN_Last_Name] [varchar](100) NULL,
	[ISIN_Address_1] [varchar](100) NULL,
	[ISIN_Address_2] [varchar](100) NULL,
	[ISIN_Address_3] [varchar](100) NULL,
	[ISIN_City] [varchar](100) NULL,
	[ISIN_State] [varchar](100) NULL,
	[ISIN_Country] [varchar](100) NULL,
	[ISIN_Zip_Code] [varchar](100) NULL,
	[ISIN_Phone_1] [varchar](100) NULL,
	[ISIN_Phone_2] [varchar](100) NULL,
	[ISIN_Fax] [varchar](100) NULL,
	[ISIN_Email] [varchar](200) NULL,
	[Security_Type] [varchar](10) NULL,
	[Security_Type_Description] [varchar](100) NULL,
	[Market_Type] [varchar](10) NULL,
	[Market_Type_Description] [varchar](100) NULL,
	[ISIN_Status] [varchar](100) NULL,
	[ISIN_Status_Description] [varchar](100) NULL,
	[Hold_Demat_Flag] [varchar](10) NULL,
	[Hold_Remat_Flag] [varchar](10) NULL,
	[Expiry_Date] [varchar](12) NULL,
	[Market_Lot] [varchar](10) NULL,
	[CFI_Code] [varchar](10) NULL,
	[Par_Value] [varchar](18) NULL,
	[Paidup_Value] [varchar](18) NULL,
	[Redemption_Price] [varchar](18) NULL,
	[Redemption_Date] [varchar](12) NULL,
	[Close_Price] [varchar](18) NULL,
	[Close_Date] [varchar](12) NULL,
	[Issue_Date] [varchar](12) NULL,
	[Close_Price_Decimal_Indicator] [varchar](10) NULL,
	[Conversion_Date] [varchar](12) NULL,
	[Distinct_Range_Exists] [varchar](10) NULL,
	[ISIN_Decimal_Code] [varchar](10) NULL,
	[ISIN_Decimal_Code_Description] [varchar](100) NULL,
	[ISIN_Suspension_Flag] [varchar](200) NULL,
	[ISIN_Suspension_Flag_Description] [varchar](100) NULL,
	[Money_Due_Date] [varchar](12) NULL,
	[Liquidation_Winding_Up_Status] [varchar](200) NULL,
	[Remarks] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XABC123456]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XABC123456](
	[ISIN_Numeric_Code] [varchar](50) NULL,
	[ISIN_Alpha_Code] [varchar](50) NULL,
	[ISIN_Short_Name] [varchar](50) NULL,
	[Issuer_ID] [varchar](50) NULL,
	[Issuer_Name] [varchar](50) NULL,
	[Issuer_Address_1] [varchar](50) NULL,
	[Issuer_Address_2] [varchar](50) NULL,
	[Issuer_Address_3] [varchar](50) NULL,
	[Issuer_City] [varchar](50) NULL,
	[Issuer_State] [varchar](50) NULL,
	[Issuer_Country] [varchar](50) NULL,
	[Issuer_Zip_Code] [varchar](50) NULL,
	[Issuer_Phone_1] [varchar](50) NULL,
	[Issuer_Phone_2] [varchar](50) NULL,
	[Issuer_Fax] [varchar](50) NULL,
	[Issuer_Contact_Person_Name] [varchar](50) NULL,
	[Contact_Person_Designation] [varchar](50) NULL,
	[Contact_Person_Address_1] [varchar](50) NULL,
	[Contact_Person_Address_3] [varchar](50) NULL,
	[Contact_Person_City] [varchar](50) NULL,
	[Contact_Person_State] [varchar](50) NULL,
	[Contact_Person_Country] [varchar](50) NULL,
	[Contact_Person_Zip_Code] [varchar](50) NULL,
	[Contact_Person_Phone_1] [varchar](50) NULL,
	[Contact_Person_Phone_2] [varchar](50) NULL,
	[Contact_Person_Fax] [varchar](50) NULL,
	[Contact_Person_Email] [varchar](50) NULL,
	[RTA_ID] [varchar](50) NULL,
	[RTA_Name] [varchar](50) NULL,
	[SEBI_Registration_From_Date] [varchar](50) NULL,
	[SEBI_Registration_To_Date] [varchar](50) NULL,
	[RTA_Address_1] [varchar](50) NULL,
	[RTA_City] [varchar](50) NULL,
	[RTA_State] [varchar](50) NULL,
	[RTA_Country] [varchar](50) NULL,
	[RTA_Phone_1] [varchar](50) NULL,
	[RTA_Phone_2] [varchar](50) NULL,
	[RTA_Fax] [varchar](50) NULL,
	[RTA_Email] [varchar](50) NULL,
	[ISIN_Share_Name] [varchar](50) NULL,
	[ISIN_Second_Name] [varchar](50) NULL,
	[ISIN_Last_Name] [varchar](50) NULL,
	[ISIN_Address_1] [varchar](50) NULL,
	[ISIN_Address_2] [varchar](50) NULL,
	[ISIN_Address_3] [varchar](50) NULL,
	[ISIN_City] [varchar](50) NULL,
	[ISIN_State] [varchar](50) NULL,
	[ISIN_Zip_Code] [varchar](50) NULL,
	[ISIN_Phone_1] [varchar](50) NULL,
	[ISIN_Phone_2] [varchar](50) NULL,
	[ISIN_Fax] [varchar](50) NULL,
	[Security_Type] [varchar](50) NULL,
	[Security_Type_Description] [varchar](50) NULL,
	[Market_Type] [varchar](50) NULL,
	[Market_Type_Description] [varchar](50) NULL,
	[ISIN_Status] [varchar](50) NULL,
	[ISIN_Status_Description] [varchar](50) NULL,
	[Hold_Demat_Flag] [varchar](50) NULL,
	[Hold_Remat_Flag] [varchar](50) NULL,
	[Expiry_Date] [varchar](50) NULL,
	[Market_Lot] [varchar](50) NULL,
	[CFI_Code] [varchar](50) NULL,
	[Par_Value] [varchar](50) NULL,
	[Paidup_Value] [varchar](50) NULL,
	[Redemption_Price] [varchar](50) NULL,
	[Redemption_Date] [varchar](50) NULL,
	[Close_Price] [varchar](50) NULL,
	[Close_Date] [varchar](50) NULL,
	[Issue_Date] [varchar](50) NULL,
	[Close_Price_Decimal_Indicator] [varchar](50) NULL,
	[Conversion_Date] [varchar](50) NULL,
	[Distinct_Range_Exists] [varchar](50) NULL,
	[ISIN_Decimal_Code] [varchar](50) NULL,
	[ISIN_Decimal_Code_Description] [varchar](50) NULL,
	[ISIN_Suspension_Flag] [varchar](50) NULL,
	[ISIN_Suspension_Flag_Description] [varchar](50) NULL,
	[Money_Due_Date] [varchar](50) NULL,
	[Liquidation_Winding_Up_Status] [varchar](50) NULL,
	[Remarks] [varchar](50) NULL,
	[Copy of ISIN_Numeric_Code] [varchar](20) NULL,
	[Copy of ISIN_Alpha_Code] [varchar](100) NULL,
	[Copy of ISIN_Short_Name] [varchar](100) NULL,
	[Copy of Issuer_ID] [varchar](10) NULL,
	[Copy of Issuer_Name] [varchar](200) NULL,
	[Copy of Issuer_Address_1] [varchar](100) NULL,
	[Copy of Issuer_Address_2] [varchar](100) NULL,
	[Copy of Issuer_Address_3] [varchar](100) NULL,
	[Copy of Issuer_City] [varchar](100) NULL,
	[Copy of Issuer_State] [varchar](100) NULL,
	[Copy of Issuer_Country] [varchar](100) NULL,
	[Copy of Issuer_Zip_Code] [varchar](100) NULL,
	[Copy of Issuer_Phone_1] [varchar](100) NULL,
	[Copy of Issuer_Phone_2] [varchar](100) NULL,
	[Copy of Issuer_Fax] [varchar](100) NULL,
	[Copy of Issuer_Contact_Person_Name] [varchar](100) NULL,
	[Copy of Contact_Person_Designation] [varchar](100) NULL,
	[Copy of Contact_Person_Address_1] [varchar](100) NULL,
	[Copy of Contact_Person_Address_3] [varchar](100) NULL,
	[Copy of Contact_Person_City] [varchar](100) NULL,
	[Copy of Contact_Person_State] [varchar](100) NULL,
	[Copy of Contact_Person_Country] [varchar](100) NULL,
	[Copy of Contact_Person_Zip_Code] [varchar](100) NULL,
	[Copy of Contact_Person_Phone_1] [varchar](100) NULL,
	[Copy of Contact_Person_Phone_2] [varchar](100) NULL,
	[Copy of Contact_Person_Fax] [varchar](100) NULL,
	[Copy of Contact_Person_Email] [varchar](200) NULL,
	[Copy of RTA_ID] [varchar](10) NULL,
	[Copy of RTA_Name] [varchar](200) NULL,
	[Copy of SEBI_Registration_From_Date] [varchar](10) NULL,
	[Copy of SEBI_Registration_To_Date] [varchar](100) NULL,
	[Copy of RTA_Address_1] [varchar](100) NULL,
	[Copy of RTA_City] [varchar](100) NULL,
	[Copy of RTA_State] [varchar](100) NULL,
	[Copy of RTA_Country] [varchar](100) NULL,
	[Copy of RTA_Phone_1] [varchar](100) NULL,
	[Copy of RTA_Phone_2] [varchar](100) NULL,
	[Copy of RTA_Fax] [varchar](100) NULL,
	[Copy of RTA_Email] [varchar](100) NULL,
	[Copy of ISIN_Share_Name] [varchar](200) NULL,
	[Copy of ISIN_Second_Name] [varchar](100) NULL,
	[Copy of ISIN_Last_Name] [varchar](100) NULL,
	[Copy of ISIN_Address_1] [varchar](100) NULL,
	[Copy of ISIN_Address_2] [varchar](100) NULL,
	[Copy of ISIN_Address_3] [varchar](100) NULL,
	[Copy of ISIN_City] [varchar](100) NULL,
	[Copy of ISIN_State] [varchar](100) NULL,
	[Copy of ISIN_Zip_Code] [varchar](100) NULL,
	[Copy of ISIN_Phone_1] [varchar](100) NULL,
	[Copy of ISIN_Phone_2] [varchar](100) NULL,
	[Copy of ISIN_Fax] [varchar](100) NULL,
	[Copy of Security_Type] [varchar](10) NULL,
	[Copy of Security_Type_Description] [varchar](100) NULL,
	[Copy of Market_Type] [varchar](10) NULL,
	[Copy of Market_Type_Description] [varchar](100) NULL,
	[Copy of ISIN_Status] [varchar](100) NULL,
	[Copy of ISIN_Status_Description] [varchar](100) NULL,
	[Copy of Hold_Demat_Flag] [varchar](10) NULL,
	[Copy of Hold_Remat_Flag] [varchar](10) NULL,
	[Copy of Expiry_Date] [varchar](12) NULL,
	[Copy of Market_Lot] [varchar](10) NULL,
	[Copy of CFI_Code] [varchar](10) NULL,
	[Copy of Par_Value] [varchar](18) NULL,
	[Copy of Paidup_Value] [varchar](18) NULL,
	[Copy of Redemption_Price] [varchar](18) NULL,
	[Copy of Redemption_Date] [varchar](12) NULL,
	[Copy of Close_Price] [varchar](18) NULL,
	[Copy of Close_Date] [varchar](12) NULL,
	[Copy of Issue_Date] [varchar](12) NULL,
	[Copy of Close_Price_Decimal_Indicator] [varchar](10) NULL,
	[Copy of Conversion_Date] [varchar](12) NULL,
	[Copy of Distinct_Range_Exists] [varchar](10) NULL,
	[Copy of ISIN_Decimal_Code] [varchar](10) NULL,
	[Copy of ISIN_Decimal_Code_Description] [varchar](100) NULL,
	[Copy of ISIN_Suspension_Flag] [varchar](200) NULL,
	[Copy of ISIN_Suspension_Flag_Description] [varchar](100) NULL,
	[Copy of Money_Due_Date] [varchar](12) NULL,
	[Copy of Liquidation_Winding_Up_Status] [varchar](200) NULL,
	[Copy of Remarks] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XADD375]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XADD375](
	[ISIN_Numeric_Code] [int] NOT NULL,
	[ISIN_Alpha_Code] [nvarchar](50) NOT NULL,
	[ISIN_Short_Name] [nvarchar](50) NOT NULL,
	[ISIN_Description] [nvarchar](150) NOT NULL,
	[Issuer_ID] [int] NOT NULL,
	[Issuer_Name] [nvarchar](100) NOT NULL,
	[Issuer_Address_1] [nvarchar](50) NOT NULL,
	[Issuer_Address_2] [nvarchar](50) NULL,
	[Issuer_Address_3] [nvarchar](50) NULL,
	[Issuer_City] [nvarchar](50) NOT NULL,
	[Issuer_State] [nvarchar](50) NOT NULL,
	[Issuer_Country] [nvarchar](50) NOT NULL,
	[Issuer_Zip_Code] [nvarchar](50) NOT NULL,
	[Issuer_Phone_1] [nvarchar](50) NULL,
	[Issuer_Phone_2] [nvarchar](50) NULL,
	[Issuer_Fax] [nvarchar](50) NULL,
	[Issuer_Email] [nvarchar](100) NULL,
	[Issuer_Contact_Person_Name] [nvarchar](50) NOT NULL,
	[Contact_Person_Designation] [nvarchar](50) NOT NULL,
	[Contact_Person_Address_1] [nvarchar](50) NOT NULL,
	[Contact_Person_Address_2] [nvarchar](50) NULL,
	[Contact_Person_Address_3] [nvarchar](50) NULL,
	[Contact_Person_City] [nvarchar](50) NOT NULL,
	[Contact_Person_State] [nvarchar](50) NOT NULL,
	[Contact_Person_Country] [nvarchar](50) NOT NULL,
	[Contact_Person_Zip_Code] [nvarchar](50) NOT NULL,
	[Contact_Person_Phone_1] [nvarchar](50) NULL,
	[Contact_Person_Phone_2] [nvarchar](50) NULL,
	[Contact_Person_Fax] [nvarchar](50) NULL,
	[Contact_Person_Email] [nvarchar](100) NULL,
	[RTA_ID] [tinyint] NOT NULL,
	[RTA_Name] [nvarchar](100) NOT NULL,
	[SEBI_Registration_From_Date] [date] NOT NULL,
	[SEBI_Registration_To_Date] [nvarchar](50) NOT NULL,
	[RTA_Address_1] [nvarchar](50) NOT NULL,
	[RTA_Address_2] [nvarchar](50) NOT NULL,
	[RTA_Address_3] [nvarchar](50) NOT NULL,
	[RTA_City] [nvarchar](50) NOT NULL,
	[RTA_State] [nvarchar](50) NOT NULL,
	[RTA_Country] [nvarchar](50) NOT NULL,
	[RTA_Zip_Code] [nvarchar](50) NOT NULL,
	[RTA_Phone_1] [nvarchar](50) NOT NULL,
	[RTA_Phone_2] [nvarchar](50) NOT NULL,
	[RTA_Fax] [nvarchar](50) NOT NULL,
	[RTA_Email] [nvarchar](50) NOT NULL,
	[ISIN_Share_Name] [nvarchar](100) NOT NULL,
	[ISIN_Second_Name] [date] NULL,
	[ISIN_Last_Name] [nvarchar](50) NULL,
	[ISIN_Address_1] [nvarchar](50) NOT NULL,
	[ISIN_Address_2] [nvarchar](50) NULL,
	[ISIN_Address_3] [nvarchar](50) NULL,
	[ISIN_City] [nvarchar](50) NOT NULL,
	[ISIN_State] [nvarchar](50) NOT NULL,
	[ISIN_Country] [nvarchar](50) NOT NULL,
	[ISIN_Zip_Code] [nvarchar](50) NOT NULL,
	[ISIN_Phone_1] [nvarchar](50) NULL,
	[ISIN_Phone_2] [nvarchar](50) NULL,
	[ISIN_Fax] [nvarchar](50) NULL,
	[ISIN_Email] [nvarchar](100) NULL,
	[Security_Type] [tinyint] NOT NULL,
	[Security_Type_Description] [nvarchar](50) NOT NULL,
	[Market_Type] [tinyint] NOT NULL,
	[Market_Type_Description] [nvarchar](50) NOT NULL,
	[ISIN_Status] [nvarchar](50) NOT NULL,
	[ISIN_Status_Description] [nvarchar](50) NOT NULL,
	[Hold_Demat_Flag] [bit] NOT NULL,
	[Hold_Remat_Flag] [bit] NOT NULL,
	[Expiry_Date] [date] NULL,
	[Market_Lot] [tinyint] NOT NULL,
	[CFI_Code] [tinyint] NOT NULL,
	[Par_Value] [float] NOT NULL,
	[Paidup_Value] [float] NOT NULL,
	[Redemption_Price] [float] NOT NULL,
	[Redemption_Date] [date] NULL,
	[Close_Price] [float] NOT NULL,
	[Close_Date] [date] NULL,
	[Issue_Date] [date] NOT NULL,
	[Close_Price_Decimal_Indicator] [tinyint] NOT NULL,
	[Conversion_Date] [nvarchar](1) NULL,
	[Distinct_Range_Exists] [tinyint] NOT NULL,
	[ISIN_Decimal_Code] [tinyint] NOT NULL,
	[ISIN_Decimal_Code_Description] [nvarchar](50) NOT NULL,
	[ISIN_Suspension_Flag] [nvarchar](100) NOT NULL,
	[ISIN_Suspension_Flag_Description] [nvarchar](50) NOT NULL,
	[Money_Due_Date] [nvarchar](1) NULL,
	[Liquidation_Winding_Up_Status] [nvarchar](100) NOT NULL,
	[Remarks] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XADDFILE1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XADDFILE1](
	[ISIN_Numeric_Code] [varchar](20) NULL,
	[ISIN_Alpha_Code] [varchar](100) NULL,
	[ISIN_Short_Name] [varchar](100) NULL,
	[ISIN_Description] [varchar](300) NULL,
	[Issuer_ID] [varchar](10) NULL,
	[Issuer_Name] [varchar](200) NULL,
	[Issuer_Address_1] [varchar](100) NULL,
	[Issuer_Address_2] [varchar](100) NULL,
	[Issuer_Address_3] [varchar](100) NULL,
	[Issuer_City] [varchar](100) NULL,
	[Issuer_State] [varchar](100) NULL,
	[Issuer_Country] [varchar](100) NULL,
	[Issuer_Zip_Code] [varchar](100) NULL,
	[Issuer_Phone_1] [varchar](100) NULL,
	[Issuer_Phone_2] [varchar](100) NULL,
	[Issuer_Fax] [varchar](100) NULL,
	[Issuer_Email] [varchar](200) NULL,
	[Issuer_Contact_Person_Name] [varchar](100) NULL,
	[Contact_Person_Designation] [varchar](100) NULL,
	[Contact_Person_Address_1] [varchar](100) NULL,
	[Contact_Person_Address_2] [varchar](100) NULL,
	[Contact_Person_Address_3] [varchar](100) NULL,
	[Contact_Person_City] [varchar](100) NULL,
	[Contact_Person_State] [varchar](100) NULL,
	[Contact_Person_Country] [varchar](100) NULL,
	[Contact_Person_Zip_Code] [varchar](100) NULL,
	[Contact_Person_Phone_1] [varchar](100) NULL,
	[Contact_Person_Phone_2] [varchar](100) NULL,
	[Contact_Person_Fax] [varchar](100) NULL,
	[Contact_Person_Email] [varchar](200) NULL,
	[RTA_ID] [varchar](10) NULL,
	[RTA_Name] [varchar](200) NULL,
	[SEBI_Registration_From_Date] [varchar](10) NULL,
	[SEBI_Registration_To_Date] [varchar](100) NULL,
	[RTA_Address_1] [varchar](100) NULL,
	[RTA_Address_2] [varchar](100) NULL,
	[RTA_Address_3] [varchar](100) NULL,
	[RTA_City] [varchar](100) NULL,
	[RTA_State] [varchar](100) NULL,
	[RTA_Country] [varchar](100) NULL,
	[RTA_Zip_Code] [varchar](100) NULL,
	[RTA_Phone_1] [varchar](100) NULL,
	[RTA_Phone_2] [varchar](100) NULL,
	[RTA_Fax] [varchar](100) NULL,
	[RTA_Email] [varchar](100) NULL,
	[ISIN_Share_Name] [varchar](200) NULL,
	[ISIN_Second_Name] [varchar](100) NULL,
	[ISIN_Last_Name] [varchar](100) NULL,
	[ISIN_Address_1] [varchar](100) NULL,
	[ISIN_Address_2] [varchar](100) NULL,
	[ISIN_Address_3] [varchar](100) NULL,
	[ISIN_City] [varchar](100) NULL,
	[ISIN_State] [varchar](100) NULL,
	[ISIN_Country] [varchar](100) NULL,
	[ISIN_Zip_Code] [varchar](100) NULL,
	[ISIN_Phone_1] [varchar](100) NULL,
	[ISIN_Phone_2] [varchar](100) NULL,
	[ISIN_Fax] [varchar](100) NULL,
	[ISIN_Email] [varchar](200) NULL,
	[Security_Type] [varchar](10) NULL,
	[Security_Type_Description] [varchar](100) NULL,
	[Market_Type] [varchar](10) NULL,
	[Market_Type_Description] [varchar](100) NULL,
	[ISIN_Status] [varchar](100) NULL,
	[ISIN_Status_Description] [varchar](100) NULL,
	[Hold_Demat_Flag] [varchar](10) NULL,
	[Hold_Remat_Flag] [varchar](10) NULL,
	[Expiry_Date] [varchar](12) NULL,
	[Market_Lot] [varchar](10) NULL,
	[CFI_Code] [varchar](10) NULL,
	[Par_Value] [varchar](18) NULL,
	[Paidup_Value] [varchar](18) NULL,
	[Redemption_Price] [varchar](18) NULL,
	[Redemption_Date] [varchar](12) NULL,
	[Close_Price] [varchar](18) NULL,
	[Close_Date] [varchar](12) NULL,
	[Issue_Date] [varchar](12) NULL,
	[Close_Price_Decimal_Indicator] [varchar](10) NULL,
	[Conversion_Date] [varchar](12) NULL,
	[Distinct_Range_Exists] [varchar](10) NULL,
	[ISIN_Decimal_Code] [varchar](10) NULL,
	[ISIN_Decimal_Code_Description] [varchar](100) NULL,
	[ISIN_Suspension_Flag] [varchar](200) NULL,
	[ISIN_Suspension_Flag_Description] [varchar](100) NULL,
	[Money_Due_Date] [varchar](12) NULL,
	[Liquidation_Winding_Up_Status] [varchar](200) NULL,
	[Remarks] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xbackup]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xbackup](
	[rem] [varchar](1000) NULL,
	[Record_Type] [varchar](2) NULL,
	[Line_Number] [varchar](7) NULL,
	[ISIN] [varchar](12) NULL,
	[National_Security_Code] [varchar](9) NULL,
	[Booking_Basis] [varchar](2) NULL,
	[ISIN_Short_Name] [varchar](140) NULL,
	[Company_Code] [varchar](8) NULL,
	[Company_Name] [varchar](140) NULL,
	[Security_Type] [varchar](2) NULL,
	[Security_Sub_Type] [varchar](2) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Maturity_Date] [varchar](8) NULL,
	[Convert_Date] [varchar](8) NULL,
	[Face_Value] [varchar](15) NULL,
	[Convert_Amount] [varchar](15) NULL,
	[Share_Registrar_Code] [varchar](8) NULL,
	[Share_Registrar_Name] [varchar](140) NULL,
	[Security_Status] [varchar](2) NULL,
	[Security_Remark] [varchar](60) NULL,
	[Decimal_allowed] [varchar](1) NULL,
	[Creation_Date] [varchar](8) NULL,
	[Last_Update_date] [varchar](8) NULL,
	[Security_Status_Description] [varchar](30) NULL,
	[Security_Type_Description] [varchar](30) NULL,
	[vslno] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xbackup19122023]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xbackup19122023](
	[Filler01] [varchar](2) NULL,
	[DP_ID] [varchar](8) NULL,
	[Filler02] [varchar](2) NULL,
	[Client_ID] [varchar](8) NULL,
	[Filler03] [varchar](2) NULL,
	[First_holder_Name] [varchar](250) NULL,
	[Filler04] [varchar](2) NULL,
	[First_Holder_PAN] [varchar](30) NULL,
	[Filler05] [varchar](2) NULL,
	[First_Holder_PAN_status] [varchar](8) NULL,
	[Filler06] [varchar](2) NULL,
	[Second_Holder_Name] [varchar](45) NULL,
	[Filler07] [varchar](2) NULL,
	[Second_Holder_PAN] [varchar](30) NULL,
	[Filler08] [varchar](2) NULL,
	[Second_Holder_PAN_status] [varchar](8) NULL,
	[Filler09] [varchar](2) NULL,
	[Third_Holder_Name] [varchar](45) NULL,
	[Filler10] [varchar](2) NULL,
	[Third_Holder_PAN] [varchar](30) NULL,
	[Filler11] [varchar](2) NULL,
	[Third_Holder_PAN_status] [varchar](8) NULL,
	[Filler12] [varchar](2) NULL,
	[Minor_indicator] [varchar](10) NULL,
	[Filler13] [varchar](2) NULL,
	[Nominee_Guardian_Indicator] [varchar](10) NULL,
	[Filler14] [varchar](2) NULL,
	[Nominee_Guardian_Name] [varchar](45) NULL,
	[Filler15] [varchar](2) NULL,
	[Client_Account_Status] [varchar](13) NULL,
	[Filler16] [varchar](2) NULL,
	[Account_Category] [varchar](13) NULL,
	[Filler17] [varchar](2) NULL,
	[Account_Type] [varchar](5) NULL,
	[Filler18] [varchar](2) NULL,
	[Account_Sub_Type] [varchar](8) NULL,
	[Filler19] [varchar](2) NULL,
	[Ahdealingewhreceipt] [varchar](16) NULL,
	[Filler20] [varchar](2) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masteruniqno] [int] NULL,
	[present_status] [varchar](50) NULL,
	[rem1] [varchar](700) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xcdsl]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xcdsl](
	[ISIN_Numeric_Code] [int] NOT NULL,
	[ISIN_Alpha_Code] [nvarchar](50) NOT NULL,
	[ISIN_Short_Name] [nvarchar](50) NOT NULL,
	[ISIN_Description] [nvarchar](150) NOT NULL,
	[Issuer_ID] [int] NOT NULL,
	[Issuer_Name] [nvarchar](100) NOT NULL,
	[Issuer_Address_1] [nvarchar](50) NOT NULL,
	[Issuer_Address_2] [nvarchar](50) NULL,
	[Issuer_Address_3] [nvarchar](50) NULL,
	[Issuer_City] [nvarchar](50) NOT NULL,
	[Issuer_State] [nvarchar](50) NOT NULL,
	[Issuer_Country] [nvarchar](50) NOT NULL,
	[Issuer_Zip_Code] [nvarchar](50) NOT NULL,
	[Issuer_Phone_1] [nvarchar](50) NULL,
	[Issuer_Phone_2] [nvarchar](50) NULL,
	[Issuer_Fax] [nvarchar](50) NULL,
	[Issuer_Email] [nvarchar](100) NULL,
	[Issuer_Contact_Person_Name] [nvarchar](50) NOT NULL,
	[Contact_Person_Designation] [nvarchar](50) NOT NULL,
	[Contact_Person_Address_1] [nvarchar](50) NOT NULL,
	[Contact_Person_Address_2] [nvarchar](50) NULL,
	[Contact_Person_Address_3] [nvarchar](50) NULL,
	[Contact_Person_City] [nvarchar](50) NOT NULL,
	[Contact_Person_State] [nvarchar](50) NOT NULL,
	[Contact_Person_Country] [nvarchar](50) NOT NULL,
	[Contact_Person_Zip_Code] [nvarchar](50) NOT NULL,
	[Contact_Person_Phone_1] [nvarchar](50) NULL,
	[Contact_Person_Phone_2] [nvarchar](50) NULL,
	[Contact_Person_Fax] [nvarchar](50) NULL,
	[Contact_Person_Email] [nvarchar](100) NULL,
	[RTA_ID] [tinyint] NOT NULL,
	[RTA_Name] [nvarchar](100) NOT NULL,
	[SEBI_Registration_From_Date] [date] NOT NULL,
	[SEBI_Registration_To_Date] [nvarchar](50) NOT NULL,
	[RTA_Address_1] [nvarchar](50) NOT NULL,
	[RTA_Address_2] [nvarchar](50) NOT NULL,
	[RTA_Address_3] [nvarchar](50) NOT NULL,
	[RTA_City] [nvarchar](50) NOT NULL,
	[RTA_State] [nvarchar](50) NOT NULL,
	[RTA_Country] [nvarchar](50) NOT NULL,
	[RTA_Zip_Code] [nvarchar](50) NOT NULL,
	[RTA_Phone_1] [nvarchar](50) NOT NULL,
	[RTA_Phone_2] [nvarchar](50) NOT NULL,
	[RTA_Fax] [nvarchar](50) NOT NULL,
	[RTA_Email] [nvarchar](50) NOT NULL,
	[ISIN_Share_Name] [nvarchar](100) NOT NULL,
	[ISIN_Second_Name] [date] NULL,
	[ISIN_Last_Name] [nvarchar](50) NULL,
	[ISIN_Address_1] [nvarchar](50) NOT NULL,
	[ISIN_Address_2] [nvarchar](50) NULL,
	[ISIN_Address_3] [nvarchar](50) NULL,
	[ISIN_City] [nvarchar](50) NOT NULL,
	[ISIN_State] [nvarchar](50) NOT NULL,
	[ISIN_Country] [nvarchar](50) NOT NULL,
	[ISIN_Zip_Code] [nvarchar](50) NOT NULL,
	[ISIN_Phone_1] [nvarchar](50) NULL,
	[ISIN_Phone_2] [nvarchar](50) NULL,
	[ISIN_Fax] [nvarchar](50) NULL,
	[ISIN_Email] [nvarchar](100) NULL,
	[Security_Type] [tinyint] NOT NULL,
	[Security_Type_Description] [nvarchar](50) NOT NULL,
	[Market_Type] [tinyint] NOT NULL,
	[Market_Type_Description] [nvarchar](50) NOT NULL,
	[ISIN_Status] [nvarchar](50) NOT NULL,
	[ISIN_Status_Description] [nvarchar](50) NOT NULL,
	[Hold_Demat_Flag] [bit] NOT NULL,
	[Hold_Remat_Flag] [bit] NOT NULL,
	[Expiry_Date] [date] NULL,
	[Market_Lot] [tinyint] NOT NULL,
	[CFI_Code] [tinyint] NOT NULL,
	[Par_Value] [float] NOT NULL,
	[Paidup_Value] [float] NOT NULL,
	[Redemption_Price] [float] NOT NULL,
	[Redemption_Date] [date] NULL,
	[Close_Price] [float] NOT NULL,
	[Close_Date] [date] NULL,
	[Issue_Date] [date] NOT NULL,
	[Close_Price_Decimal_Indicator] [tinyint] NOT NULL,
	[Conversion_Date] [nvarchar](1) NULL,
	[Distinct_Range_Exists] [tinyint] NOT NULL,
	[ISIN_Decimal_Code] [tinyint] NOT NULL,
	[ISIN_Decimal_Code_Description] [nvarchar](50) NOT NULL,
	[ISIN_Suspension_Flag] [nvarchar](100) NOT NULL,
	[ISIN_Suspension_Flag_Description] [nvarchar](50) NOT NULL,
	[Money_Due_Date] [nvarchar](1) NULL,
	[Liquidation_Winding_Up_Status] [nvarchar](100) NOT NULL,
	[Remarks] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xcdslisin_detail]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xcdslisin_detail](
	[ISIN_Numeric_Code] [int] NOT NULL,
	[ISIN_Alpha_Code] [nvarchar](50) NOT NULL,
	[ISIN_Short_Name] [nvarchar](50) NOT NULL,
	[ISIN_Description] [nvarchar](150) NOT NULL,
	[Issuer_ID] [int] NOT NULL,
	[Issuer_Name] [nvarchar](100) NOT NULL,
	[Issuer_Address_1] [nvarchar](50) NOT NULL,
	[Issuer_Address_2] [nvarchar](50) NULL,
	[Issuer_Address_3] [nvarchar](50) NULL,
	[Issuer_City] [nvarchar](50) NOT NULL,
	[Issuer_State] [nvarchar](50) NOT NULL,
	[Issuer_Country] [nvarchar](50) NOT NULL,
	[Issuer_Zip_Code] [nvarchar](50) NOT NULL,
	[Issuer_Phone_1] [nvarchar](50) NULL,
	[Issuer_Phone_2] [nvarchar](50) NULL,
	[Issuer_Fax] [nvarchar](50) NULL,
	[Issuer_Email] [nvarchar](100) NULL,
	[Issuer_Contact_Person_Name] [nvarchar](50) NOT NULL,
	[Contact_Person_Designation] [nvarchar](50) NOT NULL,
	[Contact_Person_Address_1] [nvarchar](50) NOT NULL,
	[Contact_Person_Address_2] [nvarchar](50) NULL,
	[Contact_Person_Address_3] [nvarchar](50) NULL,
	[Contact_Person_City] [nvarchar](50) NOT NULL,
	[Contact_Person_State] [nvarchar](50) NOT NULL,
	[Contact_Person_Country] [nvarchar](50) NOT NULL,
	[Contact_Person_Zip_Code] [nvarchar](50) NOT NULL,
	[Contact_Person_Phone_1] [nvarchar](50) NULL,
	[Contact_Person_Phone_2] [nvarchar](50) NULL,
	[Contact_Person_Fax] [nvarchar](50) NULL,
	[Contact_Person_Email] [nvarchar](100) NULL,
	[RTA_ID] [tinyint] NOT NULL,
	[RTA_Name] [nvarchar](100) NOT NULL,
	[SEBI_Registration_From_Date] [date] NOT NULL,
	[SEBI_Registration_To_Date] [nvarchar](50) NOT NULL,
	[RTA_Address_1] [nvarchar](50) NOT NULL,
	[RTA_Address_2] [nvarchar](50) NOT NULL,
	[RTA_Address_3] [nvarchar](50) NOT NULL,
	[RTA_City] [nvarchar](50) NOT NULL,
	[RTA_State] [nvarchar](50) NOT NULL,
	[RTA_Country] [nvarchar](50) NOT NULL,
	[RTA_Zip_Code] [nvarchar](50) NOT NULL,
	[RTA_Phone_1] [nvarchar](50) NOT NULL,
	[RTA_Phone_2] [nvarchar](50) NOT NULL,
	[RTA_Fax] [nvarchar](50) NOT NULL,
	[RTA_Email] [nvarchar](50) NOT NULL,
	[ISIN_Share_Name] [nvarchar](100) NOT NULL,
	[ISIN_Second_Name] [date] NULL,
	[ISIN_Last_Name] [nvarchar](50) NULL,
	[ISIN_Address_1] [nvarchar](50) NOT NULL,
	[ISIN_Address_2] [nvarchar](50) NULL,
	[ISIN_Address_3] [nvarchar](50) NULL,
	[ISIN_City] [nvarchar](50) NOT NULL,
	[ISIN_State] [nvarchar](50) NOT NULL,
	[ISIN_Country] [nvarchar](50) NOT NULL,
	[ISIN_Zip_Code] [nvarchar](50) NOT NULL,
	[ISIN_Phone_1] [nvarchar](50) NULL,
	[ISIN_Phone_2] [nvarchar](50) NULL,
	[ISIN_Fax] [nvarchar](50) NULL,
	[ISIN_Email] [nvarchar](100) NULL,
	[Security_Type] [tinyint] NOT NULL,
	[Security_Type_Description] [nvarchar](50) NOT NULL,
	[Market_Type] [tinyint] NOT NULL,
	[Market_Type_Description] [nvarchar](50) NOT NULL,
	[ISIN_Status] [nvarchar](50) NOT NULL,
	[ISIN_Status_Description] [nvarchar](50) NOT NULL,
	[Hold_Demat_Flag] [bit] NOT NULL,
	[Hold_Remat_Flag] [bit] NOT NULL,
	[Expiry_Date] [date] NULL,
	[Market_Lot] [tinyint] NOT NULL,
	[CFI_Code] [tinyint] NOT NULL,
	[Par_Value] [float] NOT NULL,
	[Paidup_Value] [float] NOT NULL,
	[Redemption_Price] [float] NOT NULL,
	[Redemption_Date] [date] NULL,
	[Close_Price] [float] NOT NULL,
	[Close_Date] [date] NULL,
	[Issue_Date] [date] NOT NULL,
	[Close_Price_Decimal_Indicator] [tinyint] NOT NULL,
	[Conversion_Date] [nvarchar](1) NULL,
	[Distinct_Range_Exists] [tinyint] NOT NULL,
	[ISIN_Decimal_Code] [tinyint] NOT NULL,
	[ISIN_Decimal_Code_Description] [nvarchar](50) NOT NULL,
	[ISIN_Suspension_Flag] [nvarchar](100) NOT NULL,
	[ISIN_Suspension_Flag_Description] [nvarchar](50) NOT NULL,
	[Money_Due_Date] [nvarchar](1) NULL,
	[Liquidation_Winding_Up_Status] [nvarchar](100) NOT NULL,
	[Remarks] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XCNT1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XCNT1](
	[CNT] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XDRP]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XDRP](
	[remsource] [varchar](1000) NULL,
	[FileName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xdt123]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xdt123](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[Debit_Credit_ISIN] [varchar](12) NULL,
	[Debit_Credit_Indicator] [char](1) NULL,
	[From_Distinctive_No_NSDL] [varchar](18) NULL,
	[To_Distinctive_No_NSDL] [varchar](18) NULL,
	[Quantity] [varchar](18) NULL,
	[Flag_status_DN_Range] [varchar](2) NULL,
	[CA_Type] [varchar](4) NULL,
	[MasterUniqNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xdt7001]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xdt7001](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [varchar](18) NULL,
	[Issued_Amount] [varchar](18) NULL,
	[Paidup_Price] [varchar](18) NULL,
	[Paidup_Amount] [varchar](18) NULL,
	[Filler] [varchar](12) NULL,
	[MasterUniqNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xdt999]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xdt999](
	[rem1] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xhd7001]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xhd7001](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[File_IDentification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Debit_Credit_Indicator] [varchar](1) NULL,
	[ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](12) NULL,
	[Allotment_Date] [datetime] NULL,
	[Allocation_Allotment_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[Total_Allotted_Quantity_Free_Lockin] [varchar](18) NULL,
	[Total_Allotted_Quantity_Lockin] [varchar](18) NULL,
	[Total_No_detail_records] [varchar](7) NULL,
	[Total_Issued_Amount] [varchar](18) NULL,
	[Total_Paidup_Amount] [varchar](18) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[Basis_calculation_Stamp_Duty] [varchar](2) NULL,
	[EBP_Name] [varchar](2) NULL,
	[Funds_collected_through] [varchar](2) NULL,
	[Filler] [varchar](2) NULL,
	[MasterUniqNo] [int] NULL,
	[opfv] [decimal](18, 0) NULL,
	[opfvvalue] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XISINC1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XISINC1](
	[ISIN] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XISINN1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XISINN1](
	[ISIN] [varchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xncdist]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xncdist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[Debit_Credit_ISIN] [varchar](12) NULL,
	[Debit_Credit_Indicator] [char](1) NULL,
	[From_Distinctive_No_NSDL] [varchar](18) NULL,
	[To_Distinctive_No_NSDL] [varchar](18) NULL,
	[Quantity] [varchar](15) NULL,
	[Flag_status_DN_Range] [varchar](18) NULL,
	[CA_Type] [varchar](12) NULL,
	[Normalcauploaduniqueno] [varchar](7) NULL,
	[MasterUniqNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xncdt]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xncdt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[Detail_Record_Line_No] [varchar](7) NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Allotment_Quantity] [varchar](15) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [varchar](12) NULL,
	[Issued_Amount] [varchar](16) NULL,
	[Paidup_Price] [varchar](12) NULL,
	[Paidup_Amount] [varchar](16) NULL,
	[Filler] [varchar](12) NULL,
	[Normalcauploaduniqueno] [int] NULL,
	[MasterUniqNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xnchr]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xnchr](
	[ID] [int] IDENTITY(3000,1) NOT NULL,
	[Record_IDentification] [varchar](2) NULL,
	[File_IDentification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Debit_Credit_Indicator] [varchar](1) NULL,
	[ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](12) NULL,
	[Allotment_Date] [datetime] NULL,
	[Allocation_Allotment_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[Total_Allotted_Quantity_Free_Lockin] [varchar](15) NULL,
	[Total_Allotted_Quantity_Lockin] [varchar](15) NULL,
	[Total_No_detail_records] [varchar](7) NULL,
	[Total_Issued_Amount] [varchar](16) NULL,
	[Total_Paidup_Amount] [varchar](16) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[Basis_calculation_Stamp_Duty] [varchar](2) NULL,
	[EBP_Name] [varchar](2) NULL,
	[Funds_collected_through] [varchar](2) NULL,
	[Filler] [varchar](2) NULL,
	[Normalcauploaduniqueno] [int] NULL,
	[MasterUniqNo] [int] NULL,
	[opfv] [decimal](18, 0) NULL,
	[opfvvalue] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xOUT90]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xOUT90](
	[ISIN_NO] [varchar](12) NULL,
	[UNIQLINE] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XRAJU]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XRAJU](
	[RowN] [bigint] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DP_ID] [varchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xsimdist]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xsimdist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [char](2) NOT NULL,
	[Detail_Record_Line_No] [int] NOT NULL,
	[Debit_Credit_ISIN] [char](12) NULL,
	[Debit_Credit_Indicator] [char](1) NULL,
	[From_Distinctive_No_NSDL] [int] NULL,
	[To_Distinctive_No_NSDL] [int] NULL,
	[Quantity] [int] NULL,
	[Flag_status_DN_Range] [int] NULL,
	[CA_Code] [int] NULL,
	[Simultcauploaduniqueno] [int] NULL,
	[InsertedDate] [datetime] NULL,
	[MasterUniqNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xsimdt]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xsimdt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_IDentification] [char](2) NOT NULL,
	[Detail_Record_Line_No] [varchar](7) NOT NULL,
	[Credit_DP_ID] [varchar](8) NOT NULL,
	[Credit_Client_ID] [varchar](8) NOT NULL,
	[Credit_Client_Account_Category] [int] NULL,
	[Debit_DP_ID] [varchar](8) NOT NULL,
	[Debit_Client_ID] [varchar](8) NOT NULL,
	[Debit_Client_Account_Category] [int] NULL,
	[Credit_Quantity] [varchar](18) NULL,
	[Debit_Quantity] [varchar](18) NULL,
	[Credit_Quantity_Lockin_Reason_Code] [int] NULL,
	[Credit_Quantity_Lockin_Release_Date] [date] NULL,
	[Debit_Quantity_Lockin_Reason_Code] [int] NULL,
	[Debit_Quantity_Lockin_Release_Date] [date] NULL,
	[Issue_Price_Allotment_Allocation_Credit_ISIN] [varchar](18) NULL,
	[Issued_Amount_Allotment_Allocation_Credit_ISIN] [varchar](18) NULL,
	[Paidup_Price_Allotment_Allocation_Credit_ISIN] [varchar](18) NULL,
	[Paidup_Amount_Allotment_Allocation_Credit_ISIN] [varchar](18) NULL,
	[Simultcauploaduniqueno] [int] NULL,
	[InsertedDate] [datetime] NULL,
	[MasterUniqNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xsimhd]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xsimhd](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Identification] [varchar](2) NULL,
	[File_Identification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Credit_ISIN] [varchar](12) NULL,
	[Debit_ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](4) NULL,
	[Allotment_Date] [datetime] NULL,
	[Allotment_Allocation_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[Total_Credit_Quantity_Free_Lockin] [varchar](18) NULL,
	[Total_Debit_Quantity_Free_Lockin] [varchar](18) NULL,
	[Total_Credit_Quantity_Lockin] [varchar](18) NULL,
	[Total_Debit_Quantity_Lockin] [varchar](18) NULL,
	[Total_number_detail_records] [varchar](4) NULL,
	[Total_Issued_Amount_Allotment_Allocation_Credit_ISIN] [varchar](18) NULL,
	[Total_Paidup_Amount_Allotment_Allocation_Credit_ISIN] [varchar](18) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[Basis_calculation_Stamp_Duty] [varchar](2) NULL,
	[Simulcauploaduniqueno] [int] NULL,
	[InsertedDate] [datetime] NULL,
	[MasterUniqNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xsrcfromflat]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xsrcfromflat](
	[Record_Type] [varchar](50) NULL,
	[Line_No] [varchar](50) NULL,
	[DP_ID] [varchar](50) NULL,
	[Ben_Acc_No] [varchar](50) NULL,
	[Ben_Type] [varchar](50) NULL,
	[Ben_sub_type] [varchar](50) NULL,
	[Ben_Acc_Category] [varchar](50) NULL,
	[Ben_Occupation] [varchar](50) NULL,
	[FHlderName_BP] [varchar](250) NULL,
	[FH_FH_name] [varchar](50) NULL,
	[BenBPAdd1] [varchar](50) NULL,
	[BenBPAdd2] [varchar](50) NULL,
	[BenBPAdd3] [varchar](50) NULL,
	[BenBPAdd4] [varchar](50) NULL,
	[BenBPPin] [varchar](50) NULL,
	[BenBPPhno] [varchar](50) NULL,
	[BenBPFaxNo] [varchar](50) NULL,
	[SH_Name] [varchar](50) NULL,
	[SH_FH_name] [varchar](50) NULL,
	[TH_Name] [varchar](50) NULL,
	[TH_FH_name] [varchar](50) NULL,
	[Filler1] [varchar](50) NULL,
	[Filler2] [varchar](54) NULL,
	[FH_PAN] [varchar](50) NULL,
	[SH_PAN] [varchar](50) NULL,
	[TH_PAN] [varchar](50) NULL,
	[NomG_Indicator] [varchar](50) NULL,
	[NomG_Name] [varchar](50) NULL,
	[NomG_Add1] [varchar](50) NULL,
	[NomG_Add2] [varchar](50) NULL,
	[NomG_Add3] [varchar](50) NULL,
	[NomG_Add4] [varchar](50) NULL,
	[NomG_Pincode] [varchar](50) NULL,
	[Dob_minor] [varchar](50) NULL,
	[Minor_Indicator] [varchar](50) NULL,
	[Ben_Bank_AccNo] [varchar](50) NULL,
	[Bank_NameBranch] [varchar](135) NULL,
	[Bank_Add1] [varchar](50) NULL,
	[Bank_Add2] [varchar](50) NULL,
	[Bank_Add3] [varchar](50) NULL,
	[Bank_Add4] [varchar](50) NULL,
	[Bank_Pincode] [varchar](50) NULL,
	[RBI_RefNRI] [varchar](50) NULL,
	[RBI_AppDtNRI] [varchar](50) NULL,
	[SEBI_Regn_No] [varchar](50) NULL,
	[Ben_TDS] [varchar](50) NULL,
	[Ben_Status] [varchar](50) NULL,
	[Ben_Free_Pos] [varchar](50) NULL,
	[Ben_Lockin_Pos] [varchar](50) NULL,
	[Ben_Block_Pos] [varchar](50) NULL,
	[Ben_Pl_Pos] [varchar](50) NULL,
	[Ben_PlLockin_Pos] [varchar](50) NULL,
	[Ben_PlUncPos] [varchar](50) NULL,
	[BenUnconPlLockin_Pos] [varchar](50) NULL,
	[Ben_Remat_Pos] [varchar](50) NULL,
	[Ben_Remat_Lockin_Pos] [varchar](50) NULL,
	[BenCM_IDD_Pos] [varchar](50) NULL,
	[CMPoolPosPooldelivery] [varchar](50) NULL,
	[CC_Settlement_Pos] [varchar](50) NULL,
	[MICR_Code] [varchar](50) NULL,
	[IFSC] [varchar](50) NULL,
	[Bank_Account_Type] [varchar](50) NULL,
	[Filler] [varchar](50) NULL,
	[FHMapin_ID] [varchar](50) NULL,
	[SHMapin_ID] [varchar](50) NULL,
	[THMapin_ID] [varchar](50) NULL,
	[FHEmail_ID] [varchar](50) NULL,
	[SHEmail_ID] [varchar](50) NULL,
	[THEmail_ID] [varchar](50) NULL,
	[RGESS_Flag] [varchar](50) NULL,
	[BenFreePosHlddueNDU] [varchar](50) NULL,
	[BenLockinPosHlddueNDU] [varchar](50) NULL,
	[BenUncFreePosHldNDU] [varchar](50) NULL,
	[BenUncLockinPosHldNDU] [varchar](50) NULL,
	[BenBPAddStatecode] [varchar](50) NULL,
	[BenBPCountrycode] [varchar](50) NULL,
	[LEI_No] [varchar](50) NULL,
	[PAN_Flag_for_FH] [varchar](50) NULL,
	[PAN_Flag_for_SH] [varchar](50) NULL,
	[PAN_Flag_for_TH] [varchar](50) NULL,
	[Filler4] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xtemp1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xtemp1](
	[bnsdlispr] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xtemp1ben]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xtemp1ben](
	[Filler01] [varchar](2) NULL,
	[DP_ID] [varchar](8) NULL,
	[Filler02] [varchar](2) NULL,
	[Client_ID] [varchar](8) NULL,
	[Filler03] [varchar](2) NULL,
	[First_holder_Name] [varchar](250) NULL,
	[Filler04] [varchar](2) NULL,
	[First_Holder_PAN] [varchar](30) NULL,
	[Filler05] [varchar](2) NULL,
	[First_Holder_PAN_status] [varchar](8) NULL,
	[Filler06] [varchar](2) NULL,
	[Second_Holder_Name] [varchar](45) NULL,
	[Filler07] [varchar](2) NULL,
	[Second_Holder_PAN] [varchar](30) NULL,
	[Filler08] [varchar](2) NULL,
	[Second_Holder_PAN_status] [varchar](8) NULL,
	[Filler09] [varchar](2) NULL,
	[Third_Holder_Name] [varchar](45) NULL,
	[Filler10] [varchar](2) NULL,
	[Third_Holder_PAN] [varchar](30) NULL,
	[Filler11] [varchar](2) NULL,
	[Third_Holder_PAN_status] [varchar](8) NULL,
	[Filler12] [varchar](2) NULL,
	[Minor_indicator] [varchar](10) NULL,
	[Filler13] [varchar](2) NULL,
	[Nominee_Guardian_Indicator] [varchar](10) NULL,
	[Filler14] [varchar](2) NULL,
	[Nominee_Guardian_Name] [varchar](45) NULL,
	[Filler15] [varchar](2) NULL,
	[Client_Account_Status] [varchar](13) NULL,
	[Filler16] [varchar](2) NULL,
	[Account_Category] [varchar](13) NULL,
	[Filler17] [varchar](2) NULL,
	[Account_Type] [varchar](5) NULL,
	[Filler18] [varchar](2) NULL,
	[Account_Sub_Type] [varchar](8) NULL,
	[Filler19] [varchar](2) NULL,
	[Ahdealingewhreceipt] [varchar](16) NULL,
	[Filler20] [varchar](2) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masteruniqno] [int] NULL,
	[present_status] [varchar](50) NULL,
	[rem1] [varchar](700) NULL,
	[rem] [varchar](700) NULL,
	[cltype_desc] [varchar](60) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XTEMPCDSLISIN_DETAIL]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XTEMPCDSLISIN_DETAIL](
	[ISIN_Numeric_Code] [varchar](20) NULL,
	[ISIN_Alpha_Code] [varchar](100) NULL,
	[ISIN_Short_Name] [varchar](100) NULL,
	[ISIN_Description] [varchar](300) NULL,
	[Issuer_ID] [varchar](10) NULL,
	[Issuer_Name] [varchar](200) NULL,
	[Issuer_Address_1] [varchar](100) NULL,
	[Issuer_Address_2] [varchar](100) NULL,
	[Issuer_Address_3] [varchar](100) NULL,
	[Issuer_City] [varchar](100) NULL,
	[Issuer_State] [varchar](100) NULL,
	[Issuer_Country] [varchar](100) NULL,
	[Issuer_Zip_Code] [varchar](100) NULL,
	[Issuer_Phone_1] [varchar](100) NULL,
	[Issuer_Phone_2] [varchar](100) NULL,
	[Issuer_Fax] [varchar](100) NULL,
	[Issuer_Email] [varchar](200) NULL,
	[Issuer_Contact_Person_Name] [varchar](100) NULL,
	[Contact_Person_Designation] [varchar](100) NULL,
	[Contact_Person_Address_1] [varchar](100) NULL,
	[Contact_Person_Address_2] [varchar](100) NULL,
	[Contact_Person_Address_3] [varchar](100) NULL,
	[Contact_Person_City] [varchar](100) NULL,
	[Contact_Person_State] [varchar](100) NULL,
	[Contact_Person_Country] [varchar](100) NULL,
	[Contact_Person_Zip_Code] [varchar](100) NULL,
	[Contact_Person_Phone_1] [varchar](100) NULL,
	[Contact_Person_Phone_2] [varchar](100) NULL,
	[Contact_Person_Fax] [varchar](100) NULL,
	[Contact_Person_Email] [varchar](200) NULL,
	[RTA_ID] [varchar](10) NULL,
	[RTA_Name] [varchar](200) NULL,
	[SEBI_Registration_From_Date] [varchar](10) NULL,
	[SEBI_Registration_To_Date] [varchar](100) NULL,
	[RTA_Address_1] [varchar](100) NULL,
	[RTA_Address_2] [varchar](100) NULL,
	[RTA_Address_3] [varchar](100) NULL,
	[RTA_City] [varchar](100) NULL,
	[RTA_State] [varchar](100) NULL,
	[RTA_Country] [varchar](100) NULL,
	[RTA_Zip_Code] [varchar](100) NULL,
	[RTA_Phone_1] [varchar](100) NULL,
	[RTA_Phone_2] [varchar](100) NULL,
	[RTA_Fax] [varchar](100) NULL,
	[RTA_Email] [varchar](100) NULL,
	[ISIN_Share_Name] [varchar](200) NULL,
	[ISIN_Second_Name] [varchar](100) NULL,
	[ISIN_Last_Name] [varchar](100) NULL,
	[ISIN_Address_1] [varchar](100) NULL,
	[ISIN_Address_2] [varchar](100) NULL,
	[ISIN_Address_3] [varchar](100) NULL,
	[ISIN_City] [varchar](100) NULL,
	[ISIN_State] [varchar](100) NULL,
	[ISIN_Country] [varchar](100) NULL,
	[ISIN_Zip_Code] [varchar](100) NULL,
	[ISIN_Phone_1] [varchar](100) NULL,
	[ISIN_Phone_2] [varchar](100) NULL,
	[ISIN_Fax] [varchar](100) NULL,
	[ISIN_Email] [varchar](200) NULL,
	[Security_Type] [varchar](10) NULL,
	[Security_Type_Description] [varchar](100) NULL,
	[Market_Type] [varchar](10) NULL,
	[Market_Type_Description] [varchar](100) NULL,
	[ISIN_Status] [varchar](100) NULL,
	[ISIN_Status_Description] [varchar](100) NULL,
	[Hold_Demat_Flag] [varchar](10) NULL,
	[Hold_Remat_Flag] [varchar](10) NULL,
	[Expiry_Date] [varchar](12) NULL,
	[Market_Lot] [varchar](10) NULL,
	[CFI_Code] [varchar](10) NULL,
	[Par_Value] [varchar](18) NULL,
	[Paidup_Value] [varchar](18) NULL,
	[Redemption_Price] [varchar](18) NULL,
	[Redemption_Date] [varchar](12) NULL,
	[Close_Price] [varchar](18) NULL,
	[Close_Date] [varchar](12) NULL,
	[Issue_Date] [varchar](12) NULL,
	[Close_Price_Decimal_Indicator] [varchar](10) NULL,
	[Conversion_Date] [varchar](12) NULL,
	[Distinct_Range_Exists] [varchar](10) NULL,
	[ISIN_Decimal_Code] [varchar](10) NULL,
	[ISIN_Decimal_Code_Description] [varchar](100) NULL,
	[ISIN_Suspension_Flag] [varchar](200) NULL,
	[ISIN_Suspension_Flag_Description] [varchar](100) NULL,
	[Money_Due_Date] [varchar](12) NULL,
	[Liquidation_Winding_Up_Status] [varchar](200) NULL,
	[Remarks] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xtempdup]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xtempdup](
	[dpid] [varchar](8) NULL,
	[clid] [varchar](8) NULL,
	[units] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xtempx]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xtempx](
	[Record_Type] [nvarchar](2) NULL,
	[ISIN] [nvarchar](12) NULL,
	[Record_Date] [nvarchar](8) NULL,
	[St_Prep_Dt] [nvarchar](8) NULL,
	[St_Prep_Tm] [nvarchar](6) NULL,
	[Tot_NSDL_Pos] [nvarchar](19) NULL,
	[Tot_Trn_Pos] [nvarchar](19) NULL,
	[Tot_Free_Pos] [nvarchar](19) NULL,
	[Tot_Lockin_Pos] [nvarchar](19) NULL,
	[Tot_Block_Pos] [nvarchar](19) NULL,
	[Tot_Pledged_Pos] [nvarchar](19) NULL,
	[Tot_Pl_Lockin_Pos] [nvarchar](19) NULL,
	[Tot_Unc_Pledged_Pos] [nvarchar](19) NULL,
	[Tot_Unc_PlLockin_Pos] [nvarchar](19) NULL,
	[Tot_OLIDT_Pos] [nvarchar](19) NULL,
	[Tot_Remat_Pos] [nvarchar](19) NULL,
	[Tot_Remat_Lockin_Pos] [nvarchar](19) NULL,
	[Tot_NDU_PosHld] [nvarchar](19) NULL,
	[TotNDULockin_PosHld] [nvarchar](19) NULL,
	[Tot_Unc_NDU_PosHld] [nvarchar](19) NULL,
	[TotUncNDULockinPosHld] [nvarchar](19) NULL,
	[Filler1] [nvarchar](19) NULL,
	[Filler2] [nvarchar](19) NULL,
	[Tot_No_of_Dt_Rec] [nvarchar](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XUINC]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XUINC](
	[ISIN] [varchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XUNIC_DATA]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XUNIC_DATA](
	[ISIN] [varchar](12) NULL,
	[DEPFLAG] [varchar](8) NULL,
	[issue_date] [varchar](12) NULL,
	[redemption_date] [varchar](12) NULL,
	[expiry_date] [varchar](12) NULL,
	[close_date] [varchar](12) NULL,
	[conversion_date] [varchar](12) NULL,
	[company_name] [varchar](100) NULL,
	[money_due_date] [varchar](12) NULL,
	[ISIN_Numeric_Code] [varchar](10) NULL,
	[Security_Type] [varchar](10) NULL,
	[ISIN_Suspension_Flag_Description] [varchar](50) NULL,
	[Security_Type_Description] [varchar](50) NULL,
	[Market_Type] [varchar](10) NULL,
	[ISIN_Suspension_Flag] [varchar](50) NULL,
	[Market_Type_Description] [varchar](50) NULL,
	[ISIN_Status] [varchar](50) NULL,
	[ISIN_Status_Description] [varchar](50) NULL,
	[Par_Value] [varchar](20) NULL,
	[creation_date] [varchar](12) NULL,
	[maturity_date] [varchar](12) NULL,
	[Last_Update_date] [varchar](12) NULL,
	[security_status] [varchar](2) NULL,
	[security_remark] [varchar](60) NULL,
	[security_Status_description] [varchar](30) NULL,
	[convert_amount] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xuniqueisin]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xuniqueisin](
	[isin] [varchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XUNIQUENSDL]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XUNIQUENSDL](
	[rem] [varchar](1000) NULL,
	[Record_Type] [varchar](2) NULL,
	[Line_Number] [varchar](7) NULL,
	[ISIN] [varchar](12) NULL,
	[National_Security_Code] [varchar](9) NULL,
	[Booking_Basis] [varchar](2) NULL,
	[ISIN_Short_Name] [varchar](140) NULL,
	[Company_Code] [varchar](8) NULL,
	[Company_Name] [varchar](140) NULL,
	[Security_Type] [varchar](2) NULL,
	[Security_Sub_Type] [varchar](2) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Maturity_Date] [varchar](8) NULL,
	[Convert_Date] [varchar](8) NULL,
	[Face_Value] [varchar](15) NULL,
	[Convert_Amount] [varchar](15) NULL,
	[Share_Registrar_Code] [varchar](8) NULL,
	[Share_Registrar_Name] [varchar](140) NULL,
	[Security_Status] [varchar](2) NULL,
	[Security_Remark] [varchar](60) NULL,
	[Decimal_allowed] [varchar](1) NULL,
	[Creation_Date] [varchar](8) NULL,
	[Last_Update_date] [varchar](8) NULL,
	[Security_Status_Description] [varchar](30) NULL,
	[Security_Type_Description] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xvbenp]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xvbenp](
	[Record_Type] [nvarchar](2) NULL,
	[Line_No] [nvarchar](7) NULL,
	[DP_ID] [nvarchar](8) NULL,
	[Ben_Acc_No] [nvarchar](8) NULL,
	[Ben_Type] [nvarchar](2) NULL,
	[Ben_sub_type] [nvarchar](2) NULL,
	[Ben_Acc_Category] [nvarchar](2) NULL,
	[Ben_Occupation] [nvarchar](2) NULL,
	[FHlderName_BP] [nvarchar](250) NULL,
	[FH_FH_name] [nvarchar](45) NULL,
	[BenBPAdd1] [nvarchar](36) NULL,
	[BenBPAdd2] [nvarchar](36) NULL,
	[BenBPAdd3] [nvarchar](36) NULL,
	[BenBPAdd4] [nvarchar](36) NULL,
	[BenBPPin] [nvarchar](10) NULL,
	[BenBPPhno] [nvarchar](24) NULL,
	[BenBPFaxNo] [nvarchar](24) NULL,
	[SH_Name] [nvarchar](45) NULL,
	[SH_FH_name] [nvarchar](45) NULL,
	[TH_Name] [nvarchar](45) NULL,
	[TH_FH_name] [nvarchar](45) NULL,
	[Filler1] [nvarchar](16) NULL,
	[Filler2] [nvarchar](54) NULL,
	[FH_PAN] [nvarchar](30) NULL,
	[SH_PAN] [nvarchar](30) NULL,
	[TH_PAN] [nvarchar](30) NULL,
	[NomG_Indicator] [nvarchar](1) NULL,
	[NomG_Name] [nvarchar](45) NULL,
	[NomG_Add1] [nvarchar](36) NULL,
	[NomG_Add2] [nvarchar](36) NULL,
	[NomG_Add3] [nvarchar](36) NULL,
	[NomG_Add4] [nvarchar](36) NULL,
	[NomG_Pincode] [nvarchar](10) NULL,
	[Dob_minor] [nvarchar](8) NULL,
	[Minor_Indicator] [nvarchar](1) NULL,
	[Ben_Bank_AccNo] [nvarchar](30) NULL,
	[Bank_NameBranch] [nvarchar](135) NULL,
	[Bank_Add1] [nvarchar](36) NULL,
	[Bank_Add2] [nvarchar](36) NULL,
	[Bank_Add3] [nvarchar](36) NULL,
	[Bank_Add4] [nvarchar](36) NULL,
	[Bank_Pincode] [nvarchar](10) NULL,
	[RBI_RefNRI] [nvarchar](50) NULL,
	[RBI_AppDtNRI] [nvarchar](8) NULL,
	[SEBI_Regn_No] [nvarchar](24) NULL,
	[Ben_TDS] [nvarchar](20) NULL,
	[Ben_Status] [nvarchar](2) NULL,
	[Ben_Free_Pos] [nvarchar](19) NULL,
	[Ben_Lockin_Pos] [nvarchar](19) NULL,
	[Ben_Block_Pos] [nvarchar](19) NULL,
	[Ben_Pl_Pos] [nvarchar](19) NULL,
	[Ben_PlLockin_Pos] [nvarchar](19) NULL,
	[Ben_PlUncPos] [nvarchar](19) NULL,
	[BenUnconPlLockin_Pos] [nvarchar](19) NULL,
	[Ben_Remat_Pos] [nvarchar](19) NULL,
	[Ben_Remat_Lockin_Pos] [nvarchar](19) NULL,
	[BenCM_IDD_Pos] [nvarchar](19) NULL,
	[CMPoolPosPooldelivery] [nvarchar](19) NULL,
	[CC_Settlement_Pos] [nvarchar](19) NULL,
	[MICR_Code] [nvarchar](9) NULL,
	[IFSC] [nvarchar](11) NULL,
	[Bank_Account_Type] [nvarchar](2) NULL,
	[Filler3] [nvarchar](30) NULL,
	[FHMapin_ID] [nvarchar](9) NULL,
	[SHMapin_ID] [nvarchar](9) NULL,
	[THMapin_ID] [nvarchar](9) NULL,
	[FHEmail_ID] [nvarchar](50) NULL,
	[SHEmail_ID] [nvarchar](50) NULL,
	[THEmail_ID] [nvarchar](50) NULL,
	[RGESS_Flag] [nvarchar](1) NULL,
	[BenFreePosHlddueNDU] [nvarchar](19) NULL,
	[BenLockinPosHlddueNDU] [nvarchar](19) NULL,
	[BenUncFreePosHldNDU] [nvarchar](19) NULL,
	[BenUncLockinPosHldNDU] [nvarchar](19) NULL,
	[BenBPAddStatecode] [nvarchar](2) NULL,
	[BenBPCountrycode] [nvarchar](3) NULL,
	[LEI_No] [nvarchar](20) NULL,
	[PAN_Flag_for_FH] [nvarchar](1) NULL,
	[PAN_Flag_for_SH] [nvarchar](1) NULL,
	[PAN_Flag_for_TH] [nvarchar](1) NULL,
	[Promoter_Kmp] [nvarchar](2) NULL,
	[FPI_Category] [nvarchar](100) NULL,
	[Filler4] [nvarchar](9) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xx]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xx](
	[RowNum] [bigint] NULL,
	[Record_Type] [nvarchar](2) NULL,
	[Line_No] [nvarchar](7) NULL,
	[DP_ID] [nvarchar](8) NULL,
	[Ben_Acc_No] [nvarchar](8) NULL,
	[Ben_Type] [nvarchar](2) NULL,
	[Ben_sub_type] [nvarchar](2) NULL,
	[Ben_Acc_Category] [nvarchar](2) NULL,
	[Ben_Occupation] [nvarchar](2) NULL,
	[FHlderName_BP] [nvarchar](250) NULL,
	[FH_FH_name] [nvarchar](45) NULL,
	[BenBPAdd1] [nvarchar](36) NULL,
	[BenBPAdd2] [nvarchar](36) NULL,
	[BenBPAdd3] [nvarchar](36) NULL,
	[BenBPAdd4] [nvarchar](36) NULL,
	[BenBPPin] [nvarchar](10) NULL,
	[BenBPPhno] [nvarchar](24) NULL,
	[BenBPFaxNo] [nvarchar](24) NULL,
	[SH_Name] [nvarchar](45) NULL,
	[SH_FH_name] [nvarchar](45) NULL,
	[TH_Name] [nvarchar](45) NULL,
	[TH_FH_name] [nvarchar](45) NULL,
	[Filler1] [nvarchar](16) NULL,
	[Filler2] [nvarchar](54) NULL,
	[FH_PAN] [nvarchar](30) NULL,
	[SH_PAN] [nvarchar](30) NULL,
	[TH_PAN] [nvarchar](30) NULL,
	[NomG_Indicator] [nvarchar](1) NULL,
	[NomG_Name] [nvarchar](45) NULL,
	[NomG_Add1] [nvarchar](36) NULL,
	[NomG_Add2] [nvarchar](36) NULL,
	[NomG_Add3] [nvarchar](36) NULL,
	[NomG_Add4] [nvarchar](36) NULL,
	[NomG_Pincode] [nvarchar](10) NULL,
	[Dob_minor] [nvarchar](8) NULL,
	[Minor_Indicator] [nvarchar](1) NULL,
	[Ben_Bank_AccNo] [nvarchar](30) NULL,
	[Bank_NameBranch] [nvarchar](135) NULL,
	[Bank_Add1] [nvarchar](36) NULL,
	[Bank_Add2] [nvarchar](36) NULL,
	[Bank_Add3] [nvarchar](36) NULL,
	[Bank_Add4] [nvarchar](36) NULL,
	[Bank_Pincode] [nvarchar](10) NULL,
	[RBI_RefNRI] [nvarchar](50) NULL,
	[RBI_AppDtNRI] [nvarchar](8) NULL,
	[SEBI_Regn_No] [nvarchar](24) NULL,
	[Ben_TDS] [nvarchar](20) NULL,
	[Ben_Status] [nvarchar](2) NULL,
	[Ben_Free_Pos] [nvarchar](19) NULL,
	[Ben_Lockin_Pos] [nvarchar](19) NULL,
	[Ben_Block_Pos] [nvarchar](19) NULL,
	[Ben_Pl_Pos] [nvarchar](19) NULL,
	[Ben_PlLockin_Pos] [nvarchar](19) NULL,
	[Ben_PlUncPos] [nvarchar](19) NULL,
	[BenUnconPlLockin_Pos] [nvarchar](19) NULL,
	[Ben_Remat_Pos] [nvarchar](19) NULL,
	[Ben_Remat_Lockin_Pos] [nvarchar](19) NULL,
	[BenCM_IDD_Pos] [nvarchar](19) NULL,
	[CMPoolPosPooldelivery] [nvarchar](19) NULL,
	[CC_Settlement_Pos] [nvarchar](19) NULL,
	[MICR_Code] [nvarchar](9) NULL,
	[IFSC] [nvarchar](11) NULL,
	[Bank_Account_Type] [nvarchar](2) NULL,
	[Filler3] [nvarchar](30) NULL,
	[FHMapin_ID] [nvarchar](9) NULL,
	[SHMapin_ID] [nvarchar](9) NULL,
	[THMapin_ID] [nvarchar](9) NULL,
	[FHEmail_ID] [nvarchar](50) NULL,
	[SHEmail_ID] [nvarchar](50) NULL,
	[THEmail_ID] [nvarchar](50) NULL,
	[RGESS_Flag] [nvarchar](1) NULL,
	[BenFreePosHlddueNDU] [nvarchar](19) NULL,
	[BenLockinPosHlddueNDU] [nvarchar](19) NULL,
	[BenUncFreePosHldNDU] [nvarchar](19) NULL,
	[BenUncLockinPosHldNDU] [nvarchar](19) NULL,
	[BenBPAddStatecode] [nvarchar](2) NULL,
	[BenBPCountrycode] [nvarchar](3) NULL,
	[LEI_No] [nvarchar](20) NULL,
	[PAN_Flag_for_FH] [nvarchar](1) NULL,
	[PAN_Flag_for_SH] [nvarchar](1) NULL,
	[PAN_Flag_for_TH] [nvarchar](1) NULL,
	[Filler4] [nvarchar](9) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XX1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XX1](
	[rem] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xx123]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xx123](
	[ISIN_Numeric_Code] [varchar](20) NULL,
	[ISIN_Alpha_Code] [varchar](100) NULL,
	[ISIN_Short_Name] [varchar](100) NULL,
	[ISIN_Description] [varchar](300) NULL,
	[Issuer_ID] [varchar](10) NULL,
	[Issuer_Name] [varchar](200) NULL,
	[Issuer_Address_1] [varchar](100) NULL,
	[Issuer_Address_2] [varchar](100) NULL,
	[Issuer_Address_3] [varchar](100) NULL,
	[Issuer_City] [varchar](100) NULL,
	[Issuer_State] [varchar](100) NULL,
	[Issuer_Country] [varchar](100) NULL,
	[Issuer_Zip_Code] [varchar](100) NULL,
	[Issuer_Phone_1] [varchar](100) NULL,
	[Issuer_Phone_2] [varchar](100) NULL,
	[Issuer_Fax] [varchar](100) NULL,
	[Issuer_Email] [varchar](200) NULL,
	[Issuer_Contact_Person_Name] [varchar](100) NULL,
	[Contact_Person_Designation] [varchar](100) NULL,
	[Contact_Person_Address_1] [varchar](100) NULL,
	[Contact_Person_Address_2] [varchar](100) NULL,
	[Contact_Person_Address_3] [varchar](100) NULL,
	[Contact_Person_City] [varchar](100) NULL,
	[Contact_Person_State] [varchar](100) NULL,
	[Contact_Person_Country] [varchar](100) NULL,
	[Contact_Person_Zip_Code] [varchar](100) NULL,
	[Contact_Person_Phone_1] [varchar](100) NULL,
	[Contact_Person_Phone_2] [varchar](100) NULL,
	[Contact_Person_Fax] [varchar](100) NULL,
	[Contact_Person_Email] [varchar](200) NULL,
	[RTA_ID] [varchar](10) NULL,
	[RTA_Name] [varchar](200) NULL,
	[SEBI_Registration_From_Date] [varchar](10) NULL,
	[SEBI_Registration_To_Date] [varchar](100) NULL,
	[RTA_Address_1] [varchar](100) NULL,
	[RTA_Address_2] [varchar](100) NULL,
	[RTA_Address_3] [varchar](100) NULL,
	[RTA_City] [varchar](100) NULL,
	[RTA_State] [varchar](100) NULL,
	[RTA_Country] [varchar](100) NULL,
	[RTA_Zip_Code] [varchar](100) NULL,
	[RTA_Phone_1] [varchar](100) NULL,
	[RTA_Phone_2] [varchar](100) NULL,
	[RTA_Fax] [varchar](100) NULL,
	[RTA_Email] [varchar](100) NULL,
	[ISIN_Share_Name] [varchar](200) NULL,
	[ISIN_Second_Name] [varchar](100) NULL,
	[ISIN_Last_Name] [varchar](100) NULL,
	[ISIN_Address_1] [varchar](100) NULL,
	[ISIN_Address_2] [varchar](100) NULL,
	[ISIN_Address_3] [varchar](100) NULL,
	[ISIN_City] [varchar](100) NULL,
	[ISIN_State] [varchar](100) NULL,
	[ISIN_Country] [varchar](100) NULL,
	[ISIN_Zip_Code] [varchar](100) NULL,
	[ISIN_Phone_1] [varchar](100) NULL,
	[ISIN_Phone_2] [varchar](100) NULL,
	[ISIN_Fax] [varchar](100) NULL,
	[ISIN_Email] [varchar](200) NULL,
	[Security_Type] [varchar](10) NULL,
	[Security_Type_Description] [varchar](100) NULL,
	[Market_Type] [varchar](10) NULL,
	[Market_Type_Description] [varchar](100) NULL,
	[ISIN_Status] [varchar](100) NULL,
	[ISIN_Status_Description] [varchar](100) NULL,
	[Hold_Demat_Flag] [varchar](10) NULL,
	[Hold_Remat_Flag] [varchar](10) NULL,
	[Expiry_Date] [varchar](12) NULL,
	[Market_Lot] [varchar](10) NULL,
	[CFI_Code] [varchar](10) NULL,
	[Par_Value] [varchar](18) NULL,
	[Paidup_Value] [varchar](18) NULL,
	[Redemption_Price] [varchar](18) NULL,
	[Redemption_Date] [varchar](12) NULL,
	[Close_Price] [varchar](18) NULL,
	[Close_Date] [varchar](12) NULL,
	[Issue_Date] [varchar](12) NULL,
	[Close_Price_Decimal_Indicator] [varchar](10) NULL,
	[Conversion_Date] [varchar](12) NULL,
	[Distinct_Range_Exists] [varchar](10) NULL,
	[ISIN_Decimal_Code] [varchar](10) NULL,
	[ISIN_Decimal_Code_Description] [varchar](100) NULL,
	[ISIN_Suspension_Flag] [varchar](200) NULL,
	[ISIN_Suspension_Flag_Description] [varchar](100) NULL,
	[Money_Due_Date] [varchar](12) NULL,
	[Liquidation_Winding_Up_Status] [varchar](200) NULL,
	[Remarks] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XXBAK]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XXBAK](
	[rem] [varchar](1000) NULL,
	[Record_Type] [varchar](2) NULL,
	[Line_Number] [varchar](7) NULL,
	[ISIN] [varchar](12) NULL,
	[National_Security_Code] [varchar](9) NULL,
	[Booking_Basis] [varchar](2) NULL,
	[ISIN_Short_Name] [varchar](140) NULL,
	[Company_Code] [varchar](8) NULL,
	[Company_Name] [varchar](140) NULL,
	[Security_Type] [varchar](2) NULL,
	[Security_Sub_Type] [varchar](2) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Maturity_Date] [varchar](8) NULL,
	[Convert_Date] [varchar](8) NULL,
	[Face_Value] [varchar](15) NULL,
	[Convert_Amount] [varchar](15) NULL,
	[Share_Registrar_Code] [varchar](8) NULL,
	[Share_Registrar_Name] [varchar](140) NULL,
	[Security_Status] [varchar](2) NULL,
	[Security_Remark] [varchar](60) NULL,
	[Decimal_allowed] [varchar](1) NULL,
	[Creation_Date] [varchar](8) NULL,
	[Last_Update_date] [varchar](8) NULL,
	[Security_Status_Description] [varchar](30) NULL,
	[Security_Type_Description] [varchar](30) NULL,
	[vslno] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XXBAK1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XXBAK1](
	[ISIN] [varchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xxReport]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxReport](
	[ISIN] [nvarchar](255) NULL,
	[SERIAL_NUMBER] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XXX1234]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XXX1234](
	[DP_ID] [nvarchar](255) NULL,
	[CLNT_ID] [float] NULL,
	[SOLE_FIRST_HOLDER_NAME] [nvarchar](255) NULL,
	[SECOND_HOLDER_NAME] [nvarchar](255) NULL,
	[THIRD_HOLDER_NAME] [nvarchar](255) NULL,
	[FTHR_HSBND_NAME] [nvarchar](255) NULL,
	[OCCUPATION] [float] NULL,
	[BDLS] [nvarchar](255) NULL,
	[CLNTTYP] [float] NULL,
	[CATEGORY] [float] NULL,
	[SUB_TYPE] [float] NULL,
	[STATUS] [float] NULL,
	[MNORMAJOR] [nvarchar](255) NULL,
	[BANK_ACC_NO] [float] NULL,
	[BANK_ACC_TYPE] [float] NULL,
	[BANK_NAME1] [nvarchar](255) NULL,
	[MICR_NO] [float] NULL,
	[IFSC] [nvarchar](255) NULL,
	[SOLE_FIRST_HOLDER_PAN] [nvarchar](255) NULL,
	[PAN_STAT1] [nvarchar](255) NULL,
	[SECOND_HOLDER_PAN] [nvarchar](255) NULL,
	[PAN_STAT2] [nvarchar](255) NULL,
	[THIRD_HOLDER_PAN] [nvarchar](255) NULL,
	[PAN_STAT3] [nvarchar](255) NULL,
	[RBI_AP_DT] [nvarchar](255) NULL,
	[BCD_RBI_REF] [nvarchar](255) NULL,
	[BCD_SEBI_RGN] [nvarchar](255) NULL,
	[CLIENT_ADDRESS1] [nvarchar](255) NULL,
	[CLIENT_ADDRESS2] [nvarchar](255) NULL,
	[CLIENT_ADDRESS3] [nvarchar](255) NULL,
	[CLIENT_ADDRESS4] [nvarchar](255) NULL,
	[PIN] [float] NULL,
	[CLIENT_PHONE] [float] NULL,
	[CLIENT_FAX] [float] NULL,
	[BANK_ADDRESS1] [nvarchar](255) NULL,
	[BANK_ADDRESS2] [nvarchar](255) NULL,
	[BANK_ADDRESS3] [nvarchar](255) NULL,
	[BANK_ADDRESS4] [nvarchar](255) NULL,
	[B_PIN] [float] NULL,
	[CLIENT_INDICATOR] [nvarchar](255) NULL,
	[FIRST_HOLDER_EMAIL_ID] [nvarchar](255) NULL,
	[F42] [nvarchar](255) NULL,
	[F43] [nvarchar](255) NULL,
	[F44] [nvarchar](255) NULL,
	[F45] [nvarchar](255) NULL,
	[F46] [nvarchar](255) NULL,
	[F47] [nvarchar](255) NULL,
	[F48] [nvarchar](255) NULL,
	[F49] [nvarchar](255) NULL,
	[F50] [nvarchar](255) NULL,
	[F51] [nvarchar](255) NULL,
	[F52] [nvarchar](255) NULL,
	[F53] [nvarchar](255) NULL,
	[F54] [nvarchar](255) NULL,
	[F55] [nvarchar](255) NULL,
	[F56] [nvarchar](255) NULL,
	[F57] [nvarchar](255) NULL,
	[F58] [nvarchar](255) NULL,
	[F59] [nvarchar](255) NULL,
	[F60] [nvarchar](255) NULL,
	[F61] [nvarchar](255) NULL,
	[F62] [nvarchar](255) NULL,
	[F63] [nvarchar](255) NULL,
	[F64] [nvarchar](255) NULL,
	[F65] [nvarchar](255) NULL,
	[F66] [nvarchar](255) NULL,
	[F67] [nvarchar](255) NULL,
	[F68] [nvarchar](255) NULL,
	[F69] [nvarchar](255) NULL,
	[F70] [nvarchar](255) NULL,
	[F71] [nvarchar](255) NULL,
	[F72] [nvarchar](255) NULL,
	[F73] [nvarchar](255) NULL,
	[F74] [nvarchar](255) NULL,
	[F75] [nvarchar](255) NULL,
	[F76] [nvarchar](255) NULL,
	[F77] [nvarchar](255) NULL,
	[F78] [nvarchar](255) NULL,
	[F79] [nvarchar](255) NULL,
	[F80] [nvarchar](255) NULL,
	[F81] [nvarchar](255) NULL,
	[F82] [nvarchar](255) NULL,
	[F83] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XXYYZZ]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XXYYZZ](
	[Record_IDentification] [varchar](2) NULL,
	[File_IDentification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Debit_Credit_Indicator] [varchar](1) NULL,
	[ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](12) NULL,
	[Allotment_Date] [datetime] NULL,
	[Allocation_Allotment_Description] [varchar](4) NULL,
	[Execution_Date] [datetime] NULL,
	[Total_Allotted_Quantity_Free_Lockin] [varchar](18) NULL,
	[Total_Allotted_Quantity_Lockin] [varchar](18) NULL,
	[Total_No_detail_records] [varchar](7) NULL,
	[Total_Issued_Amount] [varchar](18) NULL,
	[Total_Paidup_Amount] [varchar](18) NULL,
	[Stamp_Duty_Payable] [varchar](1) NULL,
	[Basis_calculation_Stamp_Duty] [varchar](2) NULL,
	[EBP_Name] [varchar](2) NULL,
	[Funds_collected_through] [varchar](2) NULL,
	[Filler] [varchar](2) NULL,
	[Normalcauploaduniqueno] [int] NULL,
	[MasterUniqNo] [int] NULL,
	[opfv] [decimal](18, 0) NULL,
	[opfvvalue] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xyx]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xyx](
	[rem] [varchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xyz123123]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xyz123123](
	[remsource] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xyz123456]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xyz123456](
	[remsource] [varchar](250) NULL,
	[Copy of remsource] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aif_dpidclidisinimport]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[aif_dpidclidisinimport] 
as 
begin
update bendem01 set 
		record_Type= substring(rem,1,2),
		batch_no= substring(rem,3,7),
		rta_id	= substring(rem,10,8),
		isin	= substring(rem,18,12),
		request_type= substring(rem,30,1),
		sender_id= substring(rem,31,8),
		sender_date= substring(rem,39,8),
		filler1	= substring(rem,47,8),
		masteruniqno= 1201
IF OBJECT_ID ( 'aifimpdpidclidisin', 'U' ) IS NOT NULL  DROP TABLE aifimpdpidclidisin
create table aifimpdpidclidisin (dpidclid varchar(16),ISIN varchar(12))

BULK INSERT aifimpdpidclidisin 
	FROM 'D:\Rights_Bonus\ADROIT\NSDLCDSL.csv' 
	WITH 
	(  
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=50
	)
	alter table aifimpdpidclidisin add dpid varchar(8), clid varchar(8)
	update aifimpdpidclidisin set dpid = substring(dpidclid,1,8)
	update aifimpdpidclidisin set clid = substring(dpidclid,9,8)
	truncate table bendem02
	insert into bendem02 (dpid,clid) (select dpid,clid from aifimpdpidclidisin)
	DELETE from bendem02 WHERE DPID LIKE '1%'
	IF OBJECT_ID ( 'BENDEM02U', 'U' ) IS NOT NULL  DROP TABLE BENDEM02U
	SELECT DPID,CLID INTO BENDEM02U FROM BENDEM02 GROUP BY DPID,CLID
	ALTER TABLE BENDEM02U ADD rem varchar(100),record_type varchar(2),line_no varchar(7),masteruniqno int,id int primary key identity(1,1)
	update bendem02U set record_type='02',masteruniqno = '1201'
select * from bendem02u
--	drop table #temp2
	SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO #TEMP2 FROM bendem02u WHERE id < 99999
	UPDATE a SET a.Line_no = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM bendem02u a JOIN #temp2 b ON a.ID=b.ID
	truncate table bendem02
	insert into bendem02 (record_type,line_no,DPID,CLID,masteruniqno) (select record_type,line_no,DPID,CLID,masteruniqno from bendem02u)
--	select dpid,clid from bendem02 group by dpid,clid having count(*) >1
	truncate table bendem2o
End

GO
/****** Object:  StoredProcedure [dbo].[AIFBulkImport3FieldsForSingleIsinDetailRCDSL]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AIFBulkImport3FieldsForSingleIsinDetailRCDSL] 
as 
begin
	IF OBJECT_ID ( 'aifbulkcdsl03d', 'U' ) IS NOT NULL  DROP TABLE aifbulkcdsl03d
	create table aifbulkcdsl03d (isin varchar(16),bo_id varchar(16),shares varchar(16))
--	select * from aifbulkcdsl03d
	truncate table aifbulkcdsl03d
	BULK INSERT aifbulkcdsl03d
		FROM 'D:\AIF\totcrec.csv' 
		WITH 
		(  
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',  
			ROWTERMINATOR = '\n',  
			BATCHSIZE=10
		)
--	Print 'Importing is Just Done...................!'
	delete from aifbulkcdsl03d where bo_id not like '1%'

--	select * from aifbulkcdsl03d
	IF OBJECT_ID ( 'aifcdsltotaltemp', 'U' ) IS NOT NULL  DROP TABLE aifcdsltotaltemp 
	select sum(convert(int,shares)) as bcq,count(*) as cdslrec1 into aifcdsltotaltemp from aifbulkcdsl03d
	alter table aifbulkcdsl03d add ID int identity(1,1)
	
	alter table aifbulkcdsl03d add 
			Record_Type			varchar(2),
			RTA_IntRef_No		varchar(16),
			PISIN				varchar(12),
			PCurr_Qty			varchar(16),
			PFrozen_Qty			varchar(16),
			PLockin_Qty			varchar(16),
			PLockin_Reason_Cd	varchar(2),
			PLockin_Reason		varchar(50),
			PLockin_Exp_Date	datetime,
			PDRCR_Flag			varchar(1),
			Benefit_Isin		varchar(12),
			BCurr_Qty			varchar(16),
			BFrozen_Qty			varchar(16),
			BLockin_Qty			varchar(16),
			BLockin_Reason_Cd	varchar(2),
			BLockin_Reason		varchar(50),
			BLockin_Exp_Date	datetime,
			BDRCR_Flag			varchar(1),
			CDT					datetime,
			MasterUniqNo		int,	
			OfferPrice			varchar(16),
			ProcessedFlag		varchar(1),
			calcflag			varchar(1)
			--generate line Nos.
			IF OBJECT_ID ( 'CTEMP22', 'U' ) IS NOT NULL  DROP TABLE CTEMP22
			SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO CTEMP22 FROM aifbulkcdsl03d WHERE id < 99999
			UPDATE a SET a.RTA_IntRef_No = 'VIRCHOW1' + RIGHT('0000'+CONVERT(VARCHAR,B.RowN),4)+ '    ' FROM aifbulkcdsl03d a JOIN ctemp22 b ON a.ID=b.ID

			update aifbulkcdsl03d  set	
				Record_Type				='02',
				PISIN					= ISIN,
				PCurr_Qty				='000000000000.000',
				PFrozen_Qty				='000000000000.000',
				PLockin_Qty				='000000000000.000',
				PLockin_Reason_Cd		='00',
				PLockin_Reason			='                                                  ',
				--PLockin_Exp_Date		='00000000',
				PDRCR_Flag				='D',
				Benefit_Isin			=ISIN,
				
				BCurr_Qty				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,shares)),12)) +'.000',
				BFrozen_Qty				='000000000000.000',
				BLockin_Qty				='000000000000.000',
				BLockin_Reason_Cd		='00',
				BLockin_Reason			='                                                  ',
				--BLockin_Exp_Date		='00000000',
				BDRCR_Flag				='C',
				CDT						=getdate(),
				MasterUniqNo			='1401',
				OfferPrice				='000000000000.000',
				ProcessedFlag			='Y',
				calcflag				='Y'
				
				truncate table corpactCDSLDetailtt
				INSERT INTO corpactCDSLDetailtt  
				(
				Record_Type,BO_ID,RTA_IntRef_No,PISIN,PCurr_Qty,PFrozen_Qty,
				PLockin_Qty,PLockin_Reason_Cd,PLockin_Reason,PLockin_Exp_Date,
				PDRCR_Flag,Benefit_Isin,BCurr_Qty,BFrozen_Qty,BLockin_Qty,
				BLockin_Reason_Cd,BLockin_Reason,BLockin_Exp_Date,BDRCR_Flag,
				CDT,MasterUniqNo,OfferPrice,ProcessedFlag,calcflag
				) 
				SELECT
				Record_Type,BO_ID,RTA_IntRef_No,PISIN,PCurr_Qty,PFrozen_Qty,
				PLockin_Qty,PLockin_Reason_Cd,PLockin_Reason,PLockin_Exp_Date,
				PDRCR_Flag,Benefit_Isin,BCurr_Qty,BFrozen_Qty,BLockin_Qty,
				BLockin_Reason_Cd,BLockin_Reason,BLockin_Exp_Date,BDRCR_Flag,
				CDT,MasterUniqNo,OfferPrice,ProcessedFlag,calcflag
				FROM aifbulkcdsl03d
end
GO
/****** Object:  StoredProcedure [dbo].[AifBulkImport3FieldsForSingleIsinDetailRecord]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AifBulkImport3FieldsForSingleIsinDetailRecord] @misin varchar(12), @stampduty varchar(1) 
AS
BEGIN
	IF OBJECT_ID ( 'aifbulkfile01', 'U' ) IS NOT NULL  DROP TABLE aifbulkfile01
	create table aifbulkfile01 (slno varchar(5),isin varchar(12), dpid varchar(8),clid varchar(8),units varchar(18),name varchar(50),jh1 varchar(50),all_date varchar(10),paidval varchar(18))
	BULK INSERT aifbulkfile01 
		FROM 'D:\AIF\totNrec.csv' 
		WITH 
		(  
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',  
			ROWTERMINATOR = '\n',  
			BATCHSIZE=10
		)
--		select * from aifbulkfile02A
		select * from aifbulkfile01

		alter table aifbulkfile01 add tissamt varchar(18)
		alter table aifbulkfile01 add stampduty varchar(1)
		alter table aifbulkfile01 add id int identity(1,1)
		update aifbulkfile01 set stampduty = @stampduty
		update aifbulkfile01 set tissamt = trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,units)*100),16)) +'00'  
		update aifbulkfile01 set stampduty = @stampduty
		DELETE FROM AIFBULKFILE01 WHERE ISIN IS NULL
		IF OBJECT_ID ( 'aiftotshr', 'U' ) IS NOT NULL  DROP TABLE aiftotshr
			select sum(convert(int,units)) as totshr,count(*) as totrec1 into aiftotshr from aifbulkfile01
			truncate table aifbulkfile02
			INSERT INTO aifbulkfile02 (dp_id,client_id,Allotment_Quantity,tissamt,Issue_Price,paidup_price)
			SELECT dpid,clid,trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,units)),15)) +'000',
							 tissamt,
			                 trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000',
							 trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000'
				from aifbulkfile01
		--SELECT * FROM AIFBULKFILE01
		
		
		--generate line Nos.
		IF OBJECT_ID ( 'ntemp2', 'U' ) IS NOT NULL  DROP TABLE ntemp2
		SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO ntemp2 FROM aifbulkfile02 WHERE id < 99999
		UPDATE a SET a.Detail_Record_Line_No = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM aifbulkfile02 a JOIN ntemp2 b ON a.ID=b.ID
		update aifbulkfile02 set	Record_IDentification ='02',
									Client_Account_Category='00',
									Lockin_Reason_Code='00',
									Lockin_Release_Date='1900-01-01 00:00:00.000',
									Issued_Amount = tissamt, 
									Paidup_Amount = tissamt,
									filler ='',
									MasterUniqNo ='1040',
									ProcessedFlag='N',
									FractionFlag='N',
									calcflag='Y'
--			select * from aifbulkfile01
		UPDATE a SET a.Issue_Price		= '000000000000000000'  FROM aifbulkfile02 a JOIN aifbulkfile01 b ON b.ID=1 and b.stampduty ='N'
		UPDATE a SET a.Issued_Amount	= '000000000000000000'  FROM aifbulkfile02 a JOIN aifbulkfile01 b ON b.ID=1 and b.stampduty ='N'
		UPDATE a SET a.Paidup_Price		= '000000000000000000'  FROM aifbulkfile02 a JOIN aifbulkfile01 b ON b.ID=1 and b.stampduty ='N'
		UPDATE a SET a.Paidup_Amount	= '000000000000000000'  FROM aifbulkfile02 a JOIN aifbulkfile01 b ON b.ID=1 and b.stampduty ='N'
		--SELECT * FROM AIFBULKFILE01
		--SELECT * FROM AIFBULKFILE02
		delete from aifbulkfile02 where dp_id like '1%'
		IF OBJECT_ID ( 'NORMALCADETAILRECORDTT', 'U' ) IS NOT NULL  DROP TABLE NORMALCADETAILRECORDTT
			SELECT * INTO NORMALCADETAILRECORDTT FROM NormalCADetailRecord
			truncate table normalcadetailrecordtt
			INSERT INTO NormalCADetailRecordTT  (Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
			Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag) 
			SELECT
			Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
			Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag 
			FROM AIFBULKFILE02
END

GO
/****** Object:  StoredProcedure [dbo].[AIFBulkImport3FieldsForSingleIsinHeaderRCDSL]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AIFBulkImport3FieldsForSingleIsinHeaderRCDSL] 
	as 
	begin
--		select bcq from  aifcdsltotaltemp 
		alter table aifcdsltotaltemp add id int identity(1,1)
		delete from aifbulkcdsl03a where id <> 1
		update aifbulkcdsl03a  set Record_Type			= '01'
		UPDATE a SET a.Total_Records = RIGHT('0000000000'  +CONVERT(VARCHAR,B.cdslrec1),10) FROM aifbulkcdsl03a a JOIN aifcdsltotaltemp  b ON a.ID=1
		UPDATE a SET a.Tot_Curr_Qty  = RIGHT('000000000000'+CONVERT(VARCHAR,B.bcq),12)+ '.000' FROM aifbulkcdsl03a a JOIN aifcdsltotaltemp  b ON a.ID=1
		update aifbulkcdsl03a  set Tot_Freeze_Qty		= '000000000000.000'
		update aifbulkcdsl03a  set Tot_Lockin_Qty		= '000000000000.000'
		UPDATE a SET a.Tot_Detail_Rec02 = RIGHT('0000000000'  +CONVERT(VARCHAR,B.cdslrec1),10) FROM aifbulkcdsl03a a JOIN aifcdsltotaltemp  b ON a.ID=1
		update aifbulkcdsl03a  set Tot_Detail_Rec03		= '0000000000'
		update aifbulkcdsl03a  set CDT					= getdate()
		update aifbulkcdsl03a  set MasterUniqNo			= '1401'
		update aifbulkcdsl03a  set ProcessedFlag		= 'Y'
		update aifbulkcdsl03a  set inward_dt			= getdate()
		update aifbulkcdsl03a  set calcflag				= 'Y'
		--select * into normalcaheaderrecordtt from NormalCAHeaderRecord
		truncate table corpactCDSLHeaderTT
		INSERT INTO corpactCDSLHeaderTT
		(
			Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag		
		) 
		SELECT
			Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag		
		FROM  aifbulkcdsl03a   
end
GO
/****** Object:  StoredProcedure [dbo].[AifBulkImport3FieldsForSingleIsinHeaderRecord]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE      [dbo].[AifBulkImport3FieldsForSingleIsinHeaderRecord] 
as 
begin
	delete from aifbulkfile02a where id <> 1
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22017'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22025'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22033'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22041'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22058'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22066'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22074'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22082'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22090'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22108'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22116'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22011'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22029'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22037'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22045'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22052'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22019'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22027'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22035'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22043'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22050'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22068'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22076'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22084'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22015'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22023'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22031'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22049'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22056'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22064'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22072'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22080'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSX22013'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSX22021'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSX22039'
	
	
	
	update aifbulkfile02a set Record_IDentification					= '01'
	update aifbulkfile02a set File_IDentification					= 'SHRI001'
	update aifbulkfile02a set RTA_Internal_Reference_No				= 'AIF       '
	update aifbulkfile02a set Debit_Credit_Indicator				= 'C'
	update a set a.ISIN = b.isin from aifbulkfile02a a 	join aifbulkfile01 b 	on a.id = 1
	update aifbulkfile02a set CA_Type								= '0002'
	update aifbulkfile02a set Allocation_Allotment_Description		= '0029'
	update aifbulkfile02a set Execution_Date						= format(getdate(),'yyyyMMdd')
	update a set a.Total_Allotted_Quantity_Free_Lockin				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr)),15)) +'000'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
	update a set a.Total_No_detail_records							= trim(RIGHT('0000000'+CONVERT(VARCHAR,convert(int,b.totrec1)),7)) 	from aifbulkfile02a a join aiftotshr b 	on a.id = 1
	update aifbulkfile02a set Total_Allotted_Quantity_Lockin		= '000000000000000000' 
	update a set a.Total_Issued_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
	update a set a.Total_Paidup_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
	update a set a.Stamp_Duty_Payable								=  b.stampduty 	from aifbulkfile02a a 	join aifbulkfile01 b 	on a.id = 1
	update aifbulkfile02a set Basis_calculation_Stamp_Duty			= '00'
	update aifbulkfile02a set EBP_Name								= '00'
	update aifbulkfile02a set Funds_collected_through				= '  '
	update aifbulkfile02a set Filler								= '  '
	update aifbulkfile02a set MasterUniqNo							= '1040'
	update aifbulkfile02a set Processflag							= 'N'
	update aifbulkfile02a set FractionFlag							= 'N'
	update aifbulkfile02a set calcflag								= 'Y'
	update aifbulkfile02a set Basis_calculation_Stamp_Duty			= '01' where Stamp_Duty_Payable ='Y'
	update aifbulkfile02a  set Total_Issued_Amount = '000000000000000000'  where stamp_duty_payable ='N'
	update aifbulkfile02a  set Total_Paidup_Amount = '000000000000000000'  where stamp_duty_payable ='N'
	IF OBJECT_ID ( 'normalcaheaderrecordtt', 'U' ) IS NOT NULL  DROP TABLE normalcaheaderrecordtt
		select * into normalcaheaderrecordtt from NormalCAHeaderRecord
		truncate table normalcaheaderrecordtt
		INSERT INTO NormalCAHeaderRecordTT 
		(
		Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
		CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
		Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
		Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
		) 
		SELECT
		Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
		CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
		Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
		Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
		FROM  aifbulkfile02a
end
GO
/****** Object:  StoredProcedure [dbo].[AifBulkImport3FieldsForSingleIsinHeaderRecordF]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AifBulkImport3FieldsForSingleIsinHeaderRecordF]
as 
begin
	delete from aifbulkfile02a where id <> 1
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22017'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22025'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22033'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22041'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22058'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22066'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22074'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22082'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22090'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22108'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22116'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22011'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22029'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22037'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22045'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22052'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22019'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22027'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22035'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22043'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22050'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22068'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22076'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22084'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22015'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22023'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22031'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22049'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22056'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22064'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22072'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22080'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSX22013'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSX22021'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSX22039'
--	select * from aifbulkfile02a	
	update a set a.Stamp_Duty_Payable								=  b.stampduty 	from aifbulkfile02a a 	join aifbulkfile01 b 	on a.id = 1
	declare @stampdutytemp varchar(1)
	set @stampdutytemp = (select Stamp_Duty_Payable from aifbulkfile02a where id = 1)
	IF @stampdutytemp ='N' 
	  Begin
		update aifbulkfile02a  set Total_Issued_Amount = '000000000000000000'  
		update aifbulkfile02a  set Total_Paidup_Amount = '000000000000000000' 
		update aifbulkfile02a set Basis_calculation_Stamp_Duty			= '00'
	  END
	IF @stampdutytemp ='Y' 
	  Begin
		update a set a.Total_Issued_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
		update a set a.Total_Paidup_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
		update aifbulkfile02a set Basis_calculation_Stamp_Duty			= '01'
	  END
	update aifbulkfile02a set Record_IDentification					= '01'
	update aifbulkfile02a set File_IDentification					= 'SHRI001'
	update aifbulkfile02a set RTA_Internal_Reference_No				= 'AIF       '
	update aifbulkfile02a set Debit_Credit_Indicator				= 'C'
	update a set a.ISIN = b.isin from aifbulkfile02a a 	join aifbulkfile01 b 	on a.id = 1
	update aifbulkfile02a set CA_Type								= '0002'
	update aifbulkfile02a set Allocation_Allotment_Description		= '0029'
	update aifbulkfile02a set Execution_Date						= format(getdate(),'yyyyMMdd')
	update a set a.Total_Allotted_Quantity_Free_Lockin				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr)),15)) +'000'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
	update a set a.Total_No_detail_records							= trim(RIGHT('0000000'+CONVERT(VARCHAR,convert(int,b.totrec1)),7)) 	from aifbulkfile02a a join aiftotshr b 	on a.id = 1
	update aifbulkfile02a set Total_Allotted_Quantity_Lockin		= '000000000000000000' 
	update a set a.Total_Issued_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
	update a set a.Total_Paidup_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
--	update a set a.Stamp_Duty_Payable								=  b.stampduty 	from aifbulkfile02a a 	join aifbulkfile01 b 	on a.id = 1
--  update aifbulkfile02a set Basis_calculation_Stamp_Duty			= '00'
	update aifbulkfile02a set EBP_Name								= '00'
	update aifbulkfile02a set Funds_collected_through				= '  '
	update aifbulkfile02a set Filler								= '  '
	update aifbulkfile02a set MasterUniqNo							= '1040'
	update aifbulkfile02a set Processflag							= 'N'
	update aifbulkfile02a set FractionFlag							= 'N'
	update aifbulkfile02a set calcflag								= 'Y'
--	update aifbulkfile02a set Basis_calculation_Stamp_Duty			= '01' where Stamp_Duty_Payable ='Y'
--	update aifbulkfile02a  set Total_Issued_Amount = '000000000000000000'  where stamp_duty_payable ='N'
--	update aifbulkfile02a  set Total_Paidup_Amount = '000000000000000000'  where stamp_duty_payable ='N'
	IF OBJECT_ID ( 'normalcaheaderrecordtt', 'U' ) IS NOT NULL  DROP TABLE normalcaheaderrecordtt

		select * into normalcaheaderrecordtt from NormalCAHeaderRecord
		truncate table normalcaheaderrecordtt
		INSERT INTO NormalCAHeaderRecordTT 
		(
		Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
		CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
		Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
		Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
		) 
		SELECT
		Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
		CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
		Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
		Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
		FROM  aifbulkfile02a
end
GO
/****** Object:  StoredProcedure [dbo].[aifnsdldetailuplfile]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--PROCEDURE FOR CREATING AIF DETAIL FILE WITH OUTPUT AS : AIF02DET.TXT  USING THE INPUT AS : aifbulkfile02
--Brahmajee - 27012024
CREATE  procedure [dbo].[aifnsdldetailuplfile]
as 
begin 
	IF OBJECT_ID ( 'aif1235', 'U' ) IS NOT NULL  DROP TABLE aif1235
	SELECT '02'+                                                        
		+Detail_Record_Line_No
		+DP_ID
		+CLIENT_ID
		+REPLICATE('0',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
		+Allotment_Quantity
		+REPLICATE('0',2-len(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
		+'        '      
		+Issue_Price
		+Issued_Amount
		+Paidup_Price
		+Paidup_Amount
		+'            '    
		as ftemp1 into aif1235 
		FROM aifbulkfile02
IF OBJECT_ID ( 'aiftemp2', 'U' ) IS NOT NULL  DROP TABLE aiftemp2
create table aiftemp2 (ftemp1 varchar(1000))
INSERT INTO aiftemp2  SELECT * from aif1235
DECLARE @cmd varchar(500),@filename2 varchar(100)
SELECT @filename2 ='AIF02DET.TXT'       
--SELECT @filename1 ='NSDLADROIT_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.aiftemp2" '+ 'queryout D:\AIF\FilesFromClients\'+ @filename2 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
end
GO
/****** Object:  StoredProcedure [dbo].[aifnsdlhead_detailuplfile]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[aifnsdlhead_detailuplfile]
as 
begin
IF OBJECT_ID ( 'AIFFIN1', 'U' ) IS NOT NULL  DROP TABLE AIFFIN1
create table AIFFIN1 (FTEMP1 varchar(1000))
INSERT INTO AIFFIN1 SELECT * from aiftemp1
INSERT INTO AIFFIN1 SELECT * from aif1235
DECLARE @cmd varchar(500), @filename3 varchar(100)
SELECT @filename3 ='NSDLADRCA01_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.AIFFIN1" '+ 'queryout D:\AIF\'+ @filename3 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
END

GO
/****** Object:  StoredProcedure [dbo].[aifnsdlheaduplfile]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--PROCEDURE FOR CREATING AIF HEADER FILE WITH OUTPUT AS : AIF01HEAD.TXT  USING THE INPUT AS : aifbulkfile02a
--Brahmajee - 27012024
CREATE procedure [dbo].[aifnsdlheaduplfile]
as 
begin 
IF OBJECT_ID ( 'aiftemp1', 'U' ) IS NOT NULL  DROP TABLE aiftemp1     
SELECT '01'
	+'SHRI001'
	+CONVERT(VARCHAR(16),TRIM(RTA_Internal_Reference_No))+REPLICATE(' ',16-LEN(TRIM(RTA_Internal_Reference_No)))      
    +debit_Credit_indicator
    +REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)      
    +CA_Type
	+REPLICATE(' ',8-len(CONVERT(varchar,Allotment_Date,112)))+CONVERT(varchar,Allotment_Date,112)      
    +REPLICATE('0',4-LEN(allocation_allotment_description))+CONVERT(VARCHAR,allocation_allotment_description)      
 	+REPLICATE(' ',8-len(CONVERT(varchar,Execution_Date,112)))+CONVERT(varchar,Execution_Date,112)      
	+Total_Allotted_Quantity_Free_Lockin
	+Total_Allotted_Quantity_Lockin
    +Total_No_detail_records
	+Total_Issued_Amount
	+Total_Paidup_Amount
	+stamp_duty_Payable
    +basis_calculation_stamp_duty
	+ebp_name
    +funds_collected_through
	+'  '
	as ftemp1 into aiftemp1     
	FROM aifbulkfile02a
IF OBJECT_ID ( 'aiftemp12', 'U' ) IS NOT NULL  DROP TABLE aiftemp12
create table aiftemp12 (ftemp1 varchar(1000))
INSERT INTO aiftemp12  SELECT * from aiftemp1
DECLARE @cmd varchar(500),@filename1 varchar(100)
SELECT @filename1 ='AIF01HEAD.TXT'       
SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.aiftemp12" '+ 'queryout D:\AIF\FilesFromClients\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
end




GO
/****** Object:  StoredProcedure [dbo].[bendem02f]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[bendem02f] @ISIN VARCHAR(12)
		as
		begin
		update bendem01 set 
		record_Type= substring(rem,1,2),
		batch_no= '0000669',
		rta_id	= 'IN200537',
		isin	= @ISIN,
		request_type= '1',
		sender_id= '        ',
		sender_date= FORMAT(getdate(),'yyyyMMdd'),
		filler1	= '        '

IF OBJECT_ID ( 'aifimpdpidclidisin', 'U' ) IS NOT NULL  DROP TABLE aifimpdpidclidisin
create table aifimpdpidclidisin (dpidclid varchar(16),ISIN varchar(12))

BULK INSERT aifimpdpidclidisin 
	FROM 'D:\BENDEM\NSDLCDSL.csv' 
	WITH 
	(  
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=50
	)
	alter table aifimpdpidclidisin add dpid varchar(8), clid varchar(8)
	update aifimpdpidclidisin set dpid = substring(dpidclid,1,8)
	update aifimpdpidclidisin set clid = substring(dpidclid,9,8)
	truncate table bendem02
	insert into bendem02 (dpid,clid) (select dpid,clid from aifimpdpidclidisin)
	DELETE from bendem02 WHERE DPID LIKE '1%'
	IF OBJECT_ID ( 'BENDEM02U', 'U' ) IS NOT NULL  DROP TABLE BENDEM02U
	SELECT DPID,CLID INTO BENDEM02U FROM BENDEM02 GROUP BY DPID,CLID
	ALTER TABLE BENDEM02U ADD rem varchar(100),record_type varchar(2),line_no varchar(7),id int primary key identity(1,1)
	--update bendem02U set record_type='02'
--select * from bendem02u
--	drop table #temp2
	SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO #TEMP2 FROM bendem02u WHERE id < 99999
	UPDATE a SET a.Line_no = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM bendem02u a JOIN #temp2 b ON a.ID=b.ID
	truncate table bendem02
	insert into bendem02 (record_type,line_no,DPID,CLID) (select record_type,line_no,DPID,CLID from bendem02u)
--	select dpid,clid from bendem02 group by dpid,clid having count(*) >1
	truncate table bendem2o
		SET NOCOUNT ON      
		(      
			SELECT '01'+                                                        
			+batch_no
			+'IN200537'
			--+rta_id	
			+isin	
			+request_type
			+sender_id
			+FORMAT(getdate(),'yyyyMMdd') 
			--+sender_date
			+'        '
			as btempf into #TEMP11
			FROM bendem01
		)
		(
		SELECT '02'+                                                        
			+Line_no
			+dpid
			+clid
			+'          '
			as btempf into #TEMP22
			FROM BENDEM02
		)
		IF OBJECT_ID ('bendem2o', 'U' ) IS NOT NULL  DROP TABLE bendem2o
		create table bendem2o (btempf varchar(54))
			insert   into bendem2o select * from #temp11
			insert	 into bendem2o select * from #temp22
			DECLARE @cmd varchar(500),@filename1 varchar(100)
		SELECT @filename1 ='BENDEM_NSDL_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
		SET @cmd = 'bcp "SELECT * FROM vccipl.[dbo].[bendem2o]" '+ 'queryout d:\sbroutfiles\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
		EXEC master..xp_cmdshell @cmd
	END 
GO
/****** Object:  StoredProcedure [dbo].[bendem04f]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[bendem04f] @MastUno varchar(4)
	as
	begin
	truncate table bendem04
	insert into bendem04 (dpidclid) (select dpidclid from aifimpdpidclidisin)
	delete from bendem04 where dpidclid like 'I%'
	--alter table bendem04 add id int identity(1,1)
	select dpidclid from bendem04 group by dpidclid having count(*) >1
	IF OBJECT_ID ( 'cdslcounttemp', 'U' ) IS NOT NULL  DROP TABLE cdslcounttemp
	select '1' as id, count(*) as recincdsl into cdslcounttemp from bendem04
	update bendem03  set totalrec = RIGHT('0000000000'+CONVERT(VARCHAR,B.recincdsl),10) FROM bendem03 a JOIN cdslcounttemp b ON a.ID=b.ID
	update bendem04 set masteruniqno = '1201'
	IF OBJECT_ID ( 'btempftxt3', 'U' ) IS NOT NULL  DROP TABLE btempftxt3
	IF OBJECT_ID ( 'btempftxt4', 'U' ) IS NOT NULL  DROP TABLE btempftxt4
	SET NOCOUNT ON      
	(      
	SELECT                                                       
		+totalrec
		as btempg into btempftxt3
		FROM bendem03
		where masteruniqno = @MastUNo
	)
	(
	SELECT                                                        
		+dpidclid
		as btempg into btempftxt4
		FROM bendem04
		where masteruniqno = @MastUNo
	)
	IF OBJECT_ID ( 'aif_fincc', 'U' ) IS NOT NULL  DROP TABLE aif_fincc
		create table aif_fincc (btempg varchar(1000))
		insert	into aif_fincc select * from btempftxt3
		insert	into aif_fincc select * from btempftxt4
		DECLARE @cmd varchar(500),@filename1 varchar(100)
			SELECT @filename1 ='BENDEM_CDSL_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
			SET @cmd = 'bcp "SELECT * FROM vccipl.[dbo].[aif_fincc]" '+ 'queryout D:\SBROUTFILES\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
		EXEC master..xp_cmdshell @cmd
	end
GO
/****** Object:  StoredProcedure [dbo].[bendemAIF]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[bendemAIF] @MastUno varchar(4)
as
begin
SET NOCOUNT ON      
(      
SELECT '01'+                                                        
+batch_no
+rta_id	
+isin	
+request_type
+sender_id
+sender_date
+'        '
as btempf into #TEMP1
FROM bendem01 ) 
(
SELECT '02'+                                                        
    +Line_no
	+dpid
	+clid
	+'          '
	as btempf into #TEMP2
FROM AIF_FILE4)
IF OBJECT_ID ( 'aif_04', 'U' ) IS NOT NULL  DROP TABLE aif_04
create table aif_04 (btempf varchar(1000))
insert	into aif_04 select * from #temp1
insert	into aif_04 select * from #temp2
DECLARE @cmd varchar(500),@filename1 varchar(100)
SELECT @filename1 ='IN200537_BEN_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM vccipl.[dbo].[aif_04]" '+ 'queryout D:\AIF\FilesFromClients\21122023\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
END 
GO
/****** Object:  StoredProcedure [dbo].[bendemfin]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[bendemfin] @MastUno varchar(4)
as
begin
SET NOCOUNT ON      
(      
SELECT '01'+                                                        
+batch_no
+rta_id	
+isin	
+request_type
+sender_id
+sender_date
+'        '
as btempf into #TEMP1
FROM bendem01 ) 
(
SELECT '02'+                                                        
    +Line_no
	+dpid
	+clid
	+'          '
	as btempf into #TEMP2
FROM bendem02)
IF OBJECT_ID ( 'aif_fin', 'U' ) IS NOT NULL  DROP TABLE aif_fin
create table aif_fin (btempf varchar(1000))
insert	into aif_fin select * from #temp1
insert	into aif_fin select * from #temp2
DECLARE @cmd varchar(500),@filename1 varchar(100)
SELECT @filename1 ='IN200537_BEN_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM vccipl.[dbo].[aif_fin]" '+ 'queryout D:\AIF\FilesFromClients\18012024\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
END 
GO
/****** Object:  StoredProcedure [dbo].[canormal03]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[canormal03] @Masteruniqno varchar(4)
as
begin
	IF OBJECT_ID ( 'fftemp1', 'U' ) IS NOT NULL  DROP TABLE fftemp1
	
	Exec sp_CAnormal02 @masteruniqno
	select * into fftemp1  from #temp1
	insert	 into fftemp1  select * from #temp2
	insert	 into fftemp1  select * from #temp3
	select * from fftemp1
end
GO
/****** Object:  StoredProcedure [dbo].[CDSL16RT25bendemimport]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CDSL16RT25bendemimport] 
	AS 
	BEGIN 
		ALTER TABLE CdslRT25F02new DROP COLUMN id
		ALTER TABLE CdslRT25F02new DROP COLUMN masteruniqno
		ALTER TABLE CdslRT25F02new DROP COLUMN present_status
		ALTER TABLE CdslRT25F02new DROP COLUMN FREEZE_FLAG
		ALTER TABLE CdslRT25F02new DROP COLUMN freeze_flag_desc
		TRUNCATE TABLE CdslRT25F02new

		--alter table cdslrt25f02new DROP COLUMN id,masteruniqno ,present_status ,freeze_flag_desc 
		BULK INSERT CdslRT25F02new
		FROM 'D:\BENDEM\CBOV_out6.CSV'
		WITH 
		(
		FIRSTROW = 2, 
		FIELDTERMINATOR = '~',
		ROWTERMINATOR = '\n',
		MAXERRORS = 1
		)
		--SELECT * FROM bendem04
		--SELECT * FROM CDSLRT25F02NEW
		alter table CdslRT25F02new add id int, masteruniqno int,present_status varchar(100),freeze_flag_desc varchar(100)
		alter table CdslRT25F02new add FREEZE_FLAG VARCHAR(1)
		--UPDATE a SET a.id = b.id,a.masteruniqno = b.masteruniqno FROM cdslrt25f02new a JOIN bendem04 b ON a.bo_id =b.dpidclid
		UPDATE a SET a.present_status = b.status_description FROM cdslrt25f02new a JOIN MASTERACCOUNTSTATUS  b ON a.bo_account_status =b.account_status  and deptype ='CDSL'
		UPDATE a SET a.FREEZE_FLAG_DESC = b.FREEZE_FLAG_DESC FROM cdslrt25f02new a JOIN MASTERFROZENFLAGCDSL b ON a.FREEZE_FLAG = b.FREEZE_FLAG

		--select * into cdslrt25f02newTransactionsFile from cdslrt25f02new
		--select * from cdslrt25f02newTransactionsFile 
		insert into cdslrt25f02newTransactionsFile  
		(bo_id,bo_category,bo_type,bo_account_status,bo_sub_type,first_holder_name,second_holder_name,third_holders_name,FREEZE_FLAG,id,masteruniqno,present_status,freeze_flag_desc,gendate)
		select 
		bo_id,bo_category,bo_type,bo_account_status,bo_sub_type,first_holder_name,second_holder_name,third_holders_name,FREEZE_FLAG,id,masteruniqno,present_status,freeze_flag_desc,getdate()
		from cdslrt25f02new
		SELECT * FROM CDSLRT25F02NEW
DECLARE @cmd varchar(500),@filename1 varchar(100)
SELECT @filename1 ='CDSLOUT'+FORMAT(GETDATE(),'mmss')+'.TXT'       
declare @sql varchar(8000)
select @sql = 'bcp "select convert(varchar(16),bo_id) as dpidclid, bo_category AS BO_CATEGORY,bo_type as BO_TYPE,bo_account_status AS BO_ACCOUNT_STATUS,bo_sub_type AS BO_SUBTYPE,first_holder_name AS FIRST_HOLDER_NAME,second_holder_name AS SECOND_HOLDER_NAME,third_holders_name AS THIRD_HOLDERS_NAME,FREEZE_FLAG AS FREEZE_FLAG,present_status AS PRESENT_STATUS,freeze_flag_desc AS FREEZE_FLAG_DESC  from vccipl.dbo.CDSLRT25F02NEW" queryout D:\BENDEM\OUTFROMNSDLCDSL\'+ @filename1 + ' -c -t, -T -S' 
--SET @cmd = 'bcp "SELECT * FROM vccipl.[dbo].[CDSLRT25F02NEW]" '+ 'queryout D:\AIF\FilesFromClients\18012024\'+ @filename1 + ' -t, -c -d -UTF8 -T -Slocalhost'
--EXEC master..xp_cmdshell @cmd
EXEC master..xp_cmdshell @sql
END
GO
/****** Object:  StoredProcedure [dbo].[cdsstep1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[cdsstep1]
as 
begin
	IF OBJECT_ID ( 'BcdslbulkFile03d', 'U' ) IS NOT NULL  DROP TABLE BcdslbulkFile03d
	create table BcdslbulkFile03d (isin varchar(12),bo_id varchar(16),shares varchar(16))
	truncate table BcdslbulkFile03d

	BULK INSERT BcdslbulkFile03d
		FROM 'D:\CAFILES\CDSL\RAWCSVFILES\totcrec.csv' 
		WITH 
		(  
			FORMAT = 'CSV',
			FIRSTROW = 2,
			DATAFILETYPE = 'char',
			FIELDTERMINATOR = ',',  
			ROWTERMINATOR = '\n',
			--ROWTERMINATOR = '0x0D0A',
			BATCHSIZE=5
		)
end
GO
/****** Object:  StoredProcedure [dbo].[cdsstep2]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[cdsstep2]
as 
begin
		delete from BcdslbulkFile03d where bo_id not like '1%'
--		IF OBJECT_ID ( 'BcdslbulkFile03d', 'U' ) IS NOT NULL  DROP TABLE BcdslbulkFile03d
--		create table BcdslbulkFile03d (isin varchar(12),bo_id varchar(16),shares varchar(16))
--		insert into BcdslbulkFile03d select * from BcdslbulkFile03ds
----	SELECT * FROM BcdslbulkFile03d


		alter table BcdslbulkFile03d add ID int identity(1,1)
		alter table BcdslbulkFile03d add 
				Record_Type			varchar(2),
				RTA_IntRef_No		varchar(16),
				PISIN				varchar(12),
				PCurr_Qty			varchar(16),
				PFrozen_Qty			varchar(16),
				PLockin_Qty			varchar(16),
				PLockin_Reason_Cd	varchar(2),
				PLockin_Reason		varchar(50),
				PLockin_Exp_Date	datetime,
				PDRCR_Flag			varchar(1),
				Benefit_Isin		varchar(12),
				BCurr_Qty			varchar(16),
				BFrozen_Qty			varchar(16),
				BLockin_Qty			varchar(16),
				BLockin_Reason_Cd	varchar(2),
				BLockin_Reason		varchar(50),
				BLockin_Exp_Date	datetime,
				BDRCR_Flag			varchar(1),
				CDT					datetime,
				MasterUniqNo		int,	
				OfferPrice			varchar(16),
				ProcessedFlag		varchar(1),
				calcflag			varchar(1)
		
end
GO
/****** Object:  StoredProcedure [dbo].[cdsstep3]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[cdsstep3]
as 
begin

				IF OBJECT_ID ( 'Bcdsltotaltemp', 'U' ) IS NOT NULL  DROP TABLE Bcdsltotaltemp 
				select sum(convert(int,shares)) as bcq,count(*) as cdslrec1 into Bcdsltotaltemp from BcdslbulkFile03d
				select bcq,cdslrec1 from Bcdsltotaltemp
				IF OBJECT_ID ( 'CCA_DUPCHK01', 'U' ) IS NOT NULL  DROP TABLE CCA_DUPCHK01
				SELECT bo_id,shares, COUNT(bo_id) as [DUPLICATES_TIMES] INTO CCA_DUPCHK01 FROM BcdslbulkFile03d GROUP BY bo_id,shares HAVING COUNT(bo_id) > 1
		-- PAUSE
		SELECT * FROM CCA_DUPCHK01
		IF OBJECT_ID ( 'CCADUPCHKFILE', 'U' ) IS NOT NULL  DROP TABLE CCADUPCHKFILE
		SELECT COUNT(*) AS CNT INTO CCADUPCHKFILE FROM CCA_DUPCHK01
		declare @dupflag int
		set @dupflag = (select cnt from CCADUPCHKFILE)
		IF @dupflag > 0
			BEGIN
		  		PRINT 'DUPLICATES EXISTING IN THE FILE'
			END
		IF @dupflag = 0
			Begin
				PRINT 'DUPLICATES NOT EXISTING IN THE FILE'
			End
				
				--generate line Nos.
				IF OBJECT_ID ( 'CTEMP22', 'U' ) IS NOT NULL  DROP TABLE CTEMP22
					SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO CTEMP22 FROM BcdslbulkFile03d WHERE id < 99999
					UPDATE a SET a.RTA_IntRef_No = '' + RIGHT('0000'+CONVERT(VARCHAR,B.RowN),4)+ '            ' FROM BcdslbulkFile03d a JOIN ctemp22 b ON a.ID=b.ID
					select * from BcdslbulkFile03d where plockin_exp_date is null
					select * from BcdslbulkFile03d where blockin_exp_date is null
					UPDATE BcdslbulkFile03d  set	
					Record_Type				='02',
					PISIN					= ISIN,
					PCurr_Qty				='000000000000.000',
					PFrozen_Qty				='000000000000.000',
					PLockin_Qty				='000000000000.000',
					PLockin_Reason_Cd		='00',
					PLockin_Reason			='                                                  ',
					
					--PLockin_Exp_Date		='00000000',
					PDRCR_Flag				='D',
					Benefit_Isin			=ISIN,
					BCurr_Qty				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,shares)),12)) +'.000',
					BFrozen_Qty				='000000000000.000',
					BLockin_Qty				='000000000000.000',
					BLockin_Reason_Cd		='00',
					BLockin_Reason			='                                                  ',

					--BLockin_Exp_Date		='00000000',
					BDRCR_Flag				='C',
					CDT						=getdate(),
					OfferPrice				='000000000000.000',
					ProcessedFlag			='Y',
					calcflag				='Y'
					UPDATE a SET a.MasterUniqNo = B.mmuno FROM BcdslbulkFile03d a JOIN cca_muno01 b ON b.ID=1
					declare @yourisin varchar(12)
					set @yourisin = (select top 1 PISIN from BcdslbulkFile03d)
					PRINT 'YOUR CURRENT ISIN IS :' + @yourisin
				
					truncate table corpactCDSLDetailtt
					INSERT INTO corpactCDSLDetailtt  
					(
					Record_Type,BO_ID,RTA_IntRef_No,PISIN,PCurr_Qty,PFrozen_Qty,
					PLockin_Qty,PLockin_Reason_Cd,PLockin_Reason,PLockin_Exp_Date,
					PDRCR_Flag,Benefit_Isin,BCurr_Qty,BFrozen_Qty,BLockin_Qty,
					BLockin_Reason_Cd,BLockin_Reason,BLockin_Exp_Date,BDRCR_Flag,
					CDT,MasterUniqNo,OfferPrice,ProcessedFlag,calcflag
					) 
					SELECT
					Record_Type,BO_ID,RTA_IntRef_No,PISIN,PCurr_Qty,PFrozen_Qty,
					PLockin_Qty,PLockin_Reason_Cd,PLockin_Reason,PLockin_Exp_Date,
					PDRCR_Flag,Benefit_Isin,BCurr_Qty,BFrozen_Qty,BLockin_Qty,
					BLockin_Reason_Cd,BLockin_Reason,BLockin_Exp_Date,BDRCR_Flag,
					CDT,MasterUniqNo,OfferPrice,ProcessedFlag,calcflag
					FROM BcdslbulkFile03d
				--step 2
				IF OBJECT_ID ( 'bcdslbulkfile03a', 'U' ) IS NOT NULL  DROP TABLE bcdslbulkfile03a
				select * into bcdslbulkfile03a from corpactCDSLHeader 
				--select * from corpactcdslheader
				delete from Bcdslbulkfile03a where id <> 1
				UPDATE Bcdslbulkfile03a  set Record_Type			= '01'
				UPDATE a SET a.Total_Records = RIGHT('0000000000'  +CONVERT(VARCHAR,B.cdslrec1),10) FROM Bcdslbulkfile03a a JOIN Bcdsltotaltemp  b ON a.ID=1
				UPDATE a SET a.Tot_Curr_Qty  = RIGHT('000000000000'+CONVERT(VARCHAR,B.bcq),12)+ '.000' FROM Bcdslbulkfile03a a JOIN Bcdsltotaltemp  b ON a.ID=1
				UPDATE Bcdslbulkfile03a  set Tot_Freeze_Qty		= '000000000000.000'
				UPDATE Bcdslbulkfile03a  set Tot_Lockin_Qty		= '000000000000.000'
				UPDATE a SET a.Tot_Detail_Rec02 = RIGHT('0000000000'  +CONVERT(VARCHAR,B.cdslrec1),10) FROM Bcdslbulkfile03a a JOIN Bcdsltotaltemp  b ON a.ID=1
				UPDATE Bcdslbulkfile03a  set Tot_Detail_Rec03		= '0000000000'
				UPDATE Bcdslbulkfile03a  set CDT					= getdate()
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM Bcdslbulkfile03a a JOIN cca_muno01 b ON b.ID=1
				--UPDATE Bcdslbulkfile03a  set MasterUniqNo			= '9901'
				UPDATE Bcdslbulkfile03a  set ProcessedFlag		= 'Y'
				UPDATE Bcdslbulkfile03a  set inward_dt			= getdate()
				UPDATE Bcdslbulkfile03a  set calcflag				= 'Y'
				--select * into normalcaheaderrecordtt from NormalCAHeaderRecord
				truncate table corpactCDSLHeaderTT
				INSERT INTO corpactCDSLHeaderTT
				(
					Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag		
				) 
				SELECT
					Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag		
				FROM  Bcdslbulkfile03a   
				--step 3
				IF OBJECT_ID ( 'c1temp1', 'U' ) IS NOT NULL  DROP TABLE c1temp1
				IF OBJECT_ID ( 'c2temp2', 'U' ) IS NOT NULL  DROP TABLE c2temp2
				SET NOCOUNT ON      
				 (      
					SELECT '01'+                                                        
					  +total_records
					  +Tot_Curr_Qty
					  +Tot_Freeze_Qty
					  +Tot_Lockin_Qty
					  +Tot_Detail_Rec02
					  +Tot_Detail_Rec03
					  AS ctemp1 into c1temp1
					FROM corpactCDSLHeaderTT   
				  )      
			 (      
			 SELECT '02'+           
			  +BO_ID
			  +RTA_IntRef_No
			  +Pisin      
			  +PCurr_Qty  
			  +PFrozen_Qty      
			  +PLockin_Qty      
			  +PLockin_Reason_Cd
			  +space(50)+      
			  +'00000000'+      
			  --+REPLICATE(' ',8-len(PLockin_Exp_Date))+CONVERT(VARCHAR,PLockin_Exp_Date)      
			  +PDRCR_Flag      
			  +Benefit_Isin      
			  +BCurr_Qty   
			  +BFrozen_Qty      
			  +BLockin_Qty      
			  +BLockin_Reason_Cd
			  +space(50) +      
			  +'00000000'+      
			  --+REPLICATE(' ',8-len(BLockin_Exp_Date))+CONVERT(VARCHAR,BLockin_Exp_Date)      
			  ----+REPLICATE(' ',8-len(BLockin_Exp_Date))+CONVERT(VARCHAR,BLockin_Exp_Date)      
			  +BDRCR_Flag       
			  +offerprice
			  --+char(13)
			  as ctemp1 into c2temp2
			  FROM corpactCDSLDetailtt
			  )      
			 --(      
			 --SELECT char(13)+'03'+                                                        
			 -- +CA_Isin      
			 -- +From_DistNo_CDSL
			 -- +To_DistNo_CDSL
			 -- +Quantity
			 -- +DRCR_Flag  
			 -- +CHAR(13)
			 -- as ctemp1 into #temp3      
			 -- FROM corpactCDSLDetailDist       
			 -- where ProcessedFlag ='N' and calcflag ='N')    
			IF OBJECT_ID ( 'Bcdslst1', 'U' ) IS NOT NULL  DROP TABLE Bcdslst1
				create table Bcdslst1 ( ctemp1 varchar(1000))
				insert	 into Bcdslst1  select * from c1temp1
				insert	 into Bcdslst1  select * from c2temp2
				--insert	 into Bcdslst1  select * from #temp3
				select * from Bcdslst1
				DECLARE @cmd varchar(500),@bcdslfile varchar(100)
				SELECT @bcdslfile ='999999_'+FORMAT(GETDATE(),'mmss')+'.ipf'       
				SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.Bcdslst1" '+ 'queryout D:\CAFILES\CDSL\GENCSVFILES\'+ @bcdslfile + ' -c -UTF8 -T -Slocalhost'
				EXEC master..xp_cmdshell @cmd
				INSERT INTO corpactCDSLHeader 
				(Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag)
				SELECT Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag
				FROM corpactCDSLHeaderTT
				INSERT INTO corpactCDSLDetail
				(Record_Type,BO_ID,RTA_IntRef_No,PISIN,PCurr_Qty,PFrozen_Qty,PLockin_Qty,PLockin_Reason_Cd,
				PLockin_Reason,PLockin_Exp_Date,PDRCR_Flag,Benefit_Isin,BCurr_Qty,BFrozen_Qty,BLockin_Qty,BLockin_Reason_Cd,
				BLockin_Reason,BLockin_Exp_Date,BDRCR_Flag,CDT,MasterUniqNo,OfferPrice,ProcessedFlag,calcflag)
				SELECT 
				Record_Type,BO_ID,RTA_IntRef_No,PISIN,PCurr_Qty,PFrozen_Qty,PLockin_Qty,PLockin_Reason_Cd,
				PLockin_Reason,PLockin_Exp_Date,PDRCR_Flag,Benefit_Isin,BCurr_Qty,BFrozen_Qty,BLockin_Qty,BLockin_Reason_Cd,
				BLockin_Reason,BLockin_Exp_Date,BDRCR_Flag,CDT,MasterUniqNo,OfferPrice,ProcessedFlag,calcflag
				FROM corpactCDSLDetailTT
				UPDATE cca_muno01 set mmuno = mmuno+1
				IF OBJECT_ID ( 'c1temp1', 'U' ) IS NOT NULL  DROP TABLE c1temp1
				IF OBJECT_ID ( 'c2temp2', 'U' ) IS NOT NULL  DROP TABLE c2temp2
				IF OBJECT_ID ( 'CTEMP22', 'U' ) IS NOT NULL  DROP TABLE CTEMP22
end
GO
/****** Object:  StoredProcedure [dbo].[dummy1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE      [dbo].[dummy1]
as 
begin
	delete from aifbulkfile02a where id <> 1
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22017'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22025'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22033'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22041'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22058'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22066'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22074'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22082'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22090'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22108'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22116'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22011'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22029'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22037'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22045'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22052'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22019'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22027'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22035'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22043'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22050'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22068'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22076'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22084'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22015'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22023'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22031'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22049'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22056'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22064'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22072'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22080'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSX22013'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSX22021'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSX22039'
--	select * from aifbulkfile02a	
	update a set a.Stamp_Duty_Payable								=  b.stampduty 	from aifbulkfile02a a 	join aifbulkfile01 b 	on a.id = 1
	declare @stampdutytemp varchar(1)
	declare @stampdutytemp1 varchar(1)
	set @stampdutytemp = (select Stamp_Duty_Payable from aifbulkfile02a where id = 1)
	--SET @stampdutytemp1 = 
	--( CASE
	--	WHEN (@stampdutytemp = 'N') 
	--	  	update aifbulkfile02a  set Total_Issued_Amount = '000000000000000000'   WHERE @stampdutytemp = 'N'
	--		update aifbulkfile02a  set Total_Paidup_Amount = '000000000000000000'   WHERE @stampdutytemp = 'N'
	--		update aifbulkfile02a set Basis_calculation_Stamp_Duty			= '00'   WHERE @stampdutytemp = 'N'
	--	WHEN (@stampdutytemp = 'Y') 
	--		update a set a.Total_Issued_Amount						= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
	--		update a set a.Total_Paidup_Amount						= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
	--		update aifbulkfile02a set Basis_calculation_Stamp_Duty	= '01'
	--  END 
	--  )


	  IF @stampdutytemp ='N' 
	  Begin
		update aifbulkfile02a  set Total_Issued_Amount = '000000000000000000'  
		update aifbulkfile02a  set Total_Paidup_Amount = '000000000000000000' 
		update aifbulkfile02a set Basis_calculation_Stamp_Duty			= '00'
	  END
	  IF @stampdutytemp ='Y' 
	  Begin
		update a set a.Total_Issued_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
		update a set a.Total_Paidup_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
		update aifbulkfile02a set Basis_calculation_Stamp_Duty			= '01'
	  END
		
		
	
	update aifbulkfile02a set Record_IDentification					= '01'
	update aifbulkfile02a set File_IDentification					= 'SHRI001'
	update aifbulkfile02a set RTA_Internal_Reference_No				= 'AIF       '
	update aifbulkfile02a set Debit_Credit_Indicator				= 'C'
	update a set a.ISIN = b.isin from aifbulkfile02a a 	join aifbulkfile01 b 	on a.id = 1
	update aifbulkfile02a set CA_Type								= '0002'
	update aifbulkfile02a set Allocation_Allotment_Description		= '0029'
	update aifbulkfile02a set Execution_Date						= format(getdate(),'yyyyMMdd')
	update a set a.Total_Allotted_Quantity_Free_Lockin				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr)),15)) +'000'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
	update a set a.Total_No_detail_records							= trim(RIGHT('0000000'+CONVERT(VARCHAR,convert(int,b.totrec1)),7)) 	from aifbulkfile02a a join aiftotshr b 	on a.id = 1
	update aifbulkfile02a set Total_Allotted_Quantity_Lockin		= '000000000000000000' 
	update a set a.Total_Issued_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
	update a set a.Total_Paidup_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
--	update a set a.Stamp_Duty_Payable								=  b.stampduty 	from aifbulkfile02a a 	join aifbulkfile01 b 	on a.id = 1
--  update aifbulkfile02a set Basis_calculation_Stamp_Duty			= '00'
	update aifbulkfile02a set EBP_Name								= '00'
	update aifbulkfile02a set Funds_collected_through				= '  '
	update aifbulkfile02a set Filler								= '  '
	update aifbulkfile02a set MasterUniqNo							= '1040'
	update aifbulkfile02a set Processflag							= 'N'
	update aifbulkfile02a set FractionFlag							= 'N'
	update aifbulkfile02a set calcflag								= 'Y'
--	update aifbulkfile02a set Basis_calculation_Stamp_Duty			= '01' where Stamp_Duty_Payable ='Y'
--	update aifbulkfile02a  set Total_Issued_Amount = '000000000000000000'  where stamp_duty_payable ='N'
--	update aifbulkfile02a  set Total_Paidup_Amount = '000000000000000000'  where stamp_duty_payable ='N'
	IF OBJECT_ID ( 'normalcaheaderrecordtt', 'U' ) IS NOT NULL  DROP TABLE normalcaheaderrecordtt

		select * into normalcaheaderrecordtt from NormalCAHeaderRecord
		truncate table normalcaheaderrecordtt
		INSERT INTO NormalCAHeaderRecordTT 
		(
		Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
		CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
		Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
		Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
		) 
		SELECT
		Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
		CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
		Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
		Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
		FROM  aifbulkfile02a
end
GO
/****** Object:  StoredProcedure [dbo].[DUMMYSBR1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DUMMYSBR1] @misin varchar(12), @stampduty varchar(1) 
WITH RECOMPILE
AS
BEGIN
	IF OBJECT_ID ( 'aifbulkfile01', 'U' ) IS NOT NULL  DROP TABLE aifbulkfile01
	create table aifbulkfile01 (slno varchar(5),isin varchar(12), dpid varchar(8),clid varchar(8),units varchar(18),name varchar(50),jh1 varchar(50),all_date varchar(10),paidval varchar(18))
	BULK INSERT aifbulkfile01 
		FROM 'D:\CAFILES\NSDL\RAWCSVFILES\totNrec.csv' 
		WITH 
		(  
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',  
			ROWTERMINATOR = '\n',  
			BATCHSIZE=10
		)
--		select * from aifbulkfile02A
--		select * from aifbulkfile01

		alter table aifbulkfile01 add tissamt varchar(18)
		alter table aifbulkfile01 add stampduty varchar(1)
		alter table aifbulkfile01 add id int identity(1,1)
		update aifbulkfile01 set stampduty = upper(@stampduty)
		update aifbulkfile01 set tissamt = trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,units)*100),16)) +'00'  
		DELETE FROM AIFBULKFILE01 WHERE ISIN IS NULL
		IF OBJECT_ID ( 'aiftotshr', 'U' ) IS NOT NULL  DROP TABLE aiftotshr
			select sum(convert(int,units)) as totshr,count(*) as totrec1 into aiftotshr from aifbulkfile01
			truncate table aifbulkfile02
			INSERT INTO aifbulkfile02 (dp_id,client_id,Allotment_Quantity,tissamt,Issue_Price,paidup_price)
			SELECT dpid,clid,trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,units)),15)) +'000',
							 tissamt,
			                 trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000',
							 trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000'
				from aifbulkfile01
		--SELECT * FROM AIFBULKFILE021
		
		
		--generate line Nos.
		IF OBJECT_ID ( 'ntemp2', 'U' ) IS NOT NULL  DROP TABLE ntemp2
		SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO ntemp2 FROM aifbulkfile02 WHERE id < 99999
		UPDATE a SET a.Detail_Record_Line_No = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM aifbulkfile02 a JOIN ntemp2 b ON a.ID=b.ID


		update aifbulkfile02 set	Record_IDentification ='02',
									Client_Account_Category='00',
									Lockin_Reason_Code='00',
									Lockin_Release_Date='1900-01-01 00:00:00.000',
									Issued_Amount = tissamt, 
									Paidup_Amount = tissamt,
									filler ='',
									MasterUniqNo ='1040',
									ProcessedFlag='N',
									FractionFlag='N',
									calcflag='Y'
--			select * from aifbulkfile01
		UPDATE a SET a.Issue_Price		= '000000000000000000'  FROM aifbulkfile02 a JOIN aifbulkfile01 b ON b.ID=1 and b.stampduty ='N'
		UPDATE a SET a.Issued_Amount	= '000000000000000000'  FROM aifbulkfile02 a JOIN aifbulkfile01 b ON b.ID=1 and b.stampduty ='N'
		UPDATE a SET a.Paidup_Price		= '000000000000000000'  FROM aifbulkfile02 a JOIN aifbulkfile01 b ON b.ID=1 and b.stampduty ='N'
		UPDATE a SET a.Paidup_Amount	= '000000000000000000'  FROM aifbulkfile02 a JOIN aifbulkfile01 b ON b.ID=1 and b.stampduty ='N'
		--SELECT * FROM AIFBULKFILE01
		--SELECT * FROM AIFBULKFILE02
		delete from aifbulkfile02 where dp_id like '1%'
		IF OBJECT_ID ( 'NORMALCADETAILRECORDTT', 'U' ) IS NOT NULL  DROP TABLE NORMALCADETAILRECORDTT
			SELECT * INTO NORMALCADETAILRECORDTT FROM NormalCADetailRecord
			truncate table normalcadetailrecordtt
			INSERT INTO NormalCADetailRecordTT  (Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
			Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag) 
			SELECT
			Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
			Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag 
			FROM AIFBULKFILE02
--STEP2
	delete from aifbulkfile02a where id <> 1
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22017'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22025'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22033'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22041'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22058'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22066'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22074'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22082'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22090'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22108'
	--update aifbulkfile02a set Allotment_Date      ='2024-06-30' where isin = 'INF0RSQ22116'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22011'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22029'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22037'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22045'
	--update aifbulkfile02a set Allotment_Date      ='2016-03-31' where isin = 'INF0RST22052'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22019'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22027'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22035'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22043'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22050'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22068'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22076'
	--update aifbulkfile02a set Allotment_Date      ='2023-05-30' where isin = 'INF0RSU22084'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22015'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22023'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22031'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22049'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22056'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22064'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22072'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSW22080'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSX22013'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSX22021'
	--update aifbulkfile02a set Allotment_Date      ='2022-07-07' where isin = 'INF0RSX22039'
--	select * from aifbulkfile02a	
	update a set a.Stamp_Duty_Payable								=  b.stampduty 	from aifbulkfile02a a 	join aifbulkfile01 b 	on a.id = 1
	declare @stampdutytemp varchar(1)
	set @stampdutytemp = (select Stamp_Duty_Payable from aifbulkfile02a where id = 1)
	IF @stampdutytemp ='N' 
	  Begin
		update aifbulkfile02a  set Total_Issued_Amount = '000000000000000000'  
		update aifbulkfile02a  set Total_Paidup_Amount = '000000000000000000' 
		update aifbulkfile02a set Basis_calculation_Stamp_Duty			= '00'
	  END
	IF @stampdutytemp ='Y' 
	  Begin
		update a set a.Total_Issued_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
		update a set a.Total_Paidup_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
		update aifbulkfile02a set Basis_calculation_Stamp_Duty			= '01'
	  END
	update aifbulkfile02a set Record_IDentification					= '01'
	update aifbulkfile02a set File_IDentification					= 'SHRI001'
	update aifbulkfile02a set RTA_Internal_Reference_No				= 'INTREF NO '
	update aifbulkfile02a set Debit_Credit_Indicator				= 'C'
	update a set a.ISIN = b.isin from aifbulkfile02a a 	join aifbulkfile01 b 	on a.id = 1
	update aifbulkfile02a set CA_Type								= '0002'
	update aifbulkfile02a set Allocation_Allotment_Description		= '0029'
	update aifbulkfile02a set Execution_Date						= format(getdate(),'yyyyMMdd')
	update a set a.Total_Allotted_Quantity_Free_Lockin				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr)),15)) +'000'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
	update a set a.Total_No_detail_records							= trim(RIGHT('0000000'+CONVERT(VARCHAR,convert(int,b.totrec1)),7)) 	from aifbulkfile02a a join aiftotshr b 	on a.id = 1
	update aifbulkfile02a set Total_Allotted_Quantity_Lockin		= '000000000000000000' 
	update a set a.Total_Issued_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
	update a set a.Total_Paidup_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from aifbulkfile02a a 	join aiftotshr b 	on a.id = 1
--	update a set a.Stamp_Duty_Payable								=  b.stampduty 	from aifbulkfile02a a 	join aifbulkfile01 b 	on a.id = 1
--  update aifbulkfile02a set Basis_calculation_Stamp_Duty			= '00'
	update aifbulkfile02a set EBP_Name								= '00'
	update aifbulkfile02a set Funds_collected_through				= '  '
	update aifbulkfile02a set Filler								= '  '
	update aifbulkfile02a set MasterUniqNo							= '1040'
	update aifbulkfile02a set Processflag							= 'N'
	update aifbulkfile02a set FractionFlag							= 'N'
	update aifbulkfile02a set calcflag								= 'Y'
--	update aifbulkfile02a set Basis_calculation_Stamp_Duty			= '01' where Stamp_Duty_Payable ='Y'
--	update aifbulkfile02a  set Total_Issued_Amount = '000000000000000000'  where stamp_duty_payable ='N'
--	update aifbulkfile02a  set Total_Paidup_Amount = '000000000000000000'  where stamp_duty_payable ='N'
	IF OBJECT_ID ( 'normalcaheaderrecordtt', 'U' ) IS NOT NULL  DROP TABLE normalcaheaderrecordtt

		select * into normalcaheaderrecordtt from NormalCAHeaderRecord
		truncate table normalcaheaderrecordtt
		INSERT INTO NormalCAHeaderRecordTT 
		(
		Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
		CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
		Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
		Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
		) 
		SELECT
		Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
		CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
		Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
		Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
		FROM  aifbulkfile02a


--PROCEDURE FOR CREATING AIF HEADER FILE WITH OUTPUT AS : AIF01HEAD.TXT  USING THE INPUT AS : aifbulkfile02a
--Brahmajee - 27012024
--step3
IF OBJECT_ID ( 'aiftemp1', 'U' ) IS NOT NULL  DROP TABLE aiftemp1     
SELECT '01'
	+'SHRI001'
	+CONVERT(VARCHAR(16),TRIM(RTA_Internal_Reference_No))+REPLICATE(' ',16-LEN(TRIM(RTA_Internal_Reference_No)))      
    +debit_Credit_indicator
    +REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)      
    +CA_Type
	+REPLICATE(' ',8-len(CONVERT(varchar,Allotment_Date,112)))+CONVERT(varchar,Allotment_Date,112)      
    +REPLICATE('0',4-LEN(allocation_allotment_description))+CONVERT(VARCHAR,allocation_allotment_description)      
 	+REPLICATE(' ',8-len(CONVERT(varchar,Execution_Date,112)))+CONVERT(varchar,Execution_Date,112)      
	+Total_Allotted_Quantity_Free_Lockin
	+Total_Allotted_Quantity_Lockin
    +Total_No_detail_records
	+Total_Issued_Amount
	+Total_Paidup_Amount
	+stamp_duty_Payable
    +basis_calculation_stamp_duty
	+ebp_name
    +funds_collected_through
	+'  '
	as ftemp1 into aiftemp1     
	FROM aifbulkfile02a
IF OBJECT_ID ( 'aiftemp12', 'U' ) IS NOT NULL  DROP TABLE aiftemp12
create table aiftemp12 (ftemp1 varchar(1000))
INSERT INTO aiftemp12  SELECT * from aiftemp1
DECLARE @cmd varchar(500),@filename1 varchar(100)
SELECT @filename1 ='AIF01HEAD.TXT'       
SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.aiftemp12" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
--step 4

--PROCEDURE FOR CREATING AIF DETAIL FILE WITH OUTPUT AS : AIF02DET.TXT  USING THE INPUT AS : aifbulkfile02
--Brahmajee - 27012024
	IF OBJECT_ID ( 'aif1235', 'U' ) IS NOT NULL  DROP TABLE aif1235
	SELECT '02'+                                                        
		+Detail_Record_Line_No
		+DP_ID
		+CLIENT_ID
		+REPLICATE('0',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
		+Allotment_Quantity
		+REPLICATE('0',2-len(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
		+'        '      
		+Issue_Price
		+Issued_Amount
		+Paidup_Price
		+Paidup_Amount
		+'            '    
		as ftemp1 into aif1235 
		FROM aifbulkfile02
IF OBJECT_ID ( 'aiftemp2', 'U' ) IS NOT NULL  DROP TABLE aiftemp2
create table aiftemp2 (ftemp1 varchar(1000))
INSERT INTO aiftemp2  SELECT * from aif1235
DECLARE @cmd1 varchar(500),@filename2 varchar(100)
SELECT @filename2 ='AIF02DET.TXT'       
--SELECT @filename1 ='NSDLADROIT_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
SET @cmd1 = 'bcp "SELECT * FROM vccipl.dbo.aiftemp2" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename2 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd1


--step 5
IF OBJECT_ID ( 'AIFFIN1', 'U' ) IS NOT NULL  DROP TABLE AIFFIN1
create table AIFFIN1 (FTEMP1 varchar(1000))
INSERT INTO AIFFIN1 SELECT * from aiftemp1
INSERT INTO AIFFIN1 SELECT * from aif1235
DECLARE @cmd2 varchar(500), @filename3 varchar(100)
SELECT @filename3 ='IN200537_NSDL_'+FORMAT(GETDATE(),'yyyyMMdd')+'_'+FORMAT(GETDATE(),'HHmmss')+'.txt'       
SET @cmd2 = 'bcp "SELECT * FROM vccipl.dbo.AIFFIN1" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename3 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd2

INSERT INTO normalcaheaderrecord
(Record_IDentification,File_IDentification,RTA_Internal_Reference_No,Debit_Credit_Indicator,ISIN,CA_Type,Allotment_Date,Allocation_Allotment_Description,
Execution_Date,Total_Allotted_Quantity_Free_Lockin,Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,
Stamp_Duty_Payable,Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,opfv,opfvvalue,StampDutyPaid,Processflag,
Issue_pr,Paidup_pr,Stmpparam,typeofca,company_name,Inward_Date,aadesc,FractionFlag,Paidup_prFract,calcflag)
select 
Record_IDentification,File_IDentification,RTA_Internal_Reference_No,Debit_Credit_Indicator,ISIN,CA_Type,Allotment_Date,Allocation_Allotment_Description,
Execution_Date,Total_Allotted_Quantity_Free_Lockin,Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,
Stamp_Duty_Payable,Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,opfv,opfvvalue,StampDutyPaid,Processflag,
Issue_pr,Paidup_pr,Stmpparam,typeofca,company_name,Inward_Date,aadesc,FractionFlag,Paidup_prFract,calcflag from normalcaheaderrecordtt

INSERT INTO normalcadetailrecord
(Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,Lockin_Reason_Code,
Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag)
select 
Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,Lockin_Reason_Code,
Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag from normalcadetailrecordtt

--AIF01HEAD.TXT
--AIF02DET.TXT
END


GO
/****** Object:  StoredProcedure [dbo].[fetch1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[fetch1] 
@isin nvarchar(12)
AS
BEGIN
	SELECT * FROM TOTALISIN_BOTH WHERE 
	ISIN = @ISIN
END
GO
/****** Object:  StoredProcedure [dbo].[fetchisininfo]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[fetchisininfo]

As
Begin
DECLARE @isin Varchar(12)

select * from TOTALISIN_BOTH where isin = @isin;

End
GO
/****** Object:  StoredProcedure [dbo].[fetchisininfo1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[fetchisininfo1]

As
Begin
DECLARE @company_code int

select * from TOTALISIN_BOTH where company_code = @company_code

End
GO
/****** Object:  StoredProcedure [dbo].[GENDETRECLINENO]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GENDETRECLINENO] 
AS
BEGIN
iF OBJECT_ID ( 'ntemp2', 'U' ) IS NOT NULL  DROP TABLE ntemp2
SELECT ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO ntemp2 FROM bnsdlbulkfileM02 WHERE id < 99999 
UPDATE a SET a.Detail_Record_Line_No = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM bnsdlbulkfileM02 a JOIN ntemp2 b ON a.ID=b.RowN 
END
GO
/****** Object:  StoredProcedure [dbo].[GenerateBover]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GenerateBover]
AS
BEGIN
SET NOCOUNT ON
(
SELECT '01'+                                                  
 +REPLICATE('0',16-len(bovercdsoutfilerecords))+CONVERT(VARCHAR,bovercdsoutfilerecords) as Btemp into bover5
FROM bovcrec)
END
GO
/****** Object:  StoredProcedure [dbo].[GenerateBovera]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GenerateBovera]
AS
BEGIN
SET NOCOUNT ON
(
SELECT 
 +REPLICATE('0',16-len(clid))+CONVERT(VARCHAR,clid) as btemp into bover6
FROM bovercdsoutfile)
END
GO
/****** Object:  StoredProcedure [dbo].[GenerateCDSLCAHeader]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[GenerateCDSLCAHeader]     
AS     
BEGIN    
SET NOCOUNT ON    
(    
SELECT '01'+                                                      
       +REPLICATE('0',7-LEN(File_IDentification))+CONVERT(VARCHAR,File_IDentification)      
    +CONVERT(VARCHAR(16),RTA_Internal_Reference_No)+REPLICATE(' ',16-LEN(RTA_Internal_Reference_No))
	--+REPLICATE('0',16-LEN(RTA_Internal_Reference_No))+CONVERT(VARCHAR,RTA_Internal_Reference_No)      
    +UPPER(Debit_Credit_Indicator)    
    +ISIN    
    +UPPER(CA_Type)    
    +Allotment_Date    
    +UPPER(Allocation_Allotment_Description)    
    +Execution_Date    
    +REPLICATE('0',12-LEN(Total_Allotted_Quantity_Free_Lockin))+CONVERT(VARCHAR,Total_Allotted_Quantity_Free_Lockin)+'000'     
    +REPLICATE('0',12-LEN(Total_Allotted_Quantity_Lockin))+CONVERT(VARCHAR,Total_Allotted_Quantity_Lockin)+'000'    
    +REPLICATE('0',16-LEN(Total_No_detail_records))+CONVERT(VARCHAR,Total_No_detail_records)    
    +REPLICATE('0',13-LEN(Total_Issued_Amount))+CONVERT(VARCHAR,Total_Issued_Amount)+'000'    
    +REPLICATE('0',13-LEN(Total_Paidup_Amount))+CONVERT(VARCHAR,Total_Paidup_Amount)+'000'      
    +UPPER(Stamp_Duty_Payable)    
    +UPPER(Basis_calculation_Stamp_Duty)    
    +UPPER(EBP_Name)    
    +UPPER(Funds_collected_through)    
    +LTRIM(RTRIM(FILLER))    
FROM NormalCAHeaderRecord)    
END    
GO
/****** Object:  StoredProcedure [dbo].[generateflatfileMFDT01]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[generateflatfileMFDT01] @MastUNo nvarchar(4)
AS 
BEGIN
SET NOCOUNT ON
(
SELECT   '02'+
		 +REPLICATE('0',2-LEN(Record_id))+CONVERT(VARCHAR,Record_id)  
		 --+REPLICATE('0',7-LEN(File_ident))+CONVERT(VARCHAR,File_ident)  
		 --+REPLICATE(' ',16-LEN(RTA_Int_No))+RTA_Int_No
		 --+REPLICATE(' ',1-LEN(DRCR_Ind))+CONVERT(VARCHAR,DRCR_Ind)  
		 --+REPLICATE(' ',12-LEN(isin))+CONVERT(VARCHAR,isin) 
		 --+REPLICATE('0',4-LEN(CAType))+CONVERT(VARCHAR,CAType) 
		 --+REPLICATE(' ',8-len(Allot_dt))+CONVERT(VARCHAR,Allot_dt)
	  --   +REPLICATE(' ',4-len(Allocation_Desc))+CONVERT(VARCHAR,Allocation_Desc)
		 --+REPLICATE(' ',8-len(Exec_dt))+CONVERT(VARCHAR,Exec_dt)
	  --   +REPLICATE('0',15-LEN(TotallQty_FL))+CONVERT(VARCHAR,TotallQty_FL)+'000' 
		 --+REPLICATE('0',15-LEN(TotallQty_L))+CONVERT(VARCHAR,TotallQty_L)+'000' 
		 --+REPLICATE('0',7-LEN(Tot_Ded_rec))+CONVERT(VARCHAR,Tot_Ded_rec)
		 --+REPLICATE('0',15-LEN(TotIssued_Amt))+CONVERT(VARCHAR,TotIssued_Amt)+'000' 
		 --+REPLICATE('0',15-LEN(TotPaidup_Amt))+CONVERT(VARCHAR,TotPaidup_Amt)+'000' 
		 --+REPLICATE(' ',1-LEN(StampDuty_Payable))+CONVERT(VARCHAR,StampDuty_Payable)
		 --+REPLICATE(' ',2-LEN(Basis_Calc_SD))+CONVERT(VARCHAR,Basis_Calc_SD)
		 +filler2 as opentexta into g2file
		 FROM MutualFunddt01 where masteruniqno = @MastUNo)
END
GO
/****** Object:  StoredProcedure [dbo].[generateflatfileMFDT02]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[generateflatfileMFDT02] @MastUNo nvarchar(4)
AS 
BEGIN
SET NOCOUNT ON
(
SELECT  '03'+
		+REPLICATE('0',7-LEN(dt_Line_no))+CONVERT(VARCHAR,dt_Line_no)  
		--+REPLICATE(' ',7-LEN(Record_id))+CONVERT(VARCHAR,Record_id) 
		--+REPLICATE(' ',7-LEN(Dt_line_no))+CONVERT(VARCHAR,Dt_line_no) 
		--+REPLICATE(' ',8-LEN(Dpid))+CONVERT(VARCHAR,Dpid) 
		--+REPLICATE(' ',8-LEN(Clid))+CONVERT(VARCHAR,Clid) 
		--+REPLICATE(' ',2-LEN(Cl_Acc_Cat))+CONVERT(VARCHAR,Cl_Acc_Cat) 
		--+REPLICATE('0',15-LEN(AllQty))+CONVERT(VARCHAR,AllQty)+'000' 
		--+REPLICATE('0',2-LEN(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)
	 --   +REPLICATE(' ',8-len(Lockin_Release_Dt))+CONVERT(VARCHAR,Lockin_Release_Dt)
		--+REPLICATE('0',15-LEN(Iss_Price))+CONVERT(VARCHAR,Iss_Price)+'000' 
	 --   +REPLICATE('0',15-LEN(Iss_Amt))+CONVERT(VARCHAR,Iss_Amt)+'000' 
	 --   +REPLICATE('0',15-LEN(Paidup_Price))+CONVERT(VARCHAR,Paidup_Price) +'000'
	 --   +REPLICATE('0',15-LEN(Paidup_Amt))+CONVERT(VARCHAR,Paidup_Amt)+'000' 
	    +filler3 as opentexta into g3file
		FROM MutualFunddt02 where masteruniqno = @MastUNo)
END
GO
/****** Object:  StoredProcedure [dbo].[generateflatfileMFHD00]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[generateflatfileMFHD00]  @MastUNo nvarchar(4)
AS 
BEGIN
SET NOCOUNT ON
(
SELECT  '01'+
		+REPLICATE(' ',2-LEN(Record_id))+CONVERT(VARCHAR,Record_id) 
		--+REPLICATE(' ',7-LEN(Batch_no))+CONVERT(VARCHAR,Batch_no) 
		--+REPLICATE(' ',8-LEN(SHR_id))+CONVERT(VARCHAR,SHR_id) 
		--+REPLICATE('0',5-LEN(Tot_CA_Orders))+CONVERT(VARCHAR,Tot_CA_Orders) 
		--+REPLICATE(' ',8-LEN(Sender_dt))+CONVERT(VARCHAR,Sender_dt)
		+REPLICATE(' ',12-LEN(FILLER1))+CONVERT(VARCHAR,FILLER1)  as opentexta into g1file
FROM MutualFundhd00 where masteruniqno = @MastUNo)
END
GO
/****** Object:  StoredProcedure [dbo].[GenerateNormalCAUploadDetailDist]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GenerateNormalCAUploadDetailDist]  @MastUNo nvarchar(4)
AS 
BEGIN
SET NOCOUNT ON
(
SELECT '03'+                                                  
		+REPLICATE('0',7-LEN(Detail_Record_Line_No))+CONVERT(VARCHAR,Detail_Record_Line_No)  
		+REPLICATE('0',18-LEN(From_Distinctive_No_NSDL))+CONVERT(VARCHAR,From_Distinctive_No_NSDL)  
		+REPLICATE('0',18-LEN(To_Distinctive_No_NSDL))+CONVERT(VARCHAR,To_Distinctive_No_NSDL)  
		+REPLICATE('0',18-LEN(Quantity))+CONVERT(VARCHAR,Quantity)  
		+REPLICATE('0',2-LEN(Flag_status_DN_Range))
		+REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type)
		as ftemp3 into fftemp3
FROM NormalCADetailDistRecord  where masteruniqno = @MastUNo)
END
GO
/****** Object:  StoredProcedure [dbo].[GenerateNormalCAUploadDetailRecord]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GenerateNormalCAUploadDetailRecord] @MastUNo nvarchar(4)
AS 
BEGIN
SET NOCOUNT ON
(
SELECT '02'+                                                  
       +REPLICATE('0',7-LEN(Detail_Record_Line_No))+CONVERT(VARCHAR,Detail_Record_Line_No)  
	   +REPLICATE('0',8-LEN(DP_ID))+CONVERT(VARCHAR,DP_ID) 
	   +REPLICATE(' ',8-len(client_id))+CONVERT(VARCHAR,CLIENT_ID) 
	       --+REPLICATE('0',8-LEN(Client_ID))+CONVERT(VARCHAR,Client_ID) 
	+REPLICATE(' ',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)
	   +REPLICATE('0',15-LEN(Allotment_Quantity))+CONVERT(VARCHAR,Allotment_Quantity)+'000' 
	   +REPLICATE('0',2-LEN(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)
	----(CASE WHEN LEN(phone)>2 THEN 'R' ELSE '' END), 		 WHEN B.occupation =2 then 'F'   WHEN B.occupation =3 then 'H'               ELSE 'O' END,    ELSE	   +'00000000'		END
	   +'        '
	   --+REPLICATE(' ',8-len(CONVERT(varchar,Lockin_Release_Date,112)))+CONVERT(varchar,Lockin_Release_Date,112)
	   +REPLICATE('0',12-LEN(Issue_Price))+CONVERT(VARCHAR,Issue_Price)+'000000' 
	   +REPLICATE('0',16-LEN(Issued_Amount))+CONVERT(VARCHAR,Issued_Amount)+'00' 
	   +REPLICATE('0',12-LEN(Paidup_Price))+CONVERT(VARCHAR,Paidup_Price) +'000000'
	   +REPLICATE('0',16-LEN(Paidup_Amount))+CONVERT(VARCHAR,Paidup_Amount)+'00' 
	   +CONVERT(VARCHAR(12),ISNULL(FILLER,''))+REPLICATE(' ',12-LEN(FILLER)) as ftemp2 into fftemp2                                                                                
	   --+REPLICATE(' ',12-LEN(FILLER))+CONVERT(VARCHAR,FILLER)  as ftemp2 into fftemp2
FROM NormalCADetailRecord where masteruniqno = @MastUNo)
END

GO
/****** Object:  StoredProcedure [dbo].[GenerateNormalCAUploadHeader]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GenerateNormalCAUploadHeader]  @MastUNo nvarchar(4)
AS 
BEGIN
SET NOCOUNT ON
(
SELECT '01SHRI001'+        
	   +(RTA_Internal_Reference_No) 
	   +'    '+
	   +REPLICATE(' ',1-len(Debit_Credit_Indicator))+CONVERT(VARCHAR,Debit_Credit_Indicator)
	   +REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)
	   +(CA_Type)
	   +REPLICATE(' ',8-len(CONVERT(varchar,Allotment_Date,112)))+CONVERT(varchar,Allotment_Date,112)
	   +REPLICATE('0',4-LEN(Allocation_Allotment_Description))+CONVERT(VARCHAR,Allocation_Allotment_Description)
	   +REPLICATE(' ',8-len(CONVERT(varchar,Execution_Date,112)))+CONVERT(varchar,Execution_Date,112)
	   +REPLICATE('0',15-LEN(Total_Allotted_Quantity_Free_Lockin))+CONVERT(VARCHAR,Total_Allotted_Quantity_Free_Lockin)+'000'
	   +'000000000000000000'
	   --+REPLICATE('0',15-LEN(Total_Allotted_Quantity_Lockin))+CONVERT(VARCHAR,Total_Allotted_Quantity_Lockin)+'000'
	   +REPLICATE('0',7-LEN(Total_No_detail_records))+CONVERT(VARCHAR,Total_No_detail_records)
	   +REPLICATE('0',16-LEN(Total_Issued_Amount))+CONVERT(VARCHAR,Total_Issued_Amount)+'00'
	   +REPLICATE('0',16-LEN(Total_Paidup_Amount))+CONVERT(VARCHAR,Total_Paidup_Amount)+'00'  
	   +REPLICATE(' ',1-len(Stamp_Duty_Payable))+CONVERT(VARCHAR,Stamp_Duty_Payable)
	   +REPLICATE(' ',2-len(Basis_calculation_Stamp_Duty))+CONVERT(VARCHAR,Basis_calculation_Stamp_Duty)
	   +REPLICATE(' ',2-len(EBP_Name))+CONVERT(VARCHAR,EBP_Name)
	   +REPLICATE(' ',2-len(Funds_collected_through))+CONVERT(VARCHAR,Funds_collected_through)
	   +(FILLER) as ftemp1 into fftemp1
	   --+REPLICATE(' ',2-len(FILLER))+CONVERT(VARCHAR,FILLER) as ftemp1 into fftemp1
	FROM NormalCAHeaderRecord where masteruniqno = @MastUNo)
END
GO
/****** Object:  StoredProcedure [dbo].[Idt51Files]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Idt51Files] 
as
begin
SET NOCOUNT ON      
(      
--select * from idt_mast51out
select 
	rtrim(type_id)+
	+rtrim(line_no)+
	+REPLICATE(' ',8-len(CONVERT(varchar,Date2,112)))+CONVERT(varchar,Date2,112)+
	+filler1+
	+isin_no+
	+shares+
	+REPLICATE(' ',8-len(CONVERT(varchar,Date3,112)))+CONVERT(varchar,Date3,112)+
	+REPLICATE(' ',8-len(CONVERT(varchar,Date4,112)))+CONVERT(varchar,Date4,112)+
	+REPLICATE(' ',8-len(CONVERT(varchar,Date5,112)))+CONVERT(varchar,Date5,112)+
	+' '+
	+idtfiletype +
	+'         '
	as itempf into #temp1 
	from idt_mast51out)

		IF OBJECT_ID ( 'IDT51', 'U' ) IS NOT NULL  DROP TABLE IDT51
		select * into IDT51 from #temp1
		DECLARE @cmd varchar(500),@filename1 varchar(100)
		SELECT @filename1 ='IDT051OUT'+'.TXT'       
		SET @cmd = 'bcp "SELECT * FROM vccipl.[dbo].[idt51]" '+ 'queryout d:\sbroutfiles\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
		EXEC master..xp_cmdshell @cmd
END 
GO
/****** Object:  StoredProcedure [dbo].[Idt90Files]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Idt90Files] 
as
begin
SET NOCOUNT ON      
(      
select 
	rtrim(type_id)+
	+rtrim(line_no)+
	+REPLICATE(' ',8-len(CONVERT(varchar,Date2,112)))+CONVERT(varchar,Date2,112)+
	+filler1+
	+isin_no+
	+shares+
	+REPLICATE(' ',8-len(CONVERT(varchar,Date3,112)))+CONVERT(varchar,Date3,112)+
	+REPLICATE(' ',8-len(CONVERT(varchar,Date4,112)))+CONVERT(varchar,Date4,112)+
	+REPLICATE(' ',8-len(CONVERT(varchar,Date5,112)))+CONVERT(varchar,Date5,112)+
	+' '+
	+idtfiletype+
	+'         '
	as itempf into #temp2 
	from idt_mast90out)

		IF OBJECT_ID ( 'IDT90', 'U' ) IS NOT NULL  DROP TABLE IDT90
		select * into IDT90 from #temp2
		DECLARE @cmd varchar(500),@filename1 varchar(100)
		SELECT @filename1 ='IDT090OUT'+'.TXT'       
		SET @cmd = 'bcp "SELECT * FROM vccipl.[dbo].[idt90]" '+ 'queryout d:\sbroutfiles\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
		EXEC master..xp_cmdshell @cmd
END 
GO
/****** Object:  StoredProcedure [dbo].[ImportOtherCompaniesFiles]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ImportOtherCompaniesFiles](@filename varchar(100))      
AS  
BEGIN      
--EXECUTE ('BULK INSERT Othbulkfile01 FROM '''+ @filename  + ''' WITH (FIRSTROW=2,FIELDTERMINATOR=',',ROWTERMINATOR=''0x0a'',BATCHSIZE=10)')
EXECUTE ('BULK INSERT Othbulkfile01 FROM '''+ @filename  + ''' WITH (FIRSTROW=2,ROWTERMINATOR=''0x0a'',BATCHSIZE=10,TABLOCK)')
end
GO
/****** Object:  StoredProcedure [dbo].[MonthlyReportDataonCA]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[MonthlyReportDataonCA] 
as 
begin 
(
select 'Normal-CA' as VCA,inward_date as Inw_Dt, isin as Isin,company_name as Co_Name,typeofca as CA_Type,aadesc as CA_Description, 
Total_No_detail_records as Tot_Records, Total_Allotted_Quantity_Free_Lockin
as Quantity, execution_date as Exec_Dt,masteruniqno from NormalCAHeaderRecordkk where Allocation_Allotment_Description <> '0029'
union
select 'AIF-CA' as VCA,inward_date as Inw_Dt, isin as Isin,company_name as Co_Name,typeofca as CA_Type,aadesc as CA_Description, 
Total_No_detail_records as Tot_Records, Total_Allotted_Quantity_Free_Lockin
as Quantity, execution_date as Exec_Dt,masteruniqno from NormalCAHeaderRecordkk where Allocation_Allotment_Description ='0029'
union
select 'Simul-CA' as VCA,inward_dt as Inw_Dt, Cr_isin as Isin,
company_name as Co_Name,
typeofca as CA_Type,aadesc as CA_Description, 
totdetrec as Tot_Records, TotCrQty_Flin
as Quantity,execution_dt as Exec_Dt,masteruniqno from simulcaheaderrecordkk
union
select 'IEPF-A' as VCA,inward_dt as Inw_Dt, debit_isin as Isin,company_name as Co_Name,ca_type as CA_Type,ca_desc as CA_Description, 
totdetrec as Tot_Records, totcrqty_flinb
as Quantity,execution_dt as Exec_Dt,masteruniqno from iepftypeaHd
union
select 'IEPF-D' as VCA,inw_dt as Inw_Dt, CREDIT_ISIN as Isin,company_name as Co_Name,typeofca as CA_Type,CA_DESCRIPTION1 as CA_Description, 
tot_detrec as Tot_Records, TotDrQty_FLinBl
as Quantity,execution_date as Exec_Dt,masteruniqno from iepftypedHd
)
End
GO
/****** Object:  StoredProcedure [dbo].[NCASTEP3]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NCASTEP3]    
AS     
BEGIN    
    
drop table NormalCAHeaderRecord_temp1    
drop table fftemp1    
drop table NormalCADetailRecord_temp1    
drop table fftemp2    
drop table NormalCADetailDistRecord_temp1    
drop table fftemp3    
--    
END 
GO
/****** Object:  StoredProcedure [dbo].[NCASTEP4]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NCASTEP4]
AS
BEGIN
drop table finalupl
select * into finalupl from fftemp1
insert into finalupl select * from fftemp2
insert into finalupl select * from fftemp3
select * from finalupl
END
GO
/****** Object:  StoredProcedure [dbo].[NCASTEP5]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NCASTEP5]
AS 
BEGIN
select * into finalupl from fftemp1
insert into finalupl select * from fftemp2
insert into finalupl select * from fftemp3
select * from finalupl

END
GO
/****** Object:  StoredProcedure [dbo].[ns_txt_file_read]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[ns_txt_file_read]  
    @os_file_name NVARCHAR(256) 
   ,@text_file VARCHAR(MAX) OUTPUT  
/* Reads a text file into @text_file 
* 
* Transactions: may be in a transaction but is not affected 
* by the transaction. 
* 
* Error Handling: Errors are not trapped and are thrown to 
* the caller. 
* 
* Example: 
    declare @t varchar(max) 
    exec ns_txt_file_read 'c:\temp\SampleTextDoc.txt', @t output 
    select @t as [SampleTextDoc.txt] 
* 
* History: 
* WHEN       WHO        WHAT 
* ---------- ---------- --------------------------------------- 
* 2007-02-06 anovick    Initial coding 
**************************************************************/  
AS  
DECLARE @sql NVARCHAR(MAX) 
      , @parmsdeclare NVARCHAR(4000)  

SET NOCOUNT ON  

SET @sql = 'select @text_file=(select * from openrowset ( 
           bulk ''' + @os_file_name + ''' 
           ,SINGLE_CLOB) x 
           )' 

SET @parmsdeclare = '@text_file varchar(max) OUTPUT'  

EXEC sp_executesql @stmt = @sql 
                 , @params = @parmsdeclare 
                 , @text_file = @text_file OUTPUT 
GO
/****** Object:  StoredProcedure [dbo].[nsdldematremat01f]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[nsdldematremat01f]
as
begin
	update  Nsdl_DematRemat_Header01 set
		Rec_Type				= substring(remsource,1,2),
		Isin					= substring(remsource,3,12),
		Sr_Bpid					= substring(remsource,15,8),
		Sr_Name					= substring(remsource,23,135),
		Stprep_Date				= substring(remsource,158,8),
		Stprep_Time				= substring(remsource,166,6),
		Tot_Dem_Req				= substring(remsource,172,18),
		Tot_Dem_Acc				= substring(remsource,190,18),
		Tot_Dem_Rej				= substring(remsource,208,18),
		Tot_Dem_Pen				= substring(remsource,226,18),
		Tot_Rem_Req				= substring(remsource,244,18),
		Tot_Rem_Acc				= substring(remsource,262,18),
		Tot_Rem_Rej				= substring(remsource,280,18),
		Tot_Rem_Pen				= substring(remsource,298,18),
		Tot_Repred_Req			= substring(remsource,316,18),
		Tot_Repred_Acc			= substring(remsource,334,18),
		Tot_Repred_Rej			= substring(remsource,352,18),
		Tot_Repred_Pen			= substring(remsource,370,18),
		Tot_Dem_Instr			= substring(remsource,388,8),
		Tot_Rem_Instr			= substring(remsource,396,8),
		Tot_Repred_Instr		= substring(remsource,404,8),
		Tot_Partpen_Demunits	= substring(remsource,412,8),
		Tot_Partpen_Remat		= substring(remsource,420,8),
		Tot_Partpen_Repred		= substring(remsource,428,8),
		Tot_Fullpen_Demunits	= substring(remsource,436,8),
		Tot_Fullpen_Remat		= substring(remsource,444,8),
		Tot_Fullpen_Repred		= substring(remsource,452,8),
		Tot_Det_Records			= substring(remsource,460,7),
		Full_Inc_Flag			= substring(remsource,467,1),
		Inc_Ref_Dt				= substring(remsource,468,8),
		Filler01				= substring(remsource,476,10) 
update	Nsdl_DematRemat_Detail02 set
		Rec_Type		= substring(remsource,1,2),
		Line_No			= substring(remsource,3,7),
		Dpid			= substring(remsource,10,8),
		Dr_Indicator	= substring(remsource,18,1),
		Drn_Rrn_Crn		= substring(remsource,19,14),
		Ben_Acno		= substring(remsource,33,8),
		Name1			= substring(remsource,41,135),
		Filler01		= substring(remsource,176,115),
		Name2			= substring(remsource,291,45),
		Name3			= substring(remsource,336,45),
		Free_Lock_Flag	= substring(remsource,381,1),
		Lock_Reas_Code	= substring(remsource,382,2),
		Lock_Reas_Dt	= substring(remsource,384,8),
		Req_Qty			= substring(remsource,392,18),
		Intrefno		= substring(remsource,410,35),
		Instr_Recd_Dt	= substring(remsource,445,8),
		Drc_Recd_Dt		= substring(remsource,453,8),
		Drc_Status		= substring(remsource,461,2),
		Conf_No			= substring(remsource,463,14),
		Conf_Dt			= substring(remsource,477,8),
		Acc_Qty			= substring(remsource,485,18),
		Rej_Qty			= substring(remsource,503,18),
		Conf_Cap_Dt		= substring(remsource,521,14),
		Vr_Dt			= substring(remsource,535,14),
		Inst_Rdt_Dm		= substring(remsource,549,14),
		Conf_Status		= substring(remsource,563,2),
		Rejrej_1		= substring(remsource,565,4),
		Rejrej_2		= substring(remsource,569,4),
		Rejrej_3		= substring(remsource,573,4),
		Rejrej_4		= substring(remsource,577,4),
		No_Certs		= substring(remsource,581,8),
		Allunits_Ind	= substring(remsource,589,1),
		Allunits_Fc_Ind	= substring(remsource,590,1),
		Ben_Type		= substring(remsource,591,2),
		Ben_Subtype		= substring(remsource,593,2),
		Badd1			= substring(remsource,595,36),
		Badd2			= substring(remsource,631,36),
		Badd3			= substring(remsource,667,36),
		Badd4			= substring(remsource,703,36),
		Bpincode		= substring(remsource,739,10),
		Pan1			= substring(remsource,749,30),
		Pan2			= substring(remsource,779,30),
		Pan3			= substring(remsource,809,30),
		Phone1			= substring(remsource,839,24),
		Fhbank_Nm		= substring(remsource,863,30),
		Fhbank_Acc		= substring(remsource,893,30),
		Micr_Code		= substring(remsource,923,9),
		Ifsc			= substring(remsource,932,11),
		Acc_Status		= substring(remsource,943,10),
		Filler02		= substring(remsource,953,18)
update	Nsdl_DematRemat_Detail03 set
		Rec_Type		= substring(remsource,1,2),
		Line_No			= substring(remsource,3,7),
		Dpid			= substring(remsource,10,8),
		Durr_Ind		= substring(remsource,18,1),
		Drc				= substring(remsource,19,14),
		Ben_Acno		= substring(remsource,33,8),
		Folio			= substring(remsource,41,20),
		Certno			= substring(remsource,61,18),
		Dnrfrom			= substring(remsource,79,18),
		Dnrto			= substring(remsource,97,18),
		Qty				= substring(remsource,115,18),
		Name_Mism_Ind	= substring(remsource,133,1),
		Filler01		= substring(remsource,134,100)
END
GO
/****** Object:  StoredProcedure [dbo].[OthBulkImport3FieldsForSingleIsinDetailRecord]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[OthBulkImport3FieldsForSingleIsinDetailRecord] 
as 
begin
IF OBJECT_ID ( 'Othbulkfile01', 'U' ) IS NOT NULL  DROP TABLE othbulkfile01
create table Othbulkfile01 (dpidclid varchar(18),units varchar(18))

BULK INSERT Othbulkfile01 
	FROM 'D:\OtherCompanies\13012024\othFormatFile02.csv' 
	WITH 
	(  
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=10
	)
	Print 'Importing is Just Done...................!'
truncate table Othbulkfile02

INSERT INTO Othbulkfile02 (dp_id,client_id,Allotment_Quantity)
SELECT substring(dpidclid,1,8),substring(dpidclid,9,8),trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,units)),15)) +'000'  from othbulkfile01
--generate line Nos.
IF OBJECT_ID ( 'TEMP2', 'U' ) IS NOT NULL  DROP TABLE TEMP2
SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO TEMP2 FROM Othbulkfile02 WHERE id < 99999
UPDATE a SET a.Detail_Record_Line_No = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM Othbulkfile02 a JOIN temp2 b ON a.ID=b.ID
--xxxxxxxxxxxxxxxxxx
update Othbulkfile02 set	Record_IDentification ='02',
							Client_Account_Category='00',
							Lockin_Reason_Code='00',
							Lockin_Release_Date='1900-01-01 00:00:00.000',
							Issue_Price ='000000000100000000',
							Issued_Amount = RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,Allotment_Quantity/1000*100)),15) +'000',
							Paidup_Price ='000000000100000000',Paidup_Amount = RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,Allotment_Quantity/1000*10)),15) +'000',
							filler ='',
							MasterUniqNo ='9999',
							ProcessedFlag='N',
							FractionFlag='N',
							calcflag='Y'
delete from othbulkfile02 where dp_id like '1%'
select 'Details of Imported File Details' as Description,count(*) as TotalDetRecord,sum(convert(int,allotment_quantity)/1000) as Shares from othbulkfile02
Print 'Updtion is Just Done...................!'
truncate table NORMALCADETAILRECORDTT 
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
-- Process to import Bulk DPID CLID UNITS FOR GENERATION OTH FLAT FILE (Detail Record) (NSDL)
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
INSERT INTO NormalCADetailRecordTT  (Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag) 
SELECT
Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag 
FROM OTHBULKFILE02
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
end

GO
/****** Object:  StoredProcedure [dbo].[OthBulkImport3FieldsForSingleIsinHeaderRecord]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[OthBulkImport3FieldsForSingleIsinHeaderRecord] 
as 
begin
delete from Othbulkfile02a where id <> '1'
update Othbulkfile02a set Record_IDentification					= '01'
update Othbulkfile02a set File_IDentification					= 'SHRI001'
update Othbulkfile02a set RTA_Internal_Reference_No				= 'INT REF.NO'
update Othbulkfile02a set Debit_Credit_Indicator				= 'C'
update Othbulkfile02a set ISIN									= 'INE12345678'
update Othbulkfile02a set CA_Type								= '0001'
update Othbulkfile02a set Allotment_Date						= '2024-01-13 00:00:00.000'
update Othbulkfile02a set Allocation_Allotment_Description		= '0001'
update Othbulkfile02a set Execution_Date						= '2024-01-13 00:00:00.000'
update Othbulkfile02a set Total_Allotted_Quantity_Free_Lockin	= '000000000002500000'     --2500 SHARES  (15, 3)
update Othbulkfile02a set Total_Allotted_Quantity_Lockin		= '000000000000000000'
update Othbulkfile02a set Total_No_detail_records				= '0000001'
update Othbulkfile02a set Total_Issued_Amount					= '000000000025000000'     -- 2500 * 100 =  (16,2)
update Othbulkfile02a set Total_Paidup_Amount					= '000000000025000000'     -- 2500 * 100 =  (16,2)
update Othbulkfile02a set Stamp_Duty_Payable					= 'Y'
update Othbulkfile02a set Basis_calculation_Stamp_Duty			= '01'
update Othbulkfile02a set EBP_Name								= '00'
update Othbulkfile02a set Funds_collected_through				= '00'
update Othbulkfile02a set Filler								= '  '
update Othbulkfile02a set MasterUniqNo							= '9999'
update Othbulkfile02a set Processflag							= 'N'
update Othbulkfile02a set FractionFlag							= 'N'
update Othbulkfile02a set calcflag								= 'Y'
--select * into normalcaheaderrecordtt from NormalCAHeaderRecord
truncate table normalcaheaderrecordtt
INSERT INTO NormalCAHeaderRecordTT 
(
Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
) 
SELECT
Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
FROM  Othbulkfile02a
select * from Othbulkfile02a
end
GO
/****** Object:  StoredProcedure [dbo].[remtoallcolsnsdl]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[remtoallcolsnsdl]
as begin
update	nsdlrecon_master set record_identification			= substring(rem,1,2)
update	nsdlrecon_master set File_identification			= substring(rem,3,5)
update  nsdlrecon_master set isin							= substring(rem,8,12)
update  nsdlrecon_master set ISIN_Short_Name				= substring(rem,20,140)
update  nsdlrecon_master set Company_Name					= substring(rem,160,140)
update  nsdlrecon_master set Flag_for_Decimal_ISIN			= substring(rem,300,2)
update  nsdlrecon_master set NSDL_Free_Positions			= substring(rem,302,18)
update  nsdlrecon_master set NSDL_Lock_Positions			= substring(rem,320,18)
update  nsdlrecon_master set NSDL_Unlock_Bal				= substring(rem,338,18)
update  nsdlrecon_master set NSDL_Lock_Bal					= substring(rem,356,18)
update  nsdlrecon_master set Pending_Demat_Bal				= substring(rem,374,18)
update  nsdlrecon_master set Pending_Remat_free_Bal			= substring(rem,392,18)
update  nsdlrecon_master set Pending_Remat_Lock_Bal			= substring(rem,410,18)
update  nsdlrecon_master set NSDL_Delivery_transit_Bal		= substring(rem,428,18)
update  nsdlrecon_master set NSDL_Receipt_transit_Balance	= substring(rem,446,18)
update  nsdlrecon_master set Filler							= substring(rem,464,162)
update  nsdlrecon_master set Security_Type					= substring(rem,626,2)
update  nsdlrecon_master set Filler1						= substring(rem,628,13)
end
GO
/****** Object:  StoredProcedure [dbo].[report001]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[report001] @ff1 varchar(100)
as 
begin 
select 'NormalCA' as VCA,inward_date as Inw_Dt, isin as Isin,company_name as Co_Name,typeofca as CA_Type,aadesc as CA_Description, 
Total_No_detail_records as Tot_Records, Total_Allotted_Quantity_Free_Lockin
as Quantity, execution_date as Exec_Dt,masteruniqno from NormalCAHeaderRecord
union
select 'SimulCA' as VCA,inward_dt as Inw_Dt, Cr_isin as Isin,
company_name as Co_Name,
typeofca as CA_Type,aadesc as CA_Description, 
totdetrec as Tot_Records, TotCrQty_Flin
as Quantity,execution_dt as Exec_Dt,masteruniqno from simulcaheaderrecord
union
select 'IEPFTYPEA' as VCA,inward_dt as Inw_Dt, debit_isin as Isin,company_name as Co_Name,ca_type as CA_Type,ca_desc as CA_Description, 
totdetrec as Tot_Records, totcrqty_flinb
as Quantity,execution_dt as Exec_Dt,masteruniqno from iepftypeaHd
union
select 'IEPFTYPED' as VCA,inw_dt as Inw_Dt, CREDIT_ISIN as Isin,company_name as Co_Name,typeofca as CA_Type,CA_DESCRIPTION1 as CA_Description, 
tot_detrec as Tot_Records, TotDrQty_FLinBl
as Quantity,execution_date as Exec_Dt,masteruniqno from iepftypedHd
end
GO
/****** Object:  StoredProcedure [dbo].[sample_proc]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sample_proc]
(
    @tablename VARCHAR(50),
    @myoutput DECIMAL(20,5) OUTPUT
)
AS
    SET NOCOUNT ON;

    DECLARE @Cmd NVARCHAR(100);
    DECLARE @ParmDefinition NVARCHAR(500);

    SET @ParmDefinition = '@Total decimal(20,5) OUTPUT';
    SET @Cmd = 'SELECT @Total = (SUM(column1)/3.3) FROM [' + @tablename + ']';

    -- just to show SQL command.
    SELECT @Cmd;

    EXEC sp_executesql @Cmd, @ParmDefinition, @Total = @myoutput out;
GO
/****** Object:  StoredProcedure [dbo].[SimulCAUploadDetailDist]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SimulCAUploadDetailDist]
AS 
BEGIN
SET NOCOUNT ON
(
SELECT '03'+                                                  
		+REPLICATE('0',7-LEN(Detail_Record_Line_No))+CONVERT(VARCHAR,Detail_Record_Line_No)  
		+REPLICATE(' ',12-len(Debit_Credit_ISIN))+CONVERT(VARCHAR,Debit_Credit_ISIN)
		+REPLICATE(' ',1-len(Debit_Credit_Indicator))+CONVERT(VARCHAR,Debit_Credit_Indicator)
		+REPLICATE('0',18-LEN(From_Distinctive_No_NSDL))+CONVERT(VARCHAR,From_Distinctive_No_NSDL)  
		+REPLICATE('0',18-LEN(To_Distinctive_No_NSDL))+CONVERT(VARCHAR,To_Distinctive_No_NSDL)  
		+REPLICATE('0',18-LEN(Quantity))+CONVERT(VARCHAR,Quantity)  
		+REPLICATE('0',2-LEN(Flag_status_DN_Range))
		+REPLICATE('0',4-LEN(CA_Code))+CONVERT(VARCHAR,CA_Code) 
		as stemp1 into sstemp3
FROM SimulCADetailDistRecord_temp1)
END
GO
/****** Object:  StoredProcedure [dbo].[SimulCAUploadDetailRecord]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SimulCAUploadDetailRecord]
AS 
BEGIN
SET NOCOUNT ON
(
SELECT '02'+                                                  
		+REPLICATE('0',7-LEN(Detail_Record_Line_No))+CONVERT(VARCHAR,Detail_Record_Line_No)  
		+REPLICATE('0',8-LEN(Credit_DP_ID))+CONVERT(VARCHAR,Credit_DP_ID) 
		+REPLICATE('0',8-LEN(Credit_Client_ID))+CONVERT(VARCHAR,Credit_Client_ID) 
		+REPLICATE('0',2-len(Credit_Client_Account_Category))+CONVERT(VARCHAR,Credit_Client_Account_Category)
		+REPLICATE('0',8-LEN(Debit_DP_ID))+CONVERT(VARCHAR,Debit_DP_ID) 
		+REPLICATE('0',8-LEN(Debit_Client_ID))+CONVERT(VARCHAR,Debit_Client_ID) 
		+REPLICATE('0',2-len(Debit_Client_Account_Category))+CONVERT(VARCHAR,Debit_Client_Account_Category)
		+REPLICATE('0',15-LEN(Credit_Quantity))+CONVERT(VARCHAR,Credit_Quantity)+'000' 
		+REPLICATE('0',15-LEN(Debit_Quantity))+CONVERT(VARCHAR,Debit_Quantity)+'000' 
		+REPLICATE('0',2-LEN(Credit_Quantity_Lockin_Reason_Code))+CONVERT(VARCHAR,Credit_Quantity_Lockin_Reason_Code)
		+'        '
		--+REPLICATE(' ',8-len(Credit_Quantity_Lockin_Release_Date))+CONVERT(VARCHAR,Credit_Quantity_Lockin_Release_Date)
		+REPLICATE('0',2-LEN(Debit_Quantity_Lockin_Reason_Code))+CONVERT(VARCHAR,Debit_Quantity_Lockin_Reason_Code)
		+'        '
		--+CONVERT(VARCHAR,Debit_Quantity_Lockin_Release_Date,112)
		--+REPLICATE(' ',8-len(Debit_Quantity_Lockin_Release_Date))+CONVERT(VARCHAR,Debit_Quantity_Lockin_Release_Date)
	    +'000000000000000000'
		--+REPLICATE('0',12-LEN(Issue_Price_Allotment_Allocation_Credit_ISIN))+CONVERT(VARCHAR,Issue_Price_Allotment_Allocation_Credit_ISIN)+'000000' 
		+'000000000000000000'
		--+REPLICATE('0',16-LEN(Issued_Amount_Allotment_Allocation_Credit_ISIN))+CONVERT(VARCHAR,Issued_Amount_Allotment_Allocation_Credit_ISIN)+'00' 
	    +'000000000000000000'
		--+REPLICATE('0',12-LEN(Paidup_Price_Allotment_Allocation_Credit_ISIN))+CONVERT(VARCHAR,Paidup_Price_Allotment_Allocation_Credit_ISIN)+'000000' 
		+'000000000000000000'
		--+REPLICATE('0',16-LEN(Paidup_Amount_Allotment_Allocation_Credit_ISIN))+CONVERT(VARCHAR,Paidup_Amount_Allotment_Allocation_Credit_ISIN)+'00' 
  as stemp1 into sstemp2
FROM SimulCADetailRecord_temp1)
END
GO
/****** Object:  StoredProcedure [dbo].[SimulCAUploadHeader]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SimulCAUploadHeader] 
AS 
BEGIN
SET NOCOUNT ON
(
SELECT	'01SHRI001'+                                                  
		--+REPLICATE('0',3-LEN(File_IDentification))+CONVERT(VARCHAR,File_IDentification)  
	    +REPLICATE(' ',16-len(RTA_Internal_Reference_No))+CONVERT(VARCHAR,RTA_Internal_Reference_No)
		+REPLICATE(' ',12-len(Credit_ISIN))+CONVERT(VARCHAR,Credit_ISIN)
		+REPLICATE(' ',12-len(Debit_ISIN))+CONVERT(VARCHAR,Debit_ISIN)
		+REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type) 
		+CONVERT(VARCHAR,Allotment_Date,112)
	--	+REPLICATE(' ',8-len(Allotment_Date))+CONVERT(VARCHAR,Allotment_Date)
		+REPLICATE('0',4-LEN(Allotment_Allocation_Description))+CONVERT(VARCHAR,Allotment_Allocation_Description)
		+CONVERT(VARCHAR,Execution_Date,112)
	--+REPLICATE(' ',8-len(Execution_Date))+CONVERT(VARCHAR,Execution_Date)
		+REPLICATE('0',15-LEN(Total_Credit_Quantity_Free_Lockin))+CONVERT(VARCHAR,Total_Credit_Quantity_Free_Lockin)+'000'
		+REPLICATE('0',15-LEN(Total_Debit_Quantity_Free_Lockin))+CONVERT(VARCHAR,Total_Debit_Quantity_Free_Lockin)+'000'
		+REPLICATE('0',15-LEN(Total_Credit_Quantity_Lockin))+CONVERT(VARCHAR,Total_Credit_Quantity_Lockin)+'000'
		+REPLICATE('0',15-LEN(Total_Debit_Quantity_Lockin))+CONVERT(VARCHAR,Total_Debit_Quantity_Lockin)+'000'
		+REPLICATE('0',7-LEN(Total_number_detail_records))+CONVERT(VARCHAR,Total_number_detail_records)
		+'000000000000000000'
		--+REPLICATE('0',16-LEN(Total_Issued_Amount_Allotment_Allocation_Credit_ISIN))+CONVERT(VARCHAR,Total_Issued_Amount_Allotment_Allocation_Credit_ISIN)+'00'
		+'000000000000000000'
		--+REPLICATE('0',16-LEN(Total_Paidup_Amount_Allotment_Allocation_Credit_ISIN))+CONVERT(VARCHAR,Total_Paidup_Amount_Allotment_Allocation_Credit_ISIN)+'00'  
		+REPLICATE(' ',1-len(Stamp_Duty_Payable))+CONVERT(VARCHAR,Stamp_Duty_Payable)
		+REPLICATE(' ',2-len(Basis_calculation_Stamp_Duty))+CONVERT(VARCHAR,Basis_calculation_Stamp_Duty) as stemp1 into sstemp1
		FROM SimulCAHeaderRecord_Temp1)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_aifcdslcaupfile]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_aifcdslcaupfile]
	as
	begin
		IF OBJECT_ID ( 'c1temp1', 'U' ) IS NOT NULL  DROP TABLE c1temp1
		IF OBJECT_ID ( 'c2temp2', 'U' ) IS NOT NULL  DROP TABLE c2temp2
		SET NOCOUNT ON      
		 (      
			SELECT '01'+                                                        
			  +total_records
			  +Tot_Curr_Qty
			  +Tot_Freeze_Qty
			  +Tot_Lockin_Qty
			  +Tot_Detail_Rec02
			  +Tot_Detail_Rec03
			  AS ctemp1 into c1temp1
			FROM corpactCDSLHeaderTT   
		  )      
		 (      
		 SELECT '02'+           
		  +BO_ID
		  +RTA_IntRef_No
		  +Pisin      
		  +PCurr_Qty  
		  +PFrozen_Qty      
		  +PLockin_Qty      
		  +PLockin_Reason_Cd
		  +space(50)+      
		  +'00000000'+      
		  --+REPLICATE(' ',8-len(PLockin_Exp_Date))+CONVERT(VARCHAR,PLockin_Exp_Date)      
		  +PDRCR_Flag      
		  +Benefit_Isin      
		  +BCurr_Qty   
		  +BFrozen_Qty      
		  +BLockin_Qty      
		  +BLockin_Reason_Cd
		  +space(50) +      
		  +'00000000'+      
		  ----+REPLICATE(' ',8-len(BLockin_Exp_Date))+CONVERT(VARCHAR,BLockin_Exp_Date)      
		  +BDRCR_Flag       
		  +offerprice
		  --+char(13)
		  as ctemp1 into c2temp2
		  FROM corpactCDSLDetailtt
		  )      
		 --(      
		 --SELECT char(13)+'03'+                                                        
		 -- +CA_Isin      
		 -- +From_DistNo_CDSL
		 -- +To_DistNo_CDSL
		 -- +Quantity
		 -- +DRCR_Flag  
		 -- +CHAR(13)
		 -- as ctemp1 into #temp3      
		 -- FROM corpactCDSLDetailDist       
		 -- where ProcessedFlag ='N' and calcflag ='N')    
			IF OBJECT_ID ( 'aifcdst1', 'U' ) IS NOT NULL  DROP TABLE aifcdst1

				create table aifcdst1 ( ctemp1 varchar(1000))
				insert	 into aifcdst1  select * from c1temp1
				insert	 into aifcdst1  select * from c2temp2
				--insert	 into aifcdst1  select * from #temp3
			select * from aifcdst1
			DECLARE @cmd varchar(500),@aifcdslfile varchar(100)
			SELECT @aifcdslfile ='AIFCDSL_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
			SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.aifcdst1" '+ 'queryout d:\aif\'+ @aifcdslfile + ' -c -UTF8 -T -Slocalhost'
			EXEC master..xp_cmdshell @cmd
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_CAnormal01]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CAnormal01] @MastUno varchar(4)
as
begin

		UPDATE NormalCAHeaderRecord SET PROCESSFLAG ='N' WHERE PROCESSFLAG IS NULL
		UPDATE NormalCADetailRecord SET PROCESSEDFLAG ='N' WHERE PROCESSEDFLAG IS NULL


		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.005	/100 where stmpparam ='A' and MasterUniqNo = @MastUno and processflag = 'N' and calcflag='N'
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.0001	/100 where stmpparam ='B' and MasterUniqNo = @MastUno and processflag = 'N' and calcflag='N'
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.005	/100 where stmpparam ='C' and MasterUniqNo = @MastUno and processflag = 'N' and calcflag='N'
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.015	/100 where stmpparam ='D' and MasterUniqNo = @MastUno and processflag = 'N' and calcflag='N'
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.003	/100 where stmpparam ='E' and MasterUniqNo = @MastUno and processflag = 'N' and calcflag='N'
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.00		/100 where stmpparam ='F' and MasterUniqNo = @MastUno and processflag = 'N' and calcflag='N'
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.00001	/100 where stmpparam ='G' and MasterUniqNo = @MastUno and processflag = 'N' and calcflag='N'
		UPDATE NormalCAHeaderRecord set Total_Allotted_Quantity_Free_Lockin =  RIGHT('000000000000000' 
		                                +CONVERT(VARCHAR,Total_Allotted_Quantity_Free_Lockin),15) +'000'	where 
										masteruniqno=@MastUno  and Processflag ='N' and calcflag ='N'
		UPDATE NormalCAHeaderRecord set Total_Allotted_Quantity_Lockin		=	RIGHT('000000000000000' 
										+CONVERT(VARCHAR,Total_Allotted_Quantity_Lockin),15) +'000'			where 
										masteruniqno=@MastUno  and Processflag ='N'  and calcflag ='N'
		UPDATE NormalCAHeaderRecord set Total_No_detail_records				=	RIGHT('0000000'			+CONVERT(VARCHAR,Total_No_detail_records),7) where 
										masteruniqno=@MastUno  and Processflag ='N' and calcflag ='N'
		UPDATE NormalCAHeaderRecord set Total_Issued_Amount					=	RIGHT('0000000000000000'	+CONVERT(VARCHAR,Total_Issued_Amount),16)   +'00'	  where
										masteruniqno=@MastUno  and Processflag ='N' and calcflag ='N'
		UPDATE NormalCAHeaderRecord set Total_Paidup_Amount					=	RIGHT('0000000000000000'+CONVERT(VARCHAR,Total_Paidup_Amount),16)   +'00'	  where
										masteruniqno=@MastUno  and Processflag ='N' and calcflag ='N'
		--UPDATE NormalCAHeaderRecord SET  Filler									= REPLACE(STR(Filler,2),' ',' ') where MASTERUNIQNO = @MastUno

		UPDATE NormalCADetailRecord set Detail_Record_Line_No				=	RIGHT('0000000'+CONVERT(VARCHAR,Detail_Record_Line_No),7)   where
										masteruniqno=@MastUno  and Processedflag ='N' and calcflag ='N'
		UPDATE NormalCADetailRecord set Allotment_Quantity				    =RIGHT('000000000000000'+CONVERT(VARCHAR,Allotment_Quantity),15)   +'000'	  where
										masteruniqno=@MastUno  and Processedflag ='N' and calcflag ='N'
		update NormalCADetailRecord set Issue_Price							=RIGHT('000000000000'+ CONVERT(VARCHAR,Issue_Price),12)+'000000'			where
										masteruniqno=@MastUno  and Processedflag ='N'  and calcflag ='N'
		UPDATE NormalCADetailRecord set issued_amount						=RIGHT('0000000000000000'+CONVERT(VARCHAR,issued_amount),16)   +'00'			where
										masteruniqno=@MastUno  and Processedflag ='N'and calcflag ='N'
		update NormalCADetailRecord set Paidup_Price						=RIGHT('000000000000'+ CONVERT(VARCHAR,Paidup_Price),12)+'000000'		where
										masteruniqno=@MastUno  and Processedflag ='N' and calcflag ='N'
		UPDATE NormalCADetailRecord set Paidup_Amount						=RIGHT('0000000000000000'+CONVERT(VARCHAR,Paidup_Amount),16)   +'00'		where
										masteruniqno=@MastUno  and Processedflag ='N' and calcflag ='N'
		UPDATE NormalCADetailDistRecord set Detail_Record_Line_No			=RIGHT('0000000'+CONVERT(VARCHAR,Detail_Record_Line_No),7)			where
										masteruniqno=@MastUno  and Processedflag ='N' and calcflag ='N'
		UPDATE NormalCADetailDistRecord set From_Distinctive_No_NSDL        =RIGHT('000000000000000000'+CONVERT(VARCHAR,From_Distinctive_No_NSDL),18)   where
										masteruniqno=@MastUno  and Processedflag ='N' and calcflag ='N'
		UPDATE NormalCADetailDistRecord set To_Distinctive_No_NSDL          =RIGHT('000000000000000000'+CONVERT(VARCHAR,To_Distinctive_No_NSDL),18)   where
										masteruniqno=@MastUno  and Processedflag ='N' and calcflag ='N'
		UPDATE NormalCADetailDistRecord set Quantity				        =RIGHT('000000000000000000'+CONVERT(VARCHAR,Quantity),18)   where
										masteruniqno=@MastUno  and Processedflag ='N' and calcflag ='N'

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CAnormal01SDN]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_CAnormal01SDN] @MastUno varchar(4)
as
begin
		UPDATE NormalCAHeaderRecord set Total_Issued_Amount		=	'000000000000000000'	where	masteruniqno=@MastUno  
		UPDATE NormalCAHeaderRecord set Total_Paidup_Amount		=   '000000000000000000'	where	masteruniqno=@MastUno  
		update NormalCADetailRecord set Issue_Price				=	'000000000000000000'	where	masteruniqno=@MastUno							
		UPDATE NormalCADetailRecord set issued_amount			=   '000000000000000000'	where	masteruniqno=@MastUno			
		update NormalCADetailRecord set Paidup_Price			=	'000000000000000000'	where	masteruniqno=@MastUno			
		UPDATE NormalCADetailRecord set Paidup_Amount			=   '000000000000000000'	where	masteruniqno=@MastUno			
end
GO
/****** Object:  StoredProcedure [dbo].[sp_CAnormal02]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CAnormal02] @MastUno varchar(4)
as
begin
SET NOCOUNT ON      
(      
SELECT '01SHRI001'+           
    +CONVERT(VARCHAR(16),RTA_Internal_Reference_No)+REPLICATE(' ',16-LEN(RTA_Internal_Reference_No))      
    +REPLICATE(' ',1-len(Debit_Credit_Indicator))+CONVERT(VARCHAR,Debit_Credit_Indicator)      
    +REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)      
    +REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type)      
	--+CA_Type
    +REPLICATE(' ',8-len(CONVERT(varchar,Allotment_Date,112)))+CONVERT(varchar,Allotment_Date,112)      
    +REPLICATE('0',4-LEN(Allocation_Allotment_Description))+CONVERT(VARCHAR,Allocation_Allotment_Description)      
    +REPLICATE(' ',8-len(CONVERT(varchar,Execution_Date,112)))+CONVERT(varchar,Execution_Date,112)      
	+Total_Allotted_Quantity_Free_Lockin
	+Total_Allotted_Quantity_Lockin
    +Total_No_detail_records
	+Total_Issued_Amount
	+Total_Paidup_Amount
	+REPLICATE(' ',1-len(Stamp_Duty_Payable))+CONVERT(VARCHAR,Stamp_Duty_Payable)      
    +REPLICATE(' ',2-len(Basis_calculation_Stamp_Duty))+CONVERT(VARCHAR,Basis_calculation_Stamp_Duty)      
    +REPLICATE(' ',2-len(EBP_Name))+CONVERT(VARCHAR,EBP_Name)      
    +REPLICATE(' ',2-len(Funds_collected_through))+CONVERT(VARCHAR,Funds_collected_through)      
    +'  '
	as ftemp1 into #temp1      
	FROM NormalCAHeaderRecord
	where masteruniqno = @MastUNo and processflag = 'N')      
(      
SELECT '02'+                                                        
    +Detail_Record_Line_No
    +REPLICATE('0',8-LEN(DP_ID))+CONVERT(VARCHAR,DP_ID)       
    +REPLICATE(' ',8-len(client_id))+CONVERT(VARCHAR,CLIENT_ID)       
    +REPLICATE(' ',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
    +Allotment_Quantity
    +REPLICATE('0',2-LEN(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
    +'        '      
    --+REPLICATE(' ',8-len(CONVERT(varchar,Lockin_Release_Date,112)))+CONVERT(varchar,Lockin_Release_Date,112)      
    +Issue_Price
    +Issued_Amount
    +Paidup_Price
    +Paidup_Amount
	+'            '    
    as ftemp1 into #temp2
    --+REPLICATE(' ',12-LEN(FILLER))+CONVERT(VARCHAR,FILLER)  as ftemp2 into fftemp2      
FROM NormalCADetailRecord 
where masteruniqno = @MastUNo and ProcessedFlag = 'N')      
(      
SELECT '03'+                                                        
  +Detail_Record_Line_No
  +From_Distinctive_No_NSDL
  +To_Distinctive_No_NSDL
  +Quantity
  +REPLICATE('0',2-LEN(Flag_status_DN_Range))+CONVERT(VARCHAR,FLAG_STATUS_DN_RANGE)
  +REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type)      
  as ftemp1 into #temp3     
FROM NormalCADetailDistRecord  
where masteruniqno = @MastUNo and processedflag = 'N')      
update NormalCAHeaderRecord set Processflag ='Y' where Processflag = 'N' and MasterUniqNo = @MastUno
update NormalCADetailRecord set Processedflag ='Y' where processedflag = 'N' and MasterUniqNo = @MastUno
update NormalCADetailDistRecord set Processedflag ='Y' where processedflag = 'N' and MasterUniqNo = @MastUno

END 
GO
/****** Object:  StoredProcedure [dbo].[sp_canormal03]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_canormal03] @Masteruniqno varchar(4)
as
begin
	IF OBJECT_ID ( 'fftemp1', 'U' ) IS NOT NULL  DROP TABLE fftemp1
	Exec sp_CAnormal02 @masteruniqno
	select * into fftemp1  from #temp1
	insert	 into fftemp1  select * from #temp2
	insert	 into fftemp1  select * from #temp3
	select * from fftemp1
end
GO
/****** Object:  StoredProcedure [dbo].[sp_CDSLBENDEMF]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CDSLBENDEMF] @isin varchar(12)
		as
		begin
		IF OBJECT_ID ( 'anydpidclidisin', 'U' ) IS NOT NULL  DROP TABLE anydpidclidisin
		create table anydpidclidisin (dpidclid varchar(16),ISIN varchar(12))
		--select * from anydpidclidisin
		TRUNCATE TABLE anydpidclidisin
		BULK INSERT anydpidclidisin
			FROM 'D:\bendem\NSDLCDSL.csv' 
			WITH 
			(  
				FIRSTROW = 2,
				FIELDTERMINATOR = ',',  
				ROWTERMINATOR = '\n',  
				BATCHSIZE=50
			)
	alter table anydpidclidisin add dpid varchar(8), clid varchar(8)
	update anydpidclidisin set dpid = substring(dpidclid,1,8)
	update anydpidclidisin set clid = substring(dpidclid,9,8)
	IF OBJECT_ID ( 'BENDEM04', 'U' ) IS NOT NULL  DROP TABLE BENDEM04
	create table BENDEM04 (dpid varchar(8),clid varchar(8))
	insert into bendem04 (dpid,clid) (select dpid,clid from anydpidclidisin)
	DELETE from bendem04 WHERE DPID NOT LIKE '1%'
	--SELECT * FROM BENDEM04u
	IF OBJECT_ID ( 'BENDEM04U', 'U' ) IS NOT NULL  DROP TABLE BENDEM04U
	SELECT DPID,CLID INTO BENDEM04U FROM BENDEM04 GROUP BY DPID,CLID 
	ALTER TABLE BENDEM04U ADD id int primary key identity(1,1)
	IF OBJECT_ID ( 'cdsbenrec', 'U' ) IS NOT NULL  DROP TABLE cdsbenrec
	select distinct count(*) as cdsbrec into cdsbenrec from bendem04U 
--	SELECT * FROM BENDEM04U
--  SELECT * FROM CDSBENREC
--  SELECT * FROM BENDEM03
	IF OBJECT_ID ( 'aTEMP11H', 'U' ) IS NOT NULL  DROP TABLE aTEMP11H
	IF OBJECT_ID ( 'aTEMP22D', 'U' ) IS NOT NULL  DROP TABLE aTEMP22D
	UPDATE a SET a.totalrec = RIGHT('0000000000'+CONVERT(VARCHAR,B.cdsbrec),10) FROM bendem03 a JOIN cdsbenrec b ON a.ID =1
		SET NOCOUNT ON      
		(      
			SELECT    
				totalrec
			--+batch_no
			--+rta_id	
			--+isin	
			--+request_type
			--+sender_id
			--+sender_date
			--+'        '
			as ctempf into aTEMP11H
			FROM bendem03
		)
		(
		SELECT                                                         
			--+Line_no
			+dpid
			+clid
			as ctempf into aTEMP22D
			FROM BENDEM04U
		)
		IF OBJECT_ID ('bendem4out', 'U' ) IS NOT NULL  DROP TABLE bendem4out
			create table bendem4out (ctempf varchar(54))
			insert   into bendem4out select * from atemp11h
			insert	 into bendem4out select * from atemp22d
		DECLARE @cmd varchar(500),@filename1 varchar(100)
		SELECT @filename1 ='99999.'+FORMAT(GETDATE(),'HHmm')+'.cvf'       
		SET @cmd = 'bcp "SELECT * FROM vccipl.[dbo].[bendem4out]" '+ 'queryout d:\bendem\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
		EXEC master..xp_cmdshell @cmd
	END 
GO
/****** Object:  StoredProcedure [dbo].[sp_delmuniqno]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_delmuniqno] @masteruniqno varchar(4)
as
begin
DELETE FROM NormalCAHeaderRecord where masteruniqno = @masteruniqno 
DELETE FROM NormalCADetailRecord where masteruniqno = @masteruniqno 
DELETE FROM NormalCADetailDistRecord where masteruniqno = @masteruniqno 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_genAnyCompanyBendemCDSL]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_genAnyCompanyBendemCDSL] @batchno varchar(4),@isin varchar(12)

		as
		begin
		update bendem01 set 
		record_Type= substring(rem,1,2),
		batch_no= RIGHT('0000000'+CONVERT(VARCHAR,@batchno),7),
		rta_id	= substring(rem,10,8),
		isin	= @isin,
		request_type= substring(rem,30,1),
		sender_id= substring(rem,31,8),
		sender_date= format(getdate(),'yyyyMMdd'),
		filler1	= substring(rem,47,8)
		
IF OBJECT_ID ( 'anydpidclidisin', 'U' ) IS NOT NULL  DROP TABLE anydpidclidisin
create table anydpidclidisin (dpidclid varchar(18),ISIN varchar(16))
select * from anydpidclidisin
TRUNCATE TABLE anydpidclidisin
BULK INSERT anydpidclidisin
	FROM 'D:\bendem\CDSLBENDEM.csv' 
	WITH 
	(  
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=50
	)
	alter table anydpidclidisin add dpid varchar(8), clid varchar(8)
	update anydpidclidisin set dpid = substring(dpidclid,1,8)
	update anydpidclidisin set clid = substring(dpidclid,9,8)
	IF OBJECT_ID ( 'BENDEM04', 'U' ) IS NOT NULL  DROP TABLE BENDEM04
	create table BENDEM04 (dpid varchar(8),clid varchar(8),record_type varchar(2),line_no varchar(7))
	insert into bendem04 (dpid,clid) (select dpid,clid from anydpidclidisin)
	DELETE from bendem04 WHERE DPID NOT LIKE '1%'
	IF OBJECT_ID ( 'BENDEM02U', 'U' ) IS NOT NULL  DROP TABLE BENDEM02U
	SELECT DPID,CLID INTO BENDEM02U FROM BENDEM04 GROUP BY DPID,CLID
	ALTER TABLE BENDEM02U ADD record_type varchar(2),line_no varchar(7),id int primary key identity(1,1)
	update bendem02U set record_type='02'
	--select * from bendem02u
	IF OBJECT_ID ( 'atemp2', 'U' ) IS NOT NULL  DROP TABLE atemp2
	SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO atemp2 FROM bendem02u WHERE id < 99999
	UPDATE a SET a.Line_no = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM bendem02u a JOIN atemp2 b ON a.ID=b.ID
	--select * from bendem02u
	IF OBJECT_ID ( 'cdsbenrec', 'U' ) IS NOT NULL  DROP TABLE cdsbenrec
	select distinct count(*) as cdsbrec into cdsbenrec from bendem04 

	IF OBJECT_ID ( 'bendem02v', 'U' ) IS NOT NULL  DROP TABLE bendem02v
	select dpid,clid,record_type,line_no into bendem02v from bendem02u
	truncate table bendem04

--	select count(*) from bendem04 
--	select * from bendem04
	--select * from cdsbenrec
	--select * from bendem02v
	--SELECT * FROM BENDEM04
	insert into bendem04 (DPID,CLID) (select DPID,CLID from bendem02v)
--	select dpid,clid from bendem04 group by dpid,clid having count(*) >1
	IF OBJECT_ID ( 'aTEMP11H', 'U' ) IS NOT NULL  DROP TABLE aTEMP11H
	IF OBJECT_ID ( 'aTEMP22D', 'U' ) IS NOT NULL  DROP TABLE aTEMP22D
			UPDATE a SET a.totalrec = RIGHT('0000000000'+CONVERT(VARCHAR,B.cdsbrec),10) FROM bendem03 a JOIN cdsbenrec b ON a.ID =1
		SET NOCOUNT ON      
		(      
			SELECT    
				totalrec
			--+batch_no
			--+rta_id	
			--+isin	
			--+request_type
			--+sender_id
			--+sender_date
			--+'        '
			as ctempf into aTEMP11H
			FROM bendem03
		)
		(
		SELECT                                                         
			--+Line_no
			+dpid
			+clid
			as ctempf into aTEMP22D
			FROM BENDEM04
		)
		select * from bendem04
		--IF OBJECT_ID ('bendemcdslTransactionFile', 'U' ) IS NOT NULL  DROP TABLE bendemcdslTransactionFile
		--create table bendemcdslTransactionFile (dpid varchar(8),clid varchar(8),gendate datetime)
		insert into bendemcdslTransactionFile (dpid,clid,gendate) 
		select dpid,clid,getdate() from bendem04
		IF OBJECT_ID ('bendem2out', 'U' ) IS NOT NULL  DROP TABLE bendem2out
		create table bendem2out (ctempf varchar(54))
			insert   into bendem2out select * from atemp11h
			insert	 into bendem2out select * from atemp22d
			DECLARE @cmd varchar(500),@filename1 varchar(100)
		SELECT @filename1 ='999999.'+FORMAT(GETDATE(),'mmss')+'.cvf'       
		SET @cmd = 'bcp "SELECT * FROM vccipl.[dbo].[bendem2out]" '+ 'queryout d:\bendem\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
		EXEC master..xp_cmdshell @cmd
	END 

GO
/****** Object:  StoredProcedure [dbo].[sp_GenCDSLcaupfile]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[sp_GenCDSLcaupfile] @MastUNo nvarchar(4)      
 AS       
 BEGIN      

UPDATE corpactCDSLHeader     SET PROCESSEDFLAG ='N' WHERE PROCESSEDFLAG IS NULL and MasterUniqNo = @MastUNo
UPDATE corpactCDSLDetail	 SET PROCESSEDFLAG ='N' WHERE PROCESSEDFLAG IS NULL and MasterUniqNo = @MastUNo
UPDATE corpactCDSLDetailDist SET PROCESSEDFLAG ='N' WHERE PROCESSEDFLAG IS NULL and MasterUniqNo = @MastUNo



 SET NOCOUNT ON      
 (      
 SELECT '01'+                                                        
  +total_records
  +Tot_Curr_Qty
  +Tot_Freeze_Qty
  +Tot_Lockin_Qty
  +Tot_Detail_Rec02
  +Tot_Detail_Rec03
  AS ctemp1 into #temp1
  FROM corpactCDSLHeader      
  where masteruniqno = @MastUNo and ProcessedFlag ='N')      
 (      
 SELECT '02'+           
  +replicate(' ',16-LEN(CONVERT(VARCHAR,BO_ID)))+(CONVERT(VARCHAR,BO_ID))      
  +CONVERT(VARCHAR(16),RTA_IntRef_No)+REPLICATE(' ',16-LEN(RTA_IntRef_No))            
  +Pisin      
  +PCurr_Qty  
  +PFrozen_Qty      
  +PLockin_Qty      
  +REPLICATE('0',2-LEN(PLockin_Reason_Cd))+CONVERT(VARCHAR,PLockin_Reason_Cd)      
  +space(50)+      
  +'00000000'+      
  --+REPLICATE(' ',8-len(PLockin_Exp_Date))+CONVERT(VARCHAR,PLockin_Exp_Date)      
  +PDRCR_Flag      
  +Benefit_Isin      
  +BCurr_Qty   
  +BFrozen_Qty      
  +BLockin_Qty      
  +REPLICATE('0',2-LEN(BLockin_Reason_Cd))+CONVERT(VARCHAR,BLockin_Reason_Cd)      
  +space(50) +      
  +'00000000'+      
  ----+REPLICATE(' ',8-len(BLockin_Exp_Date))+CONVERT(VARCHAR,BLockin_Exp_Date)      
  +BDRCR_Flag       
  +offerprice
--  +char(13)
  as ctemp1 into #temp2
  FROM corpactCDSLDetail  
  where masteruniqno = @MastUNo and ProcessedFlag ='N')      
 (      
 SELECT char(13)+'03'+                                                        
  +CA_Isin      
  +From_DistNo_CDSL
  +To_DistNo_CDSL
  +Quantity
  +DRCR_Flag  
  +CHAR(13)
  as ctemp1 into #temp3      
  FROM corpactCDSLDetailDist       
  where masteruniqno = @MastUNo and ProcessedFlag ='N')      
    IF OBJECT_ID ( 'cdst1', 'U' ) IS NOT NULL  DROP TABLE cdst1
	create table cdst1 ( ctemp1 varchar(1000))
	insert	 into cdst1  select * from #temp1
	insert	 into cdst1  select * from #temp2
	insert	 into cdst1  select * from #temp3
	select * from cdst1
  update corpactCDSLHeader      set ProcessedFlag = 'Y' where MasterUniqNo = @mastuno
  update corpactCDSLDetail		set ProcessedFlag = 'Y' where MasterUniqNo = @mastuno
  update corpactCDSLDetailDist  set ProcessedFlag = 'Y' where MasterUniqNo = @mastuno
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_Gencdslcaupfile01f]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Gencdslcaupfile01f] 
 AS       
 BEGIN      

UPDATE corpactCDSLHeader     SET PROCESSEDFLAG	='N' WHERE PROCESSEDFLAG IS NULL 
UPDATE corpactCDSLDetail	 SET PROCESSEDFLAG	='N' WHERE PROCESSEDFLAG IS NULL 
UPDATE corpactCDSLDetailDist SET PROCESSEDFLAG	='N' WHERE PROCESSEDFLAG IS NULL 
UPDATE corpactCDSLHeader     SET calcflag		='N' WHERE calcflag IS NULL 
UPDATE corpactCDSLDetail	 SET calcflag		='N' WHERE calcflag IS NULL 
UPDATE corpactCDSLDetailDist SET calcflag		='N' WHERE calcflag IS NULL 

UPDATE corpactCDSLHeader SET  Tot_Curr_Qty		= RIGHT('000000000000'		+ CONVERT(VARCHAR,Tot_Curr_Qty),12)		+'.000' where  ProcessedFlag = 'N'	and calcflag ='N'
UPDATE corpactCDSLHeader SET  Tot_Freeze_Qty	= RIGHT('000000000000'		+ CONVERT(VARCHAR,Tot_Freeze_Qty),12)	+'.000' where ProcessedFlag = 'N'	and calcflag ='N'
UPDATE corpactCDSLHeader SET  Tot_Lockin_Qty	= RIGHT('000000000000'		+ CONVERT(VARCHAR,Tot_Lockin_Qty),12)	+'.000' where ProcessedFlag = 'N'	and calcflag ='N'
UPDATE corpactCDSLHeader SET  Tot_Detail_Rec02	= RIGHT('0000000000'		+ CONVERT(VARCHAR,Tot_Detail_Rec02),10)			where ProcessedFlag = 'N'	and calcflag ='N'
UPDATE corpactCDSLHeader SET  Total_Records		= RIGHT('0000000000'		+ CONVERT(VARCHAR,Total_Records),10)			where ProcessedFlag = 'N'	and calcflag ='N'
UPDATE corpactCDSLHeader SET  Tot_Detail_Rec03	= RIGHT('0000000000'		+ CONVERT(VARCHAR,Tot_Detail_Rec03),10)			where ProcessedFlag = 'N'	and calcflag ='N'
UPDATE corpactCDSLDetail SET  PCurr_Qty		= RIGHT('000000000000'		+ CONVERT(VARCHAR,PCurr_Qty),12)	+'.000'			where ProcessedFlag = 'N'	and calcflag ='N'
UPDATE corpactCDSLDetail SET  PFrozen_Qty	= RIGHT('000000000000'		+ CONVERT(VARCHAR,PFrozen_Qty),12)	+'.000'			where ProcessedFlag = 'N'	and calcflag ='N'
UPDATE corpactCDSLDetail SET  PLockin_Qty	= RIGHT('000000000000'		+ CONVERT(VARCHAR,PLockin_Qty),12)	+'.000'			where ProcessedFlag = 'N'	and calcflag ='N'
UPDATE corpactCDSLDetail SET  BCurr_Qty		= RIGHT('000000000000'		+ CONVERT(VARCHAR,BCurr_Qty),12)	+'.000'			where ProcessedFlag = 'N'	and calcflag ='N'
UPDATE corpactCDSLDetail SET  BFrozen_Qty	= RIGHT('000000000000'		+ CONVERT(VARCHAR,BFrozen_Qty),12)	+'.000'			where ProcessedFlag = 'N'	and calcflag ='N'
UPDATE corpactCDSLDetail SET  BLockin_Qty	= RIGHT('000000000000'		+ CONVERT(VARCHAR,BLockin_Qty),12)	+'.000'			where ProcessedFlag = 'N'	and calcflag ='N'
UPDATE corpactCDSLDetail SET  OFFERPRICE 	= RIGHT('000000000000'		+ CONVERT(VARCHAR,OFFERPRICE),12)	+'.000'			where ProcessedFlag = 'N'	and calcflag ='N'
UPDATE corpactCDSLDetailDist SET  From_DistNo_CDSL= RIGHT('000000000000000000'+ CONVERT(VARCHAR,From_DistNo_CDSL),18)		where ProcessedFlag = 'N'	and calcflag ='N'
UPDATE corpactCDSLDetailDist SET  To_DistNo_CDSL= RIGHT('000000000000000000'+ CONVERT(VARCHAR,To_DistNo_CDSL),18)			where ProcessedFlag = 'N'	and calcflag ='N'
UPDATE corpactCDSLDetailDist SET  Quantity= RIGHT('000000000000000000'+ CONVERT(VARCHAR,Quantity),18)						where ProcessedFlag = 'N'	and calcflag ='N'

 SET NOCOUNT ON      
 (      
 SELECT '01'+                                                        
  +total_records
  +Tot_Curr_Qty
  +Tot_Freeze_Qty
  +Tot_Lockin_Qty
  +Tot_Detail_Rec02
  +Tot_Detail_Rec03
  AS ctemp1 into #temp1
  FROM corpactCDSLHeader      
  where ProcessedFlag ='N' and calcflag ='N')      
 (      
 SELECT '02'+           
  +replicate(' ',16-LEN(CONVERT(VARCHAR,BO_ID)))+(CONVERT(VARCHAR,BO_ID))      
  +CONVERT(VARCHAR(16),RTA_IntRef_No)+REPLICATE(' ',16-LEN(RTA_IntRef_No))            
  +Pisin      
  +PCurr_Qty  
  +PFrozen_Qty      
  +PLockin_Qty      
  +REPLICATE('0',2-LEN(PLockin_Reason_Cd))+CONVERT(VARCHAR,PLockin_Reason_Cd)      
  +space(50)+      
  +'00000000'+      
  --+REPLICATE(' ',8-len(PLockin_Exp_Date))+CONVERT(VARCHAR,PLockin_Exp_Date)      
  +PDRCR_Flag      
  +Benefit_Isin      
  +BCurr_Qty   
  +BFrozen_Qty      
  +BLockin_Qty      
  +REPLICATE('0',2-LEN(BLockin_Reason_Cd))+CONVERT(VARCHAR,BLockin_Reason_Cd)      
  +space(50) +      
  +'00000000'+      
  ----+REPLICATE(' ',8-len(BLockin_Exp_Date))+CONVERT(VARCHAR,BLockin_Exp_Date)      
  +BDRCR_Flag       
  +offerprice
--  +char(13)
  as ctemp1 into #temp2
  FROM corpactCDSLDetail  
  where ProcessedFlag ='N' and calcflag ='N')      
 (      
 SELECT char(13)+'03'+                                                        
  +CA_Isin      
  +From_DistNo_CDSL
  +To_DistNo_CDSL
  +Quantity
  +DRCR_Flag  
  +CHAR(13)
  as ctemp1 into #temp3      
  FROM corpactCDSLDetailDist       
  where ProcessedFlag ='N' and calcflag ='N')      
  
  update corpactCDSLHeader      set calcflag = 'Y' where calcflag ='N'
  update corpactCDSLDetail		set calcflag = 'Y' where calcflag ='N'
  update corpactCDSLDetailDist  set calcflag = 'Y' where calcflag ='N'
  
    IF OBJECT_ID ( 'cdst1', 'U' ) IS NOT NULL  DROP TABLE cdst1
	create table cdst1 ( ctemp1 varchar(1000))
	insert	 into cdst1  select * from #temp1
	insert	 into cdst1  select * from #temp2
	insert	 into cdst1  select * from #temp3
	select * from cdst1
  update corpactCDSLHeader      set ProcessedFlag = 'Y' where ProcessedFlag ='N'
  update corpactCDSLDetail		set ProcessedFlag = 'Y' where ProcessedFlag ='N'
  update corpactCDSLDetailDist  set ProcessedFlag = 'Y' where ProcessedFlag ='N'
  DECLARE @cmd varchar(500),@filename1 varchar(100)
  SELECT @filename1 ='IN200537_CDSL_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
  SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.cdst1" '+ 'queryout E:\ZVCCIPL\VGenFiles\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
  EXEC master..xp_cmdshell @cmd
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_GenIEPFcaupfile]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GenIEPFcaupfile] @MastUNo nvarchar(4)  
AS   
BEGIN  
SET NOCOUNT ON  
(  
SELECT '01SHRI001'+                                                    
  +CONVERT(VARCHAR(16),RTA_IntRefNo)+REPLICATE(' ',16-LEN(RTA_IntRefNo))
  +REPLICATE(' ',12-len(Credit_ISIN))+CONVERT(VARCHAR,Credit_ISIN)  
  +REPLICATE(' ',12-len(Debit_ISIN))+CONVERT(VARCHAR,Debit_ISIN)  
  +'0035'
  --+REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type)   
  +CONVERT(VARCHAR,Bapproval_dt,112)  
  +'0078'
  --+REPLICATE('0',4-LEN(CA_Description))+CONVERT(VARCHAR,CA_Description)  
  +CONVERT(VARCHAR,Execution_Date,112)  
  +REPLICATE('0',15-LEN(TotCrQty_FLinBl))+CONVERT(VARCHAR,TotCrQty_FLinBl)+'000'  
  +REPLICATE('0',15-LEN(TotDrQty_FLinBl))+CONVERT(VARCHAR,TotDrQty_FLinBl)+'000'  
  +REPLICATE('0',15-LEN(TotCrQty_Lin))+CONVERT(VARCHAR,TotCrQty_Lin)+'000'  
  +REPLICATE('0',15-LEN(TotDrQty_Lin))+CONVERT(VARCHAR,TotDrQty_Lin)+'000'  
  +REPLICATE('0',7-LEN(Tot_detrec))+CONVERT(VARCHAR,Tot_detrec)  
  +REPLICATE('0',21-len(CIN_BCIN_No))+CONVERT(VARCHAR,CIN_BCIN_No)  
  +REPLICATE('0',7-len(FY_WAmtRel))+CONVERT(VARCHAR,FY_WAmtRel) 
  as itemp1 into iitemp1  
  FROM iepftypedhd  
  where masteruniqno = @MastUNo)  
(  
SELECT '02'+                                                    
  +REPLICATE('0',7-LEN(Detail_Record_Line_No))+CONVERT(VARCHAR,Detail_Record_Line_No)    
  +'1204720013676780'
  --+REPLICATE('0',8-LEN(Credit_DP_ID))+CONVERT(VARCHAR,Credit_DP_ID)   
  --+REPLICATE('0',8-LEN(Credit_Client_ID))+CONVERT(VARCHAR,Credit_Client_ID)   
  +'00'
  --+REPLICATE('0',2-len(CrClient_AccCat))+CONVERT(VARCHAR,CrClient_AccCat)  
  +REPLICATE('0',8-LEN(Debit_DP_ID))+CONVERT(VARCHAR,Debit_DP_ID)   
  +REPLICATE('0',8-LEN(Debit_Client_ID))+CONVERT(VARCHAR,Debit_Client_ID)   
  +REPLICATE('0',2-len(DrClient_AccCat))+CONVERT(VARCHAR,DrClient_AccCat)  
  +REPLICATE('0',15-LEN(Cr_Qty))+CONVERT(VARCHAR,Cr_Qty)+'000'   
  +REPLICATE('0',15-LEN(Dr_Qty))+CONVERT(VARCHAR,Dr_Qty)+'000'   
  +REPLICATE('0',2-LEN(CrQty_LinReasonCd))+CONVERT(VARCHAR,CrQty_LinReasonCd)  
  +'        '  
  +REPLICATE('0',2-LEN(DrQty_LinReasonCd))+CONVERT(VARCHAR,DrQty_LinReasonCd)  
  +'        '  
  as itemp1 into iitemp2  
  FROM iepftypeddt 
  where masteruniqno = @MastUNo)  
(  
SELECT '03'+                                                    
  +REPLICATE('0',7-LEN(Detail_Record_Line_No))+CONVERT(VARCHAR,Detail_Record_Line_No)    
  +REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)  
  +REPLICATE(' ',1-len(DRCRINDICATOR))+CONVERT(VARCHAR,DRCRINDICATOR)  
  +REPLICATE('0',18-LEN(From_DistNo_NSDL))+CONVERT(VARCHAR,From_DistNo_NSDL)    
  +REPLICATE('0',18-LEN(To_DistNo_NSDL))+CONVERT(VARCHAR,To_DistNo_NSDL)    
  +REPLICATE('0',18-LEN(Quantity))+CONVERT(VARCHAR,Quantity)    
  +'98'
  --+REPLICATE('0',2-LEN(Flag_status_DN_Range))+CONVERT(VARCHAR,Flag_status_DN_Range)    
  +'0035'
  --+REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type)    
  as Itemp1 into iitemp3  
FROM iepftypeddist where masteruniqno = @MastUNo)  
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GenMFcafile]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GenMFcafile]  @MastUNo nvarchar(4)  
AS   
BEGIN  
SET NOCOUNT ON  
update mutualfundhd00 set Processedflag ='N' where Processedflag is null and MasterUniqNo = @MastUno
update mutualfunddt01 set Processedflag ='N' where processedflag is null  and MasterUniqNo = @MastUno
update mutualfunddt02 set Processedflag ='N' where processedflag is null  and MasterUniqNo = @MastUno
(  
	SELECT  '00'+  
	  --+REPLICATE(' ',2-LEN(Record_id))+CONVERT(VARCHAR,Record_id)   
	  +REPLICATE('0',7-LEN(Batch_no))+CONVERT(VARCHAR,Batch_no)   
	  +'IN200537'
	  +REPLICATE('0',5-LEN(Tot_CA_Orders))+CONVERT(VARCHAR,Tot_CA_Orders)   
	  +REPLICATE(' ',8-len(CONVERT(varchar,Sender_dt,112)))+CONVERT(varchar,Sender_dt,112)      
	  +REPLICATE(' ',12-LEN(FILLER1))+CONVERT(VARCHAR,FILLER1)  
	  
	  as opentexta into g1file  
	FROM MutualFundhd00 

	where masteruniqno = @MastUNo)
(
SELECT '01SHRI001'+  
	   --+REPLICATE('0',2-LEN(Record_id))+CONVERT(VARCHAR,Record_id)    
	   --+REPLICATE('0',7-LEN(File_ident))+CONVERT(VARCHAR,File_ident)    
	   +CONVERT(VARCHAR(16),RTA_Int_No)+REPLICATE(' ',16-LEN(RTA_Int_No))      
	   +REPLICATE(' ',1-LEN(DRCR_Ind))+CONVERT(VARCHAR,DRCR_Ind)    
	   +REPLICATE(' ',12-LEN(isin))+CONVERT(VARCHAR,isin)   
	   +REPLICATE('0',4-LEN(CAType))+CONVERT(VARCHAR,CAType)   
	   +REPLICATE(' ',8-len(CONVERT(varchar,Allot_dt,112)))+CONVERT(varchar,Allot_dt,112)      
	   +REPLICATE(' ',4-len(Allocation_Desc))+CONVERT(VARCHAR,Allocation_Desc)  
	   +REPLICATE(' ',8-len(CONVERT(varchar,Exec_dt,112)))+CONVERT(varchar,Exec_dt,112)      
	   +REPLICATE('0',15-LEN(TotallQty_FL))+CONVERT(VARCHAR,TotallQty_FL)+'000'   
	   +REPLICATE('0',15-LEN(TotallQty_L))+CONVERT(VARCHAR,TotallQty_L)+'000'   
	   +REPLICATE('0',7-LEN(Tot_Ded_rec))+CONVERT(VARCHAR,Tot_Ded_rec)  
	   +REPLICATE('0',16-LEN(TotIssued_Amt))+CONVERT(VARCHAR,TotIssued_Amt)+'00'   
	   +REPLICATE('0',16-LEN(TotPaidup_Amt))+CONVERT(VARCHAR,TotPaidup_Amt)+'00'   
	   +REPLICATE(' ',1-LEN(StampDuty_Payable))+CONVERT(VARCHAR,StampDuty_Payable)  
	   +REPLICATE(' ',2-LEN(Basis_Calc_SD))+CONVERT(VARCHAR,Basis_Calc_SD)  
	   +'      ' --FILLER OF (6)
		as opentexta into g2file  
   FROM MutualFunddt01 
   
   where masteruniqno = @MastUNo)
(
SELECT  '02'+  
	  --+REPLICATE('0',7-LEN(dt_Line_no))+CONVERT(VARCHAR,dt_Line_no)    
	  --+REPLICATE(' ',7-LEN(Record_id))+CONVERT(VARCHAR,Record_id)   
	  +REPLICATE('0',7-LEN(Dt_line_no))+CONVERT(VARCHAR,Dt_line_no)   
	  +REPLICATE(' ',8-LEN(Dpid))+CONVERT(VARCHAR,Dpid)   
	  +REPLICATE(' ',8-LEN(Clid))+CONVERT(VARCHAR,Clid)   
	  +REPLICATE('0',2-LEN(Cl_Acc_Cat))+CONVERT(VARCHAR,Cl_Acc_Cat)   
	  +REPLICATE('0',15-LEN(AllQty))+CONVERT(VARCHAR,AllQty)+'000'   
	  +REPLICATE('0',2-LEN(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)  
	  +REPLICATE(' ',8-len(CONVERT(varchar,Lockin_Release_Dt,112)))+CONVERT(varchar,Lockin_Release_Dt,112)      
	  +REPLICATE('0',12-LEN(Iss_Price))+CONVERT(VARCHAR,Iss_Price)+'000000'   
	  +REPLICATE('0',16-LEN(Iss_Amt))+CONVERT(VARCHAR,Iss_Amt)+'00'   
	  +REPLICATE('0',12-LEN(Paidup_Price))+CONVERT(VARCHAR,Paidup_Price) +'000000'  
	  +REPLICATE('0',16-LEN(Paidup_Amt))+CONVERT(VARCHAR,Paidup_Amt)+'00'   
	  +'            '
	  as opentexta into g3file  
	  FROM MutualFunddt02 
	  
	  where masteruniqno = @MastUNo)  

update mutualfundhd00 set Processedflag ='Y' where Processedflag = 'N' and MasterUniqNo = @MastUno
update mutualfunddt01 set Processedflag ='Y' where processedflag = 'N' and MasterUniqNo = @MastUno
update mutualfunddt02 set Processedflag ='Y' where processedflag = 'N' and MasterUniqNo = @MastUno

END  
GO
/****** Object:  StoredProcedure [dbo].[sp_Gensimulca01]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Gensimulca01]  @masteruniqno varchar(4)
as 
begin 
UPDATE SimulCAHeaderRecord set ProcessedFlag ='N' where ProcessedFlag is null
update SimulCADetailRecord set processedflag ='N' where ProcessedFlag is null
update SimulCADetailDistRecord set ProcessedFlag ='N' where ProcessedFlag is null

UPDATE SimulCAHeaderRecord		SET  TotCrQty_Flin		= RIGHT('000000000000000'		+ CONVERT(VARCHAR,TotCrQty_Flin),15)+'000'   where MasterUniqNo = @masteruniqno and ProcessedFlag = 'N'
UPDATE SimulCAHeaderRecord		SET  TotDrQty_Flin		= RIGHT('000000000000000'		+ CONVERT(VARCHAR,TotDrQty_Flin),15)+'000'   where MasterUniqNo = @masteruniqno and ProcessedFlag = 'N' 
UPDATE SimulCAHeaderRecord		SET  TotCrQty_Lin		= RIGHT('000000000000000'		+ CONVERT(VARCHAR,TotCrQty_Lin),15)	+'000'   where MasterUniqNo = @masteruniqno and ProcessedFlag = 'N' 
UPDATE SimulCAHeaderRecord		SET  TotDrQty_Lin		= RIGHT('000000000000000'		+ CONVERT(VARCHAR,TotDrQty_Lin),15)	+'000'   where MasterUniqNo = @masteruniqno and ProcessedFlag = 'N' 
UPDATE SimulCADetailRecord		SET  Cr_Quantity		= RIGHT('000000000000000'		+ CONVERT(VARCHAR,Cr_Quantity),15)	+'000'   where MasterUniqNo = @masteruniqno and ProcessedFlag = 'N' 
UPDATE SimulCADetailRecord		SET  Dr_Quantity		= RIGHT('000000000000000'		+ CONVERT(VARCHAR,Dr_Quantity),15)	+'000'   where MasterUniqNo = @masteruniqno and ProcessedFlag = 'N' 
UPDATE SimulCAHeaderRecord		SET  TotDetRec			= RIGHT('0000000'				+ CONVERT(VARCHAR,TotDetRec),7)				 where MasterUniqNo = @masteruniqno	and ProcessedFlag = 'N'
UPDATE SimulCADetailRecord		SET  IssPraaCr_ISIN		= RIGHT('000000000000'			+ CONVERT(VARCHAR,IssPraaCr_ISIN),12)+'000000'   where MasterUniqNo = @masteruniqno  and ProcessedFlag = 'N'
UPDATE SimulCADetailRecord		SET  PupPraaCr_ISIN		= RIGHT('000000000000'			+ CONVERT(VARCHAR,PupPraaCr_ISIN),12)+'000000'   where MasterUniqNo = @masteruniqno  and ProcessedFlag = 'N'
UPDATE SimulCAHeaderRecord		SET  TotIssAmtaa_CrIsin	= RIGHT('0000000000000000'		+ CONVERT(VARCHAR,TotIssAmtaa_CrIsin),16)	+'00'   where MasterUniqNo = @masteruniqno  and ProcessedFlag = 'N'
UPDATE SimulCAHeaderRecord		SET  TotpdAmtaa_CrIsin	= RIGHT('0000000000000000'		+ CONVERT(VARCHAR,TotpdAmtaa_CrIsin), 16)	+'00'   where MasterUniqNo = @masteruniqno  and ProcessedFlag = 'N'
UPDATE SimulCADetailRecord		SET  IssAmtaaCr_isin	= RIGHT('0000000000000000'		+ CONVERT(VARCHAR,IssAmtaaCr_isin),16)		+'00'   where MasterUniqNo = @masteruniqno  and ProcessedFlag = 'N'
UPDATE SimulCADetailRecord		SET  PupAmtaaCr_Isin	= RIGHT('0000000000000000'		+ CONVERT(VARCHAR,PupAmtaaCr_Isin),16)		+'00'   where MasterUniqNo = @masteruniqno  and ProcessedFlag = 'N'
UPDATE SimulCADetailDistRecord	SET  DetRec_Line_No		= RIGHT('0000000'				+ CONVERT(VARCHAR,DetRec_Line_No),7)     where MasterUniqNo = @masteruniqno and ProcessedFlag = 'N'
UPDATE SimulCADetailDistRecord	SET  FromDistNo_NSDL	= RIGHT('000000000000000000'	+ CONVERT(VARCHAR,FromDistNo_NSDL),18)   where MasterUniqNo = @masteruniqno	and ProcessedFlag = 'N'
UPDATE SimulCADetailDistRecord	SET  ToDistNo_NSDL		= RIGHT('000000000000000000'	+ CONVERT(VARCHAR,ToDistNo_NSDL),18)     where MasterUniqNo = @masteruniqno	and ProcessedFlag = 'N'
UPDATE SimulCADetailDistRecord	SET  Quantity			= RIGHT('000000000000000000'	+ CONVERT(VARCHAR,Quantity),18)		     where MasterUniqNo = @masteruniqno	and ProcessedFlag = 'N'

IF object_id('sf8','U') is not null drop table sf8
create table sf8 (stemp1 varchar(2000))
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Gensimulcaupfile]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Gensimulcaupfile] @MastUNo nvarchar(4)    
AS     
BEGIN    
SET NOCOUNT ON    
(    
SELECT '01SHRI001'+                                                      
  +CONVERT(VARCHAR(16),RTA_Internal_Reference_No)+REPLICATE(' ',16-LEN(RTA_Internal_Reference_No))        
  +REPLICATE(' ',12-len(Cr_Isin))+CONVERT(VARCHAR,Cr_Isin)    
  +REPLICATE(' ',12-len(Dr_Isin))+CONVERT(VARCHAR,Dr_Isin)    
  +REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type)     
  +CONVERT(VARCHAR,Allotment_Dt,112)    
 -- +REPLICATE(' ',8-len(Allotment_Date))+CONVERT(VARCHAR,Allotment_Date)    
  +REPLICATE('0',4-LEN(Allot_alloc_Desc))+CONVERT(VARCHAR,Allot_alloc_Desc)    
  +CONVERT(VARCHAR,Execution_dt,112)    
 --+REPLICATE(' ',8-len(Execution_Date))+CONVERT(VARCHAR,Execution_Date)    
  +TotCrQty_Flin
  +TotDrQty_Flin
  +TotCrQty_Lin
  +TotDrQty_Lin
  +TotDetRec
  +TotIssAmtaa_CrIsin
  +TotpdAmtaa_CrIsin
  +REPLICATE(' ',1-len(StampDuty_Pay))+CONVERT(VARCHAR,StampDuty_Pay)    
  +REPLICATE(' ',2-len(BcStampDuty))+CONVERT(VARCHAR,BcStampDuty) 
  as stemp1 into #TEMP1
  FROM SimulCAHeaderRecord  
  where masteruniqno = @MastUNo and processedflag ='N')    
(    
SELECT '02'+                     
  +REPLICATE('0',7-LEN(DetRec_Line_No))+CONVERT(VARCHAR,DetRec_Line_No)     
  +REPLICATE('0',8-LEN(Credit_DP_ID))+CONVERT(VARCHAR,Credit_DP_ID)     
  +REPLICATE('0',8-LEN(CrClient_ID))+CONVERT(VARCHAR,CrClient_ID)     
  +REPLICATE('0',2-len(CrClient_AccCat))+CONVERT(VARCHAR,CrClient_AccCat)    
  +REPLICATE('0',8-LEN(DrDP_ID))+CONVERT(VARCHAR,DrDP_ID)     
  +REPLICATE('0',8-LEN(DrClient_ID))+CONVERT(VARCHAR,DrClient_ID)     
  +REPLICATE('0',2-len(DrClient_AccCat))+CONVERT(VARCHAR,DrClient_AccCat)    
  +Cr_Quantity
  +Dr_Quantity
  +REPLICATE('0',2-LEN(CrQty_LinRCd))+CONVERT(VARCHAR,CrQty_LinRCd)    
  --+'        '    
  +CONVERT(VARCHAR,CrQty_LnRDt,112)    
  +REPLICATE('0',2-LEN(drQty_LinRCd))+CONVERT(VARCHAR,drQty_LinRCd)    
  +'        '    
  --+CONVERT(VARCHAR,drQty_LnRDt,112)    
  --+REPLICATE(' ',8-len(drQty_LnRDt))+CONVERT(VARCHAR,drQty_LnRDt)    
  +IssPraaCr_ISIN
  +IssAmtaaCr_isin
  +PupPraaCr_ISIN
  +PupAmtaaCr_Isin 
  as stemp1 into #TEMP2  
  FROM SimulCADetailRecord 
  where masteruniqno = @MastUNo and processedflag ='N')    
(    
SELECT '03'+                                                      
  +DetRec_Line_No
  +REPLICATE(' ',12-len(DrCr_ISIN))+CONVERT(VARCHAR,DrCr_ISIN)    
  +REPLICATE(' ',1-len(DrCr_Indicator))+CONVERT(VARCHAR,DrCr_Indicator)    
  +FromDistNo_NSDL
  +ToDistNo_NSDL
  +Quantity
  +Flag_status_DN_Range
  +REPLICATE('0',4-LEN(CA_Code))+CONVERT(VARCHAR,CA_Code) 
   as stemp1 into #TEMP3    
  FROM SimulCADetailDistRecord 
  where masteruniqno = @MastUNo and processedflag ='N')    
  insert into sf8 select * from #temp1
  insert into sf8 select * from #temp2
  insert into sf8 select * from #temp3
  select * from sf8
  update SimulCAHeaderRecord	  set processedflag ='Y' where  masteruniqno = @MastUNo 
  update SimulCADetailRecord	  set processedflag ='Y' where  masteruniqno = @MastUNo 
  update SimulCADetailDistRecord  set processedflag ='Y' where  masteruniqno = @MastUNo 
END 


GO
/****** Object:  StoredProcedure [dbo].[sp_getCompanyInfo]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_getCompanyInfo] @companyname varchar(20)
as 
begin 
select * from ncidatau where company_name like '%@companyname%'
SELECT * FROM NSDLISIN_DETAIL WHERE company_name like '%@companyname%'
SELECT * FROM CDSL_ISIN_DETAIL WHERE issuer_name like '%@companyname%'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_getISINInfo]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_getISINInfo] @isin varchar(12)
as 
begin 
select * from ncidatau where ISIN = @isin
SELECT * FROM NSDLISIN_DETAIL WHERE ISIN = @isin
SELECT * FROM CDSL_ISIN_DETAIL WHERE ISIN_Alpha_Code = @isin
end

GO
/****** Object:  StoredProcedure [dbo].[sp_IEPFCAcdsl4501]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_IEPFCAcdsl4501] @MastUno varchar(4)
as
begin
		UPDATE Iepfcacdsl45hd set Totdrqty		= RIGHT('0000000000000000' + CONVERT(VARCHAR,Totdrqty),16)		+'000'	where masteruniqno=@MastUno  and Processedflag ='N'
		UPDATE Iepfcacdsl45hd set totdrqty_lin	= RIGHT('0000000000000000' + CONVERT(VARCHAR,totdrqty_lin),16)	+'000'  where masteruniqno=@MastUno  and Processedflag ='N'
		UPDATE Iepfcacdsl45hd set Totcrqty		= RIGHT('0000000000000000' + CONVERT(VARCHAR,Totcrqty),16)		+'000'	where masteruniqno=@MastUno  and Processedflag ='N'
		UPDATE Iepfcacdsl45hd set totcrqty_lin	= RIGHT('0000000000000000' + CONVERT(VARCHAR,totcrqty_lin),16)	+'000'	where masteruniqno=@MastUno  and Processedflag ='N'
		UPDATE Iepfcacdsl45hd set totdetrec		= RIGHT('00000'	   		   + CONVERT(VARCHAR,Totdetrec),5)				where masteruniqno=@MastUno  and Processedflag ='N'
		UPDATE Iepfcacdsl45hd set totnomamt_shr	= RIGHT('0000000000000000' + CONVERT(VARCHAR,totnomamt_shr),16) +'000'	where masteruniqno=@MastUno  and Processedflag ='N'
		
		select * from Iepfcacdsl45dt
		UPDATE Iepfcacdsl45dt set Dr_Qty		= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Dr_Qty),16)		+'000'	  where masteruniqno=@MastUno  and Processedflag ='N'
		UPDATE Iepfcacdsl45dt set Dr_Qty_Lin	= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Dr_Qty_Lin),16)	+'000'	  where masteruniqno=@MastUno  and Processedflag ='N'
		UPDATE Iepfcacdsl45dt set Cr_Qty		= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Cr_Qty),16)		+'000'	  where masteruniqno=@MastUno  and Processedflag ='N'
		UPDATE Iepfcacdsl45dt set Cr_Qty_Lin	= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Cr_Qty_Lin),16)   +'000'	  where masteruniqno=@MastUno  and Processedflag ='N'
		UPDATE Iepfcacdsl45dt set rec_lineno	= RIGHT('00000'				+ CONVERT(VARCHAR,rec_lineno),5)    		  where masteruniqno=@MastUno  and Processedflag ='N'
END
GO
/****** Object:  StoredProcedure [dbo].[sp_iepfcacdsl4501f]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_iepfcacdsl4501f] 
as
begin
truncate table fdt45f 
		update iepfcacdsl45hd set calcflag ='N' where calcflag is null
		update iepfcacdsl45dt set calcflag ='N' where calcflag is null
	
		UPDATE Iepfcacdsl45hd set Totdrqty		= RIGHT('0000000000000000' + CONVERT(VARCHAR,Totdrqty),16)		+'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45hd set totdrqty_lin	= RIGHT('0000000000000000' + CONVERT(VARCHAR,totdrqty_lin),16)	+'000'    where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45hd set Totcrqty		= RIGHT('0000000000000000' + CONVERT(VARCHAR,Totcrqty),16)		+'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45hd set totcrqty_lin	= RIGHT('0000000000000000' + CONVERT(VARCHAR,totcrqty_lin),16)	+'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45hd set totdetrec		= RIGHT('00000'	   		   + CONVERT(VARCHAR,Totdetrec),5)				  where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45hd set totnomamt_shr	= RIGHT('0000000000000000' + CONVERT(VARCHAR,totnomamt_shr),16) +'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45dt set Dr_Qty		= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Dr_Qty),16)		+'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45dt set Dr_Qty_Lin	= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Dr_Qty_Lin),16)	+'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45dt set Cr_Qty		= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Cr_Qty),16)		+'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45dt set Cr_Qty_Lin	= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Cr_Qty_Lin),16)   +'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45dt set rec_lineno	= RIGHT('00000'				+ CONVERT(VARCHAR,rec_lineno),5)    		  where Processedflag ='N' and calcflag ='N'
		update iepfcacdsl45hd set calcflag ='Y' where calcflag ='N'
		update iepfcacdsl45dt set calcflag ='Y' where calcflag ='N'
SET NOCOUNT ON      
(      
SELECT '01~SHRI001~'+           
    +trim(Rtaint_Refno)+'~'
    +REPLICATE(' ',12-len(isin))+CONVERT(VARCHAR,isin)+'~'
	+substring(Ca_Type,3,4)+'~'
	+REPLACE(CONVERT(VARCHAR(10), Bapr_Dt, 104), '.', '')+'~'  
	+REPLACE(CONVERT(VARCHAR(10), exec_dt, 104), '.', '')+'~'  
    +Totdrqty+'~'
	+Totcrqty_Lin+'~'
    +filler01 +'~'
	+Totcrqty+'~'
    +Totcrqty_Lin+'~'
    +CONVERT(VARCHAR,totdetrec)      +'~'
    +REPLICATE('0',5-LEN(Filler02))+CONVERT(VARCHAR,Filler02)      +'~'
	+trim(Cin_Bcin_No)  +'~'   
    +trim(Email_Co)     +'~'
    +trim(Fywdivrel)    +'~'
    --+REPLICATE('0',5-LEN(Totnomamt_Shr))+CONVERT(VARCHAR,Totnomamt_Shr)     
	+CONVERT(VARCHAR,Totnomamt_Shr)    
	as ftem45  into #temp1
	FROM Iepfcacdsl45hd
	where processedflag = 'N' and calcflag='Y')      
(      
SELECT '02'+'~'
    +convert(varchar,Rec_Lineno) +'~'
    +convert(varchar,Credit_Boid)+'~'
    +convert(varchar,Debit_Boid)        +'~'
    +convert(varchar,dr_qty) +'~'
	+convert(varchar,Dr_Qty_Lin) +'~'
    +convert(varchar,Dr_Lin_Code) + '~'
	+REPLACE(CONVERT(VARCHAR(10), Dr_Lin_Exp_Dt, 104), '.', '')+'~'  
    +trim(filler01) + '~'
	+convert(varchar,cr_qty) +'~'
	+convert(varchar,cr_Qty_Lin) +'~'
    +convert(varchar,cr_Lin_Code) + '~'
	+REPLACE(CONVERT(VARCHAR(10), cr_Lin_Exp_Dt, 104), '.', '')+'~'  
    +trim(filler02)
    as ftem45  into #temp2
FROM Iepfcacdsl45dt
where processedflag = 'N' and calcflag='Y')      
	IF object_id('fdt45f','U') is not null drop table fdt45f    
  create table fdt45f (stemp1 varchar(2000))    
  insert into fdt45f select * from #temp1    
  insert into fdt45f select * from #temp2    

  update Iepfcacdsl45hd   set processedflag ='Y' where  processedflag = 'N'     
  update Iepfcacdsl45dt   set processedflag ='Y' where  processedflag = 'N'     
  --select * from fftemp1    
DECLARE @cmd varchar(500),@filename1 varchar(100)    
--SELECT @filename1 ='IN200537_SCA_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'           
SELECT @filename1 ='IN200537_I45_'+FORMAT(GETDATE(),'yyyyMMdd')+ FORMAT(GETDATE(),'HHmmss')+ '.TXT'           
SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.fdt45f" '+ 'queryout d:\sbroutfiles\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'    
EXEC master..xp_cmdshell @cmd    
END

GO
/****** Object:  StoredProcedure [dbo].[sp_IEPFCAcdsl4502]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_IEPFCAcdsl4502] @MastUno varchar(4)
as
begin
SET NOCOUNT ON      
(      
SELECT '01~SHRI001~'+           
    +trim(Rtaint_Refno)+'~'
    +REPLICATE(' ',12-len(isin))+CONVERT(VARCHAR,isin)+'~'
	+substring(Ca_Type,3,4)+'~'
	+REPLACE(CONVERT(VARCHAR(10), Bapr_Dt, 104), '.', '')+'~'  
	+REPLACE(CONVERT(VARCHAR(10), exec_dt, 104), '.', '')+'~'  
    +Totdrqty+'~'
	+Totcrqty_Lin+'~'
    +filler01 +'~'
	+Totcrqty+'~'
    +Totcrqty_Lin+'~'
    +CONVERT(VARCHAR,totdetrec)      +'~'
    +REPLICATE('0',5-LEN(Filler02))+CONVERT(VARCHAR,Filler02)      +'~'
	+trim(Cin_Bcin_No)  +'~'   
    +trim(Email_Co)     +'~'
    +trim(Fywdivrel)    +'~'
    --+REPLICATE('0',5-LEN(Totnomamt_Shr))+CONVERT(VARCHAR,Totnomamt_Shr)     
	+CONVERT(VARCHAR,Totnomamt_Shr)    
	as ftem45  into #temp1
	FROM Iepfcacdsl45hd
	where masteruniqno = @MastUNo)      
(      
SELECT '02'+'~'
    +convert(varchar,Rec_Lineno) +'~'
    +convert(varchar,Credit_Boid)+'~'
    +convert(varchar,Debit_Boid)        +'~'
    +convert(varchar,dr_qty) +'~'
	+convert(varchar,Dr_Qty_Lin) +'~'
    +convert(varchar,Dr_Lin_Code) + '~'
	+REPLACE(CONVERT(VARCHAR(10), Dr_Lin_Exp_Dt, 104), '.', '')+'~'  
    +trim(filler01) + '~'
	+convert(varchar,cr_qty) +'~'
	+convert(varchar,cr_Qty_Lin) +'~'
    +convert(varchar,cr_Lin_Code) + '~'
	+REPLACE(CONVERT(VARCHAR(10), cr_Lin_Exp_Dt, 104), '.', '')+'~'  
    +trim(filler02)
    as ftem45  into #temp2
FROM Iepfcacdsl45dt
where masteruniqno = @MastUNo)      
update Iepfcacdsl45hd set Processedflag ='Y' where Processedflag = 'N' and MasterUniqNo = @MastUno
update Iepfcacdsl45dt set Processedflag ='Y' where processedflag = 'N' and MasterUniqNo = @MastUno
select * into #temp3 from #temp1
insert	 into #temp3 select * from #temp2
select * into fdt45f from #temp3
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_IEPFCAcdsl4601]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_IEPFCAcdsl4601] @MastUno varchar(4)
as
begin
SET NOCOUNT ON      
(      
SELECT '01~SHRI001~'+           
    +trim(Rtaint_Refno)+'~'
    +REPLICATE(' ',12-len(isin))+CONVERT(VARCHAR,isin)+'~'
	+substring(Ca_Type,3,4)+'~'
	+REPLACE(CONVERT(VARCHAR(10), Bapr_Dt, 104), '.', '')+'~'  
	+REPLACE(CONVERT(VARCHAR(10), exec_dt, 104), '.', '')+'~'  
    +Totdrqty+'~'
	+Totcrqty_Lin+'~'
    +filler01 +'~'
	+Totcrqty+'~'
    +Totcrqty_Lin+'~'
    +CONVERT(VARCHAR,totdetrec)      +'~'
    +REPLICATE('0',5-LEN(Filler02))+CONVERT(VARCHAR,Filler02)      +'~'
	+trim(Cin_Bcin_No)  +'~'   
    +trim(Email_Co)     +'~'
    +trim(Fywdivrel)    +'~'
    --+REPLICATE('0',5-LEN(Totnomamt_Shr))+CONVERT(VARCHAR,Totnomamt_Shr)     
	+CONVERT(VARCHAR,Totnomamt_Shr)    
	as ftem46  into #temp1 
	FROM Iepfcacdsl46hd
	where masteruniqno = @MastUNo)      
(      
SELECT '02'+'~'
    +convert(varchar,Rec_Lineno) +'~'
    +convert(varchar,Credit_Boid)+'~'
    +convert(varchar,Debit_dpid)+'~'
	+convert(varchar,Debit_clid)+'~'
    +convert(varchar,dr_qty) +'~'
	--+convert(varchar,Dr_Qty_Lin) +'~'
    --+convert(varchar,Dr_Lin_Code) + '~'
	--+REPLACE(CONVERT(VARCHAR(10), Dr_Lin_Exp_Dt, 104), '.', '')+'~'  
    --+trim(filler01) + '~'
	+convert(varchar,cr_qty) +'~'
	--+convert(varchar,cr_Qty_Lin) +'~'
    --+convert(varchar,cr_Lin_Code) + '~'
	--+REPLACE(CONVERT(VARCHAR(10), cr_Lin_Exp_Dt, 104), '.', '')+'~'  
	--select * from Iepfcacdsl46dt
    +trim(name1) + '~'
	+trim(Acc_type_Desc) + '~'
	+trim(Acc_stype_Desc)  + '~'
	+trim(Padd1) + '~'
	as ftem46  into #temp2
FROM Iepfcacdsl46dt
where masteruniqno = @MastUNo)      
update Iepfcacdsl46hd set Processedflag ='Y' where Processedflag = 'N' and MasterUniqNo = @MastUno
update Iepfcacdsl46dt set Processedflag ='Y' where processedflag = 'N' and MasterUniqNo = @MastUno
select * into #temp3 from #temp1
insert	 into #temp3 select * from #temp2
select * into fdt46f from #temp3
END


GO
/****** Object:  StoredProcedure [dbo].[sp_iepfFormatBuplfile]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_iepfFormatBuplfile] @MastUNo nvarchar(4)      
AS       
BEGIN      
SET NOCOUNT ON      
(      
SELECT '01SHRI001'+           
    +CONVERT(VARCHAR(16),RTAINTREFNO)+REPLICATE(' ',16-LEN(RTAINTREFNO))    
    +'    '+      
    +REPLICATE(' ',12-len(CREDIT_ISIN))+CONVERT(VARCHAR,CREDIT_ISIN)      
	+REPLICATE(' ',8-len(CONVERT(varchar,BAPP_DT,112)))+CONVERT(varchar,BAPP_DT,112)      
	+REPLICATE(' ',12-len(FILLER))+CONVERT(VARCHAR,FILLER)      
	+REPLICATE(' ',4-len(CA_TYPE))+CONVERT(VARCHAR,CA_TYPE)      
	+REPLICATE('0',4-LEN(CA_DESCRIPTION))+CONVERT(VARCHAR,CA_DESCRIPTION)      
    +REPLICATE(' ',8-len(CONVERT(varchar,EXECUTION_DT,112)))+CONVERT(varchar,EXECUTION_DT,112)      
    +REPLICATE('0',15-LEN(TOTCRQTY_FLIN))+CONVERT(VARCHAR,TOTCRQTY_FLIN)+'000'      
	+REPLICATE('0',15-LEN(TOTDRQTY_FLIN))+CONVERT(VARCHAR,TOTDRQTY_FLIN)+'000'      
	+REPLICATE('0',15-LEN(TOTCRQTY_LIN))+CONVERT(VARCHAR,TOTCRQTY_LIN)+'000'    
	+REPLICATE('0',15-LEN(TOTDRQTY_LIN))+CONVERT(VARCHAR,TOTDRQTY_LIN)+'000'    
	+REPLICATE('0',7-LEN(TOTDETREC))+CONVERT(VARCHAR,TOTDETREC)      
	+REPLICATE(' ',21-len(CINBCIN))+CONVERT(VARCHAR,CINBCIN)      
    +REPLICATE(' ',7-len(FINYR_REL))+CONVERT(VARCHAR,FINYR_REL) 
	as ftemp1 into fftemp1      
    FROM iepftypebHd 
	where masteruniqno = @MastUNo)      
(      


SELECT '02'+                                                        
	 +CONVERT(VARCHAR(16),DETRECLINE)+REPLICATE(' ',16-LEN(DETRECLINE))    
	 +REPLICATE('0',7-LEN(DETRECLINE))+CONVERT(VARCHAR,DETRECLINE)        
	 +REPLICATE(' ',8-len(CRDPID))+CONVERT(VARCHAR,CRDPID)      
	 +REPLICATE(' ',8-len(CRCLID))+CONVERT(VARCHAR,CRCLID)       
	 +REPLICATE('0',2-LEN(CRCLACCCAT))+CONVERT(VARCHAR,CRCLACCCAT)      
	 +REPLICATE(' ',16-len(DRDPIDDRCLIDCDSL))+CONVERT(VARCHAR,DRDPIDDRCLIDCDSL)       
	 +REPLICATE('0',18-LEN(CREDIT_QTY))+CONVERT(VARCHAR,CREDIT_QTY)      
	 +REPLICATE('0',18-LEN(DEBIT_QTY))+CONVERT(VARCHAR,DEBIT_QTY)      
	 +REPLICATE('0',2-LEN(CRQTYLIN_RCODE))+CONVERT(VARCHAR,CRQTYLIN_RCODE)      
	-- convert(varchar,CRQTYLIN_RDT,112) <> convert(varchar,getdate(),112)
	 +'        '
	 +REPLICATE('0',2-LEN(DRQTYLIN_RCODE))+CONVERT(VARCHAR,DRQTYLIN_RCODE)      
	 --+CONVERT(varchar,DRQTYLIN_RDT)+CONVERT(varchar,DRQTYLIN_RDT,112)      
	 +'        '
	 +REPLICATE(' ',164-len(SHNAME))+CONVERT(VARCHAR,SHNAME)      
	 --+REPLICATE(' ',8-len(CONVERT(varchar,ACOPEN_DT)))+CONVERT(varchar,ACOPEN_DT,112)      
	 +'        '
	 +REPLICATE(' ',50-len(BOADD1P))+CONVERT(VARCHAR,BOADD1P)      
	 +REPLICATE(' ',30-len(BOCITYP))+CONVERT(VARCHAR,BOCITYP)      
	 +REPLICATE(' ',30-len(BOSTATEP))+CONVERT(VARCHAR,BOSTATEP)      
	 +REPLICATE(' ',30-len(BOCOUNTRYP))+CONVERT(VARCHAR,BOCOUNTRYP)      
	 +REPLICATE(' ',10-len(BOPINCODEP))+CONVERT(VARCHAR,BOPINCODEP)      
	 +REPLICATE(' ',100-len(BNKNAME))+CONVERT(VARCHAR,BNKNAME)      
	 +REPLICATE(' ',5-len(DIVBANK_ACTYPE))+CONVERT(VARCHAR,DIVBANK_ACTYPE)      
	 +REPLICATE(' ',20-len(DIVBANK_ACC))+CONVERT(VARCHAR,DIVBANK_ACC) 
	 as ftemp1 into fftemp2      
     FROM iepftypebDt 
	 where masteruniqno = @MastUNo)
(    
SELECT '03'+                                                        
	+REPLICATE('0',7-LEN(DETRECLINE))+CONVERT(VARCHAR,DETRECLINE)      
	+REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)  
	+REPLICATE(' ',1-len(DR_CR_INDI))+CONVERT(VARCHAR,DR_CR_INDI)  
	+REPLICATE('0',18-LEN(FROMDIST_NSDL))+CONVERT(VARCHAR,FROMDIST_NSDL)        
	+REPLICATE('0',18-LEN(TODIST_NSDL))+CONVERT(VARCHAR,TODIST_NSDL)        
	+REPLICATE('0',18-LEN(QTY))+CONVERT(VARCHAR,QTY)        
	+REPLICATE('0',2-LEN(FLAGSTATDNR))      
	+REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type) 
	as ftemp1 into fftemp3      
	FROM iepftypebDIST 
	where masteruniqno = @MastUNo)      
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_iepftypecuplfile]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_iepftypecuplfile] @MastUNo nvarchar(4)      
AS       
BEGIN      
SET NOCOUNT ON      
(      
SELECT '01SHRI001'+           
--				+Record_Identification
	--			+File_Identification
				+CONVERT(VARCHAR(16),Rta_Internal_Reference_No)+REPLICATE(' ',16-LEN(Rta_Internal_Reference_No))    
				+Credit_Isin
				+Filler
				+Ca_Type
				+REPLICATE(' ',8-len(CONVERT(varchar,Board_Dt,112)))+CONVERT(varchar,Board_Dt,112)      
				+Ca_Desc
				+REPLICATE(' ',8-len(CONVERT(varchar,Execution_Dt,112)))+CONVERT(varchar,Execution_Dt,112)      
				+Totcrqty_Flin
				+Totdrqty_Flin
				+Totcrqty_Lin
				+Totdrqty_Lin
				+Totdetrec
				+Cinbcin_No
				+Finyr_Rel
	as ftemp1 into fftemp1      
    FROM iepftypecHd 
	where masteruniqno = @MastUNo)    
(    
SELECT '02'+                                                        
					+CONVERT(VARCHAR(7),DETRECLINE)+REPLICATE('0',7-LEN(DETRECLINE))    
					+CONVERT(VARCHAR(8),Cr_Dpid)		+REPLICATE(' ',8-LEN(Cr_Dpid))    
					+CONVERT(VARCHAR(8),Cr_Clid)		+REPLICATE(' ',8-LEN(Cr_Clid))  
					+CONVERT(VARCHAR(2),Crclacccat)+REPLICATE('0',2-LEN(Crclacccat))    
					+FolioNo
					+CONVERT(VARCHAR(2),Filler01)+REPLICATE('0',2-LEN(Filler01))    
					+Cr_Qty
					+Dr_Qty
					+Crqtylin_Rcode
					+'        '
					+Drqtylin_Rcode
					+'        '
					+CONVERT(VARCHAR(164),SHNAME)		+REPLICATE(' ',164-LEN(SHNAME))    
					+CONVERT(VARCHAR(164),NAME2)		+REPLICATE(' ',164-LEN(NAME2))    
					+CONVERT(VARCHAR(164),NAME3)		+REPLICATE(' ',164-LEN(NAME3))    
					+CONVERT(VARCHAR(142),GURNAME)		+REPLICATE(' ',142-LEN(GURNAME))    
					+CONVERT(VARCHAR(142),NOMNAME)		+REPLICATE(' ',142-LEN(NOMNAME))    
					+CONVERT(VARCHAR(50),FHNAME)		+REPLICATE(' ',50-LEN(FHNAME))    
					+CONVERT(VARCHAR(1),FHGENDER)		+REPLICATE(' ',1-LEN(FHGENDER))    
					+CONVERT(VARCHAR(11),BIRTH_DT)		+REPLICATE(' ',11-LEN(BIRTH_DT))    
					+CONVERT(VARCHAR(2),Filler02)		+REPLICATE(' ',2-LEN(Filler02))    
					+CONVERT(VARCHAR(2),Filler03)		+REPLICATE(' ',2-LEN(Filler03))    
					+CONVERT(VARCHAR(4),Filler04)		+REPLICATE(' ',4-LEN(Filler04))    
					+CONVERT(VARCHAR(2),Filler05)		+REPLICATE(' ',2-LEN(Filler05))    
					+CONVERT(VARCHAR(4),Filler06)		+REPLICATE(' ',4-LEN(Filler06))    
					+CONVERT(VARCHAR(4),OCC)			+REPLICATE(' ',4-LEN(OCC))    
					+CONVERT(VARCHAR(25),PAN1)			+REPLICATE(' ',25-LEN(PAN1))    
					+CONVERT(VARCHAR(25),PAN2)			+REPLICATE(' ',25-LEN(PAN2))    
					+CONVERT(VARCHAR(25),PAN3)			+REPLICATE(' ',25-LEN(PAN3))    
					+CONVERT(VARCHAR(1),Filler07)		+REPLICATE(' ',1-LEN(Filler07))    
					+CONVERT(VARCHAR(2),Filler08)		+REPLICATE(' ',2-LEN(Filler08))    
					+CONVERT(VARCHAR(1),Filler09)		+REPLICATE(' ',1-LEN(Filler09))    
					+CONVERT(VARCHAR(11),Filler10)		+REPLICATE(' ',11-LEN(Filler10))    
					+CONVERT(VARCHAR(24),Filler11)		+REPLICATE(' ',24-LEN(Filler11))    
					+CONVERT(VARCHAR(2),Filler12)		+REPLICATE('0',2-LEN(Filler12))
					+CONVERT(VARCHAR(6),Filler13)		+REPLICATE('0',6-LEN(Filler13))    
					+CONVERT(VARCHAR(8),Filler14)		+REPLICATE(' ',8-LEN(Filler14))    
					+CONVERT(VARCHAR(8),Filler15)		+REPLICATE(' ',8-LEN(Filler15))    
					+CONVERT(VARCHAR(30),Filler16)		+REPLICATE(' ',30-LEN(Filler16))    
					+CONVERT(VARCHAR(11),Filler17)		+REPLICATE(' ',11-LEN(Filler17))    
					+CONVERT(VARCHAR(2),Filler18)		+REPLICATE('0',2-LEN(Filler18))    
					+CONVERT(VARCHAR(3),NATIONALITY)	+REPLICATE(' ',3-LEN(NATIONALITY))    
					+space(250)
					--+CONVERT(VARCHAR(50),BOADD1)		+REPLICATE(' ',50-LEN(BOADD1))    
					--+CONVERT(VARCHAR(50),BOADD2)		+REPLICATE(' ',50-LEN(BOADD2))    
					--+CONVERT(VARCHAR(50),BOADD3)		+REPLICATE(' ',50-LEN(BOADD3))    
					--+CONVERT(VARCHAR(30),BOCITY)		+REPLICATE(' ',30-LEN(BOCITY))    
					--+CONVERT(VARCHAR(30),BOSTATE)		+REPLICATE(' ',30-LEN(BOSTATE))    
					--+CONVERT(VARCHAR(30),BOCOUNTRY)		+REPLICATE(' ',30-LEN(BOCOUNTRY))    
					--+CONVERT(VARCHAR(10),BOPINCODE)		+REPLICATE(' ',10-LEN(BOPINCODE))    
					+CONVERT(VARCHAR(50),BOADD1P)		+REPLICATE(' ',50-LEN(BOADD1P))  
					+space(200)
					--+CONVERT(VARCHAR(50),BOADD2P)		+REPLICATE(' ',50-LEN(BOADD2P))    
					--+CONVERT(VARCHAR(50),BOADD3P)		+REPLICATE(' ',50-LEN(BOADD3P))    
					--+CONVERT(VARCHAR(30),BOCITYP)		+REPLICATE(' ',30-LEN(BOCITYP))    
					--+CONVERT(VARCHAR(30),BOSTATEP)		+REPLICATE(' ',30-LEN(BOSTATEP))    
					--+CONVERT(VARCHAR(30),BOCOUNTRYP)	+REPLICATE(' ',30-LEN(BOCOUNTRYP))    
					--+CONVERT(VARCHAR(10),BOPINCODEP)	+REPLICATE(' ',10-LEN(BOPINCODEP))    
					+CONVERT(VARCHAR(17),PHONE_1)		+REPLICATE(' ',17-LEN(PHONE_1))    
					+CONVERT(VARCHAR(17),PHONE_2)		+REPLICATE(' ',17-LEN(PHONE_2))    
					+CONVERT(VARCHAR(17),BO_FAX)		+REPLICATE(' ',17-LEN(BO_FAX))    	
					+CONVERT(VARCHAR(50),BO_EMAIL)		+REPLICATE(' ',50-LEN(BO_EMAIL))    
					+CONVERT(VARCHAR(1), ECS_MANDT_FLAG)+REPLICATE(' ',1-LEN(ECS_MANDT_FLAG))    
					+CONVERT(VARCHAR(12),DIVMICR_BCODE)	+REPLICATE(' ',12-LEN(DIVMICR_BCODE))    
					+CONVERT(VARCHAR(12),DIVBANK_BR)	+REPLICATE(' ',12-LEN(DIVBANK_BR))    
					+CONVERT(VARCHAR(100),BNKNAME)		+REPLICATE(' ',100-LEN(BNKNAME))    
					+CONVERT(VARCHAR(40),BNKADD1)		+REPLICATE(' ',40-LEN(BNKADD1))    
					+CONVERT(VARCHAR(40),BNKADD2)		+REPLICATE(' ',40-LEN(BNKADD2))    
					+CONVERT(VARCHAR(40),BNKADD3)		+REPLICATE(' ',40-LEN(BNKADD3))    
					+CONVERT(VARCHAR(25),BNKCITY)		+REPLICATE(' ',25-LEN(BNKCITY))    
					+CONVERT(VARCHAR(25),BNKSTATE)		+REPLICATE(' ',25-LEN(BNKSTATE))    
					+CONVERT(VARCHAR(25),BNKCOUNTRY)	+REPLICATE(' ',25-LEN(BNKCOUNTRY))    
					+CONVERT(VARCHAR(10),BNKPINCODE)	+REPLICATE(' ',10-LEN(BNKPINCODE))    
					+CONVERT(VARCHAR(6),DIVBANK_CURR)	+REPLICATE('0',6-LEN(DIVBANK_CURR))    
					+CONVERT(VARCHAR(5),DIVBANK_ACTYPE)	+REPLICATE('0',5-LEN(DIVBANK_ACTYPE))   
					+CONVERT(VARCHAR(20),DIVBANK_ACC)	+REPLICATE(' ',20-LEN(DIVBANK_ACC))    
					+CONVERT(VARCHAR(22),Filler19)		+REPLICATE(' ',22-LEN(Filler19))    
					+CONVERT(VARCHAR(22),Filler20)		+REPLICATE(' ',22-LEN(Filler20))    
					+CONVERT(VARCHAR(22),Filler21)		+REPLICATE(' ',22-LEN(Filler21))    
					+CONVERT(VARCHAR(22),Filler22)		+REPLICATE(' ',22-LEN(Filler22))    
					+CONVERT(VARCHAR(22),Filler23)		+REPLICATE(' ',22-LEN(Filler23))    
					+CONVERT(VARCHAR(22),Filler24)		+REPLICATE(' ',22-LEN(Filler24))    
					+CONVERT(VARCHAR(22),Filler25)		+REPLICATE(' ',22-LEN(Filler25))    
					+CONVERT(VARCHAR(22),Filler26)		+REPLICATE(' ',22-LEN(Filler26))    
					+CONVERT(VARCHAR(22),Filler27)		+REPLICATE(' ',22-LEN(Filler27))    
					+CONVERT(VARCHAR(8),Filler28)		+REPLICATE(' ',8-LEN(Filler28))    
					+CONVERT(VARCHAR(22),Filler29)		+REPLICATE(' ',22-LEN(Filler29))    
					+CONVERT(VARCHAR(22),Filler30)		+REPLICATE(' ',22-LEN(Filler30))    
					+CONVERT(VARCHAR(1),AR_FLAG)		+REPLICATE(' ',1-LEN(AR_FLAG))    
					+CONVERT(VARCHAR(12),UID1)			+REPLICATE(' ',12-LEN(UID1))    
					+CONVERT(VARCHAR(12),UID2)			+REPLICATE(' ',12-LEN(UID2))    
					+CONVERT(VARCHAR(12),UID3)			+REPLICATE(' ',12-LEN(UID3))    					
					+CONVERT(VARCHAR(10),PANGUARD)		+REPLICATE(' ',10-LEN(PANGUARD))    
					+CONVERT(VARCHAR(12),UIDGUARD)		+REPLICATE(' ',12-LEN(UIDGUARD))    					
					+CONVERT(VARCHAR(25),Filler31)		+REPLICATE(' ',25-LEN(Filler31))    
					+CONVERT(VARCHAR(25),Filler32)		+REPLICATE(' ',25-LEN(Filler32))    
					+CONVERT(VARCHAR(25),Filler33)		+REPLICATE(' ',25-LEN(Filler33))    
					+CONVERT(VARCHAR(25),Filler34)		+REPLICATE(' ',25-LEN(Filler34))    
					+CONVERT(VARCHAR(25),Filler35)		+REPLICATE(' ',25-LEN(Filler35))    
					+CONVERT(VARCHAR(1),BO_RGESS_FLAG)	+REPLICATE(' ',1-LEN(BO_RGESS_FLAG))    
					+CONVERT(VARCHAR(1),Filler36)		+REPLICATE(' ',1-LEN(Filler36))    
					+CONVERT(VARCHAR(1),Filler37)		+REPLICATE(' ',1-LEN(Filler37))    
					+CONVERT(VARCHAR(1),Filler38)		+REPLICATE(' ',1-LEN(Filler38))    
					+CONVERT(VARCHAR(1),Filler39)		+REPLICATE(' ',1-LEN(Filler39))    
	 as ftemp1 into fftemp2      
     FROM iepftypecdt
	 --where Detrecline = '0000029'
	 where masteruniqno = @MastUNo)
--(    
--SELECT '03'+                                                        
--	+REPLICATE('0',7-LEN(DETRECLINE))+CONVERT(VARCHAR,DETRECLINE)      
--	+REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)  
--	+REPLICATE(' ',1-len(DR_CR_INDI))+CONVERT(VARCHAR,DR_CR_INDI)  
--	+REPLICATE('0',18-LEN(FROMDIST_NSDL))+CONVERT(VARCHAR,FROMDIST_NSDL)        
--	+REPLICATE('0',18-LEN(TODIST_NSDL))+CONVERT(VARCHAR,TODIST_NSDL)        
--	+REPLICATE('0',18-LEN(QTY))+CONVERT(VARCHAR,QTY)        
--	+REPLICATE('0',2-LEN(FLAGSTATDNR))      
--	+REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type) 
--	as ftemp1 into fftemp3      
--	FROM iepftypecDIST 
--	where masteruniqno = @MastUNo)      
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_normalcaUpdateData]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_normalcaUpdateData] @MastUniqNo varchar(4) 
as 
begin
UPDATE NormalCAHeaderRecord SET  Total_Allotted_Quantity_Free_Lockin	= RIGHT('000000000000000'	+ CONVERT(VARCHAR,Total_Allotted_Quantity_Free_Lockin),15)+'000'	WHERE MASTERUNIQNO = @MastuniqNo
UPDATE NormalCAHeaderRecord SET  Total_Allotted_Quantity_Lockin			= RIGHT('000000000000000'	+ CONVERT(VARCHAR,Total_Allotted_Quantity_Lockin),15)+'000'			WHERE MASTERUNIQNO = @MastuniqNo
UPDATE NormalCAHeaderRecord SET  Total_No_detail_records				= RIGHT('0000000'			+ CONVERT(VARCHAR,Total_No_detail_records),7)						WHERE MASTERUNIQNO = @MastuniqNo
update NormalCAHeaderRecord set	 Total_Issued_Amount					= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Total_Issued_Amount),16)+'00'					WHERE MASTERUNIQNO = @MastuniqNo
update NormalCAHeaderRecord set  Total_Paidup_Amount					= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Total_Paidup_Amount),16)+'00'					WHERE MASTERUNIQNO = @MastuniqNo
UPDATE NormalCAHeaderRecord SET  Filler									= REPLACE(STR(Filler,2),'0',' ') where MASTERUNIQNO = @MastuniqNo

UPDATE NormalCAdetailRecord SET  Detail_Record_Line_No					= RIGHT('0000000'			+ CONVERT(VARCHAR,Detail_Record_Line_No),7)							WHERE MASTERUNIQNO = @MastuniqNo
UPDATE NormalCAdetailRecord SET  Allotment_Quantity						= RIGHT('000000000000000'	+ CONVERT(VARCHAR,Allotment_Quantity),15)+'000'						WHERE MASTERUNIQNO = @MastuniqNo
UPDATE NormalCAdetailRecord SET  Issue_Price							= RIGHT('000000000000'		+ CONVERT(VARCHAR,Issue_Price),12)+'000000'							WHERE MASTERUNIQNO = @MastuniqNo
UPDATE NormalCAdetailRecord SET  Issued_Amount							= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Issued_Amount),16)+'00'							WHERE MASTERUNIQNO = @MastuniqNo
UPDATE NormalCAdetailRecord SET  Paidup_Price							= RIGHT('000000000000'		+ CONVERT(VARCHAR,Paidup_Price),12)+'000000'						WHERE MASTERUNIQNO = @MastuniqNo
UPDATE NormalCAdetailRecord SET  Paidup_Amount							= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Paidup_Amount),16)+'00'							WHERE MASTERUNIQNO = @MastuniqNo
UPDATE NormalCADetailDistRecord SET  Detail_Record_Line_No		= RIGHT('0000000'			+ CONVERT(VARCHAR,Detail_Record_Line_No),7)			WHERE MASTERUNIQNO = @MastuniqNo
UPDATE NormalCADetailDistRecord SET  From_Distinctive_No_NSDL	= RIGHT('000000000000000000'+ CONVERT(VARCHAR,From_Distinctive_No_NSDL),18)		WHERE MASTERUNIQNO = @MastuniqNo
UPDATE NormalCADetailDistRecord SET  To_Distinctive_No_NSDL		= RIGHT('000000000000000000'+ CONVERT(VARCHAR,To_Distinctive_No_NSDL),18)		WHERE MASTERUNIQNO = @MastuniqNo
UPDATE NormalCADetailDistRecord SET  Quantity					= RIGHT('000000000000000000'+ CONVERT(VARCHAR,Quantity),18)						WHERE MASTERUNIQNO = @MastuniqNo
IF OBJECT_ID ( 'fftemp1', 'U' ) IS NOT NULL  DROP TABLE fftemp1
IF OBJECT_ID ( 'fftemp2', 'U' ) IS NOT NULL  DROP TABLE fftemp2
IF OBJECT_ID ( 'fftemp3', 'U' ) IS NOT NULL  DROP TABLE fftemp3
IF OBJECT_ID ( 'fftemp4', 'U' ) IS NOT NULL  DROP TABLE fftemp4
end
GO
/****** Object:  StoredProcedure [dbo].[sp_normalcaUpdateDataDecimal]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_normalcaUpdateDataDecimal] @MastuniqNo varchar(4)
AS
Begin
--EXCEPTIONAL FOR DECIMAL PLACES IN FACE VALUE PRICE & AMOUNT
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
update NormalCAHeaderRecord set Total_Issued_Amount		=(RIGHT('0000000000000000'	
								+ CONVERT(VARCHAR,LEFT(total_issued_amount, CHARINDEX('.', total_issued_amount)-1)),16) 
								+RIGHT(total_issued_amount, LEN(total_issued_amount)-CHARINDEX('.', total_issued_amount)))		WHERE MASTERUNIQNO = @mastuniqno 

update NormalCAHeaderRecord set Total_Paidup_Amount		=(RIGHT('0000000000000000'	
								+ CONVERT(VARCHAR,LEFT(Total_Paidup_Amount , CHARINDEX('.', Total_Paidup_Amount )-1)),16) 
								+RIGHT(Total_Paidup_Amount , LEN(Total_Paidup_Amount )-CHARINDEX('.', Total_Paidup_Amount )))	WHERE MASTERUNIQNO = @mastuniqno 
UPDATE NormalCAdetailRecord SET  Issue_Price			=RIGHT ('000000000000'		
								+ CONVERT(VARCHAR,LEFT(Issue_Price, CHARINDEX('.', Issue_Price)-1)),12) 
								+RIGHT(Issue_Price,CHARINDEX('.',REVERSE(Issue_Price)) - 1)+'0000'								WHERE MASTERUNIQNO =  @mastuniqno 
UPDATE NormalCAdetailRecord SET  issued_amount			=RIGHT ('0000000000000000'	
								+ CONVERT(VARCHAR,LEFT(issued_amount, CHARINDEX('.', issued_amount)-1)),16) 
								+RIGHT(issued_amount, LEN(issued_amount)-CHARINDEX('.', issued_amount))							WHERE MASTERUNIQNO =  @mastuniqno 
UPDATE NormalCAdetailRecord SET  Paidup_Price			=RIGHT ('000000000000'		
								+ CONVERT(VARCHAR,LEFT(Paidup_Price, CHARINDEX('.', Paidup_Price)-1)),12) 
								+RIGHT(Paidup_Price,CHARINDEX('.',REVERSE(Paidup_Price)) - 1)+'0000'							WHERE MASTERUNIQNO =  @mastuniqno 
UPDATE NormalCAdetailRecord SET  Paidup_Amount			=RIGHT ('0000000000000000'	
								+ CONVERT(VARCHAR,LEFT(Paidup_Amount , CHARINDEX('.', Paidup_Amount )-1)),16) 
								+RIGHT(Paidup_Amount , LEN(Paidup_Amount )-CHARINDEX('.', Paidup_Amount ))						WHERE MASTERUNIQNO = @mastuniqno 
UPDATE NormalCAdetailRecord SET  Issue_Price			=RIGHT ('000000000000'		
								+ CONVERT(VARCHAR,LEFT(Issue_Price, CHARINDEX('.', Issue_Price)-1)),12) 
								+RIGHT(Issue_Price,CHARINDEX('.',REVERSE(Issue_Price)) - 1)+'0000'								WHERE MASTERUNIQNO = @mastuniqno 
UPDATE NormalCAdetailRecord SET  issued_amount			=RIGHT ('0000000000000000'	
								+ CONVERT(VARCHAR,LEFT(issued_amount, CHARINDEX('.', issued_amount)-1)),16) 
								+RIGHT(issued_amount, LEN(issued_amount)-CHARINDEX('.', issued_amount))							WHERE MASTERUNIQNO = @mastuniqno 
UPDATE NormalCAdetailRecord SET  Paidup_Price			=RIGHT ('000000000000'		
								+ CONVERT(VARCHAR,LEFT(Paidup_Price, CHARINDEX('.', Paidup_Price)-1)),12) 
								+RIGHT(Paidup_Price,CHARINDEX('.',REVERSE(Paidup_Price)) - 1)+'0000'							WHERE MASTERUNIQNO = @mastuniqno 
UPDATE NormalCAdetailRecord SET  Paidup_Amount			=RIGHT ('0000000000000000'	
								+ CONVERT(VARCHAR,LEFT(Paidup_Amount , CHARINDEX('.', Paidup_Amount )-1)),16) 
								+RIGHT(Paidup_Amount , LEN(Paidup_Amount )-CHARINDEX('.', Paidup_Amount ))						WHERE MASTERUNIQNO = @mastuniqno 
UPDATE NormalCADetailDistRecord SET  Detail_Record_Line_No		= RIGHT('0000000'			
								+ CONVERT(VARCHAR,Detail_Record_Line_No),7)														WHERE MASTERUNIQNO = @mastuniqno 
UPDATE NormalCADetailDistRecord SET  From_Distinctive_No_NSDL	= RIGHT('000000000000000000'
								+ CONVERT(VARCHAR,From_Distinctive_No_NSDL),18)													WHERE MASTERUNIQNO = @mastuniqno 
UPDATE NormalCADetailDistRecord SET  To_Distinctive_No_NSDL		= RIGHT('000000000000000000'
								+ CONVERT(VARCHAR,To_Distinctive_No_NSDL),18)													WHERE MASTERUNIQNO = @mastuniqno 
UPDATE NormalCADetailDistRecord SET  Quantity					= RIGHT('000000000000000000'
									+ CONVERT(VARCHAR,Quantity),18)																WHERE MASTERUNIQNO = @mastuniqno 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_normalcauplfile]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_normalcauplfile] @MastUNo nvarchar(4)      
AS       
BEGIN      
SET NOCOUNT ON      
(      
SELECT '01SHRI001'+           
    +CONVERT(VARCHAR(16),RTA_Internal_Reference_No)+REPLICATE(' ',16-LEN(RTA_Internal_Reference_No))      
    +REPLICATE(' ',1-len(Debit_Credit_Indicator))+CONVERT(VARCHAR,Debit_Credit_Indicator)      
    +REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)      
    +CA_Type
    +REPLICATE(' ',8-len(CONVERT(varchar,Allotment_Date,112)))+CONVERT(varchar,Allotment_Date,112)      
    +REPLICATE('0',4-LEN(Allocation_Allotment_Description))+CONVERT(VARCHAR,Allocation_Allotment_Description)      
    +REPLICATE(' ',8-len(CONVERT(varchar,Execution_Date,112)))+CONVERT(varchar,Execution_Date,112)      
    +Total_Allotted_Quantity_Free_Lockin
	+Total_Allotted_Quantity_Lockin
    +Total_No_detail_records
    +Total_Issued_Amount
    +Total_Paidup_Amount
    +REPLICATE(' ',1-len(Stamp_Duty_Payable))+CONVERT(VARCHAR,Stamp_Duty_Payable)      
    +REPLICATE(' ',2-len(Basis_calculation_Stamp_Duty))+CONVERT(VARCHAR,Basis_calculation_Stamp_Duty)      
    +REPLICATE(' ',2-len(EBP_Name))+CONVERT(VARCHAR,EBP_Name)      
    +REPLICATE(' ',2-len(Funds_collected_through))+CONVERT(VARCHAR,Funds_collected_through)      
    +'  '
	as ftemp1 into fftemp1      
	FROM NormalCAHeaderRecord
	where masteruniqno = @MastUNo)      
(      
SELECT '02'+                                                        
    +Detail_Record_Line_No
    +REPLICATE('0',8-LEN(DP_ID))+CONVERT(VARCHAR,DP_ID)       
    +REPLICATE(' ',8-len(client_id))+CONVERT(VARCHAR,CLIENT_ID)       
    +REPLICATE(' ',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
    +Allotment_Quantity
    +REPLICATE('0',2-LEN(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
    +'        '      
    --+REPLICATE(' ',8-len(CONVERT(varchar,Lockin_Release_Date,112)))+CONVERT(varchar,Lockin_Release_Date,112)      
    +Issue_Price
    +Issued_Amount
    +Paidup_Price
    +Paidup_Amount
	+'            '    
    as ftemp1 into fftemp2                                                                                      
    --+REPLICATE(' ',12-LEN(FILLER))+CONVERT(VARCHAR,FILLER)  as ftemp2 into fftemp2      
FROM NormalCADetailRecord 
where masteruniqno = @MastUNo)      
(      
SELECT '03'+                                                        
  +Detail_Record_Line_No
  +From_Distinctive_No_NSDL
  +To_Distinctive_No_NSDL
  +Quantity
  +REPLICATE('0',2-LEN(Flag_status_DN_Range))+CONVERT(VARCHAR,FLAG_STATUS_DN_RANGE)
  +REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type)      
  as ftemp1 into fftemp3      
FROM NormalCADetailDistRecord  
where masteruniqno = @MastUNo)      
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_normalcauplfromexcel]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_normalcauplfromexcel]  @MastUNo nvarchar(4)      
AS       
BEGIN      
SET NOCOUNT ON      
(      
SELECT '01SHRI001'+           
    +CONVERT(VARCHAR(16),RTA_Internal_Reference_No)+REPLICATE(' ',16-LEN(RTA_Internal_Reference_No))      
    +REPLICATE(' ',1-len(Debit_Credit_Indicator))+CONVERT(VARCHAR,Debit_Credit_Indicator)      
    +REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)      
    +(CA_Type)      
    +REPLICATE(' ',8-len(CONVERT(varchar,Allotment_Date,112)))+CONVERT(varchar,Allotment_Date,112)      
    +REPLICATE('0',4-LEN(Allocation_Allotment_Description))+CONVERT(VARCHAR,Allocation_Allotment_Description)      
    +REPLICATE(' ',8-len(CONVERT(varchar,Execution_Date,112)))+CONVERT(varchar,Execution_Date,112)      
    +CONVERT(VARCHAR,Total_Allotted_Quantity_Free_Lockin)
	+CONVERT(VARCHAR,Total_Allotted_Quantity_Lockin)
    +CONVERT(VARCHAR,Total_No_detail_records)      
    +CONVERT(VARCHAR,Total_Issued_Amount)
    +CONVERT(VARCHAR,Total_Paidup_Amount)
    +REPLICATE(' ',1-len(Stamp_Duty_Payable))+CONVERT(VARCHAR,Stamp_Duty_Payable)      
    +REPLICATE(' ',2-len(Basis_calculation_Stamp_Duty))+CONVERT(VARCHAR,Basis_calculation_Stamp_Duty)      
    +REPLICATE(' ',2-len(EBP_Name))+CONVERT(VARCHAR,EBP_Name)      
    +REPLICATE(' ',2-len(Funds_collected_through))+CONVERT(VARCHAR,Funds_collected_through)      
	--    +(FILLER) as ftemp1 into fftemp1      
    +REPLICATE(' ',2-len(FILLER))+CONVERT(VARCHAR,FILLER) 
	as ftemp1 into fftemp1      
 FROM 
  NormalCAHeaderRecordFromExcel where masteruniqno = @MastUNo)      
(      
SELECT '02'+                                                        
    +CONVERT(VARCHAR,Detail_Record_Line_No)
    +REPLICATE('0',8-LEN(DP_ID))+CONVERT(VARCHAR,DP_ID)       
    +REPLICATE(' ',8-len(client_id))+CONVERT(VARCHAR,CLIENT_ID)       
    +REPLICATE(' ',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
    +CONVERT(VARCHAR,Allotment_Quantity)
    +REPLICATE('0',2-LEN(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
    +'        '      
    --+REPLICATE(' ',8-len(CONVERT(varchar,Lockin_Release_Date,112)))+CONVERT(varchar,Lockin_Release_Date,112)      
    +CONVERT(VARCHAR,Issue_Price)
    +CONVERT(VARCHAR,Issued_Amount)
    +CONVERT(VARCHAR,Paidup_Price)
    +CONVERT(VARCHAR,Paidup_Amount)
    +CONVERT(VARCHAR(12),ISNULL(FILLER,''))+REPLICATE(' ',12-LEN(FILLER)) as ftemp2 into fftemp2                                                                                      
    --+REPLICATE(' ',12-LEN(FILLER))+CONVERT(VARCHAR,FILLER)  as ftemp2 into fftemp2      
FROM NormalCADetailRecordfromExcel where masteruniqno = @MastUNo)      
(      
SELECT '03'+                                                        
  +CONVERT(VARCHAR,Detail_Record_Line_No)
  +CONVERT(VARCHAR,From_Distinctive_No_NSDL)
  +CONVERT(VARCHAR,To_Distinctive_No_NSDL) 
  +CONVERT(VARCHAR,Quantity)
  +REPLICATE('0',2-LEN(Flag_status_DN_Range))+CONVERT(VARCHAR,FLAG_STATUS_DN_RANGE)
  +REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type)      
  as ftemp3 into fftemp3      
FROM NormalCADetailDistRecordFromExcel  where masteruniqno = @MastUNo)      
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_NSDLBENDEMF]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_NSDLBENDEMF] 
		as
		begin
		--update bendem01 set 
		--record_Type= substring(rem,1,2),
		--batch_no= '0000680',
		--rta_id	= 'IN200537',
		--request_type= '1',
		--sender_id= '        ',
		--sender_date= FORMAT(getdate(),'yyyyMMdd'),
		--filler1	= '        '

IF OBJECT_ID ( 'aifimpdpidclidisin', 'U' ) IS NOT NULL  DROP TABLE aifimpdpidclidisin
create table aifimpdpidclidisin (dpidclid varchar(18),ISIN varchar(14))

BULK INSERT aifimpdpidclidisin 
	FROM 'D:\BENDEM\NSDLBENDEM.csv' 
	WITH 
	(  
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=50
	)
	
	UPDATE bendem01 set record_Type = '01'
	update bendem01 set batch_no = '0000700' 
	update bendem01 set rta_id = 'IN200537'
	update a set a.isin = trim(b.isin) from aifimpdpidclidisin a join bendem01 b on b.id = 1
	update bendem01 set sender_date = FORMAT(getdate(),'yyyyMMdd') 
	update bendem01 set sender_id= '        '
	update bendem01 set filler1	= '        '

	--RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM bendem02u a JOIN #temp2 b ON a.ID=b.ID

	alter table aifimpdpidclidisin add dpid varchar(8), clid varchar(8)
	update aifimpdpidclidisin set dpid = substring(dpidclid,1,8)
	update aifimpdpidclidisin set clid = substring(dpidclid,9,8)
	truncate table bendem02
	insert into bendem02 (dpid,clid) (select dpid,clid from aifimpdpidclidisin)
	DELETE from bendem02 WHERE DPID LIKE '1%'
	IF OBJECT_ID ( 'BENDEM02U', 'U' ) IS NOT NULL  DROP TABLE BENDEM02U
	SELECT DPID,CLID INTO BENDEM02U FROM BENDEM02 GROUP BY DPID,CLID
	ALTER TABLE BENDEM02U ADD rem varchar(100),record_type varchar(2),line_no varchar(7),id int primary key identity(1,1)
	--update bendem02U set record_type='02'
    --select * from bendem02u
    --	drop table #temp2
	SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO #TEMP2 FROM bendem02u WHERE id < 99999
	UPDATE a SET a.Line_no = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM bendem02u a JOIN #temp2 b ON a.ID=b.ID
	truncate table bendem02
	insert into bendem02 (record_type,line_no,DPID,CLID) (select record_type,line_no,DPID,CLID from bendem02u)
--	select dpid,clid from bendem02 group by dpid,clid having count(*) >1
	--select * from bendem02u
	truncate table bendem2o
		SET NOCOUNT ON      
		(      
			SELECT '01'+                                                        
			+batch_no
			+'IN200537'
			--+rta_id	
			+isin	
			+request_type
			+sender_id
			+FORMAT(getdate(),'yyyyMMdd') 
			--+sender_date
			+'        '
			as btempf into #TEMP11
			FROM bendem01
		)
		(
		SELECT '02'+                                                        
			+Line_no
			+dpid
			+clid
			+'          '
			as btempf into #TEMP22
			FROM BENDEM02
		)
		IF OBJECT_ID ('bendem2o', 'U' ) IS NOT NULL  DROP TABLE bendem2o
		create table bendem2o (btempf varchar(54))
			insert   into bendem2o select * from #temp11
			insert	 into bendem2o select * from #temp22
			DECLARE @cmd varchar(500),@filename1 varchar(100)
		SELECT @filename1 ='IN200537_BENDEM_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
		SET @cmd = 'bcp "SELECT * FROM vccipl.[dbo].[bendem2o]" '+ 'queryout d:\BENDEM\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
		EXEC master..xp_cmdshell @cmd
	END 

GO
/****** Object:  StoredProcedure [dbo].[sp_out45f]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_out45f] 
as 
begin
DECLARE @cmd varchar(500),@filename1 varchar(100)
SELECT @filename1 ='IN200537_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM vccipl.[dbo].[fdt45f]" '+ 'queryout d:\sbroutfiles\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
End
GO
/****** Object:  StoredProcedure [dbo].[sp_outCDSLF]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_outCDSLF] 
as 
begin
DECLARE @cmd varchar(500),@filename1 varchar(100)
SELECT @filename1 ='IN200537_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM vccipl.[dbo].[CDST1]" '+ 'queryout d:\sbroutfiles\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
End
GO
/****** Object:  StoredProcedure [dbo].[sp_sbrcdslcagenfile_final]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_sbrcdslcagenfile_final]
WITH RECOMPILE
as 
begin
	IF OBJECT_ID ( 'BcdslbulkFile03d', 'U' ) IS NOT NULL  DROP TABLE BcdslbulkFile03d
	create table BcdslbulkFile03d (isin varchar(12),bo_id varchar(16),shares varchar(16))
	truncate table BcdslbulkFile03d
	BULK INSERT BcdslbulkFile03d
		FROM 'D:\CAFILES\CDSL\RAWCSVFILES\totcrec.csv' 
		WITH 
		(  
			FORMAT = 'CSV',
			FIRSTROW = 2,
			DATAFILETYPE = 'char',
			FIELDTERMINATOR = ',',  
			ROWTERMINATOR = '\n',
			--ROWTERMINATOR = '0x0D0A',
			BATCHSIZE=5
		)
	--insert into BcdslbulkFile03d  (isin,bo_id,shares)
	--VALUES( 'INE777D01013','1201201212012012',1257)
		
		delete from BcdslbulkFile03d where bo_id not like '1%'
--		IF OBJECT_ID ( 'BcdslbulkFile03d', 'U' ) IS NOT NULL  DROP TABLE BcdslbulkFile03d
--		create table BcdslbulkFile03d (isin varchar(12),bo_id varchar(16),shares varchar(16))
--		insert into BcdslbulkFile03d select * from BcdslbulkFile03ds
----	SELECT * FROM BcdslbulkFile03d


		alter table BcdslbulkFile03d add ID int identity(1,1)
		alter table BcdslbulkFile03d add 
				Record_Type			varchar(2),
				RTA_IntRef_No		varchar(16),
				PISIN				varchar(12),
				PCurr_Qty			varchar(16),
				PFrozen_Qty			varchar(16),
				PLockin_Qty			varchar(16),
				PLockin_Reason_Cd	varchar(2),
				PLockin_Reason		varchar(50),
				PLockin_Exp_Date	datetime,
				PDRCR_Flag			varchar(1),
				Benefit_Isin		varchar(12),
				BCurr_Qty			varchar(16),
				BFrozen_Qty			varchar(16),
				BLockin_Qty			varchar(16),
				BLockin_Reason_Cd	varchar(2),
				BLockin_Reason		varchar(50),
				BLockin_Exp_Date	datetime,
				BDRCR_Flag			varchar(1),
				CDT					datetime,
				MasterUniqNo		int,	
				OfferPrice			varchar(16),
				ProcessedFlag		varchar(1),
				calcflag			varchar(1)
		
				IF OBJECT_ID ( 'Bcdsltotaltemp', 'U' ) IS NOT NULL  DROP TABLE Bcdsltotaltemp 
				select sum(convert(int,shares)) as bcq,count(*) as cdslrec1 into Bcdsltotaltemp from BcdslbulkFile03d
				select bcq,cdslrec1 from Bcdsltotaltemp
				IF OBJECT_ID ( 'CCA_DUPCHK01', 'U' ) IS NOT NULL  DROP TABLE CCA_DUPCHK01
				SELECT bo_id,shares, COUNT(bo_id) as [DUPLICATES_TIMES] INTO CCA_DUPCHK01 FROM BcdslbulkFile03d GROUP BY bo_id,shares HAVING COUNT(bo_id) > 1
		-- PAUSE
		SELECT * FROM CCA_DUPCHK01
		IF OBJECT_ID ( 'CCADUPCHKFILE', 'U' ) IS NOT NULL  DROP TABLE CCADUPCHKFILE
		SELECT COUNT(*) AS CNT INTO CCADUPCHKFILE FROM CCA_DUPCHK01
		declare @dupflag int
		set @dupflag = (select cnt from CCADUPCHKFILE)
		IF @dupflag > 0
			BEGIN
		  		PRINT 'DUPLICATES EXISTING IN THE FILE'
			END
		IF @dupflag = 0
			Begin
				PRINT 'DUPLICATES NOT EXISTING IN THE FILE'
			End
				
				--generate line Nos.
				IF OBJECT_ID ( 'CTEMP22', 'U' ) IS NOT NULL  DROP TABLE CTEMP22
					SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO CTEMP22 FROM BcdslbulkFile03d WHERE id < 99999
					UPDATE a SET a.RTA_IntRef_No = '' + RIGHT('0000'+CONVERT(VARCHAR,B.RowN),4)+ '            ' FROM BcdslbulkFile03d a JOIN ctemp22 b ON a.ID=b.ID
					select * from BcdslbulkFile03d where plockin_exp_date is null
					select * from BcdslbulkFile03d where blockin_exp_date is null
					UPDATE BcdslbulkFile03d  set	
					Record_Type				='02',
					PISIN					= ISIN,
					PCurr_Qty				='000000000000.000',
					PFrozen_Qty				='000000000000.000',
					PLockin_Qty				='000000000000.000',
					PLockin_Reason_Cd		='00',
					PLockin_Reason			='                                                  ',
					
					--PLockin_Exp_Date		='00000000',
					PDRCR_Flag				='D',
					Benefit_Isin			=ISIN,
					BCurr_Qty				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,shares)),12)) +'.000',
					BFrozen_Qty				='000000000000.000',
					BLockin_Qty				='000000000000.000',
					BLockin_Reason_Cd		='00',
					BLockin_Reason			='                                                  ',

					--BLockin_Exp_Date		='00000000',
					BDRCR_Flag				='C',
					CDT						=getdate(),
					OfferPrice				='000000000000.000',
					ProcessedFlag			='Y',
					calcflag				='Y'
					UPDATE a SET a.MasterUniqNo = B.mmuno FROM BcdslbulkFile03d a JOIN cca_muno01 b ON b.ID=1
					declare @yourisin varchar(12)
					set @yourisin = (select top 1 PISIN from BcdslbulkFile03d)
					PRINT 'YOUR CURRENT ISIN IS :' + @yourisin
				
					truncate table corpactCDSLDetailtt
					INSERT INTO corpactCDSLDetailtt  
					(
					Record_Type,BO_ID,RTA_IntRef_No,PISIN,PCurr_Qty,PFrozen_Qty,
					PLockin_Qty,PLockin_Reason_Cd,PLockin_Reason,PLockin_Exp_Date,
					PDRCR_Flag,Benefit_Isin,BCurr_Qty,BFrozen_Qty,BLockin_Qty,
					BLockin_Reason_Cd,BLockin_Reason,BLockin_Exp_Date,BDRCR_Flag,
					CDT,MasterUniqNo,OfferPrice,ProcessedFlag,calcflag
					) 
					SELECT
					Record_Type,BO_ID,RTA_IntRef_No,PISIN,PCurr_Qty,PFrozen_Qty,
					PLockin_Qty,PLockin_Reason_Cd,PLockin_Reason,PLockin_Exp_Date,
					PDRCR_Flag,Benefit_Isin,BCurr_Qty,BFrozen_Qty,BLockin_Qty,
					BLockin_Reason_Cd,BLockin_Reason,BLockin_Exp_Date,BDRCR_Flag,
					CDT,MasterUniqNo,OfferPrice,ProcessedFlag,calcflag
					FROM BcdslbulkFile03d
				--step 2
				alter table Bcdsltotaltemp add id int identity(1,1)
				delete from Bcdslbulkfile03a where id <> 1
				UPDATE Bcdslbulkfile03a  set Record_Type			= '01'
				UPDATE a SET a.Total_Records = RIGHT('0000000000'  +CONVERT(VARCHAR,B.cdslrec1),10) FROM Bcdslbulkfile03a a JOIN Bcdsltotaltemp  b ON a.ID=1
				UPDATE a SET a.Tot_Curr_Qty  = RIGHT('000000000000'+CONVERT(VARCHAR,B.bcq),12)+ '.000' FROM Bcdslbulkfile03a a JOIN Bcdsltotaltemp  b ON a.ID=1
				UPDATE Bcdslbulkfile03a  set Tot_Freeze_Qty		= '000000000000.000'
				UPDATE Bcdslbulkfile03a  set Tot_Lockin_Qty		= '000000000000.000'
				UPDATE a SET a.Tot_Detail_Rec02 = RIGHT('0000000000'  +CONVERT(VARCHAR,B.cdslrec1),10) FROM Bcdslbulkfile03a a JOIN Bcdsltotaltemp  b ON a.ID=1
				UPDATE Bcdslbulkfile03a  set Tot_Detail_Rec03		= '0000000000'
				UPDATE Bcdslbulkfile03a  set CDT					= getdate()
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM Bcdslbulkfile03a a JOIN cca_muno01 b ON b.ID=1
				--UPDATE Bcdslbulkfile03a  set MasterUniqNo			= '9901'
				UPDATE Bcdslbulkfile03a  set ProcessedFlag		= 'Y'
				UPDATE Bcdslbulkfile03a  set inward_dt			= getdate()
				UPDATE Bcdslbulkfile03a  set calcflag				= 'Y'
				--select * into normalcaheaderrecordtt from NormalCAHeaderRecord
				truncate table corpactCDSLHeaderTT
				INSERT INTO corpactCDSLHeaderTT
				(
					Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag		
				) 
				SELECT
					Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag		
				FROM  Bcdslbulkfile03a   
				--step 3
				IF OBJECT_ID ( 'c1temp1', 'U' ) IS NOT NULL  DROP TABLE c1temp1
				IF OBJECT_ID ( 'c2temp2', 'U' ) IS NOT NULL  DROP TABLE c2temp2
				SET NOCOUNT ON      
				 (      
					SELECT '01'+                                                        
					  +total_records
					  +Tot_Curr_Qty
					  +Tot_Freeze_Qty
					  +Tot_Lockin_Qty
					  +Tot_Detail_Rec02
					  +Tot_Detail_Rec03
					  AS ctemp1 into c1temp1
					FROM corpactCDSLHeaderTT   
				  )      
			 (      
			 SELECT '02'+           
			  +BO_ID
			  +RTA_IntRef_No
			  +Pisin      
			  +PCurr_Qty  
			  +PFrozen_Qty      
			  +PLockin_Qty      
			  +PLockin_Reason_Cd
			  +space(50)+      
			  +'00000000'+      
			  --+REPLICATE(' ',8-len(PLockin_Exp_Date))+CONVERT(VARCHAR,PLockin_Exp_Date)      
			  +PDRCR_Flag      
			  +Benefit_Isin      
			  +BCurr_Qty   
			  +BFrozen_Qty      
			  +BLockin_Qty      
			  +BLockin_Reason_Cd
			  +space(50) +      
			  +'00000000'+      
			  --+REPLICATE(' ',8-len(BLockin_Exp_Date))+CONVERT(VARCHAR,BLockin_Exp_Date)      
			  ----+REPLICATE(' ',8-len(BLockin_Exp_Date))+CONVERT(VARCHAR,BLockin_Exp_Date)      
			  +BDRCR_Flag       
			  +offerprice
			  --+char(13)
			  as ctemp1 into c2temp2
			  FROM corpactCDSLDetailtt
			  )      
			 --(      
			 --SELECT char(13)+'03'+                                                        
			 -- +CA_Isin      
			 -- +From_DistNo_CDSL
			 -- +To_DistNo_CDSL
			 -- +Quantity
			 -- +DRCR_Flag  
			 -- +CHAR(13)
			 -- as ctemp1 into #temp3      
			 -- FROM corpactCDSLDetailDist       
			 -- where ProcessedFlag ='N' and calcflag ='N')    
			IF OBJECT_ID ( 'Bcdslst1', 'U' ) IS NOT NULL  DROP TABLE Bcdslst1
				create table Bcdslst1 ( ctemp1 varchar(1000))
				insert	 into Bcdslst1  select * from c1temp1
				insert	 into Bcdslst1  select * from c2temp2
				--insert	 into Bcdslst1  select * from #temp3
				select * from Bcdslst1
				DECLARE @cmd varchar(500),@bcdslfile varchar(100)
				SELECT @bcdslfile ='999999_'+FORMAT(GETDATE(),'mmss')+'.ipf'       
				SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.Bcdslst1" '+ 'queryout D:\CAFILES\CDSL\GENCSVFILES\'+ @bcdslfile + ' -c -UTF8 -T -Slocalhost'
				EXEC master..xp_cmdshell @cmd
				INSERT INTO corpactCDSLHeader 
				(Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag)
				SELECT Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag
				FROM corpactCDSLHeaderTT
				INSERT INTO corpactCDSLDetail
				(Record_Type,BO_ID,RTA_IntRef_No,PISIN,PCurr_Qty,PFrozen_Qty,PLockin_Qty,PLockin_Reason_Cd,
				PLockin_Reason,PLockin_Exp_Date,PDRCR_Flag,Benefit_Isin,BCurr_Qty,BFrozen_Qty,BLockin_Qty,BLockin_Reason_Cd,
				BLockin_Reason,BLockin_Exp_Date,BDRCR_Flag,CDT,MasterUniqNo,OfferPrice,ProcessedFlag,calcflag)
				SELECT 
				Record_Type,BO_ID,RTA_IntRef_No,PISIN,PCurr_Qty,PFrozen_Qty,PLockin_Qty,PLockin_Reason_Cd,
				PLockin_Reason,PLockin_Exp_Date,PDRCR_Flag,Benefit_Isin,BCurr_Qty,BFrozen_Qty,BLockin_Qty,BLockin_Reason_Cd,
				BLockin_Reason,BLockin_Exp_Date,BDRCR_Flag,CDT,MasterUniqNo,OfferPrice,ProcessedFlag,calcflag
				FROM corpactCDSLDetailTT
				UPDATE cca_muno01 set mmuno = mmuno+1
				IF OBJECT_ID ( 'c1temp1', 'U' ) IS NOT NULL  DROP TABLE c1temp1
				IF OBJECT_ID ( 'c2temp2', 'U' ) IS NOT NULL  DROP TABLE c2temp2
				IF OBJECT_ID ( 'CTEMP22', 'U' ) IS NOT NULL  DROP TABLE CTEMP22
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_sbrcdslcagenfile_finalA]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_sbrcdslcagenfile_finalA]
as
begin 
	IF OBJECT_ID ( 'BcdslbulkFile03d', 'U' ) IS NOT NULL  DROP TABLE BcdslbulkFile03d
	create table BcdslbulkFile03d (isin varchar(12),bo_id varchar(16),shares varchar(16),DRCRFLAG VARCHAR(1))
	truncate table BcdslbulkFile03d
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sbrcdslcagenfile_finalb]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_sbrcdslcagenfile_finalb]
as
begin 
	BULK INSERT BcdslbulkFile03d
		FROM 'D:\CAFILES\CDSL\RAWCSVFILES\totcrec.csv' 
		WITH 
		(  
			FORMAT = 'CSV',
			FIRSTROW = 2,
			DATAFILETYPE = 'char',
			FIELDTERMINATOR = ',',  
			ROWTERMINATOR = '\n',
			--ROWTERMINATOR = '0x0D0A',
			BATCHSIZE=5
		)
		delete from BcdslbulkFile03d where bo_id not like '1%'
		alter table BcdslbulkFile03d add ID int identity(1,1)
		alter table BcdslbulkFile03d add Record_Type varchar(2)
		alter table BcdslbulkFile03d add RTA_IntRef_No		varchar(16)
		alter table BcdslbulkFile03d add PISIN				varchar(12)
		alter table BcdslbulkFile03d add PCurr_Qty			varchar(16)
		alter table BcdslbulkFile03d add PFrozen_Qty		varchar(16)
		alter table BcdslbulkFile03d add PLockin_Qty		varchar(16)
		alter table BcdslbulkFile03d add PLockin_Reason_Cd	varchar(2)
		alter table BcdslbulkFile03d add PLockin_Reason		varchar(50)
		alter table BcdslbulkFile03d add PLockin_Exp_Date	datetime
		alter table BcdslbulkFile03d add PDRCR_Flag			varchar(1)
		alter table BcdslbulkFile03d add Benefit_Isin		varchar(12)
		alter table BcdslbulkFile03d add BCurr_Qty			varchar(16)
		alter table BcdslbulkFile03d add BFrozen_Qty		varchar(16)
		alter table BcdslbulkFile03d add BLockin_Qty		varchar(16)
		alter table BcdslbulkFile03d add BLockin_Reason_Cd	varchar(2)
		alter table BcdslbulkFile03d add BLockin_Reason		varchar(50)
		alter table BcdslbulkFile03d add BLockin_Exp_Date	datetime
		alter table BcdslbulkFile03d add BDRCR_Flag			varchar(1)
		alter table BcdslbulkFile03d add CDT				datetime
		alter table BcdslbulkFile03d add MasterUniqNo		int	
		alter table BcdslbulkFile03d add OfferPrice			varchar(16)
		alter table BcdslbulkFile03d add ProcessedFlag		varchar(1)
		alter table BcdslbulkFile03d add calcflag			varchar(1)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sbrcdslcagenfile_finalc]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_sbrcdslcagenfile_finalc] @mpisin varchar(12), @mbisin varchar(12),@MDFROM INT, @MDTO INT,@MDRCRFLAG CHAR(1)
WITH RECOMPILE
as 
begin
				SELECT * FROM CDSL_PARAM01
				IF OBJECT_ID ( 'CDSL_PARAM01', 'U' ) IS NOT NULL  DROP TABLE CDSL_PARAM01
				CREATE TABLE CDSL_PARAM01 (ID INT,PISIN VARCHAR(12),BISIN VARCHAR(12),DFROM INT, DTO INT, DRCRFLAG CHAR(1))
				INSERT INTO CDSL_PARAM01 (ID) (SELECT 1 )
				UPDATE CDSL_PARAM01 SET PISIN		= @MPISIN
				UPDATE CDSL_PARAM01 SET BISIN		= @MBISIN
				UPDATE CDSL_PARAM01 SET DFROM		= @MDFROM
				UPDATE CDSL_PARAM01 SET DTO			= @MDTO
				UPDATE CDSL_PARAM01 SET DRCRFLAG	= @MDRCRFLAG  

				IF OBJECT_ID ( 'Bcdsltotaltemp', 'U' ) IS NOT NULL  DROP TABLE Bcdsltotaltemp 
				select sum(convert(int,shares)) as bcq,count(*) as cdslrec1 into Bcdsltotaltemp from BcdslbulkFile03d
				alter table bcdsltotaltemp add cdslrec2 int
				update bcdsltotaltemp set cdslrec2= cdslrec1+1
				--select bcq,cdslrec1,cdslrec2 from Bcdsltotaltemp
				IF OBJECT_ID ( 'CCA_DUPCHK01', 'U' ) IS NOT NULL  DROP TABLE CCA_DUPCHK01
				SELECT bo_id,shares, COUNT(bo_id) as [DUPLICATES_TIMES] INTO CCA_DUPCHK01 FROM BcdslbulkFile03d GROUP BY bo_id,shares HAVING COUNT(bo_id) > 1
				--IF OBJECT_ID ( 'CDSLDISTNOS', 'U' ) IS NOT NULL  DROP TABLE CDSLDISTNOS
				--CREATE TABLE CDSLDISTNOS (DFROM INT, DTO INT)
				--INSERT INTO CDSLDISTNOS VALUES (1,1)
				UPDATE CDSLDISTNOS SET DFROM = @MDFROM 
				UPDATE CDSLDISTNOS SET DTO = @MDTO
				
		-- PAUSE
		SELECT * FROM CCA_DUPCHK01
		IF OBJECT_ID ( 'CCADUPCHKFILE', 'U' ) IS NOT NULL  DROP TABLE CCADUPCHKFILE
		SELECT COUNT(*) AS CNT INTO CCADUPCHKFILE FROM CCA_DUPCHK01
		declare @dupflag int
		set @dupflag = (select cnt from CCADUPCHKFILE)
		IF @dupflag > 0
			BEGIN
		  		PRINT 'DUPLICATES EXISTING IN THE FILE'
			END
		IF @dupflag = 0
			Begin
				PRINT 'DUPLICATES NOT EXISTING IN THE FILE'
			End
				
				--generate line Nos.
				IF OBJECT_ID ( 'CTEMP22', 'U' ) IS NOT NULL  DROP TABLE CTEMP22
					SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO CTEMP22 FROM BcdslbulkFile03d WHERE id < 99999
					UPDATE a SET a.RTA_IntRef_No = '' + RIGHT('0000'+CONVERT(VARCHAR,B.RowN),4)+ '            ' FROM BcdslbulkFile03d a JOIN ctemp22 b ON a.ID=b.ID
					--select * from BcdslbulkFile03d where plockin_exp_date is null
					--select * from BcdslbulkFile03d where blockin_exp_date is null
					
					DECLARE @MDRFLAG CHAR(1)
					SET @MDRFLAG = (SELECT DRCRFLAG FROM CDSL_PARAM01)
					if(@MDRFLAG = 'D')
						begin
							update bcdslbulkfile03d set pCurr_Qty				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,shares)),12)) +'.000'
							update bcdslbulkfile03d set BCurr_Qty				= '000000000000.000'
						End					 
					ELSE
						begin
							update bcdslbulkfile03d set BCurr_Qty				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,shares)),12)) +'.000'
							update bcdslbulkfile03d set PCurr_Qty				= '000000000000.000'
							
						End
					UPDATE BcdslbulkFile03d  set	
					Record_Type				='02',
					PISIN					= @mpisin,
					--PCurr_Qty				='000000000000.000',
					PFrozen_Qty				='000000000000.000',
					PLockin_Qty				='000000000000.000',
					PLockin_Reason_Cd		='00',
					PLockin_Reason			='                                                  ',
					
					--PLockin_Exp_Date		='00000000',
					PDRCR_Flag				='D',
					Benefit_Isin			=@mbisin,
					--BCurr_Qty				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,shares)),12)) +'.000',
					BFrozen_Qty				='000000000000.000',
					BLockin_Qty				='000000000000.000',
					BLockin_Reason_Cd		='00',
					BLockin_Reason			='                                                  ',

					--BLockin_Exp_Date		='00000000',
					BDRCR_Flag				='C',
					CDT						=getdate(),
					OfferPrice				='000000000000.000',
					ProcessedFlag			='Y',
					calcflag				='Y'
					UPDATE a SET a.MasterUniqNo = B.mmuno FROM BcdslbulkFile03d a JOIN cca_muno01 b ON b.ID=1
					declare @yourpisin varchar(12)
					declare @yourbisin varchar(12)
					set @yourpisin = @mpisin
					--(select top 1 PISIN from BcdslbulkFile03d)
					set @yourbisin = @mbisin 
					PRINT 'YOUR Parent ISIN IS :' + @yourpisin
					PRINT 'YOUR Benefit ISIN IS :' + @yourbisin
				
				--select * from BcdslbulkFile03d
					truncate table corpactCDSLDetailtt
					INSERT INTO corpactCDSLDetailtt  
					(
					Record_Type,BO_ID,RTA_IntRef_No,PISIN,PCurr_Qty,PFrozen_Qty,
					PLockin_Qty,PLockin_Reason_Cd,PLockin_Reason,PLockin_Exp_Date,
					PDRCR_Flag,Benefit_Isin,BCurr_Qty,BFrozen_Qty,BLockin_Qty,
					BLockin_Reason_Cd,BLockin_Reason,BLockin_Exp_Date,BDRCR_Flag,
					CDT,MasterUniqNo,OfferPrice,ProcessedFlag,calcflag
					) 
					SELECT
					Record_Type,BO_ID,RTA_IntRef_No,PISIN,PCurr_Qty,PFrozen_Qty,
					PLockin_Qty,PLockin_Reason_Cd,PLockin_Reason,PLockin_Exp_Date,
					PDRCR_Flag,Benefit_Isin,BCurr_Qty,BFrozen_Qty,BLockin_Qty,
					BLockin_Reason_Cd,BLockin_Reason,BLockin_Exp_Date,BDRCR_Flag,
					CDT,MasterUniqNo,OfferPrice,ProcessedFlag,calcflag
					FROM BcdslbulkFile03d
				--step 2
				IF OBJECT_ID ( 'bcdslbulkfile03a', 'U' ) IS NOT NULL  DROP TABLE bcdslbulkfile03a
				select * into bcdslbulkfile03a from corpactCDSLHeader 
				--select * from corpactcdslheader
				--select * from Bcdsltotaltemp  
				update Bcdsltotaltemp  set cdslrec2 = cdslrec1 + 1
				delete from Bcdslbulkfile03a where id <> 1
				UPDATE Bcdslbulkfile03a  set Record_Type			= '01'
				UPDATE a SET a.Total_Records = RIGHT('0000000000'  +CONVERT(VARCHAR,B.cdslrec2),10) FROM Bcdslbulkfile03a a JOIN Bcdsltotaltemp  b ON a.ID=1
				UPDATE a SET a.Tot_Curr_Qty  = RIGHT('000000000000'+CONVERT(VARCHAR,B.bcq),12)+ '.000' FROM Bcdslbulkfile03a a JOIN Bcdsltotaltemp  b ON a.ID=1
				UPDATE Bcdslbulkfile03a  set Tot_Freeze_Qty		= '000000000000.000'
				UPDATE Bcdslbulkfile03a  set Tot_Lockin_Qty		= '000000000000.000'
				UPDATE a SET a.Tot_Detail_Rec02 = RIGHT('0000000000'  +CONVERT(VARCHAR,B.cdslrec1),10) FROM Bcdslbulkfile03a a JOIN Bcdsltotaltemp  b ON a.ID=1
				UPDATE Bcdslbulkfile03a  set Tot_Detail_Rec03		= '0000000001'
				UPDATE Bcdslbulkfile03a  set CDT					= getdate()
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM Bcdslbulkfile03a a JOIN cca_muno01 b ON b.ID=1
				--UPDATE Bcdslbulkfile03a  set MasterUniqNo			= '9901'
				UPDATE Bcdslbulkfile03a  set ProcessedFlag		= 'Y'
				UPDATE Bcdslbulkfile03a  set inward_dt			= getdate()
				UPDATE Bcdslbulkfile03a  set calcflag				= 'Y'
				
				--select * into normalcaheaderrecordtt from NormalCAHeaderRecord
				truncate table corpactCDSLHeaderTT
				INSERT INTO corpactCDSLHeaderTT
				(
					Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag		
				) 
				SELECT
					Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag		
				FROM  Bcdslbulkfile03a   


				-- insert the Detail Dist Records in master
				IF OBJECT_ID ( 'bcdslbulkfile03b', 'U' ) IS NOT NULL  DROP TABLE bcdslbulkfile03b
				select * into bcdslbulkfile03b from corpactCDSLDetailDist
				--select * from bcdslbulkfile03b
				delete from Bcdslbulkfile03b where id <> 1
				--select * from bcdslbulkfile03b
				update A SET From_DistNo_CDSL = B.DFROM FROM bcdslbulkfile03b A JOIN CDSLDISTNOS B ON A.ID=1
				update A SET TO_DistNo_CDSL = B.DTO FROM bcdslbulkfile03b A JOIN CDSLDISTNOS B ON A.ID=1
				--SELECT * FROM BCDSLBULKFILE03B
				--select * from CDSLDISTNOS
				--select * from corpactCDSLDetailDist
				--select * from Bcdsltotaltemp  
				--select * from bcdslbulkfile03a
				--select * from bcdslbulkfile03b
				UPDATE Bcdslbulkfile03b  set Record_Type		= '03'
				update Bcdslbulkfile03b  set CA_ISIN 			= @Mpisin
				
				--UPDATE a SET a.from_distNo_CDSL				= B.tot_curr_qty FROM Bcdslbulkfile03b a JOIN Bcdslbulkfile03a b ON a.ID=1
				UPDATE a SET a.quantity  = B.tot_curr_qty FROM Bcdslbulkfile03b a JOIN Bcdslbulkfile03a b ON a.ID=1
				--UPDATE a SET a.quantity  = B.tot_curr_qty FROM Bcdslbulkfile03b a JOIN Bcdslbulkfile03a b ON a.ID=1
				
				update a set drcr_flag = b.drcrflag from bcdslbulkfile03b a join cdsl_param01 b on b.id = 1

				--UPDATE Bcdslbulkfile03b  set DRCR_FLAG			= 'C'
				UPDATE Bcdslbulkfile03b  set CDT				= getdate()
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM Bcdslbulkfile03a a JOIN cca_muno01 b ON b.ID=1
				UPDATE Bcdslbulkfile03b  set ProcessedFlag		= 'Y'
				UPDATE Bcdslbulkfile03b  set calcflag			= 'Y'

				--select * into normalcaheaderrecordtt from NormalCAHeaderRecord
				truncate table corpactCDSLHeaderTT
				INSERT INTO corpactCDSLHeaderTT
				(
					Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag		
				) 
				SELECT
					Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag		
				FROM  Bcdslbulkfile03a   

				-- insert the Detail Dist Records in master end

				--select * into normalcaheaderrecordtt from NormalCAHeaderRecord
				
				truncate table corpactCDSLDETAILDISTTT

				INSERT INTO corpactCDSLDETAILDISTTT
				(
				Record_Type,CA_Isin,From_DistNo_CDSL,To_DistNo_CDSL,Quantity,DRCR_Flag,CDT,MasterUniqNo,ProcessedFlag,calcflag
				) 
				SELECT
				Record_Type,CA_Isin,From_DistNo_CDSL,To_DistNo_CDSL,Quantity,DRCR_Flag,CDT,MasterUniqNo,ProcessedFlag,calcflag
				from Bcdslbulkfile03b   
				--select * from bcdslbulkfile03b


				--step 3
				IF OBJECT_ID ( 'c1temp1', 'U' ) IS NOT NULL  DROP TABLE c1temp1
				IF OBJECT_ID ( 'c2temp2', 'U' ) IS NOT NULL  DROP TABLE c2temp2
				IF OBJECT_ID ( 'c3temp3', 'U' ) IS NOT NULL  DROP TABLE c3temp3
				SET NOCOUNT ON      
				 (      
					SELECT '01'+                                                        
					  +total_records
					  +Tot_Curr_Qty
					  +Tot_Freeze_Qty
					  +Tot_Lockin_Qty
					  +Tot_Detail_Rec02
					  +Tot_Detail_Rec03
					  AS ctemp1 into c1temp1
					FROM corpactCDSLHeaderTT   
				  )      
			 (      
			 SELECT '02'+           
			  +BO_ID
			  +RTA_IntRef_No
			  +Pisin      
			  +PCurr_Qty  
			  +PFrozen_Qty      
			  +PLockin_Qty      
			  +PLockin_Reason_Cd
			  +space(50)+      
			  +'00000000'+      
			  --+REPLICATE(' ',8-len(PLockin_Exp_Date))+CONVERT(VARCHAR,PLockin_Exp_Date)      
			  +PDRCR_Flag      
			  +Benefit_Isin      
			  +BCurr_Qty   
			  +BFrozen_Qty      
			  +BLockin_Qty      
			  +BLockin_Reason_Cd
			  +space(50) +      
			  +'00000000'+      
			  --+REPLICATE(' ',8-len(BLockin_Exp_Date))+CONVERT(VARCHAR,BLockin_Exp_Date)      
			  ----+REPLICATE(' ',8-len(BLockin_Exp_Date))+CONVERT(VARCHAR,BLockin_Exp_Date)      
			  +BDRCR_Flag       
			  +offerprice
			  as ctemp1 into c2temp2
			  FROM corpactCDSLDetailtt
			  )      
			 (      
			 SELECT '03'+                                                        
			  +CA_Isin      
			  +From_DistNo_CDSL
			  +To_DistNo_CDSL
			  +Quantity
			  +DRCR_Flag  
			  +CHAR(13)
			  as ctemp1 into c3temp3
			  FROM corpactCDSLDetailDisttt       
			  )
			IF OBJECT_ID ( 'Bcdslst1', 'U' ) IS NOT NULL  DROP TABLE Bcdslst1
				create table Bcdslst1 ( ctemp1 varchar(1000))
				insert	 into Bcdslst1  select * from c1temp1
				insert	 into Bcdslst1  select * from c2temp2
				insert	 into Bcdslst1  select * from c3temp3
				select * from Bcdslst1
				DECLARE @cmd varchar(500),@bcdslfile varchar(100)
				SELECT @bcdslfile ='999999_'+FORMAT(GETDATE(),'mmss')+'.ipf'       
				SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.Bcdslst1" '+ 'queryout D:\CAFILES\CDSL\GENCSVFILES\'+ @bcdslfile + ' -c -UTF8 -T -Slocalhost'
				EXEC master..xp_cmdshell @cmd
				INSERT INTO corpactCDSLHeader 
				(Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag)
				SELECT Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag
				FROM corpactCDSLHeaderTT
				INSERT INTO corpactCDSLDetail
				(Record_Type,BO_ID,RTA_IntRef_No,PISIN,PCurr_Qty,PFrozen_Qty,PLockin_Qty,PLockin_Reason_Cd,
				PLockin_Reason,PLockin_Exp_Date,PDRCR_Flag,Benefit_Isin,BCurr_Qty,BFrozen_Qty,BLockin_Qty,BLockin_Reason_Cd,
				BLockin_Reason,BLockin_Exp_Date,BDRCR_Flag,CDT,MasterUniqNo,OfferPrice,ProcessedFlag,calcflag)
				SELECT 
				Record_Type,BO_ID,RTA_IntRef_No,PISIN,PCurr_Qty,PFrozen_Qty,PLockin_Qty,PLockin_Reason_Cd,
				PLockin_Reason,PLockin_Exp_Date,PDRCR_Flag,Benefit_Isin,BCurr_Qty,BFrozen_Qty,BLockin_Qty,BLockin_Reason_Cd,
				BLockin_Reason,BLockin_Exp_Date,BDRCR_Flag,CDT,MasterUniqNo,OfferPrice,ProcessedFlag,calcflag
				FROM corpactCDSLDetailTT


				INSERT INTO corpactCDSLDetailDist
				(Record_Type,CA_Isin,From_DistNo_CDSL,To_DistNo_CDSL,Quantity,DRCR_Flag,CDT,MasterUniqNo,ProcessedFlag,calcflag)
				SELECT 
				Record_Type,CA_Isin,From_DistNo_CDSL,To_DistNo_CDSL,Quantity,DRCR_Flag,CDT,MasterUniqNo,ProcessedFlag,calcflag
				FROM corpactCDSLDetailDistTT

				UPDATE cca_muno01 set mmuno = mmuno+1
				IF OBJECT_ID ( 'c1temp1', 'U' ) IS NOT NULL  DROP TABLE c1temp1
				IF OBJECT_ID ( 'c2temp2', 'U' ) IS NOT NULL  DROP TABLE c2temp2
				IF OBJECT_ID ( 'c3temp3', 'U' ) IS NOT NULL  DROP TABLE c3temp3
				IF OBJECT_ID ( 'CTEMP22', 'U' ) IS NOT NULL  DROP TABLE CTEMP22
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_sbrcdslcagenfile_finalstep1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_sbrcdslcagenfile_finalstep1]
WITH RECOMPILE
as 
begin
			--select * from aifbulkcdsl03d

				IF OBJECT_ID ( 'aifcdsltotaltemp', 'U' ) IS NOT NULL  DROP TABLE aifcdsltotaltemp 
				--select convert(int,shares) from aifbulkcdsl03d

				select sum(shares) as bcq,count(*) as cdslrec1 into aifcdsltotaltemp from aifbulkcdsl03d
				select bcq,cdslrec1 from aifcdsltotaltemp
				IF OBJECT_ID ( 'CCA_DUPCHK01', 'U' ) IS NOT NULL  DROP TABLE CCA_DUPCHK01
				SELECT bo_id,shares, COUNT(bo_id) as [DUPLICATES_TIMES] INTO CCA_DUPCHK01 FROM aifbulkcdsl03d GROUP BY bo_id,shares HAVING COUNT(bo_id) > 1
		-- PAUSE
		SELECT * FROM CCA_DUPCHK01
		IF OBJECT_ID ( 'CCADUPCHKFILE', 'U' ) IS NOT NULL  DROP TABLE CCADUPCHKFILE
		SELECT COUNT(*) AS CNT INTO CCADUPCHKFILE FROM CCA_DUPCHK01
		declare @dupflag int
		set @dupflag = (select cnt from CCADUPCHKFILE)
		IF @dupflag > 0
			BEGIN
		  		PRINT 'DUPLICATES EXISTING IN THE FILE'
			END
		IF @dupflag = 0
			Begin
				PRINT 'DUPLICATES NOT EXISTING IN THE FILE'
			End
				
				--generate line Nos.
				IF OBJECT_ID ( 'CTEMP22', 'U' ) IS NOT NULL  DROP TABLE CTEMP22
					SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO CTEMP22 FROM aifbulkcdsl03d WHERE id < 99999
					UPDATE a SET a.RTA_IntRef_No = '' + RIGHT('0000'+CONVERT(VARCHAR,B.RowN),4)+ '            ' FROM aifbulkcdsl03d a JOIN ctemp22 b ON a.ID=b.ID
					select * from aifbulkcdsl03d where plockin_exp_date is null
					select * from aifbulkcdsl03d where blockin_exp_date is null
					UPDATE aifbulkcdsl03d  set	
					Record_Type				='02',
					PISIN					= ISIN,
					PCurr_Qty				='000000000000.000',
					PFrozen_Qty				='000000000000.000',
					PLockin_Qty				='000000000000.000',
					PLockin_Reason_Cd		='00',
					PLockin_Reason			='                                                  ',
					
					--PLockin_Exp_Date		='00000000',
					PDRCR_Flag				='D',
					Benefit_Isin			=ISIN,
					BCurr_Qty				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,shares)),12)) +'.000',
					BFrozen_Qty				='000000000000.000',
					BLockin_Qty				='000000000000.000',
					BLockin_Reason_Cd		='00',
					BLockin_Reason			='                                                  ',

					--BLockin_Exp_Date		='00000000',
					BDRCR_Flag				='C',
					CDT						=getdate(),
					OfferPrice				='000000000000.000',
					ProcessedFlag			='Y',
					calcflag				='Y'
					UPDATE a SET a.MasterUniqNo = B.mmuno FROM aifbulkcdsl03d a JOIN cca_muno01 b ON b.ID=1
					declare @yourisin varchar(12)
					set @yourisin = (select top 1 PISIN from aifbulkcdsl03d)
					PRINT 'YOUR CURRENT ISIN IS :' + @yourisin
				
					truncate table corpactCDSLDetailtt
					INSERT INTO corpactCDSLDetailtt  
					(
					Record_Type,BO_ID,RTA_IntRef_No,PISIN,PCurr_Qty,PFrozen_Qty,
					PLockin_Qty,PLockin_Reason_Cd,PLockin_Reason,PLockin_Exp_Date,
					PDRCR_Flag,Benefit_Isin,BCurr_Qty,BFrozen_Qty,BLockin_Qty,
					BLockin_Reason_Cd,BLockin_Reason,BLockin_Exp_Date,BDRCR_Flag,
					CDT,MasterUniqNo,OfferPrice,ProcessedFlag,calcflag
					) 
					SELECT
					Record_Type,BO_ID,RTA_IntRef_No,PISIN,PCurr_Qty,PFrozen_Qty,
					PLockin_Qty,PLockin_Reason_Cd,PLockin_Reason,PLockin_Exp_Date,
					PDRCR_Flag,Benefit_Isin,BCurr_Qty,BFrozen_Qty,BLockin_Qty,
					BLockin_Reason_Cd,BLockin_Reason,BLockin_Exp_Date,BDRCR_Flag,
					CDT,MasterUniqNo,OfferPrice,ProcessedFlag,calcflag
					FROM aifbulkcdsl03d
				--step 2
				alter table aifcdsltotaltemp add id int identity(1,1)
				delete from aifbulkcdsl03a where id <> 1
				UPDATE aifbulkcdsl03a  set Record_Type			= '01'
				UPDATE a SET a.Total_Records = RIGHT('0000000000'  +CONVERT(VARCHAR,B.cdslrec1),10) FROM aifbulkcdsl03a a JOIN aifcdsltotaltemp  b ON a.ID=1
				UPDATE a SET a.Tot_Curr_Qty  = RIGHT('000000000000'+CONVERT(VARCHAR,B.bcq),12)+ '.000' FROM aifbulkcdsl03a a JOIN aifcdsltotaltemp  b ON a.ID=1
				UPDATE aifbulkcdsl03a  set Tot_Freeze_Qty		= '000000000000.000'
				UPDATE aifbulkcdsl03a  set Tot_Lockin_Qty		= '000000000000.000'
				UPDATE a SET a.Tot_Detail_Rec02 = RIGHT('0000000000'  +CONVERT(VARCHAR,B.cdslrec1),10) FROM aifbulkcdsl03a a JOIN aifcdsltotaltemp  b ON a.ID=1
				UPDATE aifbulkcdsl03a  set Tot_Detail_Rec03		= '0000000000'
				UPDATE aifbulkcdsl03a  set CDT					= getdate()
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM aifbulkcdsl03a a JOIN cca_muno01 b ON b.ID=1
				--UPDATE aifbulkcdsl03a  set MasterUniqNo			= '9901'
				UPDATE aifbulkcdsl03a  set ProcessedFlag		= 'Y'
				UPDATE aifbulkcdsl03a  set inward_dt			= getdate()
				UPDATE aifbulkcdsl03a  set calcflag				= 'Y'
				--select * into normalcaheaderrecordtt from NormalCAHeaderRecord
				truncate table corpactCDSLHeaderTT
				INSERT INTO corpactCDSLHeaderTT
				(
					Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag		
				) 
				SELECT
					Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag		
				FROM  aifbulkcdsl03a   
				--step 3
				IF OBJECT_ID ( 'c1temp1', 'U' ) IS NOT NULL  DROP TABLE c1temp1
				IF OBJECT_ID ( 'c2temp2', 'U' ) IS NOT NULL  DROP TABLE c2temp2
				SET NOCOUNT ON      
				 (      
					SELECT '01'+                                                        
					  +total_records
					  +Tot_Curr_Qty
					  +Tot_Freeze_Qty
					  +Tot_Lockin_Qty
					  +Tot_Detail_Rec02
					  +Tot_Detail_Rec03
					  AS ctemp1 into c1temp1
					FROM corpactCDSLHeaderTT   
				  )      
			 (      
			 SELECT '02'+           
			  +BO_ID
			  +RTA_IntRef_No
			  +Pisin      
			  +PCurr_Qty  
			  +PFrozen_Qty      
			  +PLockin_Qty      
			  +PLockin_Reason_Cd
			  +space(50)+      
			  +'00000000'+      
			  --+REPLICATE(' ',8-len(PLockin_Exp_Date))+CONVERT(VARCHAR,PLockin_Exp_Date)      
			  +PDRCR_Flag      
			  +Benefit_Isin      
			  +BCurr_Qty   
			  +BFrozen_Qty      
			  +BLockin_Qty      
			  +BLockin_Reason_Cd
			  +space(50) +      
			  +'00000000'+      
			  --+REPLICATE(' ',8-len(BLockin_Exp_Date))+CONVERT(VARCHAR,BLockin_Exp_Date)      
			  ----+REPLICATE(' ',8-len(BLockin_Exp_Date))+CONVERT(VARCHAR,BLockin_Exp_Date)      
			  +BDRCR_Flag       
			  +offerprice
			  --+char(13)
			  as ctemp1 into c2temp2
			  FROM corpactCDSLDetailtt
			  )      
			 --(      
			 --SELECT char(13)+'03'+                                                        
			 -- +CA_Isin      
			 -- +From_DistNo_CDSL
			 -- +To_DistNo_CDSL
			 -- +Quantity
			 -- +DRCR_Flag  
			 -- +CHAR(13)
			 -- as ctemp1 into #temp3      
			 -- FROM corpactCDSLDetailDist       
			 -- where ProcessedFlag ='N' and calcflag ='N')    
			IF OBJECT_ID ( 'aifcdst1', 'U' ) IS NOT NULL  DROP TABLE aifcdst1
				create table aifcdst1 ( ctemp1 varchar(1000))
				insert	 into aifcdst1  select * from c1temp1
				insert	 into aifcdst1  select * from c2temp2
				--insert	 into aifcdst1  select * from #temp3
				select * from aifcdst1
				DECLARE @cmd varchar(500),@aifcdslfile varchar(100)
				SELECT @aifcdslfile ='999999_'+FORMAT(GETDATE(),'mmss')+'.ipf'       
				SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.aifcdst1" '+ 'queryout D:\CAFILES\CDSL\GENCSVFILES\'+ @aifcdslfile + ' -c -UTF8 -T -Slocalhost'
				EXEC master..xp_cmdshell @cmd
				INSERT INTO corpactCDSLHeader 
				(Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag)
				SELECT Record_Type,Total_Records,Tot_Curr_Qty,Tot_Freeze_Qty,Tot_Lockin_Qty,Tot_Detail_Rec02,Tot_Detail_Rec03,CDT,MasterUniqNo,ProcessedFlag,inward_dt,calcflag
				FROM corpactCDSLHeaderTT
				INSERT INTO corpactCDSLDetail
				(Record_Type,BO_ID,RTA_IntRef_No,PISIN,PCurr_Qty,PFrozen_Qty,PLockin_Qty,PLockin_Reason_Cd,
				PLockin_Reason,PLockin_Exp_Date,PDRCR_Flag,Benefit_Isin,BCurr_Qty,BFrozen_Qty,BLockin_Qty,BLockin_Reason_Cd,
				BLockin_Reason,BLockin_Exp_Date,BDRCR_Flag,CDT,MasterUniqNo,OfferPrice,ProcessedFlag,calcflag)
				SELECT 
				Record_Type,BO_ID,RTA_IntRef_No,PISIN,PCurr_Qty,PFrozen_Qty,PLockin_Qty,PLockin_Reason_Cd,
				PLockin_Reason,PLockin_Exp_Date,PDRCR_Flag,Benefit_Isin,BCurr_Qty,BFrozen_Qty,BLockin_Qty,BLockin_Reason_Cd,
				BLockin_Reason,BLockin_Exp_Date,BDRCR_Flag,CDT,MasterUniqNo,OfferPrice,ProcessedFlag,calcflag
				FROM corpactCDSLDetailTT
				UPDATE cca_muno01 set mmuno = mmuno+1
				IF OBJECT_ID ( 'c1temp1', 'U' ) IS NOT NULL  DROP TABLE c1temp1
				IF OBJECT_ID ( 'c2temp2', 'U' ) IS NOT NULL  DROP TABLE c2temp2
				IF OBJECT_ID ( 'CTEMP22', 'U' ) IS NOT NULL  DROP TABLE CTEMP22
				truncate table aifbulkcdsl03ds
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_sbrnsdlcafractiongenfile_final]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_sbrnsdlcafractiongenfile_final] @misin varchar(12), @stampduty varchar(1),@catype int,@cadesc int 
WITH RECOMPILE
AS
BEGIN
	IF OBJECT_ID ( 'bnsdlbulkfileF01', 'U' ) IS NOT NULL  DROP TABLE bnsdlbulkfileF01
	create table bnsdlbulkfileF01 (slno varchar(5),isin varchar(12), dpid varchar(8),clid varchar(8),units varchar(18),name varchar(50),jh1 varchar(50),all_date varchar(10),paidval numeric(18,2))
	BULK INSERT bnsdlbulkfileF01 
		FROM 'D:\CAFILES\NSDL\RAWCSVFILES\totNfrec.csv' 
		WITH 
		(  
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',  
			ROWTERMINATOR = '\n',  
			BATCHSIZE=10
		)
--		select * from bnsdlbulkfileF01
		IF OBJECT_ID ( 'NCA_DUPCHKF01', 'U' ) IS NOT NULL  DROP TABLE NCA_DUPCHKF01
		SELECT clid,name,units, COUNT(clid) as [DUPLICATES_TIMES] INTO NCA_DUPCHKF01 FROM bnsdlbulkfileF01 GROUP BY clid,name,units HAVING COUNT(clid) > 1
		WAITFOR DELAY '00:00:05' 
		--PAUSE
		IF OBJECT_ID ( 'NCADUPCHKFILEF', 'U' ) IS NOT NULL  DROP TABLE NCADUPCHKFILEF
		SELECT COUNT(*) AS CNT INTO NCADUPCHKFILEF FROM NCA_DUPCHKF01
		declare @dupflag int
		set @dupflag = (select cnt from NCADUPCHKFILEF)
		IF @dupflag > 0
			BEGIN
		  		PRINT 'DUPLICATES EXISTING IN THE FILE'
				PRINT '****                       ****'
				PRINT '***** REMOVE THE DUPLICATES AND PROCESS AGAIN ******'
				WAITFOR DELAY '00:00:10' 
			END
		IF @dupflag = 0
			Begin
				PRINT '**** DUPLICATES NOT EXISTING IN THE FILE ****'
				PRINT '****                                     ****'
				PRINT '*****     PROCESSING IS IN PROGRESS    ******'
				WAITFOR DELAY '00:00:05' 
				alter table bnsdlbulkfileF01 add tissamt varchar(18),paidamt varchar(18),stampduty varchar(1),	catype int,cadesc int,id int identity(1,1)
			--SELECT * FROM bnsdlbulkfile01
			--SET @STAMPDUTY = ''
			select * from bnsdlbulkfileF01
			update bnsdlbulkfileF01 set stampduty = upper(@stampduty)
			update bnsdlbulkfileF01 set catype = (@catype)
			update bnsdlbulkfileF01 set cadesc = (@cadesc)
		--	select * from bnsdlbulkfileF02
		--	select * from bnsdlbulkfileF01
			IF OBJECT_ID ( 'bnsdlFtotisamt', 'U' ) IS NOT NULL  DROP TABLE bnsdlFtotisamt
			select (units * paidval) as tsamt, id into bnsdlFtotisamt from bnsdlbulkfileF01
			
			--select * from bnsdlFtotisamt 						
			--select 	floor(tsamt) from bnsdltotisamt
			--bnsdltotisamt
			--select right(tsamt,4) from bnsdltotisamt
			--select 	substring(trim(RIGHT('0000'+abs(tsamt),4)),1,3) from bnsdltotisamt
			--select 	TRIM(RIGHT('000000000000000'+floor(tsamt),15)) from bnsdltotisamt
			SELECT * FROM bnsdlFtotisamt
			IF OBJECT_ID ( 'ntempF2', 'U' ) IS NOT NULL  DROP TABLE ntempF2
			IF OBJECT_ID ( 'ntempF3', 'U' ) IS NOT NULL  DROP TABLE ntempF3
			SELECT SUM(TSAMT) AS TOTHAMT INTO NTEMPF2 FROM BNSDLFTOTISAMT
			SELECT RIGHT('0000000000000000'+CONVERT(VARCHAR,floor(TOTHAMT)),16)+substring(trim(RIGHT('0000'+abs(TOTHAMT),4)),1,2) AS TOTHISSAMT,1 AS ID INTO NTEMPF3 FROM NTEMPF2
			--SELECT id, RIGHT('000000000000000'+CONVERT(VARCHAR,floor(tsamt)),15)+substring(trim(RIGHT('0000'+abs(tsamt),4)),1,3) as bnsdlFispr into ntempF1 from bnsdlFtotisamt
			--SELECT * FROM NTEMPF3
			IF OBJECT_ID ( 'ntempF1', 'U' ) IS NOT NULL  DROP TABLE ntempF1
			SELECT id, RIGHT('0000000000000000'+CONVERT(VARCHAR,floor(tsamt)),16)+substring(trim(RIGHT('0000'+abs(tsamt),4)),1,2) as bnsdlFispr into ntempF1 from bnsdlFtotisamt
--			select * from ntempF1
			UPDATE a SET a.tissamt = b.bnsdlFispr from bnsdlbulkfilef01 a JOIN ntempF1 b ON b.id=A.ID
			UPDATE a SET a.paidamt = b.bnsdlFispr from bnsdlbulkfilef01 a JOIN ntempF1 b ON b.id=A.ID
	--		select * from bnsdlbulkfilef02
				IF OBJECT_ID ( 'bnsdlftotshr', 'U' ) IS NOT NULL  DROP TABLE bnsdlftotshr
				select sum(convert(int,units)) as totshr,count(*) as totfrec1 into bnsdlftotshr from bnsdlbulkfilef01
				PRINT '!!!!!!!!!!!!!!!!!!!!!HERE IS THE TOTAL RECORDS AND SHARES PLS CHECK!!!!!!!!!!!!!!!!!!!'
		--		SELECT * FROM bnsdlftotshr
				PRINT '!!!!!!!!!!!!!!!!!!!!!!!!!HERE IS THE TOTAL RECORDS AND SHARES PLS CHECK!!!!!!!!!!!!!!!!!!'
				WAITFOR DELAY '00:00:05' 
				--select * from bnsdlbulkfileF01
				--select * from bnsdlbulkfileF02
				truncate table bnsdlbulkfileF02
				INSERT INTO bnsdlbulkfileF02 (dp_id,client_id,Allotment_Quantity,Issue_Price,paidup_price)
				SELECT dpid,clid,trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,units)),15)) +'000',
								 paidval,
								 --trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000',
								 paidval
								 --trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000',
					from bnsdlbulkfileF01
					
					--ALTER table bnsdlbulkfilef02 add issued_amount varchar(18), paid_amount varchar(18)
				--generate line Nos.
				IF OBJECT_ID ( 'nftemp2', 'U' ) IS NOT NULL  DROP TABLE nftemp2
				SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO nftemp2 FROM bnsdlbulkfilef02 WHERE id < 99999
				UPDATE a SET a.Detail_Record_Line_No = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM bnsdlbulkfilef02 a JOIN nftemp2 b ON a.ID=b.ID
			--	select * from bnsdlbulkfile02a
			--	select * from bnsdlbulkfilef02
				
				--SELECT CONVERT(INT,SUBSTRING(ALLOTMENT_QUANTITY,1,15)) * CONVERt(NUMERIC,PAIDUP_PRICE)  FROM BNSDLBULKFILEF02 
				--select (units * paidval) as tsamt, '1' As id into bnsdltotisamt from bnsdlbulkfileF01
--				select * from bnsdltotisamt
	--			select * from bnsdlbulkfileF02a
				--UPDATE BNSDLBULKFILEF02 SET ISSUED_AMOUNT = RIGHT('000000000000000'+CONVERT(VARCHAR,floor(tsamt)),15)+substring(trim(RIGHT('0000'+abs(tsamt),4)),1,3) 
				
	--			UPDATE BNSDLBULKFILEF01 SET STAMPDUTY ='N'
				UPDATE a set a.paidup_amount = b.paidamt from bnsdlbulkfilef02 a join bnsdlbulkfilef01 b on a.id = b.id
				UPDATE a set a.Issued_Amount = b.tissamt from bnsdlbulkfilef02 a join bnsdlbulkfilef01 b on a.id = b.id
				update bnsdlbulkfileF02 set	Record_IDentification ='02',
											Client_Account_Category='00',
											Lockin_Reason_Code='00',
											Lockin_Release_Date='1900-01-01 00:00:00.000',
											filler ='',
											ProcessedFlag='N',
											FractionFlag='N',
											calcflag='Y'
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM bnsdlbulkfilef02 a JOIN ncaf_muno01 b ON b.ID=1
--				SELECT * FROM BNSDLBULKFILEF02A
				SELECT * FROM bnsdlbulkfileF01
				UPDATE a SET a.Issue_Price		= '000000000000000000'  FROM bnsdlbulkfilef02 a JOIN bnsdlbulkfileF01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Issued_Amount	= '000000000000000000'  FROM bnsdlbulkfilef02 a JOIN bnsdlbulkfileF01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Paidup_Price		= '000000000000000000'  FROM bnsdlbulkfilef02 a JOIN bnsdlbulkfileF01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Paidup_Amount	= '000000000000000000'  FROM bnsdlbulkfilef02 a JOIN bnsdlbulkfileF01 b ON b.ID=1 and b.stampduty ='N'
				delete from bnsdlbulkfileF02 where dp_id like '1%'
				IF OBJECT_ID ( 'NORMALCADETAILRECORDTT', 'U' ) IS NOT NULL  DROP TABLE NORMALCADETAILRECORDTT
					SELECT * INTO NORMALCADETAILRECORDTT FROM NormalCADetailRecord
					truncate table normalcadetailrecordtt
					INSERT INTO NormalCADetailRecordTT  (Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
					Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag) 
					SELECT
					Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
					Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag 
					FROM bnsdlbulkfilef02
				--STEP2
		--		select * from normalcadetailrecordtt
				--select * from bnsdlbulkfilef02a
				delete from bnsdlbulkfileF02a where id <> 1
				update a set a.Stamp_Duty_Payable				=  b.stampduty 	from bnsdlbulkfileF02a a 	join bnsdlbulkfileF01 b 	on a.id = 1
				update a set a.ca_type							=  trim(RIGHT('0000'+CONVERT(VARCHAR,convert(int,b.catype)),4))   	from bnsdlbulkfilef02a a 	join bnsdlbulkfilef01 b 	on a.id = 1
				update a set a.Allocation_Allotment_Description	=  trim(RIGHT('0000'+CONVERT(VARCHAR,convert(int,b.cadesc)),4))   	from bnsdlbulkfilef02a a 	join bnsdlbulkfilef01 b 	on a.id = 1
				update a set a.Allotment_Date					=  substring(convert(varchar,b.all_date),7,4) + substring(convert(varchar,b.all_date),4,2)+substring(convert(varchar,b.all_date),1,2)  from bnsdlbulkfilef02a a 	join bnsdlbulkfilef01 b 	on a.id = 1				
				--select substring(convert(varchar,all_date),7,4) + substring(convert(varchar,all_date),4,2)+substring(convert(varchar,all_date),1,2) from bnsdlbulkfilef01
				
				declare @stampdutytemp varchar(1)
				set @stampdutytemp = (select Stamp_Duty_Payable from bnsdlbulkfilef02a where id = 1)
				IF @stampdutytemp ='N' 
				  Begin
					update bnsdlbulkfilef02a  set Total_Issued_Amount = '000000000000000000'  
					update bnsdlbulkfilef02a  set Total_Paidup_Amount = '000000000000000000' 
					update bnsdlbulkfilef02a set Basis_calculation_Stamp_Duty			= '00'
					update bnsdlbulkfilef02a set EBP_Name								= '00'
				  END
				IF @stampdutytemp ='Y' 
				  Begin
					--select * from bnsdlbulkfilef02a
					--select * from bnsdlbulkfilef02A
					--select * from bnsdlbulkfilef02A
					--update a set a.issue_price = RIGHT('000000000000'+CONVERT(VARCHAR,floor(b.paidval)),12) + SUBSTRING(STR(b.paidval,16,2),CHARINDEX('.',STR(b.paidval,16,2))+1,LEN(b.paidval))+'0000' from bnsdlbulkfilef02 a join bnsdlbulkfilef01 b	on a.id = b.id
					update a set a.paidup_price = RIGHT('000000000000'+CONVERT(VARCHAR,floor(b.paidval)),12) + SUBSTRING(STR(b.paidval,16,2),CHARINDEX('.',STR(b.paidval,16,2))+1,LEN(b.paidval))+'0000' from bnsdlbulkfilef02 a join bnsdlbulkfilef01 b on a.id = b.id
					--select (units * paidval) as tsamt, '1' As id into bnsdltotisamt from bnsdlbulkfileF01
					--select * from bnsdltotisamt 						
					
					--select (units * paidval) as tsamt, '1' As id into bnsdltotisamt from bnsdlbulkfileF01
					--RIGHT('000000000000000'+CONVERT(VARCHAR,floor(tsamt)),15)+substring(trim(RIGHT('0000'+abs(tsamt),4)),1,3)					
					--update a set a.Total_Issued_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from bnsdlbulkfilef02a a 	join bnsdlftotshr b 	on a.id = 1
					--update a set a.Total_Paidup_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from bnsdlbulkfilef02a a 	join bnsdlftotshr b 	on a.id = 1
					--SELECT * FROM BNSDLBULKFILEF02A
				--SBR
				 update a set a.Total_Issued_Amount = b.TOTHISSAMT from bnsdlbulkfileF02a a join NTEMPF3 b 	on B.id = 1
				 update a set a.Total_Paidup_Amount = b.TOTHISSAMT from bnsdlbulkfileF02a a join NTEMPF3 b 	on B.id = 1
				--SBR

					--UPDATE a set a.paidup_amount = b.paidamt from bnsdlbulkfilef02 a join bnsdlbulkfilef01 b on a.id = b.id
					--UPDATE a set a.Issued_Amount = b.tissamt from bnsdlbulkfilef02 a join bnsdlbulkfilef01 b on a.id = b.id
					update bnsdlbulkfilef02a set Basis_calculation_Stamp_Duty			= '01'
					update bnsdlbulkfilef02a set EBP_Name								= '00'
				  END
				update bnsdlbulkfile02a set Record_IDentification					= '01'
				update bnsdlbulkfile02a set File_IDentification					= 'SHRI001'
				update bnsdlbulkfile02a set RTA_Internal_Reference_No			= '1         '
				update bnsdlbulkfile02a set Debit_Credit_Indicator				= 'C'
				update a set a.ISIN = b.isin from bnsdlbulkfileF02a a 	join bnsdlbulkfileF01 b 	on a.id = 1
				update bnsdlbulkfile02a set Execution_Date						= format(getdate()+1,'yyyyMMdd')
				update a set a.Total_Allotted_Quantity_Free_Lockin				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr)),15)) +'000'  	from bnsdlbulkfileF02a a 	join bnsdlFtotshr b 	on a.id = 1
				update a set a.Total_No_detail_records							= trim(RIGHT('0000000'+CONVERT(VARCHAR,convert(int,b.totFrec1)),7)) 	from bnsdlbulkfileF02a a join bnsdlFtotshr b 	on a.id = 1
				update bnsdlbulkfileF02a set Total_Allotted_Quantity_Lockin		= '000000000000000000' 
			--	select * from bnsdlbulkfile02A
				--SBR
				--UPDATE a set a.paidup_amount = b.paidamt from bnsdlbulkfilef02 a join bnsdlbulkfilef01 b on a.id = b.id
				--UPDATE a set a.Issued_Amount = b.tissamt from bnsdlbulkfilef02 a join bnsdlbulkfilef01 b on a.id = b.id
				update bnsdlbulkfileF02a set Funds_collected_through				= '  '
				update bnsdlbulkfileF02a set Filler								= '  '
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM bnsdlbulkfileF02a a JOIN ncaF_muno01 b ON b.ID=1
				update bnsdlbulkfileF02a set Processflag							= 'N'
				update bnsdlbulkfileF02a set FractionFlag							= 'N'
				update bnsdlbulkfileF02a set calcflag								= 'Y'
			
				IF OBJECT_ID ( 'normalcaheaderrecordFtt', 'U' ) IS NOT NULL  DROP TABLE normalcaheaderrecordFtt
					select * into normalcaheaderrecordftt from NormalCAHeaderRecord
					truncate table normalcaheaderrecordFtt
					SELECT * FROM NormalCAHeaderRecordfTT 
					INSERT INTO NormalCAHeaderRecordfTT 
					(
					Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
					CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
					Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
					Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
					) 
					SELECT
					Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
					CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
					Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
					Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
					FROM  bnsdlbulkfileF02a
				--step3
				--SBR
				 --update a set a.Total_Issued_Amount = b.TOTHISSAMT from bnsdlbulkfileF02a a join NTEMPF3 b 	on B.id = 1
				 --update a set a.Total_Paidup_Amount = b.TOTHISSAMT from bnsdlbulkfileF02a a join NTEMPF3 b 	on B.id = 1
				--SBR
			--select * from bnsdlbulkfileF02a
			UPDATE bnsdlbulkfileF02a SET Execution_Date = getdate()+1
			IF OBJECT_ID ( 'bnsdlFtemp1', 'U' ) IS NOT NULL  DROP TABLE bnsdlFtemp1     
			--SELECT * FROM bnsdlbulkfileF02A
			--UPDATE BNSDLBULKFILEF02A SET RTA_Internal_Reference_No = '1'
			SELECT '01'
				+'SHRI001'
				+CONVERT(VARCHAR(16),TRIM(RTA_Internal_Reference_No))+REPLICATE(' ',16-LEN(TRIM(RTA_Internal_Reference_No)))      
				+debit_Credit_indicator
				+REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)      
				+CA_Type
				+REPLICATE(' ',8-len(CONVERT(varchar,Allotment_Date,112)))+CONVERT(varchar,Allotment_Date,112)      
				+REPLICATE('0',4-LEN(allocation_allotment_description))+CONVERT(VARCHAR,allocation_allotment_description)      
				+REPLICATE(' ',8-len(CONVERT(varchar,Execution_Date,112)))+CONVERT(varchar,Execution_Date,112)      
				+Total_Allotted_Quantity_Free_Lockin
				+Total_Allotted_Quantity_Lockin
				+Total_No_detail_records
				+Total_Issued_Amount
				+Total_Paidup_Amount
				+stamp_duty_Payable
				+basis_calculation_stamp_duty
				+ebp_name
				+funds_collected_through
				+'  '
				as ftemp1 into bnsdlFtemp1     
				FROM bnsdlbulkfileF02a
				IF OBJECT_ID ( 'bnsdlFtemp12', 'U' ) IS NOT NULL  DROP TABLE bnsdlFtemp12
					create table bnsdlFtemp12 (ftemp1 varchar(1000))
					INSERT INTO bnsdlFtemp12  SELECT * from bnsdlFtemp1
					DECLARE @cmd varchar(500),@filename1 varchar(100)
					SELECT @filename1 ='NSDFF01HD.TXT'       
					SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.bnsdlFtemp12" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd
				--step 4
				IF OBJECT_ID ( 'bnsdlFtmp11', 'U' ) IS NOT NULL  DROP TABLE bnsdlFtmp11
					SELECT '02'+                                                        
					+Detail_Record_Line_No
					+DP_ID
					+CLIENT_ID
					+REPLICATE('0',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
					+Allotment_Quantity
					+REPLICATE('0',2-len(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
					+'        '      
					+paidup_price
					+Issued_Amount
					+Paidup_Price
					+Paidup_Amount
					+'            '    
					as ftemp1 into bnsdlFtmp11 
					FROM bnsdlbulkfileF02
					
					--update a set a.issue_price = RIGHT('000000000000'+CONVERT(VARCHAR,floor(b.paidval)),12) + SUBSTRING(STR(b.paidval,16,2),CHARINDEX('.',STR(b.paidval,16,2))+1,LEN(b.paidval))+'0000' from bnsdlbulkfilef02 a join bnsdlbulkfilef01 b	on a.id = b.id
					--update a set a.paidup_price = RIGHT('000000000000'+CONVERT(VARCHAR,floor(b.paidval)),12) + SUBSTRING(STR(b.paidval,16,2),CHARINDEX('.',STR(b.paidval,16,2))+1,LEN(b.paidval))+'0000' from bnsdlbulkfilef02 a join bnsdlbulkfilef01 b on a.id = b.id

					
					--select (floor(paidval)) as pres,SUBSTRING(STR(paidval,16,2),CHARINDEX('.',STR(paidval,16,2))+1,LEN(paidval)) AS scal FROM bnsdlbulkfilef01
					--select 	RIGHT('000000000000'+CONVERT(VARCHAR,floor(paidval)),12) +
					--SUBSTRING(STR(paidval,16,2),CHARINDEX('.',STR(paidval,16,2))+1,LEN(paidval))+'0000' AS scal FROM bnsdlbulkfilef01
					
					IF OBJECT_ID ( 'bnsdlFtmp2', 'U' ) IS NOT NULL  DROP TABLE bnsdlFtmp2
					create table bnsdlFtmp2 (ftemp1 varchar(1000))
					INSERT INTO bnsdlFtmp2  SELECT * from bnsdlFtmp11
					DECLARE @cmd1 varchar(500),@filename2 varchar(100)
					SELECT @filename2 ='NSDFF02DT.TXT'       
					SET @cmd1 = 'bcp "SELECT * FROM vccipl.dbo.bnsdlFtmp2" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename2 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd1
				--step 5
				IF OBJECT_ID ( 'NSDFFIN1', 'U' ) IS NOT NULL  DROP TABLE NSDFFIN1
					create table NSDFFIN1 (FTEMP1 varchar(1000))
					INSERT INTO NSDFFIN1 SELECT * from bnsdlFtemp1
					INSERT INTO NSDFFIN1 SELECT * from bnsdlFtmp11
					DECLARE @cmd2 varchar(500), @filename3 varchar(100)
					SELECT @filename3 ='IN200537_NCA_'+FORMAT(GETDATE(),'yyyyMMdd')+'_'+FORMAT(GETDATE(),'HHmmss')+'.txt'       
					SET @cmd2 = 'bcp "SELECT * FROM vccipl.dbo.NSDFFIN1" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename3 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd2

					INSERT INTO normalcaheaderrecord
					(Record_IDentification,File_IDentification,RTA_Internal_Reference_No,Debit_Credit_Indicator,ISIN,CA_Type,Allotment_Date,Allocation_Allotment_Description,
					Execution_Date,Total_Allotted_Quantity_Free_Lockin,Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,
					Stamp_Duty_Payable,Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,opfv,opfvvalue,StampDutyPaid,Processflag,
					Issue_pr,Paidup_pr,Stmpparam,typeofca,company_name,Inward_Date,aadesc,FractionFlag,Paidup_prFract,calcflag)
					select 
					Record_IDentification,File_IDentification,RTA_Internal_Reference_No,Debit_Credit_Indicator,ISIN,CA_Type,Allotment_Date,Allocation_Allotment_Description,
					Execution_Date,Total_Allotted_Quantity_Free_Lockin,Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,
					Stamp_Duty_Payable,Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,opfv,opfvvalue,StampDutyPaid,Processflag,
					Issue_pr,Paidup_pr,Stmpparam,typeofca,company_name,Inward_Date,aadesc,FractionFlag,Paidup_prFract,calcflag from normalcaheaderrecordFtt

					IF OBJECT_ID ( 'normalcadetailrecordFtt', 'U' ) IS NOT NULL  DROP TABLE normalcadetailrecordFtt
					select * into normalcadetailrecordFtt from NORMALCADETAILRECORDTT
					TRUNCATE TABLE normalcadetailrecordFtt
			

					INSERT INTO normalcadetailrecord
					(Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,Lockin_Reason_Code,
					Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag)
					select 
					Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,Lockin_Reason_Code,
					Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag from normalcadetailrecordFtt
				EXEC xp_cmdshell 'del D:\CAFILES\NSDL\GENCSVFILES\NSDFF01HD.TXT'
				EXEC xp_cmdshell 'del D:\CAFILES\NSDL\GENCSVFILES\NSDFF02DT.TXT'
				update nca_muno01 set mmuno = mmuno+1
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_sbrnsdlcagenfile_final]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_sbrnsdlcagenfile_final] @stampduty varchar(1),@catype int,@cadesc int 
WITH RECOMPILE
AS
BEGIN
	IF OBJECT_ID ( 'bnsdlbulkfile01', 'U' ) IS NOT NULL  DROP TABLE bnsdlbulkfile01
	create table bnsdlbulkfile01 (slno varchar(5),isin varchar(12), dpid varchar(8),clid varchar(8),units varchar(18),name varchar(50),jh1 varchar(50),all_date varchar(10),paidval varchar(18))
	--select * from bnsdlbulkfile01
	BULK INSERT bnsdlbulkfile01 
		FROM 'D:\CAFILES\NSDL\RAWCSVFILES\totNrec.csv' 
		WITH 
		(  
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',  
			ROWTERMINATOR = '\n',  
			BATCHSIZE=10
		)
		--SELECT * FROM BNSDLBULKFILE01
		IF OBJECT_ID ( 'NCA_DUPCHK01', 'U' ) IS NOT NULL  DROP TABLE NCA_DUPCHK01
		SELECT clid,name,units, COUNT(clid) as [DUPLICATES_TIMES] INTO NCA_DUPCHK01 FROM bnsdlbulkfile01 GROUP BY clid,name,units HAVING COUNT(clid) > 1
		-- PAUSE
		IF OBJECT_ID ( 'NCADUPCHKFILE', 'U' ) IS NOT NULL  DROP TABLE NCADUPCHKFILE
		SELECT COUNT(*) AS CNT INTO NCADUPCHKFILE FROM NCA_DUPCHK01
		declare @dupflag int
		set @dupflag = (select cnt from NCADUPCHKFILE)
		IF @dupflag > 0
			BEGIN
		  		PRINT 'DUPLICATES EXISTING IN THE FILE'
				PRINT '***                         ***'
				PRINT '****** CLEAR THE DUPLICATES AND PROCESS AGAIN *******'
				WAITFOR DELAY '00:00:10' 
			END
		IF @dupflag = 0
			Begin
				PRINT 'DUPLICATES NOT EXISTING IN THE FILE'
				PRINT '****                           ****'
				PRINT 'PROCESSING OF YOUR FILE PLEASE WAIT!!!!!'
			WAITFOR DELAY '00:00:05' 
			alter table bnsdlbulkfile01 add tissamt varchar(18),paidamt varchar(18),stampduty varchar(1),catype int,cadesc int,id int identity(1,1)
			--SELECT * FROM bnsdlbulkfile01
			--SET @STAMPDUTY = ''
			update bnsdlbulkfile01 set stampduty = upper(@stampduty)
			update bnsdlbulkfile01 set catype = (@catype)
			update bnsdlbulkfile01 set cadesc = (@cadesc)
			DELETE FROM bnsdlbulkfile01 WHERE ISIN IS NULL
			IF OBJECT_ID ( 'bnsdltotshr', 'U' ) IS NOT NULL  DROP TABLE bnsdltotshr
				select sum(convert(int,units)) as totshr,count(*) as totrec1 into bnsdltotshr from bnsdlbulkfile01
				PRINT '!!!!!!!!!!!!!!!!!!!!!HERE IS THE TOTAL RECORDS AND SHARES PLS CHECK!!!!!!!!!!!!!!!!!!!'
				SELECT * FROM bnsdltotshr
				PRINT '!!!!!!!!!!!!!!!!!!!!!!!!!HERE IS THE TOTAL RECORDS AND SHARES PLS CHECK!!!!!!!!!!!!!!!!!!'
				WAITFOR DELAY '00:00:05' 
				--select * from bnsdltotshr
				--select * from bnsdlbulkfile02
				truncate table bnsdlbulkfile02
				INSERT INTO bnsdlbulkfile02 (dp_id,client_id,Allotment_Quantity,Issue_Price,Issued_Amount,paidup_price,paidup_amount)
				SELECT	dpid,
						clid,
						trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,units)),15)) +'000',
						trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000',
						tissamt,
						trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000',
						paidamt
				from bnsdlbulkfile01

				--update a set a.Total_Issued_Amount	= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*b.paidval)),15)) +'000'  	from bnsdlbulkfilef02a a 	join bnsdltotshr b 	on a.id = 1
				--update a set a.Total_Paidup_Amount	= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*b.paidval)),15)) +'000'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
					

					--000000016900000000
					--000000016900000000
					--123456789012345612
					--000000000000169000
					--123456789012345123
					--000001000000000000
					--123456789012123456
					--generate line Nos.
				select * from ntemp2
				IF OBJECT_ID ( 'ntemp2', 'U' ) IS NOT NULL  DROP TABLE ntemp2
				SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO ntemp2 FROM bnsdlbulkfile02 WHERE id < 99999
				UPDATE a SET a.Detail_Record_Line_No = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM bnsdlbulkfile02 a JOIN ntemp2 b ON a.ID=b.ID
				--select  * from bnsdlbulkfile02
				update bnsdlbulkfile02 set	Record_IDentification ='02',
											Client_Account_Category='00',
											Lockin_Reason_Code='00',
											Lockin_Release_Date='1900-01-01 00:00:00.000',
											--Issued_Amount = tissamt, 
											--Paidup_Amount = tissamt,
											--filler ='',
											ProcessedFlag='N',
											FractionFlag='N',
											calcflag='Y'
				select * from bnsdlbulkfile01

				UPDATE a set a.paidup_amount = b.paidamt from bnsdlbulkfile02 a join bnsdlbulkfile01 b on a.id = b.id
				UPDATE a set a.Issued_Amount = b.tissamt from bnsdlbulkfile02 a join bnsdlbulkfile01 b on a.id = b.id

				
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM bnsdlbulkfile02 a JOIN nca_muno01 b ON b.ID=1
				--select * from bnsdlbulkfile02a
				--UPDATE a SET a.Issue_Price		= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				--UPDATE a SET a.Issued_Amount	= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				--UPDATE a SET a.Paidup_Price		= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				--UPDATE a SET a.Paidup_Amount	= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Issue_Price		= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Issued_Amount	= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Paidup_Price		= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Paidup_Amount	= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				

				--delete from bnsdlbulkfile02 where dp_id like '1%'
				--select * from bnsdlbulkfile02a
				delete from bnsdlbulkfile02a where id <> 1
				update a set a.Stamp_Duty_Payable				=  b.stampduty 	from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update a set a.ca_type							=  trim(RIGHT('0000'+CONVERT(VARCHAR,convert(int,b.catype)),4))   	from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update a set a.Allocation_Allotment_Description	=  trim(RIGHT('0000'+CONVERT(VARCHAR,convert(int,b.cadesc)),4))   	from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update a set a.Allotment_Date					=  substring(convert(varchar,b.all_date),7,4) + substring(convert(varchar,b.all_date),4,2)+substring(convert(varchar,b.all_date),1,2)  from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1				
				select substring(convert(varchar,all_date),7,4) + substring(convert(varchar,all_date),4,2)+substring(convert(varchar,all_date),1,2) from bnsdlbulkfile01
				declare @stampdutytemp varchar(1)
				set @stampdutytemp = (select Stamp_Duty_Payable from bnsdlbulkfile02a where id = 1)
				IF @stampdutytemp ='N' 
				select * from bnsdlbulkfile02a
				  Begin
					update bnsdlbulkfile02a  set Total_Issued_Amount = '000000000000000000'  
					update bnsdlbulkfile02a  set Total_Paidup_Amount = '000000000000000000' 
					update bnsdlbulkfile02a set Basis_calculation_Stamp_Duty			= '00'
					update bnsdlbulkfile02a set EBP_Name								= '00'
				  END
				IF @stampdutytemp ='Y' 
				  Begin
					----new lines from fraction file
					--select * from sysobjects where type ='u' and name like 'nt%' order by name desc
					--SELECT * FROM bnsdltotisamt
					--select * from ntempx2
					IF OBJECT_ID ( 'ntempx2', 'U' ) IS NOT NULL  DROP TABLE ntempx2
					IF OBJECT_ID ( 'ntempx3', 'U' ) IS NOT NULL  DROP TABLE ntempx3
					SELECT SUM(TSAMT) AS TOTHAMT INTO NTEMPx2 FROM BNSDLTOTISAMT
					SELECT RIGHT('0000000000000000'+CONVERT(VARCHAR,floor(TOTHAMT)),16)+substring(trim(RIGHT('0000'+abs(TOTHAMT),4)),1,2) AS TOTHISSAMT,1 AS ID 
					INTO NTEMPx3 FROM NTEMPx2
					--select * from ntempx3
					--select * from bnsdlbulkfile02a
					--UPDATE a SET a.Issue_Price		= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN NTEMPx3 b ON b.ID=1 
					--UPDATE a SET a.Paidup_Price		= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 
					UPDATE a SET a.Total_Issued_Amount	= b.tothissamt  FROM bnsdlbulkfile02a a JOIN ntempx3 b ON b.ID=1 
					UPDATE a SET a.Total_Paidup_Amount	= b.tothissamt  FROM bnsdlbulkfile02a a JOIN ntempx3 b ON b.ID=1 
					--UPDATE a SET a.Issue_Price		= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN NTEMPx3 b ON b.ID=1 
					--UPDATE a SET a.Paidup_Price		= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 
					


					----new lines from fraction file			
					--update bnsdlbulkfile01 set tissamt = trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,units)*paidval),16)) +'00'  
					--update bnsdlbulkfile01 set paidamt = trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,units)*paidval),16)) +'00'  
				  --select * from bnsdlbulkfile02a
					--update a set a.Total_Issued_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*paidval)),16)) +'00'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
					--update a set a.Total_Paidup_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*paidval)),16)) +'00'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
					update bnsdlbulkfile02a set Basis_calculation_Stamp_Duty			= '01'
					update bnsdlbulkfile02a set EBP_Name								= '00'
				  END
				  IF OBJECT_ID ( 'NORMALCADETAILRECORDTT', 'U' ) IS NOT NULL  DROP TABLE NORMALCADETAILRECORDTT
					SELECT * INTO NORMALCADETAILRECORDTT FROM NormalCADetailRecord
					truncate table normalcadetailrecordtt
					INSERT INTO NormalCADetailRecordTT  (Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
					Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag) 
					SELECT
					Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
					Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag 
					FROM bnsdlbulkfile02
					--select * from bnsdlbulkfile02
				--STEP2
				



				update bnsdlbulkfile02a set Record_IDentification					= '01'
				update bnsdlbulkfile02a set File_IDentification					= 'SHRI001'
				update bnsdlbulkfile02a set RTA_Internal_Reference_No				= '1         '
				update bnsdlbulkfile02a set Debit_Credit_Indicator				= 'C'
				update a set a.ISIN = b.isin from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update bnsdlbulkfile02a set Execution_Date						= format(getdate()+1,'yyyyMMdd')
				update a set a.Total_Allotted_Quantity_Free_Lockin				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr)),15)) +'000'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
				update a set a.Total_No_detail_records							= trim(RIGHT('0000000'+CONVERT(VARCHAR,convert(int,b.totrec1)),7)) 	from bnsdlbulkfile02a a join bnsdltotshr b 	on a.id = 1
				update bnsdlbulkfile02a set Total_Allotted_Quantity_Lockin		= '000000000000000000' 
				--SELECT * FROM bnsdlbulkfile02a
				update bnsdlbulkfile02a set Funds_collected_through				= '  '
				update bnsdlbulkfile02a set Filler								= '  '
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM bnsdlbulkfile02a a JOIN nca_muno01 b ON b.ID=1
				update bnsdlbulkfile02a set Processflag							= 'N'
				update bnsdlbulkfile02a set FractionFlag							= 'N'
				update bnsdlbulkfile02a set calcflag								= 'Y'
				IF OBJECT_ID ( 'normalcaheaderrecordtt', 'U' ) IS NOT NULL  DROP TABLE normalcaheaderrecordtt
					select * into normalcaheaderrecordtt from NormalCAHeaderRecord
					truncate table normalcaheaderrecordtt
					INSERT INTO NormalCAHeaderRecordTT 
					(
					Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
					CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
					Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
					Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
					) 
					SELECT
					Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
					CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
					Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
					Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
					FROM  bnsdlbulkfile02a
				--step3
			IF OBJECT_ID ( 'bnsdltemp1', 'U' ) IS NOT NULL  DROP TABLE bnsdltemp1     
			SELECT '01'
				+'SHRI001'
				+CONVERT(VARCHAR(16),TRIM(RTA_Internal_Reference_No))+REPLICATE(' ',16-LEN(TRIM(RTA_Internal_Reference_No)))      
				+debit_Credit_indicator
				+REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)      
				+CA_Type
				+REPLICATE(' ',8-len(CONVERT(varchar,Allotment_Date,112)))+CONVERT(varchar,Allotment_Date,112)      
				+REPLICATE('0',4-LEN(allocation_allotment_description))+CONVERT(VARCHAR,allocation_allotment_description)      
				+REPLICATE(' ',8-len(CONVERT(varchar,Execution_Date,112)))+CONVERT(varchar,Execution_Date,112)      
				+Total_Allotted_Quantity_Free_Lockin
				+Total_Allotted_Quantity_Lockin
				+Total_No_detail_records
				+Total_Issued_Amount
				+Total_Paidup_Amount
				+stamp_duty_Payable
				+basis_calculation_stamp_duty
				+ebp_name
				+funds_collected_through
				+'  '
				as ftemp1 into bnsdltemp1     
				FROM bnsdlbulkfile02a
				--select * from bnsdltemp12
				IF OBJECT_ID ( 'bnsdltemp12', 'U' ) IS NOT NULL  DROP TABLE bnsdltemp12
					create table bnsdltemp12 (ftemp1 varchar(1000))
					INSERT INTO  bnsdltemp12  SELECT * from bnsdltemp1
					DECLARE @cmd varchar(500),@filename1 varchar(100)
					SELECT @filename1 ='NSD01HEAD.TXT'       
					SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.bnsdltemp12" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd
				--step 4
				IF OBJECT_ID ( 'bnsdltmp11', 'U' ) IS NOT NULL  DROP TABLE bnsdltmp11
					SELECT '02'+                                                        
					+Detail_Record_Line_No
					+DP_ID
					+CLIENT_ID
					+REPLICATE('0',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
					+Allotment_Quantity
					+REPLICATE('0',2-len(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
					+'        '      
					+Issue_Price
					+Issued_Amount
					+Paidup_Price
					+Paidup_Amount
					+'            '    
					as ftemp1 into bnsdltmp11 
					FROM bnsdlbulkfile02
					--select * from bnsdltmp11
					--select * from bnsdltemp1
					IF OBJECT_ID ( 'bnsdltmp12a', 'U' ) IS NOT NULL  DROP TABLE bnsdltmp12a
					create table bnsdltmp12a (ftemp1 varchar(1000))
					INSERT INTO bnsdltmp12a  SELECT * from bnsdltmp11
					DECLARE @cmd1 varchar(500),@filename2 varchar(100)
					SELECT @filename2 ='NSD02DET.TXT'       
					SET @cmd1 = 'bcp "SELECT * FROM vccipl.dbo.bnsdltmp2" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename2 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd1
				--step 5
--					select * from bnsdltmp12
		--		SELECT '03'+                                                        
  --+Detail_Record_Line_No
  --+From_Distinctive_No_NSDL
  --+To_Distinctive_No_NSDL
  --+Quantity
  --+REPLICATE('0',2-LEN(Flag_status_DN_Range))+CONVERT(VARCHAR,FLAG_STATUS_DN_RANGE)
  --+REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type)      
  --as ftemp1 into fftemp3      



				IF OBJECT_ID ( 'NSDFIN1', 'U' ) IS NOT NULL  DROP TABLE NSDFIN1
					create table NSDFIN1 (FTEMP1 varchar(1000))
					INSERT INTO NSDFIN1 SELECT * from bnsdltemp1
					INSERT INTO NSDFIN1 SELECT * from bnsdltmp11
					DECLARE @cmd2 varchar(500), @filename3 varchar(100)
					SELECT @filename3 ='IN200537_NCA_'+FORMAT(GETDATE(),'yyyyMMdd')+'_'+FORMAT(GETDATE(),'HHmmss')+'.txt'       
					SET @cmd2 = 'bcp "SELECT * FROM vccipl.dbo.NSDFIN1" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename3 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd2
					INSERT INTO normalcaheaderrecord
					(Record_IDentification,File_IDentification,RTA_Internal_Reference_No,Debit_Credit_Indicator,ISIN,CA_Type,Allotment_Date,Allocation_Allotment_Description,
					Execution_Date,Total_Allotted_Quantity_Free_Lockin,Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,
					Stamp_Duty_Payable,Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,opfv,opfvvalue,StampDutyPaid,Processflag,
					Issue_pr,Paidup_pr,Stmpparam,typeofca,company_name,Inward_Date,aadesc,FractionFlag,Paidup_prFract,calcflag)
					select 
					Record_IDentification,File_IDentification,RTA_Internal_Reference_No,Debit_Credit_Indicator,ISIN,CA_Type,Allotment_Date,Allocation_Allotment_Description,
					Execution_Date,Total_Allotted_Quantity_Free_Lockin,Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,
					Stamp_Duty_Payable,Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,opfv,opfvvalue,StampDutyPaid,Processflag,
					Issue_pr,Paidup_pr,Stmpparam,typeofca,company_name,Inward_Date,aadesc,FractionFlag,Paidup_prFract,calcflag from normalcaheaderrecordtt
					INSERT INTO normalcadetailrecord
					(Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,Lockin_Reason_Code,
					Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag)
					select 
					Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,Lockin_Reason_Code,
					Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag from normalcadetailrecordtt
				EXEC xp_cmdshell 'del D:\CAFILES\NSDL\GENCSVFILES\NSD01HEAD.TXT'
				EXEC xp_cmdshell 'del D:\CAFILES\NSDL\GENCSVFILES\NSD02DET.TXT'
				update nca_muno01 set mmuno = mmuno+1
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_sbrnsdlcagenfile_finalRedemption]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_sbrnsdlcagenfile_finalRedemption] @stampduty varchar(1),@catype int,@cadesc int 
WITH RECOMPILE
AS
BEGIN
	IF OBJECT_ID ( 'bnsdlbulkfile01', 'U' ) IS NOT NULL  DROP TABLE bnsdlbulkfile01
	create table bnsdlbulkfile01 (slno varchar(5),isin varchar(12), dpid varchar(8),clid varchar(8),units varchar(18),name varchar(100),jh1 varchar(50),all_date varchar(10),paidval varchar(18))
	BULK INSERT bnsdlbulkfile01 
		FROM 'D:\CAFILES\NSDL\RAWCSVFILES\totNrec.csv' 
		WITH 
		(  
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',  
			ROWTERMINATOR = '\n',  
			BATCHSIZE=10
		)
		IF OBJECT_ID ( 'NCA_DUPCHK01', 'U' ) IS NOT NULL  DROP TABLE NCA_DUPCHK01
		SELECT clid,name,units, COUNT(clid) as [DUPLICATES_TIMES] INTO NCA_DUPCHK01 FROM bnsdlbulkfile01 GROUP BY clid,name,units HAVING COUNT(clid) > 1
		-- PAUSE
		IF OBJECT_ID ( 'NCADUPCHKFILE', 'U' ) IS NOT NULL  DROP TABLE NCADUPCHKFILE
		SELECT COUNT(*) AS CNT INTO NCADUPCHKFILE FROM NCA_DUPCHK01
		declare @dupflag int
		set @dupflag = (select cnt from NCADUPCHKFILE)
		IF @dupflag > 0
			BEGIN
		  		PRINT 'DUPLICATES EXISTING IN THE FILE'
			END
		IF @dupflag = 0
			Begin
				PRINT 'DUPLICATES NOT EXISTING IN THE FILE'

			WAITFOR DELAY '00:00:05' 
			alter table bnsdlbulkfile01 add tissamt varchar(18),paidamt varchar(18),stampduty varchar(1),	catype int,cadesc int,id int identity(1,1)
			--SELECT * FROM bnsdlbulkfile01
			--SET @STAMPDUTY = ''
			update bnsdlbulkfile01 set stampduty = upper(@stampduty)
			update bnsdlbulkfile01 set catype = (@catype)
			update bnsdlbulkfile01 set cadesc = (@cadesc)
			update bnsdlbulkfile01 set tissamt = trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,units)*100),16)) +'00'  
			update bnsdlbulkfile01 set paidamt = trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,units)*100),16)) +'00'  
			DELETE FROM bnsdlbulkfile01 WHERE ISIN IS NULL
			IF OBJECT_ID ( 'bnsdltotshr', 'U' ) IS NOT NULL  DROP TABLE bnsdltotshr
				select sum(convert(int,units)) as totshr,count(*) as totrec1 into bnsdltotshr from bnsdlbulkfile01
				PRINT '!!!!!!!!!!!!!!!!!!!!!HERE IS THE TOTAL RECORDS AND SHARES PLS CHECK!!!!!!!!!!!!!!!!!!!'
				SELECT * FROM bnsdltotshr
				PRINT '!!!!!!!!!!!!!!!!!!!!!!!!!HERE IS THE TOTAL RECORDS AND SHARES PLS CHECK!!!!!!!!!!!!!!!!!!'
				WAITFOR DELAY '00:00:05' 
				select * from bnsdlbulkfile02
				truncate table bnsdlbulkfile02
				INSERT INTO bnsdlbulkfile02 (dp_id,client_id,Allotment_Quantity,Issue_Price,tissamt,paidup_price,paidup_amount)
				SELECT dpid,clid,trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,units)),15)) +'000',
								 trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000',
								 tissamt,
								 trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000',
								 paidamt
					from bnsdlbulkfile01
				--generate line Nos.
				IF OBJECT_ID ( 'ntemp2', 'U' ) IS NOT NULL  DROP TABLE ntemp2
				SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO ntemp2 FROM bnsdlbulkfile02 WHERE id < 99999
				UPDATE a SET a.Detail_Record_Line_No = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM bnsdlbulkfile02 a JOIN ntemp2 b ON a.ID=b.ID
				update bnsdlbulkfile02 set	Record_IDentification ='02',
											Client_Account_Category='00',
											Lockin_Reason_Code='00',
											Lockin_Release_Date='1900-01-01 00:00:00.000',
											Issued_Amount = tissamt, 
											Paidup_Amount = tissamt,
											filler ='',
											ProcessedFlag='N',
											FractionFlag='N',
											calcflag='Y'
											SELECT * FROM BNSDLBULKFILE02A
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM bnsdlbulkfile02 a JOIN nca_muno01 b ON b.ID=1
				UPDATE a SET a.Issue_Price		= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Issued_Amount	= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Paidup_Price		= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Paidup_Amount	= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				delete from bnsdlbulkfile02 where dp_id like '1%'
				IF OBJECT_ID ( 'NORMALCADETAILRECORDTT', 'U' ) IS NOT NULL  DROP TABLE NORMALCADETAILRECORDTT
					SELECT * INTO NORMALCADETAILRECORDTT FROM NormalCADetailRecord
					truncate table normalcadetailrecordtt
					INSERT INTO NormalCADetailRecordTT  (Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
					Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag) 
					SELECT
					Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
					Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag 
					FROM bnsdlbulkfile02
				--STEP2
				delete from bnsdlbulkfile02a where id <> 1
				update a set a.Stamp_Duty_Payable				=  b.stampduty 	from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update a set a.ca_type							=  trim(RIGHT('0000'+CONVERT(VARCHAR,convert(int,b.catype)),4))   	from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update a set a.Allocation_Allotment_Description	=  trim(RIGHT('0000'+CONVERT(VARCHAR,convert(int,b.cadesc)),4))   	from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update a set a.Allotment_Date					=  substring(convert(varchar,b.all_date),7,4) + substring(convert(varchar,b.all_date),4,2)+substring(convert(varchar,b.all_date),1,2)  from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1				
				select substring(convert(varchar,all_date),7,4) + substring(convert(varchar,all_date),4,2)+substring(convert(varchar,all_date),1,2) from bnsdlbulkfile01


				declare @stampdutytemp varchar(1)
				set @stampdutytemp = (select Stamp_Duty_Payable from bnsdlbulkfile02a where id = 1)
				IF @stampdutytemp ='N' 
				  Begin
					update bnsdlbulkfile02a  set Total_Issued_Amount = '000000000000000000'  
					update bnsdlbulkfile02a  set Total_Paidup_Amount = '000000000000000000' 
					update bnsdlbulkfile02a set Basis_calculation_Stamp_Duty			= '00'
					update bnsdlbulkfile02a set EBP_Name								= '00'
				  END
				IF @stampdutytemp ='Y' 
				  Begin
					update a set a.Total_Issued_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
					update a set a.Total_Paidup_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
					update bnsdlbulkfile02a set Basis_calculation_Stamp_Duty			= '01'
					update bnsdlbulkfile02a set EBP_Name								= '00'
				  END
				select * from bnsdlbulkfile02a
				update bnsdlbulkfile02a set Record_IDentification					= '01'
				update bnsdlbulkfile02a set File_IDentification					= 'SHRI001'
				update bnsdlbulkfile02a set RTA_Internal_Reference_No				= 'INTREF NO '
				update bnsdlbulkfile02a set Debit_Credit_Indicator				= 'D'
				update a set a.ISIN = b.isin from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update bnsdlbulkfile02a set Execution_Date						= format(getdate()+1,'yyyyMMdd')
				update a set a.Total_Allotted_Quantity_Free_Lockin				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr)),15)) +'000'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
				update a set a.Total_No_detail_records							= trim(RIGHT('0000000'+CONVERT(VARCHAR,convert(int,b.totrec1)),7)) 	from bnsdlbulkfile02a a join bnsdltotshr b 	on a.id = 1
				update bnsdlbulkfile02a set Total_Allotted_Quantity_Lockin		= '000000000000000000' 
				update bnsdlbulkfile02a set Funds_collected_through				= '  '
				update bnsdlbulkfile02a set Filler								= '  '
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM bnsdlbulkfile02a a JOIN nca_muno01 b ON b.ID=1
				update bnsdlbulkfile02a set Processflag							= 'N'
				update bnsdlbulkfile02a set FractionFlag							= 'N'
				update bnsdlbulkfile02a set calcflag								= 'Y'
				update bnsdlbulkfile02a SET Total_Issued_Amount								= '000000000000000000' 
				update bnsdlbulkfile02a SET Total_Paidup_Amount								= '000000000000000000' 
				SELECT * FROM BNSDLBULKFILE02A
				IF OBJECT_ID ( 'normalcaheaderrecordtt', 'U' ) IS NOT NULL  DROP TABLE normalcaheaderrecordtt
					select * into normalcaheaderrecordtt from NormalCAHeaderRecord
					truncate table normalcaheaderrecordtt
					INSERT INTO NormalCAHeaderRecordTT 
					(
					Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
					CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
					Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
					Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
					) 
					SELECT
					Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
					CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
					Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
					Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
					FROM  bnsdlbulkfile02a
				--step3
			IF OBJECT_ID ( 'bnsdltemp1', 'U' ) IS NOT NULL  DROP TABLE bnsdltemp1     
			SELECT '01'
				+'SHRI001'
				+CONVERT(VARCHAR(16),TRIM(RTA_Internal_Reference_No))+REPLICATE(' ',16-LEN(TRIM(RTA_Internal_Reference_No)))      
				+debit_Credit_indicator
				+REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)      
				+CA_Type
				--+'00000000'
				+REPLICATE(' ',8-len(CONVERT(varchar,Allotment_Date,112)))+CONVERT(varchar,Allotment_Date,112)      
				+REPLICATE('0',4-LEN(allocation_allotment_description))+CONVERT(VARCHAR,allocation_allotment_description)      
				+REPLICATE(' ',8-len(CONVERT(varchar,Execution_Date,112)))+CONVERT(varchar,Execution_Date,112)      
				+Total_Allotted_Quantity_Free_Lockin
				+Total_Allotted_Quantity_Lockin
				+Total_No_detail_records
				+Total_Issued_Amount
				+Total_Paidup_Amount
				+stamp_duty_Payable
				+basis_calculation_stamp_duty
				+ebp_name
				+funds_collected_through
				+'  '
				as ftemp1 into bnsdltemp1     
				FROM bnsdlbulkfile02a
				IF OBJECT_ID ( 'bnsdltemp12', 'U' ) IS NOT NULL  DROP TABLE bnsdltemp12
					create table bnsdltemp12 (ftemp1 varchar(1000))
					INSERT INTO bnsdltemp12  SELECT * from bnsdltemp1
					DECLARE @cmd varchar(500),@filename1 varchar(100)
					SELECT @filename1 ='NSD01HEAD.TXT'       
					SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.bnsdltemp12" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd
				--step 4
				IF OBJECT_ID ( 'bnsdltmp11', 'U' ) IS NOT NULL  DROP TABLE bnsdltmp11
					SELECT '02'+                                                        
					+Detail_Record_Line_No
					+DP_ID
					+CLIENT_ID
					+REPLICATE('0',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
					+Allotment_Quantity
					+REPLICATE('0',2-len(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
					+'        '      
					+Issue_Price
					+Issued_Amount
					+Paidup_Price
					+Paidup_Amount
					+'            '    
					as ftemp1 into bnsdltmp11 
					FROM bnsdlbulkfile02
					IF OBJECT_ID ( 'bnsdltmp2', 'U' ) IS NOT NULL DROP TABLE bnsdltmp2
					create table bnsdltmp2 (ftemp1 varchar(1000))
					INSERT INTO bnsdltmp2  SELECT * from bnsdltmp11
					DECLARE @cmd1 varchar(500),@filename2 varchar(100)
					SELECT @filename2 ='NSD02DET.TXT'       
					SET @cmd1 = 'bcp "SELECT * FROM vccipl.dbo.bnsdltmp2" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename2 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd1
				--step 5
				IF OBJECT_ID ( 'NSDFIN1', 'U' ) IS NOT NULL  DROP TABLE NSDFIN1
					create table NSDFIN1 (FTEMP1 varchar(1000))
					INSERT INTO NSDFIN1 SELECT * from bnsdltemp1
					INSERT INTO NSDFIN1 SELECT * from bnsdltmp11
					DECLARE @cmd2 varchar(500), @filename3 varchar(100)
					SELECT @filename3 ='IN200537_NRED_'+FORMAT(GETDATE(),'yyyyMMdd')+'_'+FORMAT(GETDATE(),'HHmmss')+'.txt'       
					SET @cmd2 = 'bcp "SELECT * FROM vccipl.dbo.NSDFIN1" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename3 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd2
					INSERT INTO normalcaheaderrecord
					(Record_IDentification,File_IDentification,RTA_Internal_Reference_No,Debit_Credit_Indicator,ISIN,CA_Type,Allotment_Date,Allocation_Allotment_Description,
					Execution_Date,Total_Allotted_Quantity_Free_Lockin,Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,
					Stamp_Duty_Payable,Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,opfv,opfvvalue,StampDutyPaid,Processflag,
					Issue_pr,Paidup_pr,Stmpparam,typeofca,company_name,Inward_Date,aadesc,FractionFlag,Paidup_prFract,calcflag)
					select 
					Record_IDentification,File_IDentification,RTA_Internal_Reference_No,Debit_Credit_Indicator,ISIN,CA_Type,Allotment_Date,Allocation_Allotment_Description,
					Execution_Date,Total_Allotted_Quantity_Free_Lockin,Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,
					Stamp_Duty_Payable,Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,opfv,opfvvalue,StampDutyPaid,Processflag,
					Issue_pr,Paidup_pr,Stmpparam,typeofca,company_name,Inward_Date,aadesc,FractionFlag,Paidup_prFract,calcflag from normalcaheaderrecordtt
					INSERT INTO normalcadetailrecord
					(Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,Lockin_Reason_Code,
					Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag)
					select 
					Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,Lockin_Reason_Code,
					Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag from normalcadetailrecordtt
				EXEC xp_cmdshell 'del D:\CAFILES\NSDL\GENCSVFILES\NSD01HEAD.TXT'
				EXEC xp_cmdshell 'del D:\CAFILES\NSDL\GENCSVFILES\NSD02DET.TXT'
				update nca_muno01 set mmuno = mmuno+1

		END
END

GO
/****** Object:  StoredProcedure [dbo].[sp_sbrnsdlcagenfile_finalRedemptionAIF]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_sbrnsdlcagenfile_finalRedemptionAIF] @stampduty varchar(1),@catype int,@cadesc int 
WITH RECOMPILE
AS
BEGIN
	IF OBJECT_ID ( 'bnsdlbulkfile01', 'U' ) IS NOT NULL  DROP TABLE bnsdlbulkfile01
	create table bnsdlbulkfile01 (slno varchar(5),isin varchar(12), dpid varchar(8),clid varchar(8),units varchar(18),name varchar(100),jh1 varchar(50),all_date varchar(10),paidval varchar(18))
	BULK INSERT bnsdlbulkfile01 
		FROM 'D:\CAFILES\NSDL\RAWCSVFILES\totNrec.csv' 
		WITH 
		(  
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',  
			ROWTERMINATOR = '\n',  
			BATCHSIZE=10
		)

		select * from bnsdlbulkfile01 
		IF OBJECT_ID ( 'NCA_DUPCHK01', 'U' ) IS NOT NULL  DROP TABLE NCA_DUPCHK01
		SELECT clid,name,units, COUNT(clid) as [DUPLICATES_TIMES] INTO NCA_DUPCHK01 FROM bnsdlbulkfile01 GROUP BY clid,name,units HAVING COUNT(clid) > 1
		-- PAUSE
		IF OBJECT_ID ( 'NCADUPCHKFILE', 'U' ) IS NOT NULL  DROP TABLE NCADUPCHKFILE
		SELECT COUNT(*) AS CNT INTO NCADUPCHKFILE FROM NCA_DUPCHK01
		declare @dupflag int
		set @dupflag = (select cnt from NCADUPCHKFILE)
		IF @dupflag > 0
			BEGIN
		  		PRINT 'DUPLICATES EXISTING IN THE FILE'
			END
		IF @dupflag = 0
			Begin
				PRINT 'DUPLICATES NOT EXISTING IN THE FILE'

			WAITFOR DELAY '00:00:05' 
			alter table bnsdlbulkfile01 add tissamt varchar(18),paidamt varchar(18),stampduty varchar(1),	catype int,cadesc int,id int identity(1,1)
			--SELECT * FROM bnsdlbulkfile01
			--SET @STAMPDUTY = ''
			update bnsdlbulkfile01 set stampduty = upper(@stampduty)
			update bnsdlbulkfile01 set catype = (@catype)
			update bnsdlbulkfile01 set cadesc = (@cadesc)
			update bnsdlbulkfile01 set tissamt = trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,units)*100),16)) +'00'  
			update bnsdlbulkfile01 set paidamt = trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,units)*100),16)) +'00'  
			DELETE FROM bnsdlbulkfile01 WHERE ISIN IS NULL
			IF OBJECT_ID ( 'bnsdltotshr', 'U' ) IS NOT NULL  DROP TABLE bnsdltotshr
				select sum(convert(int,units)) as totshr,count(*) as totrec1 into bnsdltotshr from bnsdlbulkfile01
				PRINT '!!!!!!!!!!!!!!!!!!!!!HERE IS THE TOTAL RECORDS AND SHARES PLS CHECK!!!!!!!!!!!!!!!!!!!'
				SELECT * FROM bnsdltotshr
				PRINT '!!!!!!!!!!!!!!!!!!!!!!!!!HERE IS THE TOTAL RECORDS AND SHARES PLS CHECK!!!!!!!!!!!!!!!!!!'
				WAITFOR DELAY '00:00:05' 
				select * from bnsdlbulkfile02
				truncate table bnsdlbulkfile02
				INSERT INTO bnsdlbulkfile02 (dp_id,client_id,Allotment_Quantity,Issue_Price,tissamt,paidup_price,paidup_amount)
				SELECT dpid,clid,trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,units)),15)) +'000',
								 trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000',
								 tissamt,
								 trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000',
								 paidamt
					from bnsdlbulkfile01
				--generate line Nos.
				IF OBJECT_ID ( 'ntemp2', 'U' ) IS NOT NULL  DROP TABLE ntemp2
				SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO ntemp2 FROM bnsdlbulkfile02 WHERE id < 99999
				UPDATE a SET a.Detail_Record_Line_No = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM bnsdlbulkfile02 a JOIN ntemp2 b ON a.ID=b.ID
				update bnsdlbulkfile02 set	Record_IDentification ='02',
											Client_Account_Category='00',
											Lockin_Reason_Code='00',
											Lockin_Release_Date='1900-01-01 00:00:00.000',
											Issued_Amount = tissamt, 
											Paidup_Amount = tissamt,
											filler ='',
											ProcessedFlag='N',
											FractionFlag='N',
											calcflag='Y'
											SELECT * FROM BNSDLBULKFILE02A
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM bnsdlbulkfile02 a JOIN nca_muno01 b ON b.ID=1
				UPDATE a SET a.Issue_Price		= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Issued_Amount	= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Paidup_Price		= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Paidup_Amount	= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				delete from bnsdlbulkfile02 where dp_id like '1%'
				IF OBJECT_ID ( 'NORMALCADETAILRECORDTT', 'U' ) IS NOT NULL  DROP TABLE NORMALCADETAILRECORDTT
					SELECT * INTO NORMALCADETAILRECORDTT FROM NormalCADetailRecord
					truncate table normalcadetailrecordtt
					INSERT INTO NormalCADetailRecordTT  (Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
					Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag) 
					SELECT
					Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
					Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag 
					FROM bnsdlbulkfile02
				--STEP2
				delete from bnsdlbulkfile02a where id <> 1
				update a set a.Stamp_Duty_Payable				=  b.stampduty 	from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update a set a.ca_type							=  trim(RIGHT('0000'+CONVERT(VARCHAR,convert(int,b.catype)),4))   	from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update a set a.Allocation_Allotment_Description	=  trim(RIGHT('0000'+CONVERT(VARCHAR,convert(int,b.cadesc)),4))   	from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update a set a.Allotment_Date					=  substring(convert(varchar,b.all_date),7,4) + substring(convert(varchar,b.all_date),4,2)+substring(convert(varchar,b.all_date),1,2)  from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1				
				select substring(convert(varchar,all_date),7,4) + substring(convert(varchar,all_date),4,2)+substring(convert(varchar,all_date),1,2) from bnsdlbulkfile01


				declare @stampdutytemp varchar(1)
				set @stampdutytemp = (select Stamp_Duty_Payable from bnsdlbulkfile02a where id = 1)
				IF @stampdutytemp ='N' 
				  Begin
					update bnsdlbulkfile02a  set Total_Issued_Amount = '000000000000000000'  
					update bnsdlbulkfile02a  set Total_Paidup_Amount = '000000000000000000' 
					update bnsdlbulkfile02a set Basis_calculation_Stamp_Duty			= '00'
					update bnsdlbulkfile02a set EBP_Name								= '00'
				  END
				IF @stampdutytemp ='Y' 
				  Begin
					update a set a.Total_Issued_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
					update a set a.Total_Paidup_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
					update bnsdlbulkfile02a set Basis_calculation_Stamp_Duty			= '01'
					update bnsdlbulkfile02a set EBP_Name								= '00'
				  END
				select * from bnsdlbulkfile02a
				update bnsdlbulkfile02a set Record_IDentification					= '01'
				update bnsdlbulkfile02a set File_IDentification					= 'SHRI001'
				update bnsdlbulkfile02a set RTA_Internal_Reference_No				= 'INTREF NO '
				update bnsdlbulkfile02a set Debit_Credit_Indicator				= 'D'
				update a set a.ISIN = b.isin from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update bnsdlbulkfile02a set Execution_Date						= format(getdate()+1,'yyyyMMdd')
				update a set a.Total_Allotted_Quantity_Free_Lockin				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr)),15)) +'000'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
				update a set a.Total_No_detail_records							= trim(RIGHT('0000000'+CONVERT(VARCHAR,convert(int,b.totrec1)),7)) 	from bnsdlbulkfile02a a join bnsdltotshr b 	on a.id = 1
				update bnsdlbulkfile02a set Total_Allotted_Quantity_Lockin		= '000000000000000000' 
				update bnsdlbulkfile02a set Funds_collected_through				= '  '
				update bnsdlbulkfile02a set Filler								= '  '
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM bnsdlbulkfile02a a JOIN nca_muno01 b ON b.ID=1
				update bnsdlbulkfile02a set Processflag							= 'N'
				update bnsdlbulkfile02a set FractionFlag							= 'N'
				update bnsdlbulkfile02a set calcflag								= 'Y'
				update bnsdlbulkfile02a SET Total_Issued_Amount								= '000000000000000000' 
				update bnsdlbulkfile02a SET Total_Paidup_Amount								= '000000000000000000' 
				SELECT * FROM BNSDLBULKFILE02A
				IF OBJECT_ID ( 'normalcaheaderrecordtt', 'U' ) IS NOT NULL  DROP TABLE normalcaheaderrecordtt
					select * into normalcaheaderrecordtt from NormalCAHeaderRecord
					truncate table normalcaheaderrecordtt
					INSERT INTO NormalCAHeaderRecordTT 
					(
					Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
					CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
					Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
					Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
					) 
					SELECT
					Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
					CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
					Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
					Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
					FROM  bnsdlbulkfile02a
				--step3
			IF OBJECT_ID ( 'bnsdltemp1', 'U' ) IS NOT NULL  DROP TABLE bnsdltemp1     
			SELECT '01'
				+'SHRI001'
				+CONVERT(VARCHAR(16),TRIM(RTA_Internal_Reference_No))+REPLICATE(' ',16-LEN(TRIM(RTA_Internal_Reference_No)))      
				+debit_Credit_indicator
				+REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)      
				+CA_Type
				--+'00000000'
				+REPLICATE(' ',8-len(CONVERT(varchar,Allotment_Date,112)))+CONVERT(varchar,Allotment_Date,112)      
				+REPLICATE('0',4-LEN(allocation_allotment_description))+CONVERT(VARCHAR,allocation_allotment_description)      
				+REPLICATE(' ',8-len(CONVERT(varchar,Execution_Date,112)))+CONVERT(varchar,Execution_Date,112)      
				+Total_Allotted_Quantity_Free_Lockin
				+Total_Allotted_Quantity_Lockin
				+Total_No_detail_records
				+Total_Issued_Amount
				+Total_Paidup_Amount
				+stamp_duty_Payable
				+basis_calculation_stamp_duty
				+ebp_name
				+funds_collected_through
				+'  '
				as ftemp1 into bnsdltemp1     
				FROM bnsdlbulkfile02a
				IF OBJECT_ID ( 'bnsdltemp12', 'U' ) IS NOT NULL  DROP TABLE bnsdltemp12
					create table bnsdltemp12 (ftemp1 varchar(1000))
					INSERT INTO bnsdltemp12  SELECT * from bnsdltemp1
					DECLARE @cmd varchar(500),@filename1 varchar(100)
					SELECT @filename1 ='NSD01HEAD.TXT'       
					SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.bnsdltemp12" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd
				--step 4
				IF OBJECT_ID ( 'bnsdltmp11', 'U' ) IS NOT NULL  DROP TABLE bnsdltmp11
					SELECT '02'+                                                        
					+Detail_Record_Line_No
					+DP_ID
					+CLIENT_ID
					+REPLICATE('0',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
					+Allotment_Quantity
					+REPLICATE('0',2-len(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
					+'        '      
					+Issue_Price
					+Issued_Amount
					+Paidup_Price
					+Paidup_Amount
					+'            '    
					as ftemp1 into bnsdltmp11 
					FROM bnsdlbulkfile02
					IF OBJECT_ID ( 'bnsdltmp2', 'U' ) IS NOT NULL DROP TABLE bnsdltmp2
					create table bnsdltmp2 (ftemp1 varchar(1000))
					INSERT INTO bnsdltmp2  SELECT * from bnsdltmp11
					DECLARE @cmd1 varchar(500),@filename2 varchar(100)
					SELECT @filename2 ='NSD02DET.TXT'       
					SET @cmd1 = 'bcp "SELECT * FROM vccipl.dbo.bnsdltmp2" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename2 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd1
				--step 5
				IF OBJECT_ID ( 'NSDFIN1', 'U' ) IS NOT NULL  DROP TABLE NSDFIN1
					create table NSDFIN1 (FTEMP1 varchar(1000))
					INSERT INTO NSDFIN1 SELECT * from bnsdltemp1
					INSERT INTO NSDFIN1 SELECT * from bnsdltmp11
					DECLARE @cmd2 varchar(500), @filename3 varchar(100)
					SELECT @filename3 ='IN200537_NRED_'+FORMAT(GETDATE(),'yyyyMMdd')+'_'+FORMAT(GETDATE(),'HHmmss')+'.txt'       
					SET @cmd2 = 'bcp "SELECT * FROM vccipl.dbo.NSDFIN1" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename3 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd2
					INSERT INTO normalcaheaderrecord
					(Record_IDentification,File_IDentification,RTA_Internal_Reference_No,Debit_Credit_Indicator,ISIN,CA_Type,Allotment_Date,Allocation_Allotment_Description,
					Execution_Date,Total_Allotted_Quantity_Free_Lockin,Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,
					Stamp_Duty_Payable,Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,opfv,opfvvalue,StampDutyPaid,Processflag,
					Issue_pr,Paidup_pr,Stmpparam,typeofca,company_name,Inward_Date,aadesc,FractionFlag,Paidup_prFract,calcflag)
					select 
					Record_IDentification,File_IDentification,RTA_Internal_Reference_No,Debit_Credit_Indicator,ISIN,CA_Type,Allotment_Date,Allocation_Allotment_Description,
					Execution_Date,Total_Allotted_Quantity_Free_Lockin,Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,
					Stamp_Duty_Payable,Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,opfv,opfvvalue,StampDutyPaid,Processflag,
					Issue_pr,Paidup_pr,Stmpparam,typeofca,company_name,Inward_Date,aadesc,FractionFlag,Paidup_prFract,calcflag from normalcaheaderrecordtt
					INSERT INTO normalcadetailrecord
					(Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,Lockin_Reason_Code,
					Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag)
					select 
					Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,Lockin_Reason_Code,
					Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag from normalcadetailrecordtt
				EXEC xp_cmdshell 'del D:\CAFILES\NSDL\GENCSVFILES\NSD01HEAD.TXT'
				EXEC xp_cmdshell 'del D:\CAFILES\NSDL\GENCSVFILES\NSD02DET.TXT'
				update nca_muno01 set mmuno = mmuno+1

		END
END

GO
/****** Object:  StoredProcedure [dbo].[sp_sbrnsdlcagenfile_finalRedemptionNonly]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_sbrnsdlcagenfile_finalRedemptionNonly] @catype int,@cadesc int 
WITH RECOMPILE
AS
BEGIN
	IF OBJECT_ID ( 'bnsdlbulkfile01', 'U' ) IS NOT NULL  DROP TABLE bnsdlbulkfile01
		create table bnsdlbulkfile01 (slno varchar(5),isin varchar(12), dpid varchar(8),clid varchar(8),units varchar(18),name varchar(100),jh1 varchar(100),all_date varchar(10),paidval varchar(18))
		BULK INSERT bnsdlbulkfile01 
			FROM 'D:\CAFILES\NSDL\RAWCSVFILES\totNrec.csv' 
			WITH 
			(  
				FIRSTROW = 2,
				FIELDTERMINATOR = ',',  
				ROWTERMINATOR = '\n',  
				BATCHSIZE=10
			)
			IF OBJECT_ID ( 'NCA_DUPCHK01', 'U' ) IS NOT NULL  DROP TABLE NCA_DUPCHK01
			SELECT clid,name,units, COUNT(clid) as [DUPLICATES_TIMES] INTO NCA_DUPCHK01 FROM bnsdlbulkfile01 GROUP BY clid,name,units HAVING COUNT(clid) > 1
			WAITFOR DELAY '00:00:05' 
			IF OBJECT_ID ( 'NCADUPCHKFILE', 'U' ) IS NOT NULL  DROP TABLE NCADUPCHKFILE
			SELECT COUNT(*) AS CNT INTO NCADUPCHKFILE FROM NCA_DUPCHK01
			declare @dupflag int
			set @dupflag = (select cnt from NCADUPCHKFILE)
			IF @dupflag > 0
				BEGIN
		  			PRINT 'DUPLICATES EXISTING IN THE FILE'
				END
			IF @dupflag = 0
			Begin
				PRINT 'DUPLICATES NOT EXISTING IN THE FILE'
			WAITFOR DELAY '00:00:05' 
			alter table bnsdlbulkfile01 add tissamt varchar(18),paidamt varchar(18),stampduty varchar(1),	catype int,cadesc int,id int identity(1,1)
			update bnsdlbulkfile01 set stampduty = 'N'
			update bnsdlbulkfile01 set catype = '0012'
			update bnsdlbulkfile01 set cadesc = '0055'
			update bnsdlbulkfile01 set tissamt = trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,units)*100),16)) +'00'  
			update bnsdlbulkfile01 set paidamt = trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,units)*100),16)) +'00'  
			DELETE FROM bnsdlbulkfile01 WHERE ISIN IS NULL
			IF OBJECT_ID ( 'bnsdltotshr', 'U' ) IS NOT NULL  DROP TABLE bnsdltotshr
				select sum(convert(int,units)) as totshr,count(*) as totrec1 into bnsdltotshr from bnsdlbulkfile01
				PRINT '!!!!!!!!!!!!!!!!!!!!!HERE IS THE TOTAL RECORDS AND SHARES PLS CHECK!!!!!!!!!!!!!!!!!!!'
				SELECT * FROM bnsdltotshr
				PRINT '!!!!!!!!!!!!!!!!!!!!!!!!!HERE IS THE TOTAL RECORDS AND SHARES PLS CHECK!!!!!!!!!!!!!!!!!!'
				WAITFOR DELAY '00:00:05' 
				select * from bnsdlbulkfile02
				truncate table bnsdlbulkfile02
				INSERT INTO bnsdlbulkfile02 (dp_id,client_id,Allotment_Quantity,Issue_Price,tissamt,paidup_price,paidup_amount)
				SELECT dpid,clid,trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,units)),15)) +'000',
								 trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000',
								 tissamt,
								 trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000',
								 paidamt
					from bnsdlbulkfile01
				--generate line Nos.
				IF OBJECT_ID ( 'ntemp2', 'U' ) IS NOT NULL  DROP TABLE ntemp2
				SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO ntemp2 FROM bnsdlbulkfile02 WHERE id < 99999
				UPDATE a SET a.Detail_Record_Line_No = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM bnsdlbulkfile02 a JOIN ntemp2 b ON a.ID=b.ID
				update bnsdlbulkfile02 set	Record_IDentification ='02',
											Client_Account_Category='00',
											Lockin_Reason_Code='00',
											Lockin_Release_Date='1900-01-01 00:00:00.000',
											Issued_Amount = tissamt, 
											Paidup_Amount = tissamt,
											filler ='',
											ProcessedFlag='N',
											FractionFlag='N',
											calcflag='Y'
				SELECT * FROM BNSDLBULKFILE02
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM bnsdlbulkfile02 a JOIN nca_muno01 b ON b.ID=1
				UPDATE a SET a.Issue_Price		= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Issued_Amount	= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Paidup_Price		= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Paidup_Amount	= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				delete from bnsdlbulkfile02 where dp_id like '1%'
				IF OBJECT_ID ( 'NORMALCADETAILRECORDTT', 'U' ) IS NOT NULL  DROP TABLE NORMALCADETAILRECORDTT
					SELECT * INTO NORMALCADETAILRECORDTT FROM NormalCADetailRecord
					truncate table normalcadetailrecordtt
					INSERT INTO NormalCADetailRecordTT  (Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
					Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag) 
					SELECT
					Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
					Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag 
					FROM bnsdlbulkfile02
				--STEP2
				delete from bnsdlbulkfile02a where id <> 1
				update a set a.Stamp_Duty_Payable				=  b.stampduty 	from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update a set a.ca_type							=  trim(RIGHT('0000'+CONVERT(VARCHAR,convert(int,b.catype)),4))   	from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update a set a.Allocation_Allotment_Description	=  trim(RIGHT('0000'+CONVERT(VARCHAR,convert(int,b.cadesc)),4))   	from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update a set a.Allotment_Date					=  substring(convert(varchar,b.all_date),7,4) + substring(convert(varchar,b.all_date),4,2)+substring(convert(varchar,b.all_date),1,2)  from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1				
				select substring(convert(varchar,all_date),7,4) + substring(convert(varchar,all_date),4,2)+substring(convert(varchar,all_date),1,2) from bnsdlbulkfile01


				declare @stampdutytemp varchar(1)
				set @stampdutytemp = 'N'
				IF @stampdutytemp ='N' 
				  Begin
					update bnsdlbulkfile02a  set Total_Issued_Amount = '000000000000000000'  
					update bnsdlbulkfile02a  set Total_Paidup_Amount = '000000000000000000' 
					update bnsdlbulkfile02a set Basis_calculation_Stamp_Duty			= '00'
					update bnsdlbulkfile02a set EBP_Name								= '00'
				
				--IF @stampdutytemp ='Y' 
				--  Begin
				--	update a set a.Total_Issued_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
				--	update a set a.Total_Paidup_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
				--	update bnsdlbulkfile02a set Basis_calculation_Stamp_Duty			= '01'
				--	update bnsdlbulkfile02a set EBP_Name								= '00'
				--  END
				--select * from bnsdlbulkfile02a
				update bnsdlbulkfile02a set Record_IDentification					= '01'
				update bnsdlbulkfile02a set File_IDentification					= 'SHRI001'
				update bnsdlbulkfile02a set RTA_Internal_Reference_No				= 'INTREF NO '
				update bnsdlbulkfile02a set Debit_Credit_Indicator				= 'D'
				update a set a.ISIN = b.isin from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update bnsdlbulkfile02a set Execution_Date						= format(getdate()+1,'yyyyMMdd')
				update a set a.Total_Allotted_Quantity_Free_Lockin				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr)),15)) +'000'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
				update a set a.Total_No_detail_records							= trim(RIGHT('0000000'+CONVERT(VARCHAR,convert(int,b.totrec1)),7)) 	from bnsdlbulkfile02a a join bnsdltotshr b 	on a.id = 1
				update bnsdlbulkfile02a set Total_Allotted_Quantity_Lockin		= '000000000000000000' 
				update bnsdlbulkfile02a set Funds_collected_through				= '  '
				update bnsdlbulkfile02a set Filler								= '  '
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM bnsdlbulkfile02a a JOIN nca_muno01 b ON b.ID=1
				update bnsdlbulkfile02a set Processflag							= 'N'
				update bnsdlbulkfile02a set FractionFlag							= 'N'
				update bnsdlbulkfile02a set calcflag								= 'Y'
				update bnsdlbulkfile02a SET Total_Issued_Amount								= '000000000000000000' 
				update bnsdlbulkfile02a SET Total_Paidup_Amount								= '000000000000000000' 
				
				IF OBJECT_ID ( 'normalcaheaderrecordtt', 'U' ) IS NOT NULL  DROP TABLE normalcaheaderrecordtt
					select * into normalcaheaderrecordtt from NormalCAHeaderRecord
					truncate table normalcaheaderrecordtt
					INSERT INTO NormalCAHeaderRecordTT 
					(
					Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
					CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
					Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
					Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
					) 
					SELECT
					Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
					CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
					Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
					Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
					FROM  bnsdlbulkfile02a
				--step3
			IF OBJECT_ID ( 'bnsdltemp1', 'U' ) IS NOT NULL  DROP TABLE bnsdltemp1     
			SELECT '01'
				+'SHRI001'
				+CONVERT(VARCHAR(16),TRIM(RTA_Internal_Reference_No))+REPLICATE(' ',16-LEN(TRIM(RTA_Internal_Reference_No)))      
				+debit_Credit_indicator
				+REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)      
				+CA_Type
				+REPLICATE(' ',8-len(CONVERT(varchar,Allotment_Date,112)))+CONVERT(varchar,Allotment_Date,112)      
				+REPLICATE('0',4-LEN(allocation_allotment_description))+CONVERT(VARCHAR,allocation_allotment_description)      
				+REPLICATE(' ',8-len(CONVERT(varchar,Execution_Date,112)))+CONVERT(varchar,Execution_Date,112)      
				+Total_Allotted_Quantity_Free_Lockin
				+Total_Allotted_Quantity_Lockin
				+Total_No_detail_records
				+Total_Issued_Amount
				+Total_Paidup_Amount
				+stamp_duty_Payable
				+basis_calculation_stamp_duty
				+ebp_name
				+funds_collected_through
				+'  '
				as ftemp1 into bnsdltemp1     
				FROM bnsdlbulkfile02a
				IF OBJECT_ID ( 'bnsdltemp12', 'U' ) IS NOT NULL  DROP TABLE bnsdltemp12
					create table bnsdltemp12 (ftemp1 varchar(1000))
					INSERT INTO bnsdltemp12  SELECT * from bnsdltemp1
					DECLARE @cmd varchar(500),@filename1 varchar(100)
					SELECT @filename1 ='NSD01HEAD.TXT'       
					SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.bnsdltemp12" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd
				--step 4
				IF OBJECT_ID ( 'bnsdltmp11', 'U' ) IS NOT NULL  DROP TABLE bnsdltmp11
					SELECT '02'+                                                        
					+Detail_Record_Line_No
					+DP_ID
					+CLIENT_ID
					+REPLICATE('0',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
					+Allotment_Quantity
					+REPLICATE('0',2-len(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
					+'        '      
					+Issue_Price
					+Issued_Amount
					+Paidup_Price
					+Paidup_Amount
					+'            '    
					as ftemp1 into bnsdltmp11 
					FROM bnsdlbulkfile02
					IF OBJECT_ID ( 'bnsdltmp2', 'U' ) IS NOT NULL DROP TABLE bnsdltmp2
					create table bnsdltmp2 (ftemp1 varchar(1000))
					INSERT INTO bnsdltmp2  SELECT * from bnsdltmp11
					DECLARE @cmd1 varchar(500),@filename2 varchar(100)
					SELECT @filename2 ='NSD02DET.TXT'       
					SET @cmd1 = 'bcp "SELECT * FROM vccipl.dbo.bnsdltmp2" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename2 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd1
				--step 5
				IF OBJECT_ID ( 'NSDFIN1', 'U' ) IS NOT NULL  DROP TABLE NSDFIN1
					create table NSDFIN1 (FTEMP1 varchar(1000))
					INSERT INTO NSDFIN1 SELECT * from bnsdltemp1
					INSERT INTO NSDFIN1 SELECT * from bnsdltmp11
					DECLARE @cmd2 varchar(500), @filename3 varchar(100)
					SELECT @filename3 ='IN200537_NRED_'+FORMAT(GETDATE(),'yyyyMMdd')+'_'+FORMAT(GETDATE(),'HHmmss')+'.txt'       
					SET @cmd2 = 'bcp "SELECT * FROM vccipl.dbo.NSDFIN1" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename3 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd2
					INSERT INTO normalcaheaderrecord
					(Record_IDentification,File_IDentification,RTA_Internal_Reference_No,Debit_Credit_Indicator,ISIN,CA_Type,Allotment_Date,Allocation_Allotment_Description,
					Execution_Date,Total_Allotted_Quantity_Free_Lockin,Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,
					Stamp_Duty_Payable,Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,opfv,opfvvalue,StampDutyPaid,Processflag,
					Issue_pr,Paidup_pr,Stmpparam,typeofca,company_name,Inward_Date,aadesc,FractionFlag,Paidup_prFract,calcflag)
					select 
					Record_IDentification,File_IDentification,RTA_Internal_Reference_No,Debit_Credit_Indicator,ISIN,CA_Type,Allotment_Date,Allocation_Allotment_Description,
					Execution_Date,Total_Allotted_Quantity_Free_Lockin,Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,
					Stamp_Duty_Payable,Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,opfv,opfvvalue,StampDutyPaid,Processflag,
					Issue_pr,Paidup_pr,Stmpparam,typeofca,company_name,Inward_Date,aadesc,FractionFlag,Paidup_prFract,calcflag from normalcaheaderrecordtt
					INSERT INTO normalcadetailrecord
					(Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,Lockin_Reason_Code,
					Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag)
					select 
					Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,Lockin_Reason_Code,
					Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag from normalcadetailrecordtt
				EXEC xp_cmdshell 'del D:\CAFILES\NSDL\GENCSVFILES\NSD01HEAD.TXT'
				EXEC xp_cmdshell 'del D:\CAFILES\NSDL\GENCSVFILES\NSD02DET.TXT'
				update nca_muno01 set mmuno = mmuno+1
				END
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_sbrnsdlcagenfile_finalRedemptionNonlyAif]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_sbrnsdlcagenfile_finalRedemptionNonlyAif] 
WITH RECOMPILE
AS
BEGIN
	IF OBJECT_ID ( 'bnsdlbulkfile01', 'U' ) IS NOT NULL  DROP TABLE bnsdlbulkfile01
		create table bnsdlbulkfile01 (slno varchar(5),isin varchar(12), dpid varchar(8),clid varchar(8),units varchar(18),name varchar(100),jh1 varchar(100),all_date varchar(10),paidval varchar(18))
		BULK INSERT bnsdlbulkfile01 
			FROM 'D:\CAFILES\NSDL\RAWCSVFILES\totNrec.csv' 
			WITH 
			(  
				FIRSTROW = 2,
				FIELDTERMINATOR = ',',  
				ROWTERMINATOR = '\n',  
				BATCHSIZE=10
			)
			IF OBJECT_ID ( 'NCA_DUPCHK01', 'U' ) IS NOT NULL  DROP TABLE NCA_DUPCHK01
			SELECT clid,name,units, COUNT(clid) as [DUPLICATES_TIMES] INTO NCA_DUPCHK01 FROM bnsdlbulkfile01 GROUP BY clid,name,units HAVING COUNT(clid) > 1
			WAITFOR DELAY '00:00:05' 
			IF OBJECT_ID ( 'NCADUPCHKFILE', 'U' ) IS NOT NULL  DROP TABLE NCADUPCHKFILE
			SELECT COUNT(*) AS CNT INTO NCADUPCHKFILE FROM NCA_DUPCHK01
			declare @dupflag int
			set @dupflag = (select cnt from NCADUPCHKFILE)
			IF @dupflag > 0
				BEGIN
		  			PRINT 'DUPLICATES EXISTING IN THE FILE'
				END
			IF @dupflag = 0
			Begin
				PRINT 'DUPLICATES NOT EXISTING IN THE FILE'
			WAITFOR DELAY '00:00:05' 
			alter table bnsdlbulkfile01 add tissamt varchar(18),paidamt varchar(18),stampduty varchar(1),	catype int,cadesc int,id int identity(1,1)
			update bnsdlbulkfile01 set stampduty = 'N'
			update bnsdlbulkfile01 set catype = '0012'
			update bnsdlbulkfile01 set cadesc = '0055'
			update bnsdlbulkfile01 set tissamt = trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,units)*100),16)) +'00'  
			update bnsdlbulkfile01 set paidamt = trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,units)*100),16)) +'00'  
			DELETE FROM bnsdlbulkfile01 WHERE ISIN IS NULL
			IF OBJECT_ID ( 'bnsdltotshr', 'U' ) IS NOT NULL  DROP TABLE bnsdltotshr
				select sum(convert(int,units)) as totshr,count(*) as totrec1 into bnsdltotshr from bnsdlbulkfile01
				PRINT '!!!!!!!!!!!!!!!!!!!!!HERE IS THE TOTAL RECORDS AND SHARES PLS CHECK!!!!!!!!!!!!!!!!!!!'
				SELECT * FROM bnsdltotshr
				PRINT '!!!!!!!!!!!!!!!!!!!!!!!!!HERE IS THE TOTAL RECORDS AND SHARES PLS CHECK!!!!!!!!!!!!!!!!!!'
				WAITFOR DELAY '00:00:05' 
				select * from bnsdlbulkfile02
				truncate table bnsdlbulkfile02
				INSERT INTO bnsdlbulkfile02 (dp_id,client_id,Allotment_Quantity,Issue_Price,tissamt,paidup_price,paidup_amount)
				SELECT dpid,clid,trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,units)),15)) +'000',
								 trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000',
								 tissamt,
								 trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000',
								 paidamt
					from bnsdlbulkfile01
				--generate line Nos.
				IF OBJECT_ID ( 'ntemp2', 'U' ) IS NOT NULL  DROP TABLE ntemp2
				SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO ntemp2 FROM bnsdlbulkfile02 WHERE id < 99999
				UPDATE a SET a.Detail_Record_Line_No = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM bnsdlbulkfile02 a JOIN ntemp2 b ON a.ID=b.ID
				update bnsdlbulkfile02 set	Record_IDentification ='02',
											Client_Account_Category='00',
											Lockin_Reason_Code='00',
											Lockin_Release_Date='1900-01-01 00:00:00.000',
											Issued_Amount = tissamt, 
											Paidup_Amount = tissamt,
											filler ='',
											ProcessedFlag='N',
											FractionFlag='N',
											calcflag='Y'
				SELECT * FROM BNSDLBULKFILE02
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM bnsdlbulkfile02 a JOIN nca_muno01 b ON b.ID=1
				UPDATE a SET a.Issue_Price		= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Issued_Amount	= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Paidup_Price		= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Paidup_Amount	= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				delete from bnsdlbulkfile02 where dp_id like '1%'
				IF OBJECT_ID ( 'NORMALCADETAILRECORDTT', 'U' ) IS NOT NULL  DROP TABLE NORMALCADETAILRECORDTT
					SELECT * INTO NORMALCADETAILRECORDTT FROM NormalCADetailRecord
					truncate table normalcadetailrecordtt
					INSERT INTO NormalCADetailRecordTT  (Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
					Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag) 
					SELECT
					Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
					Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag 
					FROM bnsdlbulkfile02
				--STEP2
				delete from bnsdlbulkfile02a where id <> 1
				update a set a.Stamp_Duty_Payable				=  b.stampduty 	from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update a set a.ca_type							=  trim(RIGHT('0000'+CONVERT(VARCHAR,convert(int,b.catype)),4))   	from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update a set a.Allocation_Allotment_Description	=  trim(RIGHT('0000'+CONVERT(VARCHAR,convert(int,b.cadesc)),4))   	from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update a set a.Allotment_Date					=  substring(convert(varchar,b.all_date),7,4) + substring(convert(varchar,b.all_date),4,2)+substring(convert(varchar,b.all_date),1,2)  from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1				
				select substring(convert(varchar,all_date),7,4) + substring(convert(varchar,all_date),4,2)+substring(convert(varchar,all_date),1,2) from bnsdlbulkfile01


				declare @stampdutytemp varchar(1)
				set @stampdutytemp = 'N'
				IF @stampdutytemp ='N' 
				  Begin
					update bnsdlbulkfile02a  set Total_Issued_Amount = '000000000000000000'  
					update bnsdlbulkfile02a  set Total_Paidup_Amount = '000000000000000000' 
					update bnsdlbulkfile02a set Basis_calculation_Stamp_Duty			= '00'
					update bnsdlbulkfile02a set EBP_Name								= '00'
				
				--IF @stampdutytemp ='Y' 
				--  Begin
				--	update a set a.Total_Issued_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
				--	update a set a.Total_Paidup_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
				--	update bnsdlbulkfile02a set Basis_calculation_Stamp_Duty			= '01'
				--	update bnsdlbulkfile02a set EBP_Name								= '00'
				--  END
				--select * from bnsdlbulkfile02a
				update bnsdlbulkfile02a set Record_IDentification					= '01'
				update bnsdlbulkfile02a set File_IDentification					= 'SHRI001'
				update bnsdlbulkfile02a set RTA_Internal_Reference_No				= 'INTREF NO '
				update bnsdlbulkfile02a set Debit_Credit_Indicator				= 'D'
				update a set a.ISIN = b.isin from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update bnsdlbulkfile02a set Execution_Date						= format(getdate()+1,'yyyyMMdd')
				update a set a.Total_Allotted_Quantity_Free_Lockin				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr)),15)) +'000'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
				update a set a.Total_No_detail_records							= trim(RIGHT('0000000'+CONVERT(VARCHAR,convert(int,b.totrec1)),7)) 	from bnsdlbulkfile02a a join bnsdltotshr b 	on a.id = 1
				update bnsdlbulkfile02a set Total_Allotted_Quantity_Lockin		= '000000000000000000' 
				update bnsdlbulkfile02a set Funds_collected_through				= '  '
				update bnsdlbulkfile02a set Filler								= '  '
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM bnsdlbulkfile02a a JOIN nca_muno01 b ON b.ID=1
				update bnsdlbulkfile02a set Processflag							= 'N'
				update bnsdlbulkfile02a set FractionFlag							= 'N'
				update bnsdlbulkfile02a set calcflag								= 'Y'
				update bnsdlbulkfile02a SET Total_Issued_Amount								= '000000000000000000' 
				update bnsdlbulkfile02a SET Total_Paidup_Amount								= '000000000000000000' 
				
				IF OBJECT_ID ( 'normalcaheaderrecordtt', 'U' ) IS NOT NULL  DROP TABLE normalcaheaderrecordtt
					select * into normalcaheaderrecordtt from NormalCAHeaderRecord
					truncate table normalcaheaderrecordtt
					INSERT INTO NormalCAHeaderRecordTT 
					(
					Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
					CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
					Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
					Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
					) 
					SELECT
					Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
					CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
					Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
					Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
					FROM  bnsdlbulkfile02a
				--step3
			IF OBJECT_ID ( 'bnsdltemp1', 'U' ) IS NOT NULL  DROP TABLE bnsdltemp1     
			SELECT '01'
				+'SHRI001'
				+CONVERT(VARCHAR(16),TRIM(RTA_Internal_Reference_No))+REPLICATE(' ',16-LEN(TRIM(RTA_Internal_Reference_No)))      
				+debit_Credit_indicator
				+REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)      
				+CA_Type
				+REPLICATE(' ',8-len(CONVERT(varchar,Allotment_Date,112)))+CONVERT(varchar,Allotment_Date,112)      
				+REPLICATE('0',4-LEN(allocation_allotment_description))+CONVERT(VARCHAR,allocation_allotment_description)      
				+REPLICATE(' ',8-len(CONVERT(varchar,Execution_Date,112)))+CONVERT(varchar,Execution_Date,112)      
				+Total_Allotted_Quantity_Free_Lockin
				+Total_Allotted_Quantity_Lockin
				+Total_No_detail_records
				+Total_Issued_Amount
				+Total_Paidup_Amount
				+stamp_duty_Payable
				+basis_calculation_stamp_duty
				+ebp_name
				+funds_collected_through
				+'  '
				as ftemp1 into bnsdltemp1     
				FROM bnsdlbulkfile02a
				IF OBJECT_ID ( 'bnsdltemp12', 'U' ) IS NOT NULL  DROP TABLE bnsdltemp12
					create table bnsdltemp12 (ftemp1 varchar(1000))
					INSERT INTO bnsdltemp12  SELECT * from bnsdltemp1
					DECLARE @cmd varchar(500),@filename1 varchar(100)
					SELECT @filename1 ='NSD01HEAD.TXT'       
					SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.bnsdltemp12" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd
				--step 4
				IF OBJECT_ID ( 'bnsdltmp11', 'U' ) IS NOT NULL  DROP TABLE bnsdltmp11
					SELECT '02'+                                                        
					+Detail_Record_Line_No
					+DP_ID
					+CLIENT_ID
					+REPLICATE('0',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
					+Allotment_Quantity
					+REPLICATE('0',2-len(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
					+'        '      
					+Issue_Price
					+Issued_Amount
					+Paidup_Price
					+Paidup_Amount
					+'            '    
					as ftemp1 into bnsdltmp11 
					FROM bnsdlbulkfile02
					IF OBJECT_ID ( 'bnsdltmp2', 'U' ) IS NOT NULL DROP TABLE bnsdltmp2
					create table bnsdltmp2 (ftemp1 varchar(1000))
					INSERT INTO bnsdltmp2  SELECT * from bnsdltmp11
					DECLARE @cmd1 varchar(500),@filename2 varchar(100)
					SELECT @filename2 ='NSD02DET.TXT'       
					SET @cmd1 = 'bcp "SELECT * FROM vccipl.dbo.bnsdltmp2" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename2 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd1
				--step 5
				IF OBJECT_ID ( 'NSDFIN1', 'U' ) IS NOT NULL  DROP TABLE NSDFIN1
					create table NSDFIN1 (FTEMP1 varchar(1000))
					INSERT INTO NSDFIN1 SELECT * from bnsdltemp1
					INSERT INTO NSDFIN1 SELECT * from bnsdltmp11
					DECLARE @cmd2 varchar(500), @filename3 varchar(100)
					SELECT @filename3 ='IN200537_NRED_'+FORMAT(GETDATE(),'yyyyMMdd')+'_'+FORMAT(GETDATE(),'HHmmss')+'.txt'       
					SET @cmd2 = 'bcp "SELECT * FROM vccipl.dbo.NSDFIN1" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename3 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd2
					INSERT INTO normalcaheaderrecord
					(Record_IDentification,File_IDentification,RTA_Internal_Reference_No,Debit_Credit_Indicator,ISIN,CA_Type,Allotment_Date,Allocation_Allotment_Description,
					Execution_Date,Total_Allotted_Quantity_Free_Lockin,Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,
					Stamp_Duty_Payable,Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,opfv,opfvvalue,StampDutyPaid,Processflag,
					Issue_pr,Paidup_pr,Stmpparam,typeofca,company_name,Inward_Date,aadesc,FractionFlag,Paidup_prFract,calcflag)
					select 
					Record_IDentification,File_IDentification,RTA_Internal_Reference_No,Debit_Credit_Indicator,ISIN,CA_Type,Allotment_Date,Allocation_Allotment_Description,
					Execution_Date,Total_Allotted_Quantity_Free_Lockin,Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,
					Stamp_Duty_Payable,Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,opfv,opfvvalue,StampDutyPaid,Processflag,
					Issue_pr,Paidup_pr,Stmpparam,typeofca,company_name,Inward_Date,aadesc,FractionFlag,Paidup_prFract,calcflag from normalcaheaderrecordtt
					INSERT INTO normalcadetailrecord
					(Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,Lockin_Reason_Code,
					Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag)
					select 
					Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,Lockin_Reason_Code,
					Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag from normalcadetailrecordtt
				EXEC xp_cmdshell 'del D:\CAFILES\NSDL\GENCSVFILES\NSD01HEAD.TXT'
				EXEC xp_cmdshell 'del D:\CAFILES\NSDL\GENCSVFILES\NSD02DET.TXT'
				update nca_muno01 set mmuno = mmuno+1
				END
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_sbrnsdlcagenfile_finalRedemptionNonlyAifMultipleFiles]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_sbrnsdlcagenfile_finalRedemptionNonlyAifMultipleFiles]
WITH RECOMPILE
AS
BEGIN
	IF OBJECT_ID ( 'bnsdlbulkfileM01', 'U' ) IS NOT NULL  DROP TABLE bnsdlbulkfileM01
		create table bnsdlbulkfileM01 (slno varchar(5),isin varchar(12), dpid varchar(8),clid varchar(8),units varchar(18),name varchar(100),jh1 varchar(100),all_date varchar(10),paidval varchar(18))
		BULK INSERT bnsdlbulkfileM01 
			FROM 'D:\CAFILES\NSDL\RAWCSVFILES\totNMrec.csv' 
			WITH 
			(  
				FIRSTROW = 2,
				FIELDTERMINATOR = ',',  
				ROWTERMINATOR = '\n',  
				BATCHSIZE=10
			)
			select * from bnsdlbulkfileM01
			IF OBJECT_ID ( 'BNSDLControl_file', 'U' ) IS NOT NULL  DROP TABLE BNSDLControl_file
			SELECT ISIN,COUNT(*) as records into BNSDLControl_file FROM BNSDLBULKFILEM01 GROUP BY ISIN 
			alter table bnsdlcontrol_file add filename varchar(20),masteruniqno int identity(8000,1)
			update bnsdlcontrol_file set filename = substring(isin,1,2)+substring(isin,8,5)
			
			select * from bnsdlcontrol_file
			SELECT * FROM bnsdlbulkfileM01 
			SELECT * FROM bnsdlbulkfileM02 

			IF OBJECT_ID ( 'NCA_DUPCHK01', 'U' ) IS NOT NULL  DROP TABLE NCA_DUPCHK01
			SELECT isin,clid,name,units, COUNT(clid) as [DUPLICATES_TIMES] INTO NCA_DUPCHK01 FROM bnsdlbulkfileM01 GROUP BY isin,clid,name,units HAVING COUNT(clid) > 1
			WAITFOR DELAY '00:00:05' 
			IF OBJECT_ID ( 'NCADUPCHKFILE', 'U' ) IS NOT NULL  DROP TABLE NCADUPCHKFILE
			SELECT COUNT(*) AS CNT INTO NCADUPCHKFILE FROM NCA_DUPCHK01
			select * from ncadupchkfile
			declare @dupflag int
			set @dupflag = (select cnt from NCADUPCHKFILE)
			IF @dupflag > 0
				BEGIN
		  			PRINT 'DUPLICATES EXISTING IN THE FILE'
				END
			IF @dupflag = 0
			Begin
				PRINT 'DUPLICATES NOT EXISTING IN THE FILE'
			WAITFOR DELAY '00:00:05' 
			alter table bnsdlbulkfileM01 add tissamt varchar(18),paidamt varchar(18),stampduty varchar(1),	catype int,cadesc int,id int identity(1,1)
			update bnsdlbulkfileM01 set stampduty = 'N'
			update bnsdlbulkfileM01 set catype = '0012'
			update bnsdlbulkfileM01 set cadesc = '0055'
			update bnsdlbulkfileM01 set tissamt = trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,units)*100),16)) +'00'  
			update bnsdlbulkfileM01 set paidamt = trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,units)*100),16)) +'00'  
			DELETE FROM bnsdlbulkfileM01 WHERE ISIN IS NULL
			IF OBJECT_ID ( 'bnsdltotmulshr', 'U' ) IS NOT NULL  DROP TABLE bnsdltotmulshr
				select sum(convert(int,units)) as totshr,count(*) as totrecm1 into bnsdltotmulshr from bnsdlbulkfileM01 
				PRINT '!!!!!!!!!!!!!!!!!!!!!HERE IS THE TOTAL RECORDS AND SHARES PLS CHECK!!!!!!!!!!!!!!!!!!!'
				SELECT * FROM bnsdltotmulshr
				select * from bnsdlbulkfileM01
				select * from BNSDLControl_file
				PRINT '!!!!!!!!!!!!!!!!!!!!!!!!!HERE IS THE TOTAL RECORDS AND SHARES PLS CHECK!!!!!!!!!!!!!!!!!!'
				WAITFOR DELAY '00:00:05' 
				select * from bnsdlbulkfileM02
				truncate table bnsdlbulkfileM02
				alter table bnsdlbulkfilem02 add misin varchar(12)
				INSERT INTO bnsdlbulkfileM02 (dp_id,client_id,Allotment_Quantity,Issue_Price,tissamt,paidup_price,paidup_amount,misin)
				SELECT dpid,clid,trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,units)),15)) +'000',
								 trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000',
								 tissamt,
								 trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000',
								 paidamt,
								 isin
					from bnsdlbulkfileM01
				--generate line Nos.
				--loop for all isin existing in the control file
				--SELECT * FROM BNSDLControl_file
				--ALTER TABLE BNSDLCONTROL_FILE ADD ID1 INT
				--UPDATE BNSDLControl_file SET ID1 = ID
				--DECLARE @IDNO  INT
				--DECLARE @RECORDNOS INT
				--SET @IDNO = (select ID1 from BNSDLControl_file);
				--SET @RECORDNOS = (select RECORDS From BNSDLControl_file);
				--WHILE @IDNO < = 99 and @recordnos <= 999
				--	BEGIN
					--	IF OBJECT_ID ( 'ntemp2', 'U' ) IS NOT NULL  DROP TABLE ntemp2
					--	SELECT ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO ntemp2 FROM bnsdlbulkfileM02 WHERE id < 99999 
					--	UPDATE a SET a.Detail_Record_Line_No = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM bnsdlbulkfileM02 a JOIN ntemp2 b ON a.ID=b.RowN 
					--SET @IDNO = @IDNO + 1;
				--	SET @RECORDNOS = 0
				--END
--SBR
				SELECT * FROM BNSDLControl_file
				SELECT * FROM BNSDLBULKFILEM02
--SBR

				--PROC GENDETRECLINENO 
				-----
				select * from bnsdlbulkfileM02

				select * from bnsdlbulkfileM02
				--IF OBJECT_ID ( 'ntemp2', 'U' ) IS NOT NULL  DROP TABLE ntemp2
				--SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO ntemp2 FROM bnsdlbulkfileM02 WHERE id < 99999
				--UPDATE a SET a.Detail_Record_Line_No = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM bnsdlbulkfileM02 a JOIN ntemp2 b ON a.ID=b.ID
				
				--loop for all isin existing in the control file
				update bnsdlbulkfilem02 set	Record_IDentification ='02',
											Client_Account_Category='00',
											Lockin_Reason_Code='00',
											Lockin_Release_Date='1900-01-01 00:00:00.000',
											Issued_Amount = tissamt, 
											Paidup_Amount = tissamt,
											filler ='',
											ProcessedFlag='N',
											FractionFlag='N',
											calcflag='Y'
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM bnsdlbulkfileM02 a JOIN nca_muno01 b ON b.ID=1
				UPDATE a SET a.Issue_Price		= '000000000000000000'  FROM bnsdlbulkfileM02 a JOIN bnsdlbulkfileM01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Issued_Amount	= '000000000000000000'  FROM bnsdlbulkfileM02 a JOIN bnsdlbulkfileM01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Paidup_Price		= '000000000000000000'  FROM bnsdlbulkfileM02 a JOIN bnsdlbulkfileM01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Paidup_Amount	= '000000000000000000'  FROM bnsdlbulkfileM02 a JOIN bnsdlbulkfileM01 b ON b.ID=1 and b.stampduty ='N'
				delete from bnsdlbulkfileM02 where dp_id like '1%'
				IF OBJECT_ID ( 'NORMALCADETAILRECORDMTT', 'U' ) IS NOT NULL  DROP TABLE NORMALCADETAILRECORDMTT
					SELECT * INTO NORMALCADETAILRECORDMTT FROM NormalCADetailRecord
					truncate table normalcadetailrecordMtt
					INSERT INTO NormalCADetailRecordTT  (Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
					Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag) 
					SELECT
					Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
					Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag 
					FROM bnsdlbulkfileM02
				--STEP2
				select * from bnsdlbulkfile02a
				delete from bnsdlbulkfileM02a where id <> 1
				select * from bnsdlbulkfileM02a
				update a set a.Stamp_Duty_Payable				=  b.stampduty 	from bnsdlbulkfile02a a 	join bnsdlbulkfileM01 b 	on a.id = 1
				update a set a.ca_type							=  trim(RIGHT('0000'+CONVERT(VARCHAR,convert(int,b.catype)),4))   	from bnsdlbulkfileM02a a 	join bnsdlbulkfileM01 b 	on a.id = 1
				update a set a.Allocation_Allotment_Description	=  trim(RIGHT('0000'+CONVERT(VARCHAR,convert(int,b.cadesc)),4))   	from bnsdlbulkfileM02a a 	join bnsdlbulkfileM01 b 	on a.id = 1
				update a set a.Allotment_Date					=  substring(convert(varchar,b.all_date),7,4) + substring(convert(varchar,b.all_date),4,2)+substring(convert(varchar,b.all_date),1,2)  from bnsdlbulkfileM02a a 	join bnsdlbulkfileM01 b 	on a.id = 1				
				select substring(convert(varchar,all_date),7,4) + substring(convert(varchar,all_date),4,2)+substring(convert(varchar,all_date),1,2) from bnsdlbulkfileM01


				declare @stampdutytemp varchar(1)
				set @stampdutytemp = 'N'
				IF @stampdutytemp ='N' 
				  Begin
					update bnsdlbulkfile02a  set Total_Issued_Amount = '000000000000000000'  
					update bnsdlbulkfile02a  set Total_Paidup_Amount = '000000000000000000' 
					update bnsdlbulkfile02a set Basis_calculation_Stamp_Duty			= '00'
					update bnsdlbulkfile02a set EBP_Name								= '00'
				
				--IF @stampdutytemp ='Y' 
				--  Begin
				--	update a set a.Total_Issued_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
				--	update a set a.Total_Paidup_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
				--	update bnsdlbulkfile02a set Basis_calculation_Stamp_Duty			= '01'
				--	update bnsdlbulkfile02a set EBP_Name								= '00'
				--  END
				--select * from bnsdlbulkfile02a
				update bnsdlbulkfile02a set Record_IDentification					= '01'
				update bnsdlbulkfile02a set File_IDentification					= 'SHRI001'
				update bnsdlbulkfile02a set RTA_Internal_Reference_No				= 'INTREF NO '
				update bnsdlbulkfile02a set Debit_Credit_Indicator				= 'D'
				update a set a.ISIN = b.isin from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update bnsdlbulkfile02a set Execution_Date						= format(getdate()+1,'yyyyMMdd')
				update a set a.Total_Allotted_Quantity_Free_Lockin				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr)),15)) +'000'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
				update a set a.Total_No_detail_records							= trim(RIGHT('0000000'+CONVERT(VARCHAR,convert(int,b.totrec1)),7)) 	from bnsdlbulkfile02a a join bnsdltotshr b 	on a.id = 1
				update bnsdlbulkfile02a set Total_Allotted_Quantity_Lockin		= '000000000000000000' 
				update bnsdlbulkfile02a set Funds_collected_through				= '  '
				update bnsdlbulkfile02a set Filler								= '  '
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM bnsdlbulkfile02a a JOIN nca_muno01 b ON b.ID=1
				update bnsdlbulkfile02a set Processflag							= 'N'
				update bnsdlbulkfile02a set FractionFlag							= 'N'
				update bnsdlbulkfile02a set calcflag								= 'Y'
				update bnsdlbulkfile02a SET Total_Issued_Amount								= '000000000000000000' 
				update bnsdlbulkfile02a SET Total_Paidup_Amount								= '000000000000000000' 
				
				IF OBJECT_ID ( 'normalcaheaderrecordtt', 'U' ) IS NOT NULL  DROP TABLE normalcaheaderrecordtt
					select * into normalcaheaderrecordtt from NormalCAHeaderRecord
					truncate table normalcaheaderrecordtt
					INSERT INTO NormalCAHeaderRecordTT 
					(
					Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
					CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
					Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
					Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
					) 
					SELECT
					Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
					CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
					Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
					Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
					FROM  bnsdlbulkfile02a
				--step3
			IF OBJECT_ID ( 'bnsdltemp1', 'U' ) IS NOT NULL  DROP TABLE bnsdltemp1     
			SELECT '01'
				+'SHRI001'
				+CONVERT(VARCHAR(16),TRIM(RTA_Internal_Reference_No))+REPLICATE(' ',16-LEN(TRIM(RTA_Internal_Reference_No)))      
				+debit_Credit_indicator
				+REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)      
				+CA_Type
				+REPLICATE(' ',8-len(CONVERT(varchar,Allotment_Date,112)))+CONVERT(varchar,Allotment_Date,112)      
				+REPLICATE('0',4-LEN(allocation_allotment_description))+CONVERT(VARCHAR,allocation_allotment_description)      
				+REPLICATE(' ',8-len(CONVERT(varchar,Execution_Date,112)))+CONVERT(varchar,Execution_Date,112)      
				+Total_Allotted_Quantity_Free_Lockin
				+Total_Allotted_Quantity_Lockin
				+Total_No_detail_records
				+Total_Issued_Amount
				+Total_Paidup_Amount
				+stamp_duty_Payable
				+basis_calculation_stamp_duty
				+ebp_name
				+funds_collected_through
				+'  '
				as ftemp1 into bnsdltemp1     
				FROM bnsdlbulkfile02a
				IF OBJECT_ID ( 'bnsdltemp12', 'U' ) IS NOT NULL  DROP TABLE bnsdltemp12
					create table bnsdltemp12 (ftemp1 varchar(1000))
					INSERT INTO bnsdltemp12  SELECT * from bnsdltemp1
					DECLARE @cmd varchar(500),@filename1 varchar(100)
					SELECT @filename1 ='NSD01HEAD.TXT'       
					SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.bnsdltemp12" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd
				--step 4
				IF OBJECT_ID ( 'bnsdltmp11', 'U' ) IS NOT NULL  DROP TABLE bnsdltmp11
					SELECT '02'+                                                        
					+Detail_Record_Line_No
					+DP_ID
					+CLIENT_ID
					+REPLICATE('0',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
					+Allotment_Quantity
					+REPLICATE('0',2-len(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
					+'        '      
					+Issue_Price
					+Issued_Amount
					+Paidup_Price
					+Paidup_Amount
					+'            '    
					as ftemp1 into bnsdltmp11 
					FROM bnsdlbulkfile02
					IF OBJECT_ID ( 'bnsdltmp2', 'U' ) IS NOT NULL DROP TABLE bnsdltmp2
					create table bnsdltmp2 (ftemp1 varchar(1000))
					INSERT INTO bnsdltmp2  SELECT * from bnsdltmp11
					DECLARE @cmd1 varchar(500),@filename2 varchar(100)
					SELECT @filename2 ='NSD02DET.TXT'       
					SET @cmd1 = 'bcp "SELECT * FROM vccipl.dbo.bnsdltmp2" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename2 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd1
				--step 5
				IF OBJECT_ID ( 'NSDFIN1', 'U' ) IS NOT NULL  DROP TABLE NSDFIN1
					create table NSDFIN1 (FTEMP1 varchar(1000))
					INSERT INTO NSDFIN1 SELECT * from bnsdltemp1
					INSERT INTO NSDFIN1 SELECT * from bnsdltmp11
					DECLARE @cmd2 varchar(500), @filename3 varchar(100)
					SELECT @filename3 ='IN200537_NRED_'+FORMAT(GETDATE(),'yyyyMMdd')+'_'+FORMAT(GETDATE(),'HHmmss')+'.txt'       
					SET @cmd2 = 'bcp "SELECT * FROM vccipl.dbo.NSDFIN1" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename3 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd2
					INSERT INTO normalcaheaderrecord
					(Record_IDentification,File_IDentification,RTA_Internal_Reference_No,Debit_Credit_Indicator,ISIN,CA_Type,Allotment_Date,Allocation_Allotment_Description,
					Execution_Date,Total_Allotted_Quantity_Free_Lockin,Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,
					Stamp_Duty_Payable,Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,opfv,opfvvalue,StampDutyPaid,Processflag,
					Issue_pr,Paidup_pr,Stmpparam,typeofca,company_name,Inward_Date,aadesc,FractionFlag,Paidup_prFract,calcflag)
					select 
					Record_IDentification,File_IDentification,RTA_Internal_Reference_No,Debit_Credit_Indicator,ISIN,CA_Type,Allotment_Date,Allocation_Allotment_Description,
					Execution_Date,Total_Allotted_Quantity_Free_Lockin,Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,
					Stamp_Duty_Payable,Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,opfv,opfvvalue,StampDutyPaid,Processflag,
					Issue_pr,Paidup_pr,Stmpparam,typeofca,company_name,Inward_Date,aadesc,FractionFlag,Paidup_prFract,calcflag from normalcaheaderrecordtt
					INSERT INTO normalcadetailrecord
					(Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,Lockin_Reason_Code,
					Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag)
					select 
					Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,Lockin_Reason_Code,
					Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag from normalcadetailrecordtt
				EXEC xp_cmdshell 'del D:\CAFILES\NSDL\GENCSVFILES\NSD01HEAD.TXT'
				EXEC xp_cmdshell 'del D:\CAFILES\NSDL\GENCSVFILES\NSD02DET.TXT'
				update nca_muno01 set mmuno = mmuno+1
				END
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_sbrnsdlcagenfilewithDN_final]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_sbrnsdlcagenfilewithDN_final] @stampduty varchar(1),@catype int,@cadesc int 
WITH RECOMPILE
AS
BEGIN
	IF OBJECT_ID ( 'bnsdlbulkfile01', 'U' ) IS NOT NULL  DROP TABLE bnsdlbulkfile01
	create table bnsdlbulkfile01 (slno varchar(5),isin varchar(12), dpid varchar(8),clid varchar(8),units varchar(18),name varchar(50),jh1 varchar(50),all_date varchar(10),paidval varchar(18))
	BULK INSERT bnsdlbulkfile01 
		FROM 'D:\CAFILES\NSDL\RAWCSVFILES\totNrec.csv' 
		WITH 
		(  
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',  
			ROWTERMINATOR = '\n',  
			BATCHSIZE=10
		)

		IF OBJECT_ID ( 'bnsdlbulkfileDN', 'U' ) IS NOT NULL  DROP TABLE bnsdlbulkfileDN
		create table bnsdlbulkfileDN (slno int,distfrom varchar(18), distto varchar(18),shares varchar(18))
		BULK INSERT bnsdlbulkfileDN 
			FROM 'D:\CAFILES\NSDL\RAWCSVFILES\TOTNDNREC.csv' 
			WITH 
			(  
				FIRSTROW = 2,
				FIELDTERMINATOR = ',',  
				ROWTERMINATOR = '\n',  
				BATCHSIZE=10
			)
		alter table bnsdlbulkfileDN add id int identity(1,1)
		IF OBJECT_ID ( 'bnsdlbulkdnmast', 'U' ) IS NOT NULL  DROP TABLE bnsdlbulkdnmast
		select count(*) as cnt into bnsdlbulkdnmast from bnsdlbulkfiledn
		alter table bnsdlbulkdnmast add id int identity(1,1)
		select * from bnsdlbulkdnmast
		select * from bnsdlbulkfileDN
		
		IF OBJECT_ID ( 'NCA_DUPCHK01DN', 'U' ) IS NOT NULL  DROP TABLE NCA_DUPCHK01DN
		SELECT distfrom,distto,shares,COUNT(slno) as [DUPLICATES_TIMES] INTO NCA_DUPCHK01DNCHK FROM bnsdlbulkfiledn GROUP BY distfrom,distto,shares HAVING COUNT(slno) > 1
		-- PAUSE
		IF OBJECT_ID ( 'NCA_DUPCHK01DNCHK', 'U' ) IS NOT NULL  DROP TABLE NCA_DUPCHK01DNCHK
		SELECT COUNT(*) AS CNT INTO NCA_DUPCHK01DNCHK FROM NCA_DUPCHK01DN
		SELECT * FROM NCA_DUPCHK01DNCHK
		declare @dupflag int
		set @dupflag = (select cnt from NCA_DUPCHK01DNCHK)
		IF @dupflag > 0
			BEGIN
		  		PRINT 'DUPLICATES EXISTING IN THE FILE'
			END
		IF @dupflag = 0
			Begin
				PRINT 'DUPLICATES NOT EXISTING IN THE FILE'

			WAITFOR DELAY '00:00:05' 
			alter table bnsdlbulkfile01  add tissamt varchar(18),paidamt varchar(18),stampduty varchar(1),	catype int,cadesc int,id int identity(1,1)
			--SELECT * FROM bnsdlbulkfile01
			--SET @STAMPDUTY = ''
			update bnsdlbulkfile01 set stampduty = upper(@stampduty)
			update bnsdlbulkfile01 set catype = (@catype)
			update bnsdlbulkfile01 set cadesc = (@cadesc)
			update bnsdlbulkfile01 set tissamt = trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,units)*100),16)) +'00'  
			update bnsdlbulkfile01 set paidamt = trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,units)*100),16)) +'00'  
			DELETE FROM bnsdlbulkfile01 WHERE ISIN IS NULL
			IF OBJECT_ID ( 'bnsdltotshr', 'U' ) IS NOT NULL  DROP TABLE bnsdltotshr
				select sum(convert(int,units)) as totshr,count(*) as totrec1 into bnsdltotshr from bnsdlbulkfile01
				PRINT '!!!!!!!!!!!!!!!!!!!!!HERE IS THE TOTAL RECORDS AND SHARES PLS CHECK!!!!!!!!!!!!!!!!!!!'
				SELECT * FROM bnsdltotshr
				PRINT '!!!!!!!!!!!!!!!!!!!!!!!!!HERE IS THE TOTAL RECORDS AND SHARES PLS CHECK!!!!!!!!!!!!!!!!!!'
				WAITFOR DELAY '00:00:05' 
				select * from bnsdlbulkfile02
				truncate table bnsdlbulkfile02
				INSERT INTO bnsdlbulkfile02 (dp_id,client_id,Allotment_Quantity,Issue_Price,tissamt,paidup_price,paidup_amount)
				SELECT dpid,clid,trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,units)),15)) +'000',
								 trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000',
								 tissamt,
								 trim(RIGHT('000000000000'+CONVERT(VARCHAR,convert(int,paidval)),12)) +'000000',
								 paidamt
					from bnsdlbulkfile01
				--generate line Nos.
				IF OBJECT_ID ( 'ntemp2', 'U' ) IS NOT NULL  DROP TABLE ntemp2
				SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO ntemp2 FROM bnsdlbulkfile02 WHERE id < 99999
				UPDATE a SET a.Detail_Record_Line_No = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM bnsdlbulkfile02 a JOIN ntemp2 b ON a.ID=b.ID
				update bnsdlbulkfile02 set	Record_IDentification ='02',
											Client_Account_Category='00',
											Lockin_Reason_Code='00',
											Lockin_Release_Date='1900-01-01 00:00:00.000',
											Issued_Amount = tissamt, 
											Paidup_Amount = tissamt,
											filler ='',
											ProcessedFlag='N',
											FractionFlag='N',
											calcflag='Y'
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM bnsdlbulkfile02 a JOIN nca_muno01 b ON b.ID=1
				SELECT * FROM bnsdlbulkfile02
				UPDATE a SET a.Issue_Price		= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Issued_Amount	= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Paidup_Price		= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				UPDATE a SET a.Paidup_Amount	= '000000000000000000'  FROM bnsdlbulkfile02 a JOIN bnsdlbulkfile01 b ON b.ID=1 and b.stampduty ='N'
				delete from bnsdlbulkfile02 where dp_id like '1%'
				IF OBJECT_ID ( 'NORMALCADETAILRECORDTT', 'U' ) IS NOT NULL  DROP TABLE NORMALCADETAILRECORDTT
					SELECT * INTO NORMALCADETAILRECORDTT FROM NormalCADetailRecord
					truncate table normalcadetailrecordtt
					INSERT INTO NormalCADetailRecordTT  (Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
					Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag) 
					SELECT
					Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,
					Lockin_Reason_Code,Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag 
					FROM bnsdlbulkfile02
				--STEP2
				delete from bnsdlbulkfile02a where id <> 1
				update a set a.Stamp_Duty_Payable				=  b.stampduty 	from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update a set a.ca_type							=  trim(RIGHT('0000'+CONVERT(VARCHAR,convert(int,b.catype)),4))   	from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update a set a.Allocation_Allotment_Description	=  trim(RIGHT('0000'+CONVERT(VARCHAR,convert(int,b.cadesc)),4))   	from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update a set a.Allotment_Date					=  substring(convert(varchar,b.all_date),7,4) + substring(convert(varchar,b.all_date),4,2)+substring(convert(varchar,b.all_date),1,2)  from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1				
				select substring(convert(varchar,all_date),7,4) + substring(convert(varchar,all_date),4,2)+substring(convert(varchar,all_date),1,2) from bnsdlbulkfile01


				declare @stampdutytemp varchar(1)
				set @stampdutytemp = (select Stamp_Duty_Payable from bnsdlbulkfile02a where id = 1)
				IF @stampdutytemp ='N' 
				  Begin
					update bnsdlbulkfile02a  set Total_Issued_Amount = '000000000000000000'  
					update bnsdlbulkfile02a  set Total_Paidup_Amount = '000000000000000000' 
					update bnsdlbulkfile02a set Basis_calculation_Stamp_Duty			= '00'
					update bnsdlbulkfile02a set EBP_Name								= '00'
				  END
				IF @stampdutytemp ='Y' 
				  Begin
					update a set a.Total_Issued_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
					update a set a.Total_Paidup_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
					update bnsdlbulkfile02a set Basis_calculation_Stamp_Duty			= '01'
					update bnsdlbulkfile02a set EBP_Name								= '00'
				  END
				update bnsdlbulkfile02a set Record_IDentification					= '01'
				update bnsdlbulkfile02a set File_IDentification					= 'SHRI001'
				update bnsdlbulkfile02a set RTA_Internal_Reference_No				= '1         '
				update bnsdlbulkfile02a set Debit_Credit_Indicator				= 'C'
				update a set a.ISIN = b.isin from bnsdlbulkfile02a a 	join bnsdlbulkfile01 b 	on a.id = 1
				update bnsdlbulkfile02a set Execution_Date						= format(getdate()+1,'yyyyMMdd')
				update a set a.Total_Allotted_Quantity_Free_Lockin				= trim(RIGHT('000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr)),15)) +'000'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
				update a set a.Total_No_detail_records							= trim(RIGHT('0000000'+CONVERT(VARCHAR,convert(int,b.totrec1)),7)) 	from bnsdlbulkfile02a a join bnsdltotshr b 	on a.id = 1
				update bnsdlbulkfile02a set Total_Allotted_Quantity_Lockin		= '000000000000000000' 
				SELECT * FROM bnsdlbulkfile02a
				--update a set a.Total_Issued_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
				--update a set a.Total_Paidup_Amount								= trim(RIGHT('0000000000000000'+CONVERT(VARCHAR,convert(int,b.totshr*100)),16)) +'00'  	from bnsdlbulkfile02a a 	join bnsdltotshr b 	on a.id = 1
				update bnsdlbulkfile02a set Funds_collected_through				= '  '
				update bnsdlbulkfile02a set Filler								= '  '
				UPDATE a SET a.MasterUniqNo = B.mmuno FROM bnsdlbulkfile02a a JOIN nca_muno01 b ON b.ID=1
				update bnsdlbulkfile02a set Processflag							= 'N'
				update bnsdlbulkfile02a set FractionFlag							= 'N'
				update bnsdlbulkfile02a set calcflag								= 'Y'
				IF OBJECT_ID ( 'normalcaheaderrecordtt', 'U' ) IS NOT NULL  DROP TABLE normalcaheaderrecordtt
					select * into normalcaheaderrecordtt from NormalCAHeaderRecord
					truncate table normalcaheaderrecordtt
					INSERT INTO NormalCAHeaderRecordTT 
					(
					Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
					CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
					Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
					Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
					) 
					SELECT
					Record_IDentification,	File_IDentification,	RTA_Internal_Reference_No,	Debit_Credit_Indicator,	ISIN,
					CA_Type,Allotment_Date,Allocation_Allotment_Description,Execution_Date,Total_Allotted_Quantity_Free_Lockin,
					Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,Stamp_Duty_Payable,
					Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,Processflag,calcflag
					FROM  bnsdlbulkfile02a
				--step3
			IF OBJECT_ID ( 'bnsdltemp1', 'U' ) IS NOT NULL  DROP TABLE bnsdltemp1     
			SELECT '01'
				+'SHRI001'
				+CONVERT(VARCHAR(16),TRIM(RTA_Internal_Reference_No))+REPLICATE(' ',16-LEN(TRIM(RTA_Internal_Reference_No)))      
				+debit_Credit_indicator
				+REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)      
				+CA_Type
				+REPLICATE(' ',8-len(CONVERT(varchar,Allotment_Date,112)))+CONVERT(varchar,Allotment_Date,112)      
				+REPLICATE('0',4-LEN(allocation_allotment_description))+CONVERT(VARCHAR,allocation_allotment_description)      
				+REPLICATE(' ',8-len(CONVERT(varchar,Execution_Date,112)))+CONVERT(varchar,Execution_Date,112)      
				+Total_Allotted_Quantity_Free_Lockin
				+Total_Allotted_Quantity_Lockin
				+Total_No_detail_records
				+Total_Issued_Amount
				+Total_Paidup_Amount
				+stamp_duty_Payable
				+basis_calculation_stamp_duty
				+ebp_name
				+funds_collected_through
				+'  '
				as ftemp1 into bnsdltemp1     
				FROM bnsdlbulkfile02a
				IF OBJECT_ID ( 'bnsdltemp12', 'U' ) IS NOT NULL  DROP TABLE bnsdltemp12
					create table bnsdltemp12 (ftemp1 varchar(1000))
					INSERT INTO bnsdltemp12  SELECT * from bnsdltemp1
					DECLARE @cmd varchar(500),@filename1 varchar(100)
					SELECT @filename1 ='NSD01HEAD.TXT'       
					SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.bnsdltemp12" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd
				--step 4
				IF OBJECT_ID ( 'bnsdltmp11', 'U' ) IS NOT NULL  DROP TABLE bnsdltmp11
					SELECT '02'+                                                        
					+Detail_Record_Line_No
					+DP_ID
					+CLIENT_ID
					+REPLICATE('0',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
					+Allotment_Quantity
					+REPLICATE('0',2-len(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
					+'        '      
					+Issue_Price
					+Issued_Amount
					+Paidup_Price
					+Paidup_Amount
					+'            '    
					as ftemp1 into bnsdltmp11 
					FROM bnsdlbulkfile02
					IF OBJECT_ID ( 'bnsdltmp2', 'U' ) IS NOT NULL  DROP TABLE bnsdltmp2
					create table bnsdltmp2 (ftemp1 varchar(1000))
					INSERT INTO bnsdltmp2  SELECT * from bnsdltmp11
					DECLARE @cmd1 varchar(500),@filename2 varchar(100)
					SELECT @filename2 ='NSD02DET.TXT'       
					SET @cmd1 = 'bcp "SELECT * FROM vccipl.dbo.bnsdltmp2" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename2 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd1
				--step 5

		--		SELECT '03'+                                                        
  --+Detail_Record_Line_No
  --+From_Distinctive_No_NSDL
  --+To_Distinctive_No_NSDL
  --+Quantity
  --+REPLICATE('0',2-LEN(Flag_status_DN_Range))+CONVERT(VARCHAR,FLAG_STATUS_DN_RANGE)
  --+REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type)      
  --as ftemp1 into fftemp3      



				IF OBJECT_ID ( 'NSDFIN1', 'U' ) IS NOT NULL  DROP TABLE NSDFIN1
					create table NSDFIN1 (FTEMP1 varchar(1000))
					INSERT INTO NSDFIN1 SELECT * from bnsdltemp1
					INSERT INTO NSDFIN1 SELECT * from bnsdltmp11
					DECLARE @cmd2 varchar(500), @filename3 varchar(100)
					SELECT @filename3 ='IN200537_NSDL_'+FORMAT(GETDATE(),'yyyyMMdd')+'_'+FORMAT(GETDATE(),'HHmmss')+'.txt'       
					SET @cmd2 = 'bcp "SELECT * FROM vccipl.dbo.NSDFIN1" '+ 'queryout D:\CAFILES\NSDL\GENCSVFILES\'+ @filename3 + ' -c -UTF8 -T -Slocalhost'
					EXEC master..xp_cmdshell @cmd2
					INSERT INTO normalcaheaderrecord
					(Record_IDentification,File_IDentification,RTA_Internal_Reference_No,Debit_Credit_Indicator,ISIN,CA_Type,Allotment_Date,Allocation_Allotment_Description,
					Execution_Date,Total_Allotted_Quantity_Free_Lockin,Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,
					Stamp_Duty_Payable,Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,opfv,opfvvalue,StampDutyPaid,Processflag,
					Issue_pr,Paidup_pr,Stmpparam,typeofca,company_name,Inward_Date,aadesc,FractionFlag,Paidup_prFract,calcflag)
					select 
					Record_IDentification,File_IDentification,RTA_Internal_Reference_No,Debit_Credit_Indicator,ISIN,CA_Type,Allotment_Date,Allocation_Allotment_Description,
					Execution_Date,Total_Allotted_Quantity_Free_Lockin,Total_Allotted_Quantity_Lockin,Total_No_detail_records,Total_Issued_Amount,Total_Paidup_Amount,
					Stamp_Duty_Payable,Basis_calculation_Stamp_Duty,EBP_Name,Funds_collected_through,Filler,MasterUniqNo,opfv,opfvvalue,StampDutyPaid,Processflag,
					Issue_pr,Paidup_pr,Stmpparam,typeofca,company_name,Inward_Date,aadesc,FractionFlag,Paidup_prFract,calcflag from normalcaheaderrecordtt
					INSERT INTO normalcadetailrecord
					(Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,Lockin_Reason_Code,
					Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag)
					select 
					Record_IDentification,Detail_Record_Line_No,DP_ID,Client_ID,Client_Account_Category,Allotment_Quantity,Lockin_Reason_Code,
					Lockin_Release_Date,Issue_Price,Issued_Amount,Paidup_Price,Paidup_Amount,Filler,MasterUniqNo,ProcessedFlag,FractionFlag,calcflag from normalcadetailrecordtt
				EXEC xp_cmdshell 'del D:\CAFILES\NSDL\GENCSVFILES\NSD01HEAD.TXT'
				EXEC xp_cmdshell 'del D:\CAFILES\NSDL\GENCSVFILES\NSD02DET.TXT'
				update nca_muno01 set mmuno = mmuno+1

		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_simulproc01]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_simulproc01]  @masteruniqno varchar(4)
as 
begin 
truncate table sf8
UPDATE SimulCAHeaderRecord set ProcessedFlag ='N' where ProcessedFlag is null
update SimulCADetailRecord set processedflag ='N' where ProcessedFlag is null
update SimulCADetailDistRecord set ProcessedFlag ='N' where ProcessedFlag is null

UPDATE SimulCAHeaderRecord		SET  TotCrQty_Flin		= RIGHT('000000000000000'		+ CONVERT(VARCHAR,TotCrQty_Flin),15)+'000'   where MasterUniqNo = @masteruniqno and ProcessedFlag = 'N' and calcflag ='N'
UPDATE SimulCAHeaderRecord		SET  TotDrQty_Flin		= RIGHT('000000000000000'		+ CONVERT(VARCHAR,TotDrQty_Flin),15)+'000'   where MasterUniqNo = @masteruniqno and ProcessedFlag = 'N'      and calcflag ='N'
UPDATE SimulCAHeaderRecord		SET  TotCrQty_Lin		= RIGHT('000000000000000'		+ CONVERT(VARCHAR,TotCrQty_Lin),15)	+'000'   where MasterUniqNo = @masteruniqno and ProcessedFlag = 'N' 	 and calcflag ='N'
UPDATE SimulCAHeaderRecord		SET  TotDrQty_Lin		= RIGHT('000000000000000'		+ CONVERT(VARCHAR,TotDrQty_Lin),15)	+'000'   where MasterUniqNo = @masteruniqno and ProcessedFlag = 'N' 	 and calcflag ='N'
UPDATE SimulCADetailRecord		SET  Cr_Quantity		= RIGHT('000000000000000'		+ CONVERT(VARCHAR,Cr_Quantity),15)	+'000'   where MasterUniqNo = @masteruniqno and ProcessedFlag = 'N' 	 and calcflag ='N'
UPDATE SimulCADetailRecord		SET  Dr_Quantity		= RIGHT('000000000000000'		+ CONVERT(VARCHAR,Dr_Quantity),15)	+'000'   where MasterUniqNo = @masteruniqno and ProcessedFlag = 'N' 	 and calcflag ='N'
UPDATE SimulCAHeaderRecord		SET  TotDetRec			= RIGHT('0000000'				+ CONVERT(VARCHAR,TotDetRec),7)				 where MasterUniqNo = @masteruniqno	and ProcessedFlag = 'N' 	 and calcflag ='N'
UPDATE SimulCADetailRecord		SET  IssPraaCr_ISIN		= RIGHT('000000000000'			+ CONVERT(VARCHAR,IssPraaCr_ISIN),12)+'000000'   where MasterUniqNo = @masteruniqno  and ProcessedFlag = 'N' and calcflag ='N'
UPDATE SimulCADetailRecord		SET  PupPraaCr_ISIN		= RIGHT('000000000000'			+ CONVERT(VARCHAR,PupPraaCr_ISIN),12)+'000000'   where MasterUniqNo = @masteruniqno  and ProcessedFlag = 'N' and calcflag ='N'
UPDATE SimulCAHeaderRecord		SET  TotIssAmtaa_CrIsin	= RIGHT('0000000000000000'		+ CONVERT(VARCHAR,TotIssAmtaa_CrIsin),16)	+'00'   where MasterUniqNo = @masteruniqno  and ProcessedFlag = 'N'   and calcflag ='N'
UPDATE SimulCAHeaderRecord		SET  TotpdAmtaa_CrIsin	= RIGHT('0000000000000000'		+ CONVERT(VARCHAR,TotpdAmtaa_CrIsin), 16)	+'00'   where MasterUniqNo = @masteruniqno  and ProcessedFlag = 'N'	  and calcflag ='N'
UPDATE SimulCADetailRecord		SET  IssAmtaaCr_isin	= RIGHT('0000000000000000'		+ CONVERT(VARCHAR,IssAmtaaCr_isin),16)		+'00'   where MasterUniqNo = @masteruniqno  and ProcessedFlag = 'N'	  and calcflag ='N'
UPDATE SimulCADetailRecord		SET  PupAmtaaCr_Isin	= RIGHT('0000000000000000'		+ CONVERT(VARCHAR,PupAmtaaCr_Isin),16)		+'00'   where MasterUniqNo = @masteruniqno  and ProcessedFlag = 'N'   and calcflag ='N'
UPDATE SimulCADetailDistRecord	SET  DetRec_Line_No		= RIGHT('0000000'				+ CONVERT(VARCHAR,DetRec_Line_No),7)     where MasterUniqNo = @masteruniqno and ProcessedFlag = 'N'				  and calcflag ='N'
UPDATE SimulCADetailDistRecord	SET  FromDistNo_NSDL	= RIGHT('000000000000000000'	+ CONVERT(VARCHAR,FromDistNo_NSDL),18)   where MasterUniqNo = @masteruniqno	and ProcessedFlag = 'N'				  and calcflag ='N'
UPDATE SimulCADetailDistRecord	SET  ToDistNo_NSDL		= RIGHT('000000000000000000'	+ CONVERT(VARCHAR,ToDistNo_NSDL),18)     where MasterUniqNo = @masteruniqno	and ProcessedFlag = 'N'				  and calcflag ='N'
UPDATE SimulCADetailDistRecord	SET  Quantity			= RIGHT('000000000000000000'	+ CONVERT(VARCHAR,Quantity),18)		     where MasterUniqNo = @masteruniqno	and ProcessedFlag = 'N'				  and calcflag ='N'

update SimulCAHeaderRecord         set calcflag ='Y' where masteruniqno = @masteruniqno
update SimulCADetailRecord		   set calcflag ='Y' where masteruniqno = @masteruniqno
update SimulCADetailDistRecord	   set calcflag ='Y' where masteruniqno = @masteruniqno

IF object_id('sf8','U') is not null drop table sf8
create table sf8 (stemp1 varchar(2000))
SET NOCOUNT ON    
(    
SELECT '01SHRI001'+                                                      
  +CONVERT(VARCHAR(16),RTA_Internal_Reference_No)+REPLICATE(' ',16-LEN(RTA_Internal_Reference_No))        
  +REPLICATE(' ',12-len(Cr_Isin))+CONVERT(VARCHAR,Cr_Isin)    
  +REPLICATE(' ',12-len(Dr_Isin))+CONVERT(VARCHAR,Dr_Isin)    
  +REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type)     
  +CONVERT(VARCHAR,Allotment_Dt,112)    
 -- +REPLICATE(' ',8-len(Allotment_Date))+CONVERT(VARCHAR,Allotment_Date)    
  +REPLICATE('0',4-LEN(Allot_alloc_Desc))+CONVERT(VARCHAR,Allot_alloc_Desc)    
  +CONVERT(VARCHAR,Execution_dt,112)    
 --+REPLICATE(' ',8-len(Execution_Date))+CONVERT(VARCHAR,Execution_Date)    
  +TotCrQty_Flin
  +TotDrQty_Flin
  +TotCrQty_Lin
  +TotDrQty_Lin
  +TotDetRec
  +TotIssAmtaa_CrIsin
  +TotpdAmtaa_CrIsin
  +REPLICATE(' ',1-len(StampDuty_Pay))+CONVERT(VARCHAR,StampDuty_Pay)    
  +REPLICATE(' ',2-len(BcStampDuty))+CONVERT(VARCHAR,BcStampDuty) 
  as stemp1 into #TEMP1
  FROM SimulCAHeaderRecord  
  where masteruniqno = @Masteruniqno and processedflag ='N')    
(    
SELECT '02'+                     
  +REPLICATE('0',7-LEN(DetRec_Line_No))+CONVERT(VARCHAR,DetRec_Line_No)     
  +REPLICATE('0',8-LEN(Credit_DP_ID))+CONVERT(VARCHAR,Credit_DP_ID)     
  +REPLICATE('0',8-LEN(CrClient_ID))+CONVERT(VARCHAR,CrClient_ID)     
  +REPLICATE('0',2-len(CrClient_AccCat))+CONVERT(VARCHAR,CrClient_AccCat)    
  +REPLICATE('0',8-LEN(DrDP_ID))+CONVERT(VARCHAR,DrDP_ID)     
  +REPLICATE('0',8-LEN(DrClient_ID))+CONVERT(VARCHAR,DrClient_ID)     
  +REPLICATE('0',2-len(DrClient_AccCat))+CONVERT(VARCHAR,DrClient_AccCat)    
  +Cr_Quantity
  +Dr_Quantity
  +REPLICATE('0',2-LEN(CrQty_LinRCd))+CONVERT(VARCHAR,CrQty_LinRCd)    
  --+'        '    
  +CONVERT(VARCHAR,CrQty_LnRDt,112)    
  +REPLICATE('0',2-LEN(drQty_LinRCd))+CONVERT(VARCHAR,drQty_LinRCd)    
  +'        '    
  --+CONVERT(VARCHAR,drQty_LnRDt,112)    
  --+REPLICATE(' ',8-len(drQty_LnRDt))+CONVERT(VARCHAR,drQty_LnRDt)    
  +IssPraaCr_ISIN
  +IssAmtaaCr_isin
  +PupPraaCr_ISIN
  +PupAmtaaCr_Isin 
  as stemp1 into #TEMP2  
  FROM SimulCADetailRecord 
  where masteruniqno = @Masteruniqno and processedflag ='N')    
(    
SELECT '03'+                                                      
  +DetRec_Line_No
  +REPLICATE(' ',12-len(DrCr_ISIN))+CONVERT(VARCHAR,DrCr_ISIN)    
  +REPLICATE(' ',1-len(DrCr_Indicator))+CONVERT(VARCHAR,DrCr_Indicator)    
  +FromDistNo_NSDL
  +ToDistNo_NSDL
  +Quantity
  +Flag_status_DN_Range
  +REPLICATE('0',4-LEN(CA_Code))+CONVERT(VARCHAR,CA_Code) 
   as stemp1 into #TEMP3    
  FROM SimulCADetailDistRecord 
  where masteruniqno = @Masteruniqno and processedflag ='N')    
  insert into sf8 select * from #temp1
  insert into sf8 select * from #temp2
  insert into sf8 select * from #temp3
  select * from sf8
  update SimulCAHeaderRecord	  set processedflag ='Y' where  masteruniqno = @masteruniqno 
  update SimulCADetailRecord	  set processedflag ='Y' where  masteruniqno = @masteruniqno
  update SimulCADetailDistRecord  set processedflag ='Y' where  masteruniqno = @masteruniqno

	DECLARE @cmd varchar(500),@filename1 varchar(100)
	SELECT @filename1 ='IN200537_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
	SET @cmd = 'bcp "SELECT * FROM vccipl.[dbo].[sf8]" '+ 'queryout d:\sbroutfiles\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
	EXEC master..xp_cmdshell @cmd
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TESTSP]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_TESTSP]
AS
BEGIN
      print 'THIS IS A TEST MESSAGE. LOGGED AT ' + CONVERT(VARCHAR, getdate(), 120)
END
GO
/****** Object:  StoredProcedure [dbo].[spCAAmountCalculations]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCAAmountCalculations] @MastUno varchar(4)
as
begin
		
		UPDATE NormalCAHeaderRecord set Total_Allotted_Quantity_Free_Lockin =RIGHT('00000000000000' +CONVERT(VARCHAR,Total_Allotted_Quantity_Free_Lockin),15) +'000'  
									where CONVERT(VARCHAR,Total_Allotted_Quantity_Free_Lockin) != 0  and masteruniqno=@MastUno 
		UPDATE NormalCAHeaderRecord set Total_Allotted_Quantity_Lockin =RIGHT('00000000000000' +CONVERT(VARCHAR,Total_Allotted_Quantity_Lockin),15) +'000' 
									where CONVERT(VARCHAR,Total_Allotted_Quantity_Lockin) = 0 and  masteruniqno=@MastUno 
		UPDATE NormalCAHeaderRecord set Total_No_detail_records			   =RIGHT('0000000' +CONVERT(VARCHAR,Total_No_detail_records),7)
									where CONVERT(VARCHAR,Total_No_detail_records) != 0 and  masteruniqno=@MastUno 
		UPDATE NormalCAHeaderRecord set Total_Issued_Amount				   =RIGHT('000000000000000'+CONVERT(VARCHAR,Total_Issued_Amount),16)   +'00'	  
									where CONVERT(VARCHAR,Total_Issued_Amount) != 0 and  masteruniqno=@MastUno 
		UPDATE NormalCAHeaderRecord set Total_Paidup_Amount                 =RIGHT('000000000000000'+CONVERT(VARCHAR,Total_Paidup_Amount),16)   +'00'	  
									where CONVERT(VARCHAR,Total_Paidup_Amount) != 0 and  masteruniqno=@MastUno 
		--UPDATE NormalCAHeaderRecord SET  Filler									= REPLACE(STR(Filler,2),' ',' ') where MASTERUNIQNO = @MastUno

		UPDATE NormalCADetailRecord set Detail_Record_Line_No				=RIGHT('0000000'+CONVERT(VARCHAR,Detail_Record_Line_No),7)   
									where CONVERT(VARCHAR,Detail_Record_Line_No) != 0 and  masteruniqno=@MastUno 
		UPDATE NormalCADetailRecord set Allotment_Quantity				    =RIGHT('00000000000000'+CONVERT(VARCHAR,Allotment_Quantity),15)   +'000'	  
									where CONVERT(VARCHAR,Allotment_Quantity) != 0 and  masteruniqno=@MastUno 		
		update NormalCADetailRecord set Issue_Price							=RIGHT('000000000000'+ CONVERT(VARCHAR,Issue_Price),12)+'000000' 
									where CONVERT(VARCHAR,Issue_Price) != 0 and  masteruniqno=@MastUno 
		UPDATE NormalCADetailRecord set issued_amount						=RIGHT('000000000000000'+CONVERT(VARCHAR,issued_amount),16)   +'00'	
									where CONVERT(VARCHAR,issued_amount) != 0 and  masteruniqno=@MastUno 		
		update NormalCADetailRecord set Paidup_Price						=RIGHT('000000000000'+ CONVERT(VARCHAR,Paidup_Price),12)+'000000' 
									where CONVERT(VARCHAR,Paidup_Price) != 0 and  masteruniqno=@MastUno 
		UPDATE NormalCADetailRecord set Paidup_Amount						=RIGHT('000000000000000'+CONVERT(VARCHAR,Paidup_Amount),16)   +'00'	  
									where CONVERT(VARCHAR,Paidup_Amount) != 0 and  masteruniqno=@MastUno 
		UPDATE NormalCADetailDistRecord set Detail_Record_Line_No			=RIGHT('0000000'+CONVERT(VARCHAR,Detail_Record_Line_No),7) 
									where CONVERT(VARCHAR,Detail_Record_Line_No) != 0 and  masteruniqno=@MastUno 
		UPDATE NormalCADetailDistRecord set From_Distinctive_No_NSDL        =RIGHT('00000000000000000'+CONVERT(VARCHAR,From_Distinctive_No_NSDL),18)   
									where CONVERT(VARCHAR,From_Distinctive_No_NSDL) != 0 and  masteruniqno=@MastUno 
		UPDATE NormalCADetailDistRecord set To_Distinctive_No_NSDL          =RIGHT('00000000000000000'+CONVERT(VARCHAR,To_Distinctive_No_NSDL),18)   
									where CONVERT(VARCHAR,To_Distinctive_No_NSDL) != 0 and  masteruniqno=@MastUno 
		UPDATE NormalCADetailDistRecord set Quantity				        =RIGHT('00000000000000000'+CONVERT(VARCHAR,Quantity),18)   
									where CONVERT(VARCHAR,Quantity) != 0 and  masteruniqno=@MastUno 
END
GO
/****** Object:  StoredProcedure [dbo].[spExport1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spExport1]
as
begin
select * into fftemp4  from fftemp1
insert	 into fftemp4  select * from fftemp2
insert	 into fftemp4  select * from fftemp3

EXEC xp_cmdshell 'bcp "SELECT * FROM fftemp4" queryout "D:\brdata\SBR22112023.txt" -T -c -t,' 
IF OBJECT_ID ( 'fftemp1', 'U' ) IS NOT NULL  DROP TABLE fftemp1
IF OBJECT_ID ( 'fftemp2', 'U' ) IS NOT NULL  DROP TABLE fftemp2
IF OBJECT_ID ( 'fftemp3', 'U' ) IS NOT NULL  DROP TABLE fftemp3
IF OBJECT_ID ( 'fftemp4', 'U' ) IS NOT NULL  DROP TABLE fftemp4

end
GO
/****** Object:  StoredProcedure [dbo].[TESTRAJU]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[TESTRAJU]   @MastUNo nvarchar(4)
AS 
BEGIN
SET NOCOUNT ON
(
SELECT '01SHRI001'+        
	   +(RTA_Internal_Reference_No) 
	   +'    '+
	   +REPLICATE(' ',1-len(Debit_Credit_Indicator))+CONVERT(VARCHAR,Debit_Credit_Indicator)
	   +REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)
	   +(CA_Type)
	   +REPLICATE(' ',8-len(CONVERT(varchar,Allotment_Date,112)))+CONVERT(varchar,Allotment_Date,112)
	   +REPLICATE('0',4-LEN(Allocation_Allotment_Description))+CONVERT(VARCHAR,Allocation_Allotment_Description)
	   +REPLICATE(' ',8-len(CONVERT(varchar,Execution_Date,112)))+CONVERT(varchar,Execution_Date,112)
	   +REPLICATE('0',15-LEN(Total_Allotted_Quantity_Free_Lockin))+CONVERT(VARCHAR,Total_Allotted_Quantity_Free_Lockin)+'000'
	   +'000000000000000000'
	   --+REPLICATE('0',15-LEN(Total_Allotted_Quantity_Lockin))+CONVERT(VARCHAR,Total_Allotted_Quantity_Lockin)+'000'
	   +REPLICATE('0',7-LEN(Total_No_detail_records))+CONVERT(VARCHAR,Total_No_detail_records)
	   +REPLICATE('0',16-LEN(Total_Issued_Amount))+CONVERT(VARCHAR,Total_Issued_Amount)+'00'
	   +REPLICATE('0',16-LEN(Total_Paidup_Amount))+CONVERT(VARCHAR,Total_Paidup_Amount)+'00'  
	   +REPLICATE(' ',1-len(Stamp_Duty_Payable))+CONVERT(VARCHAR,Stamp_Duty_Payable)
	   +REPLICATE(' ',2-len(Basis_calculation_Stamp_Duty))+CONVERT(VARCHAR,Basis_calculation_Stamp_Duty)
	   +REPLICATE(' ',2-len(EBP_Name))+CONVERT(VARCHAR,EBP_Name)
	   +REPLICATE(' ',2-len(Funds_collected_through))+CONVERT(VARCHAR,Funds_collected_through)
	   +(FILLER) as ftemp1 into fftemp1
	   --+REPLICATE(' ',2-len(FILLER))+CONVERT(VARCHAR,FILLER) as ftemp1 into fftemp1
	FROM NormalCAHeaderRecord where masteruniqno = @MastUNo)
(
SELECT '02'+                                                  
       +REPLICATE('0',7-LEN(Detail_Record_Line_No))+CONVERT(VARCHAR,Detail_Record_Line_No)  
	   +REPLICATE('0',8-LEN(DP_ID))+CONVERT(VARCHAR,DP_ID) 
	   +REPLICATE(' ',8-len(client_id))+CONVERT(VARCHAR,CLIENT_ID) 
	       --+REPLICATE('0',8-LEN(Client_ID))+CONVERT(VARCHAR,Client_ID) 
	+REPLICATE(' ',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)
	   +REPLICATE('0',15-LEN(Allotment_Quantity))+CONVERT(VARCHAR,Allotment_Quantity)+'000' 
	   +REPLICATE('0',2-LEN(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)
	----(CASE WHEN LEN(phone)>2 THEN 'R' ELSE '' END), 		 WHEN B.occupation =2 then 'F'   WHEN B.occupation =3 then 'H'               ELSE 'O' END,    ELSE	   +'00000000'		END
	   +'        '
	   --+REPLICATE(' ',8-len(CONVERT(varchar,Lockin_Release_Date,112)))+CONVERT(varchar,Lockin_Release_Date,112)
	   +REPLICATE('0',12-LEN(Issue_Price))+CONVERT(VARCHAR,Issue_Price)+'000000' 
	   +REPLICATE('0',16-LEN(Issued_Amount))+CONVERT(VARCHAR,Issued_Amount)+'00' 
	   +REPLICATE('0',12-LEN(Paidup_Price))+CONVERT(VARCHAR,Paidup_Price) +'000000'
	   +REPLICATE('0',16-LEN(Paidup_Amount))+CONVERT(VARCHAR,Paidup_Amount)+'00' 
	   +CONVERT(VARCHAR(12),ISNULL(FILLER,''))+REPLICATE(' ',12-LEN(FILLER)) as ftemp2 into fftemp2                                                                                
	   --+REPLICATE(' ',12-LEN(FILLER))+CONVERT(VARCHAR,FILLER)  as ftemp2 into fftemp2
FROM NormalCADetailRecord where masteruniqno = @MastUNo)
(
SELECT '03'+                                                  
		+REPLICATE('0',7-LEN(Detail_Record_Line_No))+CONVERT(VARCHAR,Detail_Record_Line_No)  
		+REPLICATE('0',18-LEN(From_Distinctive_No_NSDL))+CONVERT(VARCHAR,From_Distinctive_No_NSDL)  
		+REPLICATE('0',18-LEN(To_Distinctive_No_NSDL))+CONVERT(VARCHAR,To_Distinctive_No_NSDL)  
		+REPLICATE('0',18-LEN(Quantity))+CONVERT(VARCHAR,Quantity)  
		+REPLICATE('0',2-LEN(Flag_status_DN_Range))
		+REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type)
		as ftemp3 into fftemp3
FROM NormalCADetailDistRecord  where masteruniqno = @MastUNo)
END

GO
/****** Object:  StoredProcedure [dbo].[UNIQREP]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UNIQREP] @ff1 varchar(100)
	AS 
	BEGIN
	SELECT ISIN AS ISIN FROM MASTNSDL02DT UNION SELECT ISIN_ALPHA_CODE AS ISIN FROM MASTCDSL02DT ORDER BY ISIN
	END
	
GO
/****** Object:  StoredProcedure [dbo].[updexcelcnvdt]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[updexcelcnvdt]  @MastUNo nvarchar(4)  
AS 
BEGIN 
IF object_id('temp1', 'U') is not null drop table temp1
IF object_id('temp2', 'U') is not null drop table temp2
IF object_id('temp3', 'U') is not null drop table temp3
IF object_id('temp4', 'U') is not null drop table temp4
IF object_id('temp5', 'U') is not null drop table temp5
IF object_id('temp6', 'U') is not null drop table temp6
IF object_id('temp7', 'U') is not null drop table temp7
update NormalCAExtraFieldsfromExcel			set MasterUniqNo = @MastUNo
update NormalCAHeaderRecordFromExcel		set MasterUniqNo = @MastUNo
update NormalCADetailRecordfromExcel		set MasterUniqNo = @MastUNo
update NormalCADetailDistRecordfromexcel	set MasterUniqNo = @MastUNo
delete from NormalCAHeaderRecordFromExcel	where id <> 1
select sum(convert(int,allotment_quantity)) as totqty into temp3 from NormalCADetailRecordfromExcel
select count(id) as totrec into temp4		from NormalCADetailRecordfromExcel
select isin,MasterUniqNo into temp6			from NormalCAHeaderRecordFromExcel
--UPDATE a SET a.Total_Allotted_Quantity_Free_Lockin = RIGHT('0000000000000000'+CONVERT(VARCHAR,B.totqty),15)+'000' FROM NormalCAHeaderRecordFromExcel a JOIN temp3 b ON a.ID=1
UPDATE a SET a.Total_No_detail_records		= RIGHT('0000000'+CONVERT(VARCHAR,B.totrec),7) FROM NormalCAHeaderRecordFromExcel a JOIN temp4 b ON a.ID=1
--UPDATE NormalCAHeaderRecordFromExcel	set Total_No_detail_records = '01'
UPDATE NormalCAHeaderRecordFromExcel		set Record_identification ='01'
UPDATE NormalCAHeaderRecordFromExcel		set File_Identification='01'
update NormalCADetailRecordfromExcel		set Record_identification ='02' where MasterUniqNo = @MastUNo
update NormalCADetailRecordfromExcel		set Paidup_Price = Issue_Price where MasterUniqNo = @MastUNo
update NormalCADetailRecordfromExcel		set Issued_Amount	=convert(int,allotment_quantity)*convert(int,issue_price)  where MasterUniqNo = @MastUNo
update NormalCADetailRecordfromExcel		set Paidup_Amount	=Issued_Amount where MasterUniqNo = @MastUNo
--update NormalCADetailRecordfromExcel		set Client_Account_Category ='02' where MasterUniqNo = @MastUNo
--update NormalCADetailRecordfromExcel		set Lockin_Reason_Code ='02' where MasterUniqNo = @MastUNo
update NormalCADetailRecordfromExcel		set Lockin_Release_Date ='        ' where MasterUniqNo = @MastUNo
update NormalCADetailRecordfromExcel		set Issue_Price		=RIGHT('000000000000'+ CONVERT(VARCHAR,Issue_Price),12)+'000000' where MasterUniqNo = @MastUNo
update NormalCADetailRecordfromExcel		set Paidup_Price	= issue_price where MasterUniqNo = @MastUNo
update NormalCADetailRecordfromExcel		set Issued_Amount	=RIGHT('0000000000000000'+ CONVERT(VARCHAR,Issued_Amount),16)+'00' where MasterUniqNo = @MastUNo
update NormalCADetailRecordfromExcel		set Paidup_Amount	= ISSUED_AMOUNT where MasterUniqNo = @MastUNo
update NormalCADetailRecordfromExcel		set Filler			='            ' where MasterUniqNo = @MastUNo
update NormalCADetailRecordfromExcel		set Allotment_Quantity	=RIGHT('0000000000000000'+ CONVERT(VARCHAR,Allotment_Quantity),16)+'00' where MasterUniqNo = @MastUNo

SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID,DP_ID INTO TEMP2 FROM NormalCADetailRecordfromExcel WHERE id < 99999
UPDATE a SET a.Detail_Record_Line_No		= RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM NormalCADetailRecordfromExcel a JOIN TEMP2 b ON a.ID=b.ID

SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN1,ID INTO temp5 FROM NormalCADetailDistRecordfromexcel WHERE id < 99999
UPDATE a SET a.Detail_Record_Line_No		= RIGHT('0000000'+CONVERT(VARCHAR,B.RowN1),7) FROM NormalCADetailDistRecordfromexcel a JOIN temp5 b ON a.ID=b.ID

UPDATE NormalCADetailDistRecordFromExcel	set Record_IDentification ='03'
update NormalCADetailDistRecordFromExcel	set From_Distinctive_No_NSDL = RIGHT('000000000000000000'+ CONVERT(VARCHAR,From_Distinctive_No_NSDL),18)						
update NormalCADetailDistRecordFromExcel	set To_Distinctive_No_NSDL = RIGHT('000000000000000000'+ CONVERT(VARCHAR,To_Distinctive_No_NSDL),18)						
update NormalCADetailDistRecordFromExcel	set Quantity =convert(int,To_Distinctive_No_NSDL) - convert(int,From_Distinctive_No_NSDL) + 1 
UPDATE NormalCADetailDistRecordFromExcel	set Quantity =RIGHT('000000000000000000'+CONVERT(VARCHAR,quantity),18) 
UPDATE NormalCADetailDistRecordFromExcel	set Record_IDentification ='03'

UPDATE a set a.Debit_Credit_Isin = b.isin	from NormalCADetailDistRecordFromExcel a JOIN TEMP6 b ON a.MasterUniqNo = b.MasterUniqNo
select sum(convert(int,issued_amount))		as totissamt, sum(convert(int,paidup_amount)) as totpdamt, 1 as id into temp7 from NormalCADetailRecordfromExcel
UPDATE a set a.Total_Issued_Amount			=RIGHT('000000000000000'+CONVERT(VARCHAR,B.totissamt),15)+'000'	from NormalCAHeaderRecordFromExcel a JOIN temp7 b ON a.id = b.id
UPDATE a set a.Total_Paidup_Amount			=RIGHT('000000000000000'+CONVERT(VARCHAR,B.totpdamt),15)+'000'	from NormalCAHeaderRecordFromExcel a JOIN temp7 b ON a.id = b.id

--
UPDATE a SET a.RTA_Internal_Reference_No			= b.RTA_Internal_Reference_No			FROM NormalCAHeaderRecordFromExcel a JOIN normalcaFieldsfromKK b ON a.MasterUniqNo=b.MasterUniqNo
UPDATE a SET a.Debit_Credit_Indicator				= b.Debit_Credit_Indicator				FROM NormalCAHeaderRecordFromExcel a JOIN normalcaFieldsfromKK b ON a.MasterUniqNo=b.MasterUniqNo
UPDATE a SET a.ca_type								= b.ca_type								FROM NormalCAHeaderRecordFromExcel a JOIN normalcaFieldsfromKK b ON a.MasterUniqNo=b.MasterUniqNo
UPDATE a SET a.Allocation_Allotment_Description		= b.Allocation_Allotment_Description	FROM NormalCAHeaderRecordFromExcel a JOIN normalcaFieldsfromKK b ON a.MasterUniqNo=b.MasterUniqNo
UPDATE a SET a.Execution_Date						= b.Execution_Date						FROM NormalCAHeaderRecordFromExcel a JOIN normalcaFieldsfromKK b ON a.MasterUniqNo=b.MasterUniqNo
UPDATE a SET a.Total_Allotted_Quantity_Lockin		= b.Total_Allotted_Quantity_Lockin		FROM NormalCAHeaderRecordFromExcel a JOIN normalcaFieldsfromKK b ON a.MasterUniqNo=b.MasterUniqNo
UPDATE a SET a.Stamp_Duty_Payable					= b.Stamp_Duty_Payable					FROM NormalCAHeaderRecordFromExcel a JOIN normalcaFieldsfromKK b ON a.MasterUniqNo=b.MasterUniqNo
UPDATE a SET a.Basis_calculation_Stamp_Duty			= b.Basis_calculation_Stamp_Duty		FROM NormalCAHeaderRecordFromExcel a JOIN normalcaFieldsfromKK b ON a.MasterUniqNo=b.MasterUniqNo
UPDATE a SET a.Client_Account_Category				= b.Client_Account_Category				FROM NormalCADetailRecordfromExcel a JOIN normalcaFieldsfromKK b ON a.MasterUniqNo=b.MasterUniqNo
UPDATE a SET a.Lockin_Reason_Code					= b.Lockin_Reason_Code					FROM NormalCADetailRecordfromExcel a JOIN normalcaFieldsfromKK b ON a.MasterUniqNo=b.MasterUniqNo
UPDATE a SET a.Debit_Credit_Indicator				= b.Debit_Credit_Indicator				FROM NormalCADetailDistRecordFromExcel a JOIN normalcaFieldsfromKK b ON a.MasterUniqNo=b.MasterUniqNo
UPDATE a SET a.Flag_status_DN_Range					= b.Flag_status_DN_Range				FROM NormalCADetailDistRecordFromExcel a JOIN normalcaFieldsfromKK b ON a.MasterUniqNo=b.MasterUniqNo
UPDATE a SET a.ca_type								= b.ca_type								FROM NormalCADetailDistRecordFromExcel a JOIN normalcaFieldsfromKK b ON a.MasterUniqNo=b.MasterUniqNo
UPDATE a SET a.Total_Allotted_Quantity_Free_Lockin = RIGHT('0000000000000000'+CONVERT(VARCHAR,B.totqty),15)+'000' FROM NormalCAHeaderRecordFromExcel a JOIN temp3 b ON a.ID=1
update NormalCAHeaderRecordFromExcel SET EBP_NAME='00'
update NormalCAHeaderRecordFromExcel SET Funds_collected_through='00'
update NormalCAHeaderRecordFromExcel set filler ='  ' 
END
GO
/****** Object:  StoredProcedure [dbo].[updexcelcnvdt1]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[updexcelcnvdt1] @RtaNo varchar(16), @Debit_Credit_Indicator varchar(1),@CA_Type varchar(12), @Allocation_Allotment_Description varchar(4), @Execution_Date datetime,
@Total_Allotted_Quantity_Lockin varchar(18), @Stamp_Duty_Payable varchar(1),@Basis_calculation_Stamp_Duty varchar(2), @Client_Account_Category varchar(2),@Lockin_Reason_Code varchar(2),
@Flag_status_DN_Range varchar(2)
AS
BEGIN
UPDATE NormalCAHeaderRecordFromExcel		set RTA_Internal_Reference_No = @RtaNo
UPDATE NormalCAHeaderRecordFromExcel		set Debit_Credit_Indicator = @Debit_Credit_Indicator 
UPDATE NormalCAHeaderRecordFromExcel		set CA_Type = @CA_Type
UPDATE NormalCAHeaderRecordFromExcel		set Allocation_Allotment_Description = @Allocation_Allotment_Description
UPDATE NormalCAHeaderRecordFromExcel		set Execution_Date = getdate() +1
UPDATE NormalCAHeaderRecordFromExcel		set Total_Allotted_Quantity_Lockin = '000000000000000000'
UPDATE NormalCAHeaderRecordFromExcel		set Stamp_Duty_Payable = @Stamp_Duty_Payable
UPDATE NormalCAHeaderRecordFromExcel		set Basis_calculation_Stamp_Duty = @Basis_calculation_Stamp_Duty
update NormalCADetailRecordfromExcel		set Client_Account_Category = @Client_Account_Category
update NormalCADetailRecordfromExcel		set Lockin_Reason_Code = @Lockin_Reason_Code
update NormalCADetailDistRecordFromExcel	set Debit_Credit_Indicator = @Debit_Credit_Indicator
update NormalCADetailDistRecordFromExcel	set Flag_status_DN_Range = @Flag_status_DN_Range
update NormalCADetailDistRecordFromExcel	set CA_TYPE = @CA_TYPE
END
GO
/****** Object:  StoredProcedure [dbo].[vb00]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[vb00]
as 
begin
IF OBJECT_ID ( 'bendemt1', 'U' ) IS NOT NULL  DROP TABLE bendemt1
Create table bendemt1 (isin varchar(12),dpid varchar(8),clid varchar(8))
TRUNCATE TABLE BENDEMT1
--BULK INSERT bendemt1 FROM '@SrcFilename' WITH (  FIELDTERMINATOR = ',',  ROWTERMINATOR = '\n',  FIRSTROW = 2);
BULK INSERT bendemt1 
FROM 'D:\bendata\bendem01.csv' 
WITH (FIRSTROW =2,
FIELDTERMINATOR = ',',  
ROWTERMINATOR = '\n',
BATCHSIZE=150000);
delete from bendemt1 where dpid NOT LIKE 'I%'

;WITH list_rownumbers AS 
( 
SELECT dpid,clid, 
	   row_number() over (order by dpid,clid) AS 'Rownumber' 
	   from bendemt1 
)
delete list_rownumbers where rownumber not in 
(select min(rownumber) from list_rownumbers group by dpid,clid)
;with cte AS
( 
SELECT *,row_number() over (partition by dpid,clid order by dpid,clid) as rownumber from bendemt1 
) 
delete from cte where rownumber>1
delete temp from (SELECT *,row_number() over (partition by dpid,clid order by dpid,clid) as rownumber from bendemt1) as temp 
where rownumber>1
drop table temp25
ALTER TABLE BENDEMT1 ADD id int primary key identity(1,1),record_Type varchar(2), Line_no varchar(7)

SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO TEMP25 FROM bendemt1 WHERE id < 99999
UPDATE a SET a.Line_no = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM bendemt1 a JOIN temp25 b ON a.ID=b.ID
--XXXXXXXXXXXXSBR
DECLARE @ISIN1 VARCHAR(12)
SELECT @ISIN1 = ISIN
FROM BENDEMT1 
update bendemt0 set record_Type	= '01',
				--batch_no		= RIGHT('0000000'+CONVERT(VARCHAR,@batch_no),7),
				batch_no		= '0000001',
				rta_id			= 'IN200537',
				isin			= @ISIN1,
				request_type	= '1',
				sender_id		= '          ',
				sender_date		= FORMAT(GETDATE(),'yyyyMMdd'),
				filler1			= '        '
				
SET NOCOUNT ON      
(      
SELECT '01'+                                                        
			+batch_no			
			+rta_id				
			+isin				
			+request_type		
			+sender_id			
			+FORMAT(GETDATE(),'yyyyMMdd')
			--sender_date
			+'        '
			as rem into #TEMP11
FROM bendemt0)
(
SELECT '02'+                                                        
    +Line_no			
	+dpid			
	+clid			
	+'          '
	as rem into #TEMP22
FROM bendemt1
)
--create table bendemt3 add btempf varchar(200)
IF OBJECT_ID ( 'bendemt2', 'U' ) IS NOT NULL  DROP TABLE bendemt2
create table bendemt2 (rem varchar(100))
insert	 into bendemt2 select * from #temp11
insert	 into bendemt2 select * from #temp22
DECLARE @cmd varchar(500),@filename1 varchar(100)
SELECT @filename1 ='IN200537_BENDEM_'+FORMAT(GETDATE(),'yyyyMMdd')+'_'+FORMAT(GETDATE(),'HHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM vccipl.[dbo].[bendemt2]" '+ 'queryout d:\bendata\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
--XXXXXXXXXXXXSBR
END


GO
/****** Object:  StoredProcedure [dbo].[vb01]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[vb01]
as 
begin 
		update bendem630_dt  set
					Filler01					= substring(rem,1,2),
					DP_ID						= substring(rem,3,8),
					Filler02					= substring(rem,11,2),
					Client_ID					= substring(rem,13,8),
					Filler03					= substring(rem,21,2),
					First_holder_Name			= substring(rem,23,250),
					Filler04					= substring(rem,273,2),
					First_Holder_PAN			= substring(rem,275,30),
					Filler05					= substring(rem,305,2),
					First_Holder_PAN_status		= substring(rem,307,8),
					Filler06					= substring(rem,315,2),
					Second_Holder_Name			= substring(rem,317,45),
					Filler07					= substring(rem,362,2),
					Second_Holder_PAN			= substring(rem,364,30),
					Filler08					= substring(rem,394,2),
					Second_Holder_PAN_status	= substring(rem,396,8),
					Filler09					= substring(rem,404,2),
					Third_Holder_Name			= substring(rem,406,45),
					Filler10					= substring(rem,451,2),
					Third_Holder_PAN			= substring(rem,453,30),
					Filler11					= substring(rem,483,2),
					Third_Holder_PAN_status		= substring(rem,485,8),
					Filler12					= substring(rem,493,2),
					Minor_indicator				= substring(rem,495,10),
					Filler13					= substring(rem,505,2),
					Nominee_Guardian_Indicator  = substring(rem,507,10),
					Filler14					= substring(rem,517,2),
					Nominee_Guardian_Name		= substring(rem,519,45),
					Filler15					= substring(rem,564,2),
					Client_Account_Status		= substring(rem,566,13),
					Filler16					= substring(rem,579,2),
					Account_Category			= substring(rem,581,13),
					Filler17					= substring(rem,594,2),
					Account_Type				= substring(rem,596,5),
					Filler18					= substring(rem,601,2),
					Account_Sub_Type			= substring(rem,603,8),
					Filler19					= substring(rem,611,2),
					Ahdealingewhreceipt			= substring(rem,613,16),
					Filler20					= substring(rem,629,2)
		delete from bendem630_dt where dp_id like '%-%'
		delete from bendem630_dt where rem like '%END%'
		UPDATE a SET a.present_status 	= b.status_description  FROM bendem630_dt a JOIN MASTERACCOUNTSTATUS b  ON a.Client_Account_Status=b.account_status  and b.deptype='NSDL'
		drop table bendem_fin
		select * into bendem_fin from bendem630_dt			
		alter table bendem_fin drop column rem,Filler01,Filler02,Filler03,Filler04,Filler05,Filler06,Filler07,Filler08,Filler09,Filler10,Filler11,Filler12,Filler13,Filler14,Filler15,Filler16,Filler17,Filler18,Filler19,Filler20,id,masteruniqno
		--DECLARE @Variable VARCHAR(100)
		DECLARE @CMDSQL VARCHAR(1000)
		--SET @Variable = 'C:\Microsoft Dynamics\SL\Applications\LogFacturacion\LOGERROR002211.txt'
		--SET @CMDSQL = 'd:\D:\bendata\benfinproc.bat' + @Variable
		SET @CMDSQL = 'D:\bendata\benfinproc.bat'
		EXEC xp_CMDShell @CMDSQL
		PRINT 'Your file is available in the location d:\bendata\Bendem_finaldata.csv' 

END


GO
/****** Object:  StoredProcedure [dbo].[vb02]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[vb02] 
as 
begin
DECLARE @ISIN1 VARCHAR(12)
SELECT @ISIN1 = ISIN
FROM BENDEMT1 
update bendemt0 set record_Type	= '01',
				--batch_no		= RIGHT('0000000'+CONVERT(VARCHAR,@batch_no),7),
				batch_no		= '0000001',
				rta_id			= 'IN200537',
				isin			= @ISIN1,
				request_type	= '1',
				sender_id		= '          ',
				sender_date		= FORMAT(GETDATE(),'yyyyMMdd'),
				filler1			= '        '
				
SET NOCOUNT ON      
(      
SELECT '01'+                                                        
			+batch_no			
			+rta_id				
			+isin				
			+request_type		
			+sender_id			
			+FORMAT(GETDATE(),'yyyyMMdd')
			--sender_date
			+'        '
			as rem into #TEMP11
FROM bendemt0)
(
SELECT '02'+                                                        
    +Line_no			
	+dpid			
	+clid			
	+'          '
	as rem into #TEMP22
FROM bendemt1
)
--create table bendemt3 add btempf varchar(200)
IF OBJECT_ID ( 'bendemt2', 'U' ) IS NOT NULL  DROP TABLE bendemt2
create table bendemt2 (rem varchar(100))
insert	 into bendemt2 select * from #temp11
insert	 into bendemt2 select * from #temp22
DECLARE @cmd varchar(500),@filename1 varchar(100)
SELECT @filename1 ='IN200537_BENDEM_'+FORMAT(GETDATE(),'yyyyMMdd')+'_'+FORMAT(GETDATE(),'HHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM vccipl.[dbo].[bendemt2]" '+ 'queryout d:\bendata\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
END




GO
/****** Object:  StoredProcedure [dbo].[VbenposDT]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[VbenposDT]
AS 
BEGIN
SET NOCOUNT ON
(
SELECT	'02'+
		+REPLICATE('0',7-len(rownum))+CONVERT(VARCHAR,rownum)
		+REPLICATE(' ',8-len(DP_ID))+CONVERT(VARCHAR,DP_ID)
		+REPLICATE(' ',8-len(Ben_Acc_No))+CONVERT(VARCHAR,Ben_Acc_No)
		+'          ' 
		as vtemp1 into vtem1a
		FROM vbenposdownloadedfileDT)
END
GO
/****** Object:  StoredProcedure [dbo].[VbenposHD]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VbenposHD]
AS 
BEGIN
SET NOCOUNT ON
(
SELECT	'01'+			-- RECORD TYPE AS 01 FOR HEADER
		+'0000999'+		-- BATCH NUMBER LATER CAN BE MODIFIED AT THE TIME OF UPLOAD
		+'IN200537'+	-- RTA ID 
		+ISIN+			-- ISIN NUMBER
		+'4'			-- REQUEST TYPE ALWAYS 04
		+'        '		-- SENDER ID MOSTLY BLANK 
		+CONVERT(varchar,getdate(),112) -- sender date
		+'        '		-- Filler of 8
		as vtemp1 into vtem1
		FROM vbenposdownloadedfileHD)
END
GO
/****** Object:  StoredProcedure [dbo].[vbenproc00]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[vbenproc00] @ISIN varchar(12),@batch_no varchar(7)
as 
begin

--create table bendemt0 (			id				int primary key identity(1,1),			record_Type		varchar(2),
--			batch_no		varchar(7),			rta_id			varchar(8),			isin			varchar(12),
--			request_type	varchar(1),			sender_id		varchar(8),			sender_date		varchar(8),			filler1			varchar(8))
--select * from bendem01
update bendemt0 set record_Type	= '01',
				batch_no		= RIGHT('0000000'+CONVERT(VARCHAR,@batch_no),7),
				rta_id			= 'IN200537',
				isin			= @ISIN,
				request_type	= '1',
				sender_id		= '          ',
				sender_date		= FORMAT(GETDATE(),'yyyyMMdd'),
				filler1			= '        '

SET NOCOUNT ON      
(      
SELECT '01'+                                                        
			+batch_no			
			+rta_id				
			+isin				
			+request_type		
			+sender_id			
			+FORMAT(GETDATE(),'yyyyMMdd')
			--sender_date
			+'        '
			as rem into #TEMP1
FROM bendemt0)
(
SELECT '02'+                                                        
    +Line_no			
	+dpid			
	+clid			
	+'          '
	as rem into #TEMP2
FROM bendemt1
)
--create table bendemt3 add btempf varchar(200)
IF OBJECT_ID ( 'bendemt2', 'U' ) IS NOT NULL  DROP TABLE bendemt2
create table bendemt2 (rem varchar(100))
insert	 into bendemt2 select * from #temp1
insert	 into bendemt2 select * from #temp2
DECLARE @cmd varchar(500),@filename1 varchar(100)
SELECT @filename1 ='IN200537_BENDEM_'+FORMAT(GETDATE(),'yyyyMMdd')+'_'+FORMAT(GETDATE(),'HHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM vccipl.[dbo].[bendemt2]" '+ 'queryout d:\bendata\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
END



GO
/****** Object:  StoredProcedure [dbo].[VBENPROC01]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VBENPROC01] @SrcFilename varchar(100) 
as 
begin
drop table bendemt1
Create table bendemt1 (isin varchar(12),dpid varchar(8),clid varchar(8))
TRUNCATE TABLE BENDEMT1
BULK INSERT bendemt1 FROM '@SrcFilename' WITH (  FIELDTERMINATOR = ',',  ROWTERMINATOR = '\n',  FIRSTROW = 2);
--BULK INSERT bendemt1 FROM 'D:\bendata\bendem01.csv' WITH (  FIELDTERMINATOR = ',',  ROWTERMINATOR = '\n',  FIRSTROW = 2);
SELECT * FROM BENDEMT1
delete from bendemt1 where dpid NOT LIKE 'I%'
--xx1

;WITH list_rownumbers AS 
( 
SELECT dpid,clid, 
	   row_number() over (order by dpid,clid) AS 'Rownumber' 
	   from bendemt1 
)
delete list_rownumbers where rownumber not in 
(select min(rownumber) from list_rownumbers group by dpid,clid)
--xx2
;with cte AS
( 
SELECT *,row_number() over (partition by dpid,clid order by dpid,clid) as rownumber from bendemt1 
) 
delete from cte where rownumber>1
--xx3
delete temp from (SELECT *,row_number() over (partition by dpid,clid order by dpid,clid) as rownumber from bendemt1) as temp 
where rownumber>1
alter table bendemt1 add id int primary key identity(1,1),record_type varchar(2), line_no varchar(7)
update bendemt1 set record_type='02'
SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO #TEMP2 FROM bendemt1 WHERE id < 99999
UPDATE a SET a.Line_no = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM bendemt1 a JOIN #temp2 b ON a.ID=b.ID
drop table bendemt2
END
GO
/****** Object:  StoredProcedure [dbo].[vbenproc02]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[vbenproc02] 
as 
begin 
		update bendem630_dt  set
					Filler01					= substring(rem,1,2),
					DP_ID						= substring(rem,3,8),
					Filler02					= substring(rem,11,2),
					Client_ID					= substring(rem,13,8),
					Filler03					= substring(rem,21,2),
					First_holder_Name			= substring(rem,23,250),
					Filler04					= substring(rem,273,2),
					First_Holder_PAN			= substring(rem,275,30),
					Filler05					= substring(rem,305,2),
					First_Holder_PAN_status		= substring(rem,307,8),
					Filler06					= substring(rem,315,2),
					Second_Holder_Name			= substring(rem,317,45),
					Filler07					= substring(rem,362,2),
					Second_Holder_PAN			= substring(rem,364,30),
					Filler08					= substring(rem,394,2),
					Second_Holder_PAN_status	= substring(rem,396,8),
					Filler09					= substring(rem,404,2),
					Third_Holder_Name			= substring(rem,406,45),
					Filler10					= substring(rem,451,2),
					Third_Holder_PAN			= substring(rem,453,30),
					Filler11					= substring(rem,483,2),
					Third_Holder_PAN_status		= substring(rem,485,8),
					Filler12					= substring(rem,493,2),
					Minor_indicator				= substring(rem,495,10),
					Filler13					= substring(rem,505,2),
					Nominee_Guardian_Indicator  = substring(rem,507,10),
					Filler14					= substring(rem,517,2),
					Nominee_Guardian_Name		= substring(rem,519,45),
					Filler15					= substring(rem,564,2),
					Client_Account_Status		= substring(rem,566,13),
					Filler16					= substring(rem,579,2),
					Account_Category			= substring(rem,581,13),
					Filler17					= substring(rem,594,2),
					Account_Type				= substring(rem,596,5),
					Filler18					= substring(rem,601,2),
					Account_Sub_Type			= substring(rem,603,8),
					Filler19					= substring(rem,611,2),
					Ahdealingewhreceipt			= substring(rem,613,16),
					Filler20					= substring(rem,629,2)
		delete from bendem630_dt where dp_id like '%-%'
		delete from bendem630_dt where rem like '%END%'
		UPDATE a SET a.present_status 	= b.status_description  FROM bendem630_dt a JOIN MASTERACCOUNTSTATUS b  ON a.Client_Account_Status=b.account_status  and b.deptype='NSDL'
END
GO
/****** Object:  StoredProcedure [dbo].[vcgencafile01]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[vcgencafile01] @MastUno varchar(4)
as
begin
SET NOCOUNT OFF      

		UPDATE NormalCAHeaderRecord SET PROCESSFLAG ='N' WHERE PROCESSFLAG IS NULL
		UPDATE NormalCADetailRecord SET PROCESSEDFLAG ='N' WHERE PROCESSEDFLAG IS NULL


		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.005	/100 where stmpparam ='A' and MasterUniqNo = @MastUno and processflag = 'N' and calcflag='N'
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.0001	/100 where stmpparam ='B' and MasterUniqNo = @MastUno and processflag = 'N' and calcflag='N'
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.005	/100 where stmpparam ='C' and MasterUniqNo = @MastUno and processflag = 'N' and calcflag='N'
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.015	/100 where stmpparam ='D' and MasterUniqNo = @MastUno and processflag = 'N' and calcflag='N'
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.003	/100 where stmpparam ='E' and MasterUniqNo = @MastUno and processflag = 'N' and calcflag='N'
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.00		/100 where stmpparam ='F' and MasterUniqNo = @MastUno and processflag = 'N' and calcflag='N'
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.00001	/100 where stmpparam ='G' and MasterUniqNo = @MastUno and processflag = 'N' and calcflag='N'
		UPDATE NormalCAHeaderRecord set Total_Allotted_Quantity_Free_Lockin =  RIGHT('000000000000000' 
		                                +CONVERT(VARCHAR,Total_Allotted_Quantity_Free_Lockin),15) +'000'	where 
										masteruniqno=@MastUno  and Processflag ='N' and calcflag ='N'
		UPDATE NormalCAHeaderRecord set Total_Allotted_Quantity_Lockin		=	RIGHT('000000000000000' 
										+CONVERT(VARCHAR,Total_Allotted_Quantity_Lockin),15) +'000'			where 
										masteruniqno=@MastUno  and Processflag ='N'  and calcflag ='N'
		UPDATE NormalCAHeaderRecord set Total_No_detail_records				=	RIGHT('0000000'			+CONVERT(VARCHAR,Total_No_detail_records),7) where 
										masteruniqno=@MastUno  and Processflag ='N' and calcflag ='N'
		UPDATE NormalCAHeaderRecord set Total_Issued_Amount					=	RIGHT('0000000000000000'	+CONVERT(VARCHAR,Total_Issued_Amount),16)   +'00'	  where
										masteruniqno=@MastUno  and Processflag ='N' and calcflag ='N'
		UPDATE NormalCAHeaderRecord set Total_Paidup_Amount					=	RIGHT('0000000000000000'+CONVERT(VARCHAR,Total_Paidup_Amount),16)   +'00'	  where
										masteruniqno=@MastUno  and Processflag ='N' and calcflag ='N'
		--UPDATE NormalCAHeaderRecord SET  Filler									= REPLACE(STR(Filler,2),' ',' ') where MASTERUNIQNO = @MastUno

		UPDATE NormalCADetailRecord set Detail_Record_Line_No				=	RIGHT('0000000'+CONVERT(VARCHAR,Detail_Record_Line_No),7)   where
										masteruniqno=@MastUno  and Processedflag ='N' and calcflag ='N'
		UPDATE NormalCADetailRecord set Allotment_Quantity				    =RIGHT('000000000000000'+CONVERT(VARCHAR,Allotment_Quantity),15)   +'000'	  where
										masteruniqno=@MastUno  and Processedflag ='N' and calcflag ='N'
		update NormalCADetailRecord set Issue_Price							=RIGHT('000000000000'+ CONVERT(VARCHAR,Issue_Price),12)+'000000'			where
										masteruniqno=@MastUno  and Processedflag ='N'  and calcflag ='N'
		UPDATE NormalCADetailRecord set issued_amount						=RIGHT('0000000000000000'+CONVERT(VARCHAR,issued_amount),16)   +'00'			where
										masteruniqno=@MastUno  and Processedflag ='N'and calcflag ='N'
		update NormalCADetailRecord set Paidup_Price						=RIGHT('000000000000'+ CONVERT(VARCHAR,Paidup_Price),12)+'000000'		where
										masteruniqno=@MastUno  and Processedflag ='N' and calcflag ='N'
		UPDATE NormalCADetailRecord set Paidup_Amount						=RIGHT('0000000000000000'+CONVERT(VARCHAR,Paidup_Amount),16)   +'00'		where
										masteruniqno=@MastUno  and Processedflag ='N' and calcflag ='N'
		UPDATE NormalCADetailDistRecord set Detail_Record_Line_No			=RIGHT('0000000'+CONVERT(VARCHAR,Detail_Record_Line_No),7)			where
										masteruniqno=@MastUno  and Processedflag ='N' and calcflag ='N'
		UPDATE NormalCADetailDistRecord set From_Distinctive_No_NSDL        =RIGHT('000000000000000000'+CONVERT(VARCHAR,From_Distinctive_No_NSDL),18)   where
										masteruniqno=@MastUno  and Processedflag ='N' and calcflag ='N'
		UPDATE NormalCADetailDistRecord set To_Distinctive_No_NSDL          =RIGHT('000000000000000000'+CONVERT(VARCHAR,To_Distinctive_No_NSDL),18)   where
										masteruniqno=@MastUno  and Processedflag ='N' and calcflag ='N'
		UPDATE NormalCADetailDistRecord set Quantity				        =RIGHT('000000000000000000'+CONVERT(VARCHAR,Quantity),18)   where
										masteruniqno=@MastUno  and Processedflag ='N' and calcflag ='N'

SET NOCOUNT ON      
(
SELECT '01SHRI001'+           
    +CONVERT(VARCHAR(16),RTA_Internal_Reference_No)+REPLICATE(' ',16-LEN(RTA_Internal_Reference_No))      
    +REPLICATE(' ',1-len(Debit_Credit_Indicator))+CONVERT(VARCHAR,Debit_Credit_Indicator)      
    +REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)      
    +REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type)      
	--+CA_Type
    +REPLICATE(' ',8-len(CONVERT(varchar,Allotment_Date,112)))+CONVERT(varchar,Allotment_Date,112)      
    +REPLICATE('0',4-LEN(Allocation_Allotment_Description))+CONVERT(VARCHAR,Allocation_Allotment_Description)      
    +REPLICATE(' ',8-len(CONVERT(varchar,Execution_Date,112)))+CONVERT(varchar,Execution_Date,112)      
	+Total_Allotted_Quantity_Free_Lockin
	+Total_Allotted_Quantity_Lockin
    +Total_No_detail_records
	+Total_Issued_Amount
	+Total_Paidup_Amount
	+REPLICATE(' ',1-len(Stamp_Duty_Payable))+CONVERT(VARCHAR,Stamp_Duty_Payable)      
    +REPLICATE(' ',2-len(Basis_calculation_Stamp_Duty))+CONVERT(VARCHAR,Basis_calculation_Stamp_Duty)      
    +REPLICATE(' ',2-len(EBP_Name))+CONVERT(VARCHAR,EBP_Name)      
    +REPLICATE(' ',2-len(Funds_collected_through))+CONVERT(VARCHAR,Funds_collected_through)      
    +'  '
	as ftemp1 into #temp1      
	FROM NormalCAHeaderRecord
	where masteruniqno = @MastUNo and processflag = 'N')      
(      
SELECT '02'+                                                        
    +Detail_Record_Line_No
    +REPLICATE('0',8-LEN(DP_ID))+CONVERT(VARCHAR,DP_ID)       
    +REPLICATE(' ',8-len(client_id))+CONVERT(VARCHAR,CLIENT_ID)       
    +REPLICATE(' ',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
    +Allotment_Quantity
    +REPLICATE('0',2-LEN(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
    +'        '      
    --+REPLICATE(' ',8-len(CONVERT(varchar,Lockin_Release_Date,112)))+CONVERT(varchar,Lockin_Release_Date,112)      
    +Issue_Price
    +Issued_Amount
    +Paidup_Price
    +Paidup_Amount
	+'            '    
    as ftemp1 into #temp2
    --+REPLICATE(' ',12-LEN(FILLER))+CONVERT(VARCHAR,FILLER)  as ftemp2 into fftemp2      
FROM NormalCADetailRecord 
where masteruniqno = @MastUNo and ProcessedFlag = 'N')      
(      
SELECT '03'+                                                        
  +Detail_Record_Line_No
  +From_Distinctive_No_NSDL
  +To_Distinctive_No_NSDL
  +Quantity
  +REPLICATE('0',2-LEN(Flag_status_DN_Range))+CONVERT(VARCHAR,FLAG_STATUS_DN_RANGE)
  +REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type)      
  as ftemp1 into #temp3     
FROM NormalCADetailDistRecord  
where masteruniqno = @MastUNo and processedflag = 'N')      
update NormalCAHeaderRecord set Processflag ='Y' where Processflag = 'N' and MasterUniqNo = @MastUno
update NormalCADetailRecord set Processedflag ='Y' where processedflag = 'N' and MasterUniqNo = @MastUno
update NormalCADetailDistRecord set Processedflag ='Y' where processedflag = 'N' and MasterUniqNo = @MastUno
IF OBJECT_ID ( 'fftemp1', 'U' ) IS NOT NULL  DROP TABLE fftemp1
select * into fftemp1  from #temp1
insert	 into fftemp1  select * from #temp2
insert	 into fftemp1  select * from #temp3
select * from fftemp1
END 
GO
/****** Object:  StoredProcedure [dbo].[vcgencafile01f]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[vcgencafile01f]
as
begin
SET NOCOUNT OFF      
		UPDATE NormalCAHeaderRecord SET PROCESSFLAG ='N',		calcflag = 'N' WHERE PROCESSFLAG IS NULL
		UPDATE NormalCADetailRecord SET PROCESSEDFLAG ='N',		calcflag = 'N' WHERE PROCESSEDFLAG IS NULL
		UPDATE NormalCADetailDistRecord SET PROCESSEDFLAG ='N', calcflag = 'N' WHERE PROCESSEDFLAG IS NULL
		UPDATE NormalCAHeaderRecord SET PROCESSFLAG ='N',		calcflag = 'N' WHERE PROCESSFLAG IS NULL
		UPDATE NormalCADetailRecord SET PROCESSEDFLAG ='N',		calcflag = 'N' WHERE PROCESSEDFLAG IS NULL
		UPDATE NormalCADetailDistRecord SET PROCESSEDFLAG ='N', calcflag = 'N' WHERE PROCESSEDFLAG IS NULL
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.005	/100 where stmpparam ='A' and  processflag = 'N' and calcflag='N'
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.0001	/100 where stmpparam ='B' and  processflag = 'N' and calcflag='N'
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.005	/100 where stmpparam ='C' and  processflag = 'N' and calcflag='N'
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.015	/100 where stmpparam ='D' and  processflag = 'N' and calcflag='N'
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.003	/100 where stmpparam ='E' and  processflag = 'N' and calcflag='N'
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.00		/100 where stmpparam ='F' and  processflag = 'N' and calcflag='N'
		update NormalCAHeaderRecord set StampDutyPaid = convert(int,issue_pr) * convert(int,Total_Allotted_Quantity_Free_Lockin) * 0.00001	/100 where stmpparam ='G' and  processflag = 'N' and calcflag='N'
		UPDATE NormalCAHeaderRecord set Total_Allotted_Quantity_Free_Lockin =  RIGHT('000000000000000' 
		                                +CONVERT(VARCHAR,Total_Allotted_Quantity_Free_Lockin),15) +'000'	where 
										Processflag ='N' and calcflag ='N'
		UPDATE NormalCAHeaderRecord set Total_Allotted_Quantity_Lockin		=	RIGHT('000000000000000' 
										+CONVERT(VARCHAR,Total_Allotted_Quantity_Lockin),15) +'000'			where 
										Processflag ='N'  and calcflag ='N'
		UPDATE NormalCAHeaderRecord set Total_No_detail_records				=	RIGHT('0000000'			+CONVERT(VARCHAR,Total_No_detail_records),7) where 
										Processflag ='N' and calcflag ='N'
		UPDATE NormalCAHeaderRecord set Total_Issued_Amount					=	RIGHT('0000000000000000'	+CONVERT(VARCHAR,Total_Issued_Amount),16)   +'00'	  where
										Processflag ='N' and calcflag ='N'
		UPDATE NormalCAHeaderRecord set Total_Paidup_Amount					=	RIGHT('0000000000000000'+CONVERT(VARCHAR,Total_Paidup_Amount),16)   +'00'	  where
										Processflag ='N' and calcflag ='N'
		--UPDATE NormalCAHeaderRecord SET  Filler									= REPLACE(STR(Filler,2),' ',' ') where 

		UPDATE NormalCADetailRecord set Detail_Record_Line_No				=	RIGHT('0000000'+CONVERT(VARCHAR,Detail_Record_Line_No),7)   where
										Processedflag ='N' and calcflag ='N'
		UPDATE NormalCADetailRecord set Allotment_Quantity				    =RIGHT('000000000000000'+CONVERT(VARCHAR,Allotment_Quantity),15)   +'000'	  where
										Processedflag ='N' and calcflag ='N'
		update NormalCADetailRecord set Issue_Price							=RIGHT('000000000000'+ CONVERT(VARCHAR,Issue_Price),12)+'000000'			where
										Processedflag ='N'  and calcflag ='N'
		UPDATE NormalCADetailRecord set issued_amount						=RIGHT('0000000000000000'+CONVERT(VARCHAR,issued_amount),16)   +'00'			where
										Processedflag ='N'and calcflag ='N'
		update NormalCADetailRecord set Paidup_Price						=RIGHT('000000000000'+ CONVERT(VARCHAR,Paidup_Price),12)+'000000'		where
										Processedflag ='N' and calcflag ='N'
		UPDATE NormalCADetailRecord set Paidup_Amount						=RIGHT('0000000000000000'+CONVERT(VARCHAR,Paidup_Amount),16)   +'00'		where
										Processedflag ='N' and calcflag ='N'
		UPDATE NormalCADetailDistRecord set Detail_Record_Line_No			=RIGHT('0000000'+CONVERT(VARCHAR,Detail_Record_Line_No),7)			where
										Processedflag ='N' and calcflag ='N'
		UPDATE NormalCADetailDistRecord set From_Distinctive_No_NSDL        =RIGHT('000000000000000000'+CONVERT(VARCHAR,From_Distinctive_No_NSDL),18)   where
										Processedflag ='N' and calcflag ='N'
		UPDATE NormalCADetailDistRecord set To_Distinctive_No_NSDL          =RIGHT('000000000000000000'+CONVERT(VARCHAR,To_Distinctive_No_NSDL),18)   where
										Processedflag ='N' and calcflag ='N'
		UPDATE NormalCADetailDistRecord set Quantity				        =RIGHT('000000000000000000'+CONVERT(VARCHAR,Quantity),18)   where
										Processedflag ='N' and calcflag ='N'
		update NormalCAHeaderRecord		set calcflag ='Y' where Processflag = 'N' 
		update NormalCADetailRecord		set calcflag ='Y' where processedflag = 'N' 
		update NormalCADetailDistRecord set calcflag ='Y' where processedflag = 'N' 
		


SET NOCOUNT ON      
(
SELECT '01SHRI001'+           
    +CONVERT(VARCHAR(16),RTA_Internal_Reference_No)+REPLICATE(' ',16-LEN(RTA_Internal_Reference_No))      
    +REPLICATE(' ',1-len(Debit_Credit_Indicator))+CONVERT(VARCHAR,Debit_Credit_Indicator)      
    +REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)      
    +REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type)      
	--+CA_Type
    +REPLICATE(' ',8-len(CONVERT(varchar,Allotment_Date,112)))+CONVERT(varchar,Allotment_Date,112)      
    +REPLICATE('0',4-LEN(Allocation_Allotment_Description))+CONVERT(VARCHAR,Allocation_Allotment_Description)      
    +REPLICATE(' ',8-len(CONVERT(varchar,Execution_Date,112)))+CONVERT(varchar,Execution_Date,112)      
	+Total_Allotted_Quantity_Free_Lockin
	+Total_Allotted_Quantity_Lockin
    +Total_No_detail_records
	+Total_Issued_Amount
	+Total_Paidup_Amount
	+REPLICATE(' ',1-len(Stamp_Duty_Payable))+CONVERT(VARCHAR,Stamp_Duty_Payable)      
    +REPLICATE(' ',2-len(Basis_calculation_Stamp_Duty))+CONVERT(VARCHAR,Basis_calculation_Stamp_Duty)      
    +REPLICATE(' ',2-len(EBP_Name))+CONVERT(VARCHAR,EBP_Name)      
    +REPLICATE(' ',2-len(Funds_collected_through))+CONVERT(VARCHAR,Funds_collected_through)      
    +'  '
	as ftemp1 into #temp1      
	FROM NormalCAHeaderRecord 
	where processflag = 'N' and calcflag='Y')      
(      
SELECT '02'+                                                        
    +Detail_Record_Line_No
    +REPLICATE('0',8-LEN(DP_ID))+CONVERT(VARCHAR,DP_ID)       
    +REPLICATE(' ',8-len(client_id))+CONVERT(VARCHAR,CLIENT_ID)       
    +REPLICATE(' ',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
    +Allotment_Quantity
    +REPLICATE('0',2-LEN(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
    +'        '      
    --+REPLICATE(' ',8-len(CONVERT(varchar,Lockin_Release_Date,112)))+CONVERT(varchar,Lockin_Release_Date,112)      
    +Issue_Price
    +Issued_Amount
    +Paidup_Price
    +Paidup_Amount
	+'            '    
    as ftemp1 into #temp2
    --+REPLICATE(' ',12-LEN(FILLER))+CONVERT(VARCHAR,FILLER)  as ftemp2 into fftemp2      
FROM NormalCADetailRecord 
where processedflag = 'N' and calcflag='Y')      
(      
SELECT '03'+                                                        
  +Detail_Record_Line_No
  +From_Distinctive_No_NSDL
  +To_Distinctive_No_NSDL
  +Quantity
  +REPLICATE('0',2-LEN(Flag_status_DN_Range))+CONVERT(VARCHAR,FLAG_STATUS_DN_RANGE)
  +REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type)      
  as ftemp1 into #temp3     
FROM NormalCADetailDistRecord  
where processedflag = 'N' and calcflag='Y')      
update NormalCAHeaderRecord set Processflag ='Y' where Processflag = 'N' 
update NormalCADetailRecord set Processedflag ='Y' where processedflag = 'N' 
update NormalCADetailDistRecord set Processedflag ='Y' where processedflag = 'N' 
IF OBJECT_ID ( 'fftemp1', 'U' ) IS NOT NULL  DROP TABLE fftemp1
select * into fftemp1  from #temp1
insert	 into fftemp1  select * from #temp2
insert	 into fftemp1  select * from #temp3
--select * from fftemp1
DECLARE @cmd varchar(500),@filename1 varchar(100)
SELECT @filename1 ='IN200537_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM fftemp1" '+ 'queryout E:\ZVCCIPL\VGenFiles\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
END 
GO
/****** Object:  StoredProcedure [dbo].[vcgeni4701f]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[vcgeni4701f]
as
begin
update iepfcacdsl47hd set Processedflag ='N' where Processedflag is null 
update iepfcacdsl47dt set Processedflag ='N' where processedflag is null 
update Iepfcacdsl47dtDist set Processedflag ='N' where processedflag is null 
update iepfcacdsl47hd set calcflag ='N' where calcflag is null 
update iepfcacdsl47dt set calcflag ='N' where calcflag is null 
update Iepfcacdsl47dtDist set calcflag ='N' where calcflag is null 

update iepfcacdsl47hd set calcflag ='Y' where calcflag='N'
update iepfcacdsl47dt set calcflag ='Y' where calcflag='N'
update Iepfcacdsl47dtDist set calcflag ='Y' where calcflag='N'
IF OBJECT_ID ( 'iepf47fl', 'U' ) IS NOT NULL  DROP TABLE iepf47fl
create table iepf47fl (ftem47 varchar(5000))
SET NOCOUNT ON      
(      
SELECT '01~200537~'+           
    +trim(Rtaint_Refno)+'~'
    +trim(isin)+'~'
	+substring(Ca_Type,3,4)+'~'
	+REPLACE(CONVERT(VARCHAR(10), Bapr_Dt, 104), '.', '')+'~'  
	+REPLACE(CONVERT(VARCHAR(10), exec_dt, 104), '.', '')+'~'  
	+Totdrqty+'~'
	+Totdrqty_Lin+'~'
    -- FILLER IS NOT APPLICABLE BUT SAMPLE FILE IT SHOWS IN PAGE 1/4
	+'~'
	+Totcrqty+'~'
    +Totcrqty_Lin+'~'
    +CONVERT(VARCHAR,totdetrec)      +'~'
	+CONVERT(VARCHAR,tot_detRec_dnr)      +'~'
    +trim(Cin_Bcin_No)  +'~'   
    +trim(Email_Co)     +'~'
    +trim(Fywdivrel)    +'~'
    +CONVERT(VARCHAR,Totnomamt_Shr)    
	as ftem47  into #temp1 
	FROM Iepfcacdsl47hd
	where processedflag ='N' and calcflag ='Y')
(      
	SELECT '02'+'~'
		--select * from Iepfcacdsl47dt
		+convert(varchar,Rec_Lineno) +'~'
		+convert(varchar,Credit_Boid)+'~'
		+convert(varchar,Folio_No)+'~'
		+convert(varchar,dr_qty) +'~'
		+convert(varchar,Dr_Qty_Lin) +'~'
		--option field + convert(varchar,Dr_Lin_Code) + '~'
		+'~'
		+REPLACE(CONVERT(VARCHAR(10), Dr_Lin_Exp_Dt, 104), '.', '')+'~'  
		+convert(varchar,cr_qty) +'~'
		+convert(varchar,cr_Qty_Lin) +'~'
		--option field +convert(varchar,cr_Lin_Code) + '~'
		+'~'
		+REPLACE(CONVERT(VARCHAR(10), cr_Lin_Exp_Dt, 104), '.', '')+'~'  
		+trim(name1) + '~'
		+trim(pan1) + '~'
		+trim(name2) + '~'
		+trim(pan2) + '~'
		+trim(name3) + '~'
		+trim(pan3) + '~'
		+trim(name4) + '~'
		+trim(pan4) + '~'
		+trim(gur_name) + '~'
		+trim(gur_pan) + '~'
		+trim(Nom_Name) + '~'
		+trim(Nom_Pan) + '~'
		+trim(Fh_Name) + '~'
		+trim(Name1Gender) + '~'
		+REPLACE(CONVERT(VARCHAR(10), Birth_Dt, 104), '.', '')+'~'  
		+trim(occ)+ '~'
		+trim(nationality) + '~'
		+trim(inv_category) + '~'
		+trim(cadd1) + '~'
		+trim(cadd2) + '~'
		+trim(cadd3) + '~'
		+trim(Caddcity) + '~'
		+trim(caddstate) + '~'
		+trim(caddcountry) + '~'
		+trim(caddpin) + '~'
		+trim(padd1) + '~'
		+trim(padd2) + '~'
		+trim(padd3) + '~'
		+trim(paddcity) + '~'
		+trim(paddstate) + '~'
		+trim(paddcountry) + '~'
		+trim(paddpin) + '~'
		+trim(tel1) + '~'
		+trim(tel2_no) + '~'
		+trim(bo_faxno) + '~'
		+trim(email_id) + '~'
		+trim(uid1) + '~'
		+trim(uid2) + '~'
		+trim(uid3) + '~'
		+trim(name4_uid) + '~'
		+trim(gua_uid) + '~'
		+trim(nom_uid) + '~'
		+trim(filler01) 
		as ftem47  into #temp2
	FROM Iepfcacdsl47dt
	where processedflag ='N' and calcflag ='Y')
(      
	SELECT '03'+'~'
		--select * from Iepfcacdsl47dtdIST
		+convert(varchar,Rec_Lineno) +'~'
		+ISIN +'~'
		+DRCR_IND + '~'
		+convert(varchar,Distno_From)+'~'
		+convert(varchar,Distno_To)+'~'
		+convert(varchar,Qty)+'~'
		as ftem47  into #temp3
	FROM Iepfcacdsl47dtDist
	where processedflag ='N' and calcflag ='Y')
	update Iepfcacdsl47hd set Processedflag     ='Y' where Processedflag ='Y' and  Processedflag = 'N' 
	update Iepfcacdsl47dt set Processedflag     ='Y' where Processedflag ='Y' and  Processedflag = 'N' 
	update Iepfcacdsl47dtDist set Processedflag ='Y' where Processedflag ='Y' and  Processedflag = 'N' 
	insert   into iepf47fl select * from #temp1
	insert	 into iepf47fl select * from #temp2
	insert	 into iepf47fl select * from #temp3
	DECLARE @cmd varchar(500),@filename1 varchar(100)
	SELECT @filename1 ='IN200537_C47_'+FORMAT(GETDATE(),'yyyyMMdd')+'_'+FORMAT(GETDATE(),'HHmmss')+'.TXT'       
	SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.iepf47fl" '+ 'queryout D:\SBROUTFILES\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
	EXEC master..xp_cmdshell @cmd
END
GO
/****** Object:  StoredProcedure [dbo].[vcgeniepf4501f]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[vcgeniepf4501f] 
as
begin
truncate table fdt45f 
		update iepfcacdsl45hd set calcflag ='N' where calcflag is null
		update iepfcacdsl45dt set calcflag ='N' where calcflag is null
	
		UPDATE Iepfcacdsl45hd set Totdrqty		= RIGHT('0000000000000000' + CONVERT(VARCHAR,Totdrqty),16)		+'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45hd set totdrqty_lin	= RIGHT('0000000000000000' + CONVERT(VARCHAR,totdrqty_lin),16)	+'000'    where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45hd set Totcrqty		= RIGHT('0000000000000000' + CONVERT(VARCHAR,Totcrqty),16)		+'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45hd set totcrqty_lin	= RIGHT('0000000000000000' + CONVERT(VARCHAR,totcrqty_lin),16)	+'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45hd set totdetrec		= RIGHT('00000'	   		   + CONVERT(VARCHAR,Totdetrec),5)				  where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45hd set totnomamt_shr	= RIGHT('0000000000000000' + CONVERT(VARCHAR,totnomamt_shr),16) +'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45dt set Dr_Qty		= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Dr_Qty),16)		+'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45dt set Dr_Qty_Lin	= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Dr_Qty_Lin),16)	+'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45dt set Cr_Qty		= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Cr_Qty),16)		+'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45dt set Cr_Qty_Lin	= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Cr_Qty_Lin),16)   +'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE Iepfcacdsl45dt set rec_lineno	= RIGHT('00000'				+ CONVERT(VARCHAR,rec_lineno),5)    		  where Processedflag ='N' and calcflag ='N'
		update iepfcacdsl45hd set calcflag ='Y' where calcflag ='N'
		update iepfcacdsl45dt set calcflag ='Y' where calcflag ='N'
SET NOCOUNT ON      
(      
SELECT '01~SHRI001~'+           
    +trim(Rtaint_Refno)+'~'
    +REPLICATE(' ',12-len(isin))+CONVERT(VARCHAR,isin)+'~'
	+substring(Ca_Type,3,4)+'~'
	+REPLACE(CONVERT(VARCHAR(10), Bapr_Dt, 104), '.', '')+'~'  
	+REPLACE(CONVERT(VARCHAR(10), exec_dt, 104), '.', '')+'~'  
    +Totdrqty+'~'
	+Totcrqty_Lin+'~'
    +filler01 +'~'
	+Totcrqty+'~'
    +Totcrqty_Lin+'~'
    +CONVERT(VARCHAR,totdetrec)      +'~'
    +REPLICATE('0',5-LEN(Filler02))+CONVERT(VARCHAR,Filler02)      +'~'
	+trim(Cin_Bcin_No)  +'~'   
    +trim(Email_Co)     +'~'
    +trim(Fywdivrel)    +'~'
    --+REPLICATE('0',5-LEN(Totnomamt_Shr))+CONVERT(VARCHAR,Totnomamt_Shr)     
	+CONVERT(VARCHAR,Totnomamt_Shr)    
	as ftem45  into #temp1
	FROM Iepfcacdsl45hd
	where processedflag = 'N' and calcflag='Y')      
(      
SELECT '02'+'~'
    +convert(varchar,Rec_Lineno) +'~'
    +convert(varchar,Credit_Boid)+'~'
    +convert(varchar,Debit_Boid)        +'~'
    +convert(varchar,dr_qty) +'~'
	+convert(varchar,Dr_Qty_Lin) +'~'
    +convert(varchar,Dr_Lin_Code) + '~'
	+REPLACE(CONVERT(VARCHAR(10), Dr_Lin_Exp_Dt, 104), '.', '')+'~'  
    +trim(filler01) + '~'
	+convert(varchar,cr_qty) +'~'
	+convert(varchar,cr_Qty_Lin) +'~'
    +convert(varchar,cr_Lin_Code) + '~'
	+REPLACE(CONVERT(VARCHAR(10), cr_Lin_Exp_Dt, 104), '.', '')+'~'  
    +trim(filler02)
    as ftem45  into #temp2
FROM Iepfcacdsl45dt
where processedflag = 'N' and calcflag='Y')      
	IF object_id('fdt45f','U') is not null drop table fdt45f    
  create table fdt45f (stemp1 varchar(2000))    
  insert into fdt45f select * from #temp1    
  insert into fdt45f select * from #temp2    

  update Iepfcacdsl45hd   set processedflag ='Y' where  processedflag = 'N'     
  update Iepfcacdsl45dt   set processedflag ='Y' where  processedflag = 'N'     
  --select * from fftemp1    
DECLARE @cmd varchar(500),@filename1 varchar(100)    
--SELECT @filename1 ='IN200537_SCA_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'           
SELECT @filename1 ='IN200537_I45_'+FORMAT(GETDATE(),'yyyyMMdd')+'_' +FORMAT(GETDATE(),'HHmmss')+ '.TXT'           
SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.fdt45f" '+ 'queryout d:\sbroutfiles\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'    
EXEC master..xp_cmdshell @cmd    
END

GO
/****** Object:  StoredProcedure [dbo].[vcgeniepf4601f]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[vcgeniepf4601f] 
as
begin
truncate table fdt46f 
		update iepfcacdsl46hd set calcflag ='N' where calcflag is null
		update iepfcacdsl46dt set calcflag ='N' where calcflag is null
		UPDATE iepfcacdsl46hd set Totdrqty		= RIGHT('0000000000000000' + CONVERT(VARCHAR,Totdrqty),16)		+'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE iepfcacdsl46hd set totdrqty_lin	= RIGHT('0000000000000000' + CONVERT(VARCHAR,totdrqty_lin),16)	+'000'    where Processedflag ='N' and calcflag ='N'
		UPDATE iepfcacdsl46hd set Totcrqty		= RIGHT('0000000000000000' + CONVERT(VARCHAR,Totcrqty),16)		+'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE iepfcacdsl46hd set totcrqty_lin	= RIGHT('0000000000000000' + CONVERT(VARCHAR,totcrqty_lin),16)	+'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE iepfcacdsl46hd set totdetrec		= RIGHT('00000'	   		   + CONVERT(VARCHAR,Totdetrec),5)				  where Processedflag ='N' and calcflag ='N'
		UPDATE iepfcacdsl46hd set totnomamt_shr	= RIGHT('0000000000000000' + CONVERT(VARCHAR,totnomamt_shr),16) +'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE iepfcacdsl46dt set Dr_Qty		= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Dr_Qty),16)		+'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE iepfcacdsl46dt set Dr_Qty_Lin	= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Dr_Qty_Lin),16)	+'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE iepfcacdsl46dt set Cr_Qty		= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Cr_Qty),16)		+'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE iepfcacdsl46dt set Cr_Qty_Lin	= RIGHT('0000000000000000'	+ CONVERT(VARCHAR,Cr_Qty_Lin),16)   +'000'	  where Processedflag ='N' and calcflag ='N'
		UPDATE iepfcacdsl46dt set rec_lineno	= RIGHT('00000'				+ CONVERT(VARCHAR,rec_lineno),5)    		  where Processedflag ='N' and calcflag ='N'
		update iepfcacdsl46hd set calcflag ='Y' where calcflag ='N'
		update iepfcacdsl46dt set calcflag ='Y' where calcflag ='N'


SET NOCOUNT ON      
(      
SELECT '01~SHRI001~'+           
    +trim(Rtaint_Refno)+'~'
    +REPLICATE(' ',12-len(isin))+CONVERT(VARCHAR,isin)+'~'
	+substring(Ca_Type,3,4)+'~'
	+REPLACE(CONVERT(VARCHAR(10), Bapr_Dt, 104), '.', '')+'~'  
	+REPLACE(CONVERT(VARCHAR(10), exec_dt, 104), '.', '')+'~'  
    +Totdrqty+'~'
	+Totcrqty_Lin+'~'
    +filler01 +'~'
	+Totcrqty+'~'
    +Totcrqty_Lin+'~'
    +CONVERT(VARCHAR,totdetrec)      +'~'
    +REPLICATE('0',5-LEN(Filler02))+CONVERT(VARCHAR,Filler02)      +'~'
	+trim(Cin_Bcin_No)  +'~'   
    +trim(Email_Co)     +'~'
    +trim(Fywdivrel)    +'~'
    --+REPLICATE('0',5-LEN(Totnomamt_Shr))+CONVERT(VARCHAR,Totnomamt_Shr)     
	+CONVERT(VARCHAR,Totnomamt_Shr)    
	as ftem46  into #temp1 
	FROM Iepfcacdsl46hd
	where processedflag ='N' and calcflag='Y')
(      
SELECT '02'+'~'
    +convert(varchar,Rec_Lineno) +'~'
    +convert(varchar,Credit_Boid)+'~'
    +convert(varchar,Debit_dpid)+'~'
	+convert(varchar,Debit_clid)+'~'
    +convert(varchar,dr_qty) +'~'
	--+convert(varchar,Dr_Qty_Lin) +'~'
    --+convert(varchar,Dr_Lin_Code) + '~'
	--+REPLACE(CONVERT(VARCHAR(10), Dr_Lin_Exp_Dt, 104), '.', '')+'~'  
    --+trim(filler01) + '~'
	+convert(varchar,cr_qty) +'~'
	--+convert(varchar,cr_Qty_Lin) +'~'
    --+convert(varchar,cr_Lin_Code) + '~'
	--+REPLACE(CONVERT(VARCHAR(10), cr_Lin_Exp_Dt, 104), '.', '')+'~'  
	--select * from Iepfcacdsl46dt
    +trim(name1) + '~'
	+trim(Acc_type_Desc) + '~'
	+trim(Acc_stype_Desc)  + '~'
	+trim(Padd1) + '~'
	as ftem46  into #temp2
FROM Iepfcacdsl46dt
where processedflag ='N' and calcflag='Y')

 IF object_id('fdt46f','U') is not null drop table fdt46f    
  create table fdt46f (ftem46 varchar(2000))    
  insert into fdt46f select * from #temp1    
  insert into fdt46f select * from #temp2    
  update iepfcacdsl46hd   set processedflag ='Y' where  processedflag = 'N'     
  update iepfcacdsl46dt   set processedflag ='Y' where  processedflag = 'N'     
  --select * from fftemp1    
DECLARE @cmd varchar(500),@filename1 varchar(100)    
--SELECT @filename1 ='IN200537_SCA_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'           
SELECT @filename1 ='IN200537_I46_'+FORMAT(GETDATE(),'yyyyMMdd')+'_'+ FORMAT(GETDATE(),'HHmmss')+ '.TXT'           
SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.fdt46f" '+ 'queryout d:\sbroutfiles\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'    
EXEC master..xp_cmdshell @cmd    
END



GO
/****** Object:  StoredProcedure [dbo].[vcgenmffile01f]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[vcgenmffile01f] 
AS   
BEGIN  
IF OBJECT_ID ( 'mft1', 'U' ) IS NOT NULL  DROP TABLE mft1
create table mft1 (opentexta varchar(4000))
update mutualfundhd00 set Processedflag ='N' where Processedflag is null 
update mutualfunddt01 set Processedflag ='N' where processedflag is null 
update mutualfunddt02 set Processedflag ='N' where processedflag is null 
update mutualfundhd00 set calcflag ='N' where calcflag is null 
update mutualfunddt01 set calcflag ='N' where calcflag is null 
update mutualfunddt02 set calcflag ='N' where calcflag is null 


UPDATE MutualFundhd00 set Batch_no		=  RIGHT('0000000'			+CONVERT(VARCHAR,Batch_no),7)				where Processedflag ='N' and calcflag ='N'
UPDATE MutualFundhd00 set Tot_CA_Orders =  RIGHT('00000'			+CONVERT(VARCHAR,Tot_CA_Orders),5)			where Processedflag ='N' and calcflag ='N'

UPDATE MutualFunddt01 set TotallQty_FL	=  RIGHT('000000000000000'	+CONVERT(VARCHAR,TotallQty_FL),15)	+ '000' where Processedflag ='N' and calcflag ='N'
UPDATE MutualFunddt01 set TotallQty_L	=  RIGHT('000000000000000'	+CONVERT(VARCHAR,TotallQty_L),15)	+ '000' where Processedflag ='N' and calcflag ='N'
UPDATE MutualFunddt01 set Tot_Ded_rec	=  RIGHT('0000000'			+CONVERT(VARCHAR,Tot_Ded_rec),7)			where Processedflag ='N' and calcflag ='N'
UPDATE MutualFunddt01 set TotIssued_Amt	=  RIGHT('0000000000000000' +CONVERT(VARCHAR,TotIssued_Amt),16) + '00'	where Processedflag ='N' and calcflag ='N'
UPDATE MutualFunddt01 set TotPaidup_Amt	=  RIGHT('0000000000000000' +CONVERT(VARCHAR,TotPaidup_Amt),16)	+ '00'	where Processedflag ='N' and calcflag ='N'

UPDATE MutualFunddt02 set dt_line_no	=  RIGHT('0000000'			+CONVERT(VARCHAR,dt_line_no),7)					where Processedflag ='N' and calcflag ='N'
UPDATE MutualFunddt02 set AllQty		=  RIGHT('000000000000000'	+CONVERT(VARCHAR,AllQty),15)		 			where Processedflag ='N' and calcflag ='N'
UPDATE MutualFunddt02 set Iss_Price		=  RIGHT('000000000000'		+CONVERT(VARCHAR,Iss_Price),12)		+ '000000'	where Processedflag ='N' and calcflag ='N'
UPDATE MutualFunddt02 set Iss_Amt		=  RIGHT('0000000000000000' +CONVERT(VARCHAR,Iss_Amt),16)		+ '00'		where Processedflag ='N' and calcflag ='N'
UPDATE MutualFunddt02 set Paidup_Price	=  RIGHT('000000000000'		+CONVERT(VARCHAR,Paidup_Price),12)	+ '000000'	where Processedflag ='N' and calcflag ='N'
UPDATE MutualFunddt02 set Paidup_Amt	=  RIGHT('0000000000000000' +CONVERT(VARCHAR,Paidup_Amt),16)	+ '00'		where Processedflag ='N' and calcflag ='N'

update MutualFundhd00 set calcflag ='Y' where calcflag='N'
update MutualFunddt01 set calcflag ='Y' where calcflag='N'
update MutualFunddt02 set calcflag ='Y' where calcflag='N'

  

SET NOCOUNT ON  
(  
	SELECT  '00'+  
	  --+REPLICATE(' ',2-LEN(Record_id))+CONVERT(VARCHAR,Record_id)   
	  +Batch_no
	  +'IN200537'
	  +Tot_CA_Orders
	  +REPLICATE(' ',8-len(CONVERT(varchar,Sender_dt,112)))+CONVERT(varchar,Sender_dt,112)      
	  +REPLICATE(' ',12-LEN(FILLER1))+CONVERT(VARCHAR,FILLER1)  
	  as opentexta into #temp1
	FROM MutualFundhd00
	where processedflag = 'N' and calcflag='Y')      
(
SELECT '01SHRI001'+  
	   --+REPLICATE('0',2-LEN(Record_id))+CONVERT(VARCHAR,Record_id)    
	   --+REPLICATE('0',7-LEN(File_ident))+CONVERT(VARCHAR,File_ident)    
	   +CONVERT(VARCHAR(16),RTA_Int_No)+REPLICATE(' ',16-LEN(RTA_Int_No))      
	   +REPLICATE(' ',1-LEN(DRCR_Ind))+CONVERT(VARCHAR,DRCR_Ind)    
	   +REPLICATE(' ',12-LEN(isin))+CONVERT(VARCHAR,isin)   
	   +REPLICATE('0',4-LEN(CAType))+CONVERT(VARCHAR,CAType)   
	   +REPLICATE(' ',8-len(CONVERT(varchar,Allot_dt,112)))+CONVERT(varchar,Allot_dt,112)      
	   +REPLICATE(' ',4-len(Allocation_Desc))+CONVERT(VARCHAR,Allocation_Desc)  
	   +REPLICATE(' ',8-len(CONVERT(varchar,Exec_dt,112)))+CONVERT(varchar,Exec_dt,112)      
	   +TotallQty_FL
	   +TotallQty_L
	   +Tot_Ded_rec
	   +TotIssued_Amt
	   +TotPaidup_Amt
	   +REPLICATE(' ',1-LEN(StampDuty_Payable))+CONVERT(VARCHAR,StampDuty_Payable)  
	   +REPLICATE(' ',2-LEN(Basis_Calc_SD))+CONVERT(VARCHAR,Basis_Calc_SD)  
	   +'      ' --FILLER OF (6)
		as opentexta into #temp2
   FROM MutualFunddt01 
   
   where processedflag ='N' and calcflag ='Y')
(
SELECT  '02'+  
	  --+REPLICATE('0',7-LEN(dt_Line_no))+CONVERT(VARCHAR,dt_Line_no)    
	  --+REPLICATE(' ',7-LEN(Record_id))+CONVERT(VARCHAR,Record_id)   
	  +Dt_line_no
	  +REPLICATE(' ',8-LEN(Dpid))+CONVERT(VARCHAR,Dpid)   
	  +REPLICATE(' ',8-LEN(Clid))+CONVERT(VARCHAR,Clid)   
	  +REPLICATE('0',2-LEN(Cl_Acc_Cat))+CONVERT(VARCHAR,Cl_Acc_Cat)   
	  +AllQty
	  +REPLICATE('0',2-LEN(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)  
	  +REPLICATE(' ',8-len(CONVERT(varchar,Lockin_Release_Dt,112)))+CONVERT(varchar,Lockin_Release_Dt,112)      
	  +Iss_Price   
	  +Iss_Amt
	  +Paidup_Price
	  +Paidup_Amt
	  +'            '
	  as opentexta into #temp3
	  FROM MutualFunddt02 
	  where processedflag ='N' and calcflag ='Y')

update mutualfundhd00 set Processedflag ='Y' where Processedflag = 'N' 
update mutualfunddt01 set Processedflag ='Y' where processedflag = 'N' 
update mutualfunddt02 set Processedflag ='Y' where processedflag = 'N' 
insert	 into mft1  select * from #temp1
insert	 into mft1  select * from #temp2
insert	 into mft1  select * from #temp3
--DECLARE @cmd varchar(500),@filename1 varchar(100)
--SELECT @filename1 ='IN200537_MFT_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
--SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.mft1" '+ 'queryout D:\SBROUTFILES\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
--EXEC master..xp_cmdshell @cmd
END  
GO
/****** Object:  StoredProcedure [dbo].[vcgenscafile01f]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[vcgenscafile01f]  
as 
begin 
truncate table sf8
UPDATE SimulCAHeaderRecord set ProcessedFlag ='N' where ProcessedFlag is null
update SimulCADetailRecord set processedflag ='N' where ProcessedFlag is null
update SimulCADetailDistRecord set ProcessedFlag ='N' where ProcessedFlag is null

UPDATE SimulCAHeaderRecord		SET  TotCrQty_Flin		= RIGHT('000000000000000'		+ CONVERT(VARCHAR,TotCrQty_Flin),15)+'000'   where  ProcessedFlag = 'N' and calcflag ='N'
UPDATE SimulCAHeaderRecord		SET  TotDrQty_Flin		= RIGHT('000000000000000'		+ CONVERT(VARCHAR,TotDrQty_Flin),15)+'000'   where  ProcessedFlag = 'N'      and calcflag ='N'
UPDATE SimulCAHeaderRecord		SET  TotCrQty_Lin		= RIGHT('000000000000000'		+ CONVERT(VARCHAR,TotCrQty_Lin),15)	+'000'   where  ProcessedFlag = 'N' 	 and calcflag ='N'
UPDATE SimulCAHeaderRecord		SET  TotDrQty_Lin		= RIGHT('000000000000000'		+ CONVERT(VARCHAR,TotDrQty_Lin),15)	+'000'   where  ProcessedFlag = 'N' 	 and calcflag ='N'
UPDATE SimulCADetailRecord		SET  Cr_Quantity		= RIGHT('000000000000000'		+ CONVERT(VARCHAR,Cr_Quantity),15)	+'000'   where  ProcessedFlag = 'N' 	 and calcflag ='N'
UPDATE SimulCADetailRecord		SET  Dr_Quantity		= RIGHT('000000000000000'		+ CONVERT(VARCHAR,Dr_Quantity),15)	+'000'   where  ProcessedFlag = 'N' 	 and calcflag ='N'
UPDATE SimulCAHeaderRecord		SET  TotDetRec			= RIGHT('0000000'				+ CONVERT(VARCHAR,TotDetRec),7)				 where  ProcessedFlag = 'N' 	 and calcflag ='N'
UPDATE SimulCADetailRecord		SET  IssPraaCr_ISIN		= RIGHT('000000000000'			+ CONVERT(VARCHAR,IssPraaCr_ISIN),12)+'000000'   where ProcessedFlag = 'N' and calcflag ='N'
UPDATE SimulCADetailRecord		SET  PupPraaCr_ISIN		= RIGHT('000000000000'			+ CONVERT(VARCHAR,PupPraaCr_ISIN),12)+'000000'   where ProcessedFlag = 'N' and calcflag ='N'
UPDATE SimulCAHeaderRecord		SET  TotIssAmtaa_CrIsin	= RIGHT('0000000000000000'		+ CONVERT(VARCHAR,TotIssAmtaa_CrIsin),16)	+'00'   where  ProcessedFlag = 'N'   and calcflag ='N'
UPDATE SimulCAHeaderRecord		SET  TotpdAmtaa_CrIsin	= RIGHT('0000000000000000'		+ CONVERT(VARCHAR,TotpdAmtaa_CrIsin), 16)	+'00'   where  ProcessedFlag = 'N'	  and calcflag ='N'
UPDATE SimulCADetailRecord		SET  IssAmtaaCr_isin	= RIGHT('0000000000000000'		+ CONVERT(VARCHAR,IssAmtaaCr_isin),16)		+'00'   where  ProcessedFlag = 'N'	  and calcflag ='N'
UPDATE SimulCADetailRecord		SET  PupAmtaaCr_Isin	= RIGHT('0000000000000000'		+ CONVERT(VARCHAR,PupAmtaaCr_Isin),16)		+'00'   where  ProcessedFlag = 'N'   and calcflag ='N'
UPDATE SimulCADetailDistRecord	SET  DetRec_Line_No		= RIGHT('0000000'				+ CONVERT(VARCHAR,DetRec_Line_No),7)     where  ProcessedFlag = 'N'				  and calcflag ='N'
UPDATE SimulCADetailDistRecord	SET  FromDistNo_NSDL	= RIGHT('000000000000000000'	+ CONVERT(VARCHAR,FromDistNo_NSDL),18)   where  ProcessedFlag = 'N'				  and calcflag ='N'
UPDATE SimulCADetailDistRecord	SET  ToDistNo_NSDL		= RIGHT('000000000000000000'	+ CONVERT(VARCHAR,ToDistNo_NSDL),18)     where  ProcessedFlag = 'N'				  and calcflag ='N'
UPDATE SimulCADetailDistRecord	SET  Quantity			= RIGHT('000000000000000000'	+ CONVERT(VARCHAR,Quantity),18)		     where  ProcessedFlag = 'N'				  and calcflag ='N'


update SimulCAHeaderRecord         set calcflag ='Y' where processedflag ='N'
update SimulCADetailRecord		   set calcflag ='Y' where processedflag ='N'
update SimulCADetailDistRecord	   set calcflag ='Y' where processedflag ='N'

IF object_id('sf8','U') is not null drop table sf8
create table sf8 (stemp1 varchar(2000))
SET NOCOUNT ON    
(    
SELECT '01SHRI001'+                                                      
  +CONVERT(VARCHAR(16),RTA_Internal_Reference_No)+REPLICATE(' ',16-LEN(RTA_Internal_Reference_No))        
  +REPLICATE(' ',12-len(Cr_Isin))+CONVERT(VARCHAR,Cr_Isin)    
  +REPLICATE(' ',12-len(Dr_Isin))+CONVERT(VARCHAR,Dr_Isin)    
  +REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type)     
  +CONVERT(VARCHAR,Allotment_Dt,112)    
 -- +REPLICATE(' ',8-len(Allotment_Date))+CONVERT(VARCHAR,Allotment_Date)    
  +REPLICATE('0',4-LEN(Allot_alloc_Desc))+CONVERT(VARCHAR,Allot_alloc_Desc)    
  +CONVERT(VARCHAR,Execution_dt,112)    
 --+REPLICATE(' ',8-len(Execution_Date))+CONVERT(VARCHAR,Execution_Date)    
  +TotCrQty_Flin
  +TotDrQty_Flin
  +TotCrQty_Lin
  +TotDrQty_Lin
  +TotDetRec
  +TotIssAmtaa_CrIsin
  +TotpdAmtaa_CrIsin
  +REPLICATE(' ',1-len(StampDuty_Pay))+CONVERT(VARCHAR,StampDuty_Pay)    
  +REPLICATE(' ',2-len(BcStampDuty))+CONVERT(VARCHAR,BcStampDuty) 
  as stemp1 into #TEMP1
  FROM SimulCAHeaderRecord  
  where processedflag = 'N' and calcflag='Y') 
(    
SELECT '02'+                     
  +REPLICATE('0',7-LEN(DetRec_Line_No))+CONVERT(VARCHAR,DetRec_Line_No)     
  +REPLICATE('0',8-LEN(Credit_DP_ID))+CONVERT(VARCHAR,Credit_DP_ID)     
  +REPLICATE('0',8-LEN(CrClient_ID))+CONVERT(VARCHAR,CrClient_ID)     
  +REPLICATE('0',2-len(CrClient_AccCat))+CONVERT(VARCHAR,CrClient_AccCat)    
  +REPLICATE('0',8-LEN(DrDP_ID))+CONVERT(VARCHAR,DrDP_ID)     
  +REPLICATE('0',8-LEN(DrClient_ID))+CONVERT(VARCHAR,DrClient_ID)     
  +REPLICATE('0',2-len(DrClient_AccCat))+CONVERT(VARCHAR,DrClient_AccCat)    
  +Cr_Quantity
  +Dr_Quantity
  +REPLICATE('0',2-LEN(CrQty_LinRCd))+CONVERT(VARCHAR,CrQty_LinRCd)    
  --+'        '    
  +CONVERT(VARCHAR,CrQty_LnRDt,112)    
  +REPLICATE('0',2-LEN(drQty_LinRCd))+CONVERT(VARCHAR,drQty_LinRCd)    
  +'        '    
  --+CONVERT(VARCHAR,drQty_LnRDt,112)    
  --+REPLICATE(' ',8-len(drQty_LnRDt))+CONVERT(VARCHAR,drQty_LnRDt)    
  +IssPraaCr_ISIN
  +IssAmtaaCr_isin
  +PupPraaCr_ISIN
  +PupAmtaaCr_Isin 
  as stemp1 into #TEMP2  
  FROM SimulCADetailRecord 
  where processedflag = 'N' and calcflag='Y') 
(    
SELECT '03'+                                                      
  +DetRec_Line_No
  +REPLICATE(' ',12-len(DrCr_ISIN))+CONVERT(VARCHAR,DrCr_ISIN)    
  +REPLICATE(' ',1-len(DrCr_Indicator))+CONVERT(VARCHAR,DrCr_Indicator)    
  +FromDistNo_NSDL
  +ToDistNo_NSDL
  +Quantity
  +Flag_status_DN_Range
  +REPLICATE('0',4-LEN(CA_Code))+CONVERT(VARCHAR,CA_Code) 
   as stemp1 into #TEMP3    
  FROM SimulCADetailDistRecord 
  where processedflag = 'N' and calcflag='Y') 
  IF OBJECT_ID ( 'sf8', 'U' ) IS NOT NULL  DROP TABLE sf8
  insert into sf8 select * from #temp1
  insert into sf8 select * from #temp2
  insert into sf8 select * from #temp3
  --select * from sf8
  update SimulCAHeaderRecord	  set processedflag ='Y' where  processedflag = 'N' 
  update SimulCADetailRecord	  set processedflag ='Y' where  processedflag = 'N' 
  update SimulCADetailDistRecord  set processedflag ='Y' where  processedflag = 'N' 
--select * from fftemp1
DECLARE @cmd varchar(500),@filename1 varchar(100)
SELECT @filename1 ='IN200537_SCA_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM vccipl.dbo.sf8" '+ 'queryout E:\ZVCCIPL\VGenFiles\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
END
GO
/****** Object:  StoredProcedure [dbo].[xbendem02f]    Script Date: 22-02-2024 19:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[xbendem02f] @MastUno varchar(4)
		as
		begin
		update bendem01 set 
		record_Type= substring(rem,1,2),
		batch_no= substring(rem,3,7),
		rta_id	= substring(rem,10,8),
		isin	= substring(rem,18,12),
		request_type= substring(rem,30,1),
		sender_id= substring(rem,31,8),
		sender_date= substring(rem,39,8),
		filler1	= substring(rem,47,8),
		masteruniqno= 1201
IF OBJECT_ID ( 'aifimpdpidclidisin', 'U' ) IS NOT NULL  DROP TABLE aifimpdpidclidisin
create table aifimpdpidclidisin (dpidclid varchar(16),ISIN varchar(12))

BULK INSERT aifimpdpidclidisin 
	FROM 'D:\Rights_Bonus\ADROIT\NSDLCDSL.csv' 
	WITH 
	(  
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=50
	)
	alter table aifimpdpidclidisin add dpid varchar(8), clid varchar(8)
	update aifimpdpidclidisin set dpid = substring(dpidclid,1,8)
	update aifimpdpidclidisin set clid = substring(dpidclid,9,8)
	truncate table bendem02
	insert into bendem02 (dpid,clid) (select dpid,clid from aifimpdpidclidisin)
	DELETE from bendem02 WHERE DPID LIKE '1%'
	IF OBJECT_ID ( 'BENDEM02U', 'U' ) IS NOT NULL  DROP TABLE BENDEM02U
	SELECT DPID,CLID INTO BENDEM02U FROM BENDEM02 GROUP BY DPID,CLID
	ALTER TABLE BENDEM02U ADD rem varchar(100),record_type varchar(2),line_no varchar(7),masteruniqno int,id int primary key identity(1,1)
	update bendem02U set record_type='02',masteruniqno = '1201'
select * from bendem02u
--	drop table #temp2
	SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO #TEMP2 FROM bendem02u WHERE id < 99999
	UPDATE a SET a.Line_no = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM bendem02u a JOIN #temp2 b ON a.ID=b.ID
	truncate table bendem02
	insert into bendem02 (record_type,line_no,DPID,CLID,masteruniqno) (select record_type,line_no,DPID,CLID,masteruniqno from bendem02u)
--	select dpid,clid from bendem02 group by dpid,clid having count(*) >1
	truncate table bendem2o

		
		
		SET NOCOUNT ON      
		(      
			SELECT '01'+                                                        
			+batch_no
			+rta_id	
			+isin	
			+request_type
			+sender_id
			+sender_date
			+'        '
			as btempf into #TEMP11
			FROM bendem01 WHERE masteruniqno = @MastUNo
		)
		(
		SELECT '02'+                                                        
			+Line_no
			+dpid
			+clid
			+'          '
			as btempf into #TEMP22
			FROM BENDEM02 where masteruniqno = @MastUNo
		)
		IF OBJECT_ID ('bendem2o', 'U' ) IS NOT NULL  DROP TABLE bendem2o
		create table bendem2o (btempf varchar(54))
			insert   into bendem2o select * from #temp11
			insert	 into bendem2o select * from #temp22
			DECLARE @cmd varchar(500),@filename1 varchar(100)
		SELECT @filename1 ='BENDEM_NSDL_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
		SET @cmd = 'bcp "SELECT * FROM vccipl.[dbo].[bendem2o]" '+ 'queryout d:\sbroutfiles\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
		EXEC master..xp_cmdshell @cmd
	END 
GO
USE [master]
GO
ALTER DATABASE [vccipl] SET  READ_WRITE 
GO
