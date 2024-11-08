USE [master]
GO
/****** Object:  Database [Spark2023]    Script Date: 27-04-2024 11:43:37 ******/
CREATE DATABASE [Spark2023]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Spark2023', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VENTURESQLEXP\MSSQL\DATA\Spark2023.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Spark2023_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VENTURESQLEXP\MSSQL\DATA\Spark2023_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Spark2023] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Spark2023].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Spark2023] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Spark2023] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Spark2023] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Spark2023] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Spark2023] SET ARITHABORT OFF 
GO
ALTER DATABASE [Spark2023] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Spark2023] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Spark2023] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Spark2023] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Spark2023] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Spark2023] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Spark2023] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Spark2023] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Spark2023] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Spark2023] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Spark2023] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Spark2023] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Spark2023] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Spark2023] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Spark2023] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Spark2023] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Spark2023] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Spark2023] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Spark2023] SET  MULTI_USER 
GO
ALTER DATABASE [Spark2023] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Spark2023] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Spark2023] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Spark2023] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Spark2023] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Spark2023] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Spark2023] SET QUERY_STORE = OFF
GO
USE [Spark2023]
GO
/****** Object:  Table [dbo].[Au_Small_Finance_Bank]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Au_Small_Finance_Bank](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Axis_Bank_Ltd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Axis_Bank_Ltd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bank_of_Baroda]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank_of_Baroda](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bank_of_India]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank_of_India](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bank_of_Maharashtra]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank_of_Maharashtra](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BANKNAME1]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANKNAME1](
	[BANKNAME] [varchar](75) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BANKNAME2]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANKNAME2](
	[VBANKNM] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Canara_Bank]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Canara_Bank](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Central_Bank_of_India]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Central_Bank_of_India](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City_Union_Bank_Ltd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City_Union_Bank_Ltd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[config_table01]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[config_table01](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[databasename] [varchar](100) NULL,
	[tablename] [varchar](100) NULL,
	[activeflag] [varchar](1) NULL,
	[remarks] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[config_table01data]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[config_table01data](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL,
	[BANKNAME] [varchar](75) NULL,
	[Vbankname] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[config_table01datafinal]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[config_table01datafinal](
	[ ORDER_NO ] [varchar](30) NULL,
	[ SYMBOL ] [varchar](25) NULL,
	[ QUANTITY ] [varchar](25) NULL,
	[ PRICE ] [varchar](50) NULL,
	[ APPL_NO ] [varchar](35) NULL,
	[ DP_ID ] [varchar](25) NULL,
	[ CLIENT_ID ] [varchar](25) NULL,
	[ CATEGORY ] [varchar](50) NULL,
	[ CHEQUE_AMT ] [varchar](50) NULL,
	[ PAN_NO ] [varchar](25) NULL,
	[ ACCOUNTNO  ] [varchar](50) NULL,
	[ BANKREFNO  ] [varchar](50) NULL,
	[ NAME1 ] [varchar](100) NULL,
	[ BANKNAME ] [varchar](75) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONFIG_TABLE02]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONFIG_TABLE02](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[databasename] [varchar](100) NULL,
	[tablename] [varchar](100) NULL,
	[activeflag] [varchar](1) NULL,
	[remarks] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[config_table02data]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[config_table02data](
	[BIDSLNO] [float] NULL,
	[ORDER_NO] [nvarchar](255) NULL,
	[BOOK_ID] [nvarchar](255) NULL,
	[BRANCH] [nvarchar](255) NULL,
	[USR_ID] [nvarchar](255) NULL,
	[SYMBOL] [nvarchar](255) NULL,
	[QUANTITY] [float] NULL,
	[PRICE] [nvarchar](255) NULL,
	[APPL_NO] [nvarchar](255) NULL,
	[DEPOSIT] [nvarchar](255) NULL,
	[DP_ID] [nvarchar](255) NULL,
	[CL_ID] [nvarchar](255) NULL,
	[CATEGORY] [nvarchar](255) NULL,
	[Amount] [float] NULL,
	[CLNAME] [nvarchar](255) NULL,
	[PANNO] [nvarchar](255) NULL,
	[BANKNAME] [nvarchar](255) NULL,
	[LOC] [nvarchar](255) NULL,
	[ACCNO] [nvarchar](255) NULL,
	[IFSCCD] [nvarchar](255) NULL,
	[BANKREF] [nvarchar](255) NULL,
	[EDATE] [nvarchar](255) NULL,
	[LDATE] [nvarchar](255) NULL,
	[SBCDREF] [nvarchar](255) NULL,
	[MEMTYPE] [nvarchar](255) NULL,
	[ACTCODE] [nvarchar](255) NULL,
	[exchg] [nvarchar](255) NULL,
	[VBANKNM] [nvarchar](255) NULL,
	[VBANKCD] [nvarchar](255) NULL,
	[DPIDCLID] [nvarchar](255) NULL,
	[FINREM] [nvarchar](255) NULL,
	[BSEBDMIS] [nvarchar](255) NULL,
	[SHNAME] [nvarchar](255) NULL,
	[ACCSTAT] [nvarchar](255) NULL,
	[BDBANKAC] [nvarchar](255) NULL,
	[BDPAN] [nvarchar](255) NULL,
	[EMAILID] [nvarchar](255) NULL,
	[RDFOLIO] [nvarchar](255) NULL,
	[RDBANKAC] [nvarchar](255) NULL,
	[RDPAN] [nvarchar](255) NULL,
	[STATUSFLG] [nvarchar](255) NULL,
	[BACMATFLG] [nvarchar](255) NULL,
	[STAT3] [nvarchar](255) NULL,
	[NAME1] [nvarchar](255) NULL,
	[CHK7] [nvarchar](255) NULL,
	[BDBNKACX] [nvarchar](255) NULL,
	[BDPANX] [nvarchar](255) NULL,
	[TXNS] [nvarchar](255) NULL,
	[Vbankname] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DBS_Bank_Ltd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBS_Bank_Ltd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DCB_Bank]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DCB_Bank](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Email_Sample]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email_Sample](
	[Email_Id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[gender] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[file1]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[file1](
	[name] [varchar](50) NULL,
	[dpidclid] [varchar](16) NULL,
	[applshares] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[file1a]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[file1a](
	[name] [varchar](50) NULL,
	[dpidclid] [varchar](16) NULL,
	[applshares] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[file2]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[file2](
	[dpidclid] [varchar](16) NULL,
	[totapplshares] [int] NULL,
	[TotalEShares] [int] NULL,
	[BalanceShares] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HDFC_BankLtd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDFC_BankLtd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HSBC_Ltd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HSBC_Ltd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ICICI_Bank_Ltd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ICICI_Bank_Ltd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IDBI_Bank_Ltd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IDBI_Bank_Ltd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IDFC_Bank_Ltd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IDFC_Bank_Ltd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Indian_Bank]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Indian_Bank](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Indian_Overseas_Bank]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Indian_Overseas_Bank](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndusInd_Bank]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndusInd_Bank](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Janta_Sahakari_Bank_Ltd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Janta_Sahakari_Bank_Ltd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JUSTTEST]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JUSTTEST](
	[ORDER_NO] [varchar](30) NULL,
	[BOOK_ID] [varchar](30) NULL,
	[BRANCH] [varchar](30) NULL,
	[USR_ID] [varchar](30) NULL,
	[SYMBOL] [varchar](30) NULL,
	[QUANTITY] [varchar](30) NULL,
	[PRICE] [varchar](30) NULL,
	[APPL_NO] [varchar](30) NULL,
	[Depository] [varchar](30) NULL,
	[DP_ID] [varchar](30) NULL,
	[CLIENT_ID_BENEFICIARY_ID] [varchar](30) NULL,
	[CATEGORY] [varchar](30) NULL,
	[Amount] [varchar](30) NULL,
	[CLIENTNAME] [varchar](100) NULL,
	[PAN_No] [varchar](30) NULL,
	[Bank_Name] [varchar](30) NULL,
	[Location] [varchar](30) NULL,
	[Account_Number] [varchar](30) NULL,
	[IFSCCode] [varchar](30) NULL,
	[BankReferenceNumber] [varchar](60) NULL,
	[ENTRY_DATE_TIME] [varchar](30) NULL,
	[LAST_MODF_DT_TIME] [varchar](30) NULL,
	[SUBBROKERCODE_REF_NO] [varchar](30) NULL,
	[MEMBERTYPE] [varchar](30) NULL,
	[ACTIONCODE] [varchar](30) NULL,
	[exchg] [varchar](3) NULL,
	[VBANK_NAME] [varchar](100) NULL,
	[VBANK_CODE] [varchar](4) NULL,
	[DPIDCLID] [varchar](16) NULL,
	[FINREM] [varchar](50) NULL,
	[NAMEOFSHAREHOLDER] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JUSTTEST1]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JUSTTEST1](
	[ORDER_NO] [varchar](30) NULL,
	[BOOK_ID] [varchar](30) NULL,
	[BRANCH] [varchar](30) NULL,
	[USR_ID] [varchar](30) NULL,
	[SYMBOL] [varchar](30) NULL,
	[QUANTITY] [varchar](30) NULL,
	[PRICE] [varchar](30) NULL,
	[APPL_NO] [varchar](30) NULL,
	[Depository] [varchar](30) NULL,
	[DP_ID] [varchar](30) NULL,
	[CLIENT_ID_BENEFICIARY_ID] [varchar](30) NULL,
	[CATEGORY] [varchar](30) NULL,
	[Amount] [varchar](30) NULL,
	[CLIENTNAME] [varchar](100) NULL,
	[PAN_No] [varchar](30) NULL,
	[Bank_Name] [varchar](30) NULL,
	[Location] [varchar](30) NULL,
	[Account_Number] [varchar](30) NULL,
	[IFSCCode] [varchar](30) NULL,
	[BankReferenceNumber] [varchar](60) NULL,
	[ENTRY_DATE_TIME] [varchar](30) NULL,
	[LAST_MODF_DT_TIME] [varchar](30) NULL,
	[SUBBROKERCODE_REF_NO] [varchar](30) NULL,
	[MEMBERTYPE] [varchar](30) NULL,
	[ACTIONCODE] [varchar](30) NULL,
	[exchg] [varchar](3) NULL,
	[VBANK_NAME] [varchar](100) NULL,
	[VBANK_CODE] [varchar](4) NULL,
	[DPIDCLID] [varchar](16) NULL,
	[FINREM] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Karnataka_Bank_Ltd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Karnataka_Bank_Ltd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Karur_Vysya_Bank_Ltd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Karur_Vysya_Bank_Ltd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kotak_Mahindra_Bank_Ltd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kotak_Mahindra_Bank_Ltd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Punjab_National_Bank]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Punjab_National_Bank](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Punjab_Sind_Bank]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Punjab_Sind_Bank](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RBL_Bank_Ltd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RBL_Bank_Ltd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State_Bank_of_India]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State_Bank_of_India](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TALDATA01]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TALDATA01](
	[ORDER_NO] [varchar](30) NULL,
	[BOOK_ID] [varchar](30) NULL,
	[BRANCH] [varchar](30) NULL,
	[USR_ID] [varchar](30) NULL,
	[SYMBOL] [varchar](30) NULL,
	[QUANTITY] [varchar](30) NULL,
	[PRICE] [varchar](30) NULL,
	[APPL_NO] [varchar](30) NULL,
	[Depository] [varchar](30) NULL,
	[DP_ID] [varchar](30) NULL,
	[CLIENT_ID_BENEFICIARY_ID] [varchar](30) NULL,
	[CATEGORY] [varchar](30) NULL,
	[Amount] [varchar](30) NULL,
	[CLIENTNAME] [varchar](100) NULL,
	[PAN_No] [varchar](30) NULL,
	[Bank_Name] [varchar](30) NULL,
	[Location] [varchar](30) NULL,
	[Account_Number] [varchar](30) NULL,
	[IFSCCode] [varchar](30) NULL,
	[BankReferenceNumber] [varchar](60) NULL,
	[ENTRY_DATE_TIME] [varchar](30) NULL,
	[LAST_MODF_DT_TIME] [varchar](30) NULL,
	[SUBBROKERCODE_REF_NO] [varchar](30) NULL,
	[MEMBERTYPE] [varchar](30) NULL,
	[ACTIONCODE] [varchar](30) NULL,
	[exchg] [varchar](3) NULL,
	[VBANK_NAME] [varchar](100) NULL,
	[VBANK_CODE] [varchar](4) NULL,
	[DPIDCLID] [varchar](16) NULL,
	[FINREM] [varchar](50) NULL,
	[BANKMISMFLAG] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taldata1]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taldata1](
	[BIDSLNO] [float] NULL,
	[ORDER_NO] [nvarchar](255) NULL,
	[BOOK_ID] [nvarchar](255) NULL,
	[BRANCH] [nvarchar](255) NULL,
	[USR_ID] [nvarchar](255) NULL,
	[SYMBOL] [nvarchar](255) NULL,
	[QUANTITY] [float] NULL,
	[PRICE] [nvarchar](255) NULL,
	[APPL_NO] [nvarchar](255) NULL,
	[DEPOSIT] [nvarchar](255) NULL,
	[DP_ID] [nvarchar](255) NULL,
	[CL_ID] [nvarchar](255) NULL,
	[CATEGORY] [nvarchar](255) NULL,
	[Amount] [float] NULL,
	[CLNAME] [nvarchar](255) NULL,
	[PANNO] [nvarchar](255) NULL,
	[BANKNAME] [nvarchar](255) NULL,
	[LOC] [nvarchar](255) NULL,
	[ACCNO] [nvarchar](255) NULL,
	[IFSCCD] [nvarchar](255) NULL,
	[BANKREF] [nvarchar](255) NULL,
	[EDATE] [nvarchar](255) NULL,
	[LDATE] [nvarchar](255) NULL,
	[SBCDREF] [nvarchar](255) NULL,
	[MEMTYPE] [nvarchar](255) NULL,
	[ACTCODE] [nvarchar](255) NULL,
	[exchg] [nvarchar](255) NULL,
	[VBANKNM] [nvarchar](255) NULL,
	[VBANKCD] [nvarchar](255) NULL,
	[DPIDCLID] [nvarchar](255) NULL,
	[FINREM] [nvarchar](255) NULL,
	[BSEBDMIS] [nvarchar](255) NULL,
	[SHNAME] [nvarchar](255) NULL,
	[ACCSTAT] [nvarchar](255) NULL,
	[BDBANKAC] [nvarchar](255) NULL,
	[BDPAN] [nvarchar](255) NULL,
	[EMAILID] [nvarchar](255) NULL,
	[RDFOLIO] [nvarchar](255) NULL,
	[RDBANKAC] [nvarchar](255) NULL,
	[RDPAN] [nvarchar](255) NULL,
	[STATUSFLG] [nvarchar](255) NULL,
	[BACMATFLG] [nvarchar](255) NULL,
	[STAT3] [nvarchar](255) NULL,
	[NAME1] [nvarchar](255) NULL,
	[CHK7] [nvarchar](255) NULL,
	[BDBNKACX] [nvarchar](255) NULL,
	[BDPANX] [nvarchar](255) NULL,
	[TXNS] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tamilnad_Mercantile_Bank_Ltd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tamilnad_Mercantile_Bank_Ltd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[The_Federal_Bank]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[The_Federal_Bank](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[The_Kalupur_Commercial_Cooperative_Bank_Ltd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[The_Kalupur_Commercial_Cooperative_Bank_Ltd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[The_Saraswat_CoOpearative_Bank_Ltd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[The_Saraswat_CoOpearative_Bank_Ltd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[The_South_Indian_Bank_Ltd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[The_South_Indian_Bank_Ltd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TJSB_Sahakari_Bank_Ltd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TJSB_Sahakari_Bank_Ltd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UCO_Bank]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UCO_Bank](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Union_Bank_of_India]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Union_Bank_of_India](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YES_Bank_Ltd]    Script Date: 27-04-2024 11:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YES_Bank_Ltd](
	[Symbol] [varchar](25) NULL,
	[IFSC Code] [varchar](25) NULL,
	[Application No.] [varchar](35) NULL,
	[DP ID] [varchar](25) NULL,
	[Client ID/Beneficiary ID] [varchar](25) NULL,
	[Bid Quantity] [varchar](25) NULL,
	[Rate / Price] [varchar](50) NULL,
	[Amount to be blocked] [varchar](50) NULL,
	[PAN no] [varchar](25) NULL,
	[Investor Category] [varchar](50) NULL,
	[Bank Refernce No.] [varchar](60) NULL,
	[Account No.] [varchar](50) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Order No] [varchar](30) NULL,
	[Share Alloted] [varchar](30) NULL,
	[Amount to be Transferred] [varchar](30) NULL,
	[Amount to be Refunded] [varchar](30) NULL,
	[Reason for Non-Allotment] [varchar](30) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Spark2023] SET  READ_WRITE 
GO
