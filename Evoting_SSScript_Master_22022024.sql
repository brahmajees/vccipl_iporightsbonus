USE [master]
GO
/****** Object:  Database [EVoting]    Script Date: 22-02-2024 19:21:14 ******/
CREATE DATABASE [EVoting]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EVoting', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VENTURESQLEXP\MSSQL\DATA\EVoting.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EVoting_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VENTURESQLEXP\MSSQL\DATA\EVoting_log.ldf' , SIZE = 139264KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EVoting] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EVoting].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EVoting] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EVoting] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EVoting] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EVoting] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EVoting] SET ARITHABORT OFF 
GO
ALTER DATABASE [EVoting] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EVoting] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EVoting] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EVoting] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EVoting] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EVoting] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EVoting] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EVoting] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EVoting] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EVoting] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EVoting] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EVoting] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EVoting] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EVoting] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EVoting] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EVoting] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EVoting] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EVoting] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EVoting] SET  MULTI_USER 
GO
ALTER DATABASE [EVoting] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EVoting] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EVoting] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EVoting] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EVoting] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EVoting] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [EVoting] SET QUERY_STORE = OFF
GO
USE [EVoting]
GO
/****** Object:  Table [dbo].[cctemp1]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cctemp1](
	[vtmp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cctemp2]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cctemp2](
	[vtmp2] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evApprshruplAnnexD01]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evApprshruplAnnexD01](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[totrecinfile] [varchar](9) NULL,
	[isin] [varchar](12) NULL,
	[evsn] [varchar](9) NULL,
	[parameterv] [varchar](2) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evApprshruplAnnexD02]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evApprshruplAnnexD02](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[boid_foliono] [varchar](16) NULL,
	[parameterv] [varchar](2) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evcustvotuplAnnexF01]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evcustvotuplAnnexF01](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[totrecinfile] [varchar](6) NULL,
	[cocodecustodian] [varchar](6) NULL,
	[parameterv] [varchar](2) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evcustvotuplAnnexF02]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evcustvotuplAnnexF02](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[evsn] [varchar](10) NULL,
	[boid_foliono] [varchar](16) NULL,
	[resnumber] [varchar](5) NULL,
	[Yesshr] [varchar](15) NULL,
	[Noshr] [varchar](15) NULL,
	[Cantsayshr] [varchar](15) NULL,
	[parameterv] [varchar](2) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evDisappruplAnnexC01]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evDisappruplAnnexC01](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[totrecinfile] [varchar](9) NULL,
	[isin] [varchar](12) NULL,
	[evsn] [varchar](9) NULL,
	[parameterv] [varchar](2) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evDisappruplAnnexC02]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evDisappruplAnnexC02](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[boid_foliono] [varchar](16) NULL,
	[parameterv] [varchar](2) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evndetail002]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evndetail002](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Batch_NoDT] [varchar](7) NULL,
	[Rec_Type] [varchar](2) NULL,
	[Dep_Type] [char](1) NULL,
	[Account_No] [varchar](16) NULL,
	[Name1] [varchar](135) NULL,
	[Pan1] [varchar](10) NULL,
	[Name2] [varchar](45) NULL,
	[Pan2] [varchar](10) NULL,
	[Name3] [varchar](45) NULL,
	[Pan3] [varchar](10) NULL,
	[Add1] [varchar](36) NULL,
	[Add2] [varchar](36) NULL,
	[Add3] [varchar](36) NULL,
	[Add4] [varchar](36) NULL,
	[Pincode] [varchar](6) NULL,
	[Mobile_No] [varchar](10) NULL,
	[Email_Id] [varchar](50) NULL,
	[Holdings_Shr] [varchar](18) NULL,
	[Category] [varchar](2) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evndetailbkp]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evndetailbkp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Batch_NoDT] [varchar](7) NULL,
	[Rec_Type] [varchar](2) NULL,
	[Dep_Type] [char](1) NULL,
	[Account_No] [varchar](16) NULL,
	[Name1] [varchar](135) NULL,
	[Pan1] [varchar](10) NULL,
	[Name2] [varchar](45) NULL,
	[Pan2] [varchar](10) NULL,
	[Name3] [varchar](45) NULL,
	[Pan3] [varchar](10) NULL,
	[Add1] [varchar](36) NULL,
	[Add2] [varchar](36) NULL,
	[Add3] [varchar](36) NULL,
	[Add4] [varchar](36) NULL,
	[Pincode] [varchar](6) NULL,
	[Mobile_No] [varchar](10) NULL,
	[Email_Id] [varchar](50) NULL,
	[Holdings_Shr] [varchar](18) NULL,
	[Category] [varchar](2) NULL,
	[calcflag] [char](1) NULL,
	[dpid] [varchar](8) NULL,
	[clid] [varchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evngpl01]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evngpl01](
	[Batch_noDT] [varchar](3) NOT NULL,
	[Rec_Type] [varchar](2) NOT NULL,
	[Dep_type] [varchar](1) NOT NULL,
	[account_no] [nvarchar](510) NULL,
	[name1] [nvarchar](255) NULL,
	[pan1] [nvarchar](255) NULL,
	[name2] [nvarchar](255) NULL,
	[pan2] [nvarchar](255) NULL,
	[name3] [nvarchar](255) NULL,
	[pan3] [nvarchar](255) NULL,
	[add1] [nvarchar](255) NULL,
	[add2] [nvarchar](255) NULL,
	[add3] [nvarchar](255) NULL,
	[add4] [nvarchar](255) NULL,
	[Mobile_no] [varchar](1) NOT NULL,
	[email_id] [nvarchar](255) NULL,
	[holdings_shr] [varchar](18) NULL,
	[category] [nchar](2) NULL,
	[calcflag] [nchar](1) NULL,
	[pin] [varchar](6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evngpl01ss]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evngpl01ss](
	[Batch_noDT] [varchar](3) NOT NULL,
	[Rec_Type] [varchar](2) NOT NULL,
	[Dep_type] [varchar](1) NOT NULL,
	[account_no] [nvarchar](510) NULL,
	[name1] [nvarchar](255) NULL,
	[pan1] [nvarchar](255) NULL,
	[name2] [nvarchar](255) NULL,
	[pan2] [nvarchar](255) NULL,
	[name3] [nvarchar](255) NULL,
	[pan3] [nvarchar](255) NULL,
	[add1] [nvarchar](255) NULL,
	[add2] [nvarchar](255) NULL,
	[add3] [nvarchar](255) NULL,
	[add4] [nvarchar](255) NULL,
	[Mobile_no] [varchar](1) NOT NULL,
	[email_id] [nvarchar](255) NULL,
	[holdings_shr] [varchar](18) NULL,
	[category] [nchar](2) NULL,
	[calcflag] [nchar](1) NULL,
	[pin] [varchar](6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evnheader001]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evnheader001](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Batch_NoHD] [varchar](7) NULL,
	[Rec_Type] [varchar](2) NULL,
	[Shr_id] [varchar](8) NULL,
	[Isin] [varchar](12) NULL,
	[Cut_off_Dt] [varchar](8) NULL,
	[No_Records] [varchar](10) NULL,
	[Even] [varchar](12) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EvNsdlDT02]    Script Date: 22-02-2024 19:21:14 ******/
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
/****** Object:  Table [dbo].[EvNsdlHD01]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EvNsdlHD01](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Batch_NoHD] [varchar](7) NULL,
	[Filler1] [char](1) NULL,
	[Rec_Type] [varchar](2) NULL,
	[Filler2] [char](1) NULL,
	[Shr_id] [varchar](8) NULL,
	[Filler3] [char](1) NULL,
	[Isin] [varchar](12) NULL,
	[Filler4] [char](1) NULL,
	[Cut_off_Dt] [varchar](8) NULL,
	[Filler5] [char](1) NULL,
	[No_Records] [varchar](10) NULL,
	[Filler6] [char](1) NULL,
	[Even] [varchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evromuplAnnexA01]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evromuplAnnexA01](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[totrecinfile] [varchar](6) NULL,
	[isin] [varchar](12) NULL,
	[evsn] [varchar](9) NULL,
	[parameterv] [varchar](2) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evromuplAnnexA02]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evromuplAnnexA02](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[seqno] [varchar](10) NULL,
	[member_type] [char](1) NULL,
	[boid_foliono] [varchar](16) NULL,
	[pan] [varchar](10) NULL,
	[uid] [varchar](12) NULL,
	[sub_status] [varchar](4) NULL,
	[noofshares] [varchar](15) NULL,
	[name1] [varchar](165) NULL,
	[name2] [varchar](165) NULL,
	[name3] [varchar](165) NULL,
	[add1] [varchar](36) NULL,
	[add2] [varchar](36) NULL,
	[add3] [varchar](36) NULL,
	[city] [varchar](25) NULL,
	[statename] [varchar](25) NULL,
	[country] [varchar](25) NULL,
	[pincode] [varchar](10) NULL,
	[dob] [datetime] NULL,
	[bank_account] [varchar](20) NULL,
	[mobileno] [varchar](10) NULL,
	[emailid] [varchar](100) NULL,
	[blockflag] [char](1) NULL,
	[blockreason] [varchar](100) NULL,
	[parameterv] [varchar](2) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evrtavotinguplAnnexB01]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evrtavotinguplAnnexB01](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[totrecinfile] [varchar](6) NULL,
	[isin] [varchar](12) NULL,
	[evsn] [varchar](9) NULL,
	[parameterv] [varchar](2) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evrtavotinguplAnnexB02]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evrtavotinguplAnnexB02](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[boid_foliono] [varchar](16) NULL,
	[resno] [varchar](5) NULL,
	[Yesshr] [varchar](15) NULL,
	[Noshr] [varchar](15) NULL,
	[Cantsayshr] [varchar](15) NULL,
	[parameterv] [varchar](2) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evshrmappoaAnnexE01]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evshrmappoaAnnexE01](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[totrecinfile] [varchar](6) NULL,
	[cocodecustodian] [varchar](6) NULL,
	[parameterv] [varchar](2) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evshrmappoaAnnexE02]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evshrmappoaAnnexE02](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[boid_foliono] [varchar](16) NULL,
	[poaavlflag] [char](1) NULL,
	[parameterv] [varchar](2) NULL,
	[calcflag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gpl_SrcFile]    Script Date: 22-02-2024 19:21:14 ******/
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
	[STATD] [nvarchar](255) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[N_evotf1]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[N_evotf1](
	[EVEN] [varchar](12) NULL,
	[ISIN] [varchar](15) NULL,
	[ISIN_NAME] [varchar](255) NULL,
	[START_DATE] [datetime] NULL,
	[END_DATE] [datetime] NULL,
	[RESULT_DATE] [datetime] NULL,
	[STATUS] [varchar](10) NULL,
	[EVEN_RATIO] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[N_evotf2]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[N_evotf2](
	[EVEN] [varchar](9) NULL,
	[RESOLUTION_ID] [varchar](9) NULL,
	[OPTION_ID] [varchar](9) NULL,
	[OPTION_NAME] [varchar](75) NULL,
	[VOTER_COUNTS] [varchar](18) NULL,
	[VOTE_COUNTS] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[N_EVOTF2A]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[N_EVOTF2A](
	[RESOLUTION_ID] [varchar](9) NULL,
	[OPTION_ID] [varchar](9) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[N_evotf3]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[N_evotf3](
	[EVEN] [varchar](9) NULL,
	[USERID] [varchar](20) NULL,
	[USERNAME] [varchar](255) NULL,
	[RESOLUTION_ID] [varchar](9) NULL,
	[OPTION_ID] [varchar](9) NULL,
	[HOLDINGS] [varchar](18) NULL,
	[VOTES] [varchar](18) NULL,
	[CAST_VOTE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nh_sourcedata]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nh_sourcedata](
	[DPID] [nvarchar](8) NULL,
	[FOLIO] [nvarchar](8) NULL,
	[Account_type] [nvarchar](16) NULL,
	[dep_type] [nvarchar](1) NULL,
	[STATUS] [int] NULL,
	[BTYPE] [int] NULL,
	[BTAC] [int] NULL,
	[OC] [int] NULL,
	[NAME] [nvarchar](135) NULL,
	[ADDR1] [nvarchar](36) NULL,
	[ADDR2] [nvarchar](36) NULL,
	[ADDR3] [nvarchar](36) NULL,
	[ADDR4] [nvarchar](36) NULL,
	[PIN] [nvarchar](6) NULL,
	[PHONE1] [nvarchar](10) NULL,
	[JH1] [nvarchar](45) NULL,
	[JH2] [nvarchar](45) NULL,
	[FHOLD_PAN] [nvarchar](10) NULL,
	[SHOLD_PAN] [nvarchar](10) NULL,
	[THOLD_PAN] [nvarchar](10) NULL,
	[B_STATUS] [int] NULL,
	[SHARES] [int] NULL,
	[BAC_TYPE] [int] NULL,
	[EMAILID1] [nvarchar](50) NULL,
	[STATCODE] [nvarchar](255) NULL,
	[COUNCODE] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Query1]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Query1](
	[Batch_noDT] [nvarchar](max) NULL,
	[Rec_Type] [nvarchar](max) NULL,
	[Dep_type] [nvarchar](max) NULL,
	[account_no] [nvarchar](max) NULL,
	[name1] [nvarchar](max) NULL,
	[pan1] [nvarchar](max) NULL,
	[name2] [nvarchar](max) NULL,
	[pan2] [nvarchar](max) NULL,
	[name3] [nvarchar](max) NULL,
	[pan3] [nvarchar](max) NULL,
	[add1] [nvarchar](max) NULL,
	[add2] [nvarchar](max) NULL,
	[add3] [nvarchar](max) NULL,
	[add4] [nvarchar](max) NULL,
	[Mobile_no] [nvarchar](max) NULL,
	[email_id] [nvarchar](max) NULL,
	[holdings_shr] [nvarchar](max) NULL,
	[category] [nvarchar](255) NULL,
	[calcflag] [nvarchar](255) NULL,
	[pin] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Query2]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Query2](
	[Batch_noDT] [nvarchar](max) NULL,
	[Rec_Type] [nvarchar](max) NULL,
	[Dep_type] [nvarchar](max) NULL,
	[account_no] [nvarchar](max) NULL,
	[name1] [nvarchar](max) NULL,
	[pan1] [nvarchar](max) NULL,
	[name2] [nvarchar](max) NULL,
	[pan2] [nvarchar](max) NULL,
	[name3] [nvarchar](max) NULL,
	[pan3] [nvarchar](max) NULL,
	[add1] [nvarchar](max) NULL,
	[add2] [nvarchar](max) NULL,
	[add3] [nvarchar](max) NULL,
	[add4] [nvarchar](max) NULL,
	[Mobile_no] [nvarchar](max) NULL,
	[email_id] [nvarchar](max) NULL,
	[holdings_shr] [nvarchar](max) NULL,
	[category] [nvarchar](255) NULL,
	[calcflag] [nvarchar](255) NULL,
	[pin] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sampleannexa02]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sampleannexa02](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[seqno] [varchar](10) NULL,
	[member_type] [char](1) NULL,
	[boid_foliono] [varchar](16) NULL,
	[pan] [varchar](10) NULL,
	[uid] [varchar](12) NULL,
	[sub_status] [varchar](4) NULL,
	[noofshares] [varchar](15) NULL,
	[name1] [varchar](165) NULL,
	[name2] [varchar](165) NULL,
	[name3] [varchar](165) NULL,
	[add1] [varchar](36) NULL,
	[add2] [varchar](36) NULL,
	[add3] [varchar](36) NULL,
	[city] [varchar](25) NULL,
	[statename] [varchar](25) NULL,
	[country] [varchar](25) NULL,
	[pincode] [varchar](10) NULL,
	[dob] [datetime] NULL,
	[bank_account] [varchar](20) NULL,
	[mobileno] [varchar](10) NULL,
	[emailid] [varchar](100) NULL,
	[blockflag] [char](1) NULL,
	[blockreason] [varchar](100) NULL,
	[parameterv] [varchar](2) NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp1]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp1](
	[seqno] [varchar](10) NULL,
	[member_type] [char](1) NULL,
	[boid_foliono] [varchar](16) NULL,
	[pan] [varchar](10) NULL,
	[uid] [varchar](12) NULL,
	[sub_status] [varchar](4) NULL,
	[noofshares] [varchar](15) NULL,
	[name1] [varchar](165) NULL,
	[name2] [varchar](165) NULL,
	[name3] [varchar](165) NULL,
	[add1] [varchar](36) NULL,
	[add2] [varchar](36) NULL,
	[add3] [varchar](36) NULL,
	[city] [varchar](25) NULL,
	[statename] [varchar](25) NULL,
	[country] [varchar](25) NULL,
	[pincode] [varchar](10) NULL,
	[dob] [datetime] NULL,
	[bank_account] [varchar](20) NULL,
	[mobileno] [varchar](10) NULL,
	[emailid] [varchar](100) NULL,
	[blockflag] [char](1) NULL,
	[blockreason] [varchar](100) NULL,
	[parameterv] [varchar](2) NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp101]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp101](
	[vtmp1] [varchar](53) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp102]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp102](
	[vtmp1] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp201]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp201](
	[vtmp1] [varchar](25) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp202]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp202](
	[vtmp1] [varchar](73) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp301]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp301](
	[vtmp2] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp302]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp302](
	[vtmp2] [varchar](1043) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp401]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp401](
	[vtmp4] [varchar](35) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temphash]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temphash](
	[vtmp1] [varchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vtemp1]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vtemp1](
	[vtmp1] [varchar](61) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vvtemp1]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vvtemp1](
	[vtmp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xaa]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xaa](
	[seqno] [varchar](10) NULL,
	[member_type] [char](1) NULL,
	[boid_foliono] [varchar](16) NULL,
	[pan] [varchar](10) NULL,
	[uid] [varchar](12) NULL,
	[sub_status] [varchar](4) NULL,
	[noofshares] [varchar](15) NULL,
	[name1] [varchar](165) NULL,
	[name2] [varchar](165) NULL,
	[name3] [varchar](165) NULL,
	[add1] [varchar](36) NULL,
	[add2] [varchar](36) NULL,
	[add3] [varchar](36) NULL,
	[city] [varchar](25) NULL,
	[statename] [varchar](25) NULL,
	[country] [varchar](25) NULL,
	[pincode] [varchar](10) NULL,
	[dob] [datetime] NULL,
	[bank_account] [varchar](20) NULL,
	[mobileno] [varchar](10) NULL,
	[emailid] [varchar](100) NULL,
	[blockflag] [char](1) NULL,
	[blockreason] [varchar](100) NULL,
	[parameterv] [varchar](2) NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xab]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xab](
	[seqno] [varchar](10) NULL,
	[member_type] [char](1) NULL,
	[boid_foliono] [varchar](16) NULL,
	[pan] [varchar](10) NULL,
	[uid] [varchar](12) NULL,
	[sub_status] [varchar](4) NULL,
	[noofshares] [varchar](15) NULL,
	[name1] [varchar](165) NULL,
	[name2] [varchar](165) NULL,
	[name3] [varchar](165) NULL,
	[add1] [varchar](36) NULL,
	[add2] [varchar](36) NULL,
	[add3] [varchar](36) NULL,
	[city] [varchar](25) NULL,
	[statename] [varchar](25) NULL,
	[country] [varchar](25) NULL,
	[pincode] [varchar](10) NULL,
	[dob] [datetime] NULL,
	[bank_account] [varchar](20) NULL,
	[mobileno] [varchar](10) NULL,
	[emailid] [varchar](100) NULL,
	[blockflag] [char](1) NULL,
	[blockreason] [varchar](100) NULL,
	[parameterv] [varchar](2) NULL,
	[calcflag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xxxx]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxxx](
	[Batch_noDT] [varchar](3) NOT NULL,
	[Rec_Type] [varchar](2) NOT NULL,
	[Dep_type] [varchar](1) NOT NULL,
	[account_no] [nvarchar](510) NULL,
	[name1] [nvarchar](255) NULL,
	[pan1] [nvarchar](255) NULL,
	[name2] [nvarchar](255) NULL,
	[pan2] [nvarchar](255) NULL,
	[name3] [nvarchar](255) NULL,
	[pan3] [nvarchar](255) NULL,
	[add1] [nvarchar](255) NULL,
	[add2] [nvarchar](255) NULL,
	[add3] [nvarchar](255) NULL,
	[add4] [nvarchar](255) NULL,
	[Mobile_no] [varchar](1) NOT NULL,
	[email_id] [nvarchar](255) NULL,
	[holdings_shr] [varchar](18) NULL,
	[category] [nchar](2) NULL,
	[calcflag] [nchar](1) NULL,
	[pin] [varchar](6) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[evcgenAxA01f]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[evcgenAxA01f]
as 
begin
IF OBJECT_ID ( 'temp301', 'U' ) IS NOT NULL DROP TABLE temp301
IF OBJECT_ID ( 'temp302', 'U' ) IS NOT NULL DROP TABLE temp302
IF OBJECT_ID ( 'cctemp2', 'U' ) IS NOT NULL DROP TABLE cctemp2	
IF OBJECT_ID ( 'xabc', 'U' ) IS NOT NULL DROP TABLE xabc	
create table cctemp2 (vtmp2 varchar(1000))
update evromuplAnnexA01 set calcflag ='N' where calcflag is null
update evromuplAnnexA01 set calcflag ='N' where calcflag is null
update evromuplAnnexA01 set parameterv = '00'
update evromuplAnnexA02 set parameterv = '01'
update evromuplAnnexA02 set noofshares = RIGHT('000000000000'+CONVERT(VARCHAR,noofshares),12)		+'000'	  where calcflag='N'

SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO #TEMP2 FROM evromuplAnnexA02 WHERE id < 99999
UPDATE a SET a.seqno = B.RowN FROM evromuplAnnexA02 a JOIN #temp2 b ON a.ID = b.ID
drop table #temp2

(
SELECT
		+parameterv +'='
		+'1001'     +'~'
		+isin		+'~'
		+evsn
		as vtmp2 into temp301     
		from evromuplAnnexA01)
(
SELECT 
		+parameterv		+'='	
		+seqno			+ '~'
		+member_type	+ '~'
		+boid_foliono	+ '~'
		+pan			+ '~'
		+uid			+ '~'
		+sub_status + '~'
		+substring(noofshares,1,12)+'.'+substring(noofshares,13,3)	+ '~'
		+name1			+ '~'
		+name2			+ '~'
		+name3			+ '~'
		+add1			+ '~'
		+add2			+ '~'
		+add3			+ '~'
		+city			+ '~'
		+statename		+ '~'
		+country		+ '~'
		+pincode		+ '~'
		+CONVERT(VARCHAR,dob,103)			+ '~'
		+bank_account	+ '~'
		+mobileno		+ '~'
		+emailid		+ '~'
		+blockflag		+ '~'
		+blockreason	
		as vtmp2 into temp302     
		from evromuplAnnexA02)
		truncate table cctemp2
		insert into cctemp2  select * from temp301
		insert into cctemp2  select * from temp302
		DECLARE @cmd varchar(500),@filename1 varchar(100)
		SELECT @filename1 ='RTA_VUL_CDSL_ANNEX_A'+FORMAT(GETDATE(),'yyyyMMdd')+FORMAT(GETDATE(),'HHmmss')+'.TXT'       
		SET @cmd = 'bcp "SELECT * FROM evoting.dbo.cctemp2" '+ 'queryout D:\evote\cdsl\UploadFilestoCDSL\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
		EXEC master..xp_cmdshell @cmd
END
GO
/****** Object:  StoredProcedure [dbo].[evcgenAxB01f]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[evcgenAxB01f]

as 
begin
IF OBJECT_ID ( 'temp201', 'U' ) IS NOT NULL DROP TABLE temp201
IF OBJECT_ID ( 'temp202', 'U' ) IS NOT NULL DROP TABLE temp202
IF OBJECT_ID ( 'cctemp1', 'U' ) IS NOT NULL DROP TABLE cctemp1	
create table cctemp1 (vtmp1 varchar(1000))
update evrtavotinguplAnnexB01 set calcflag ='N' where calcflag is null
update evrtavotinguplAnnexB02 set calcflag ='N' where calcflag is null
update evrtavotinguplAnnexB01 set parameterv = '33'
update evrtavotinguplAnnexB02 set parameterv = '01'
update evrtavotinguplAnnexB02 set yesshr		= RIGHT('000000000000'+CONVERT(VARCHAR,yesshr),12)		+'000'	  where calcflag='N'
update evrtavotinguplAnnexB02 set noshr			= RIGHT('000000000000'+CONVERT(VARCHAR,noshr),12)		+'000'	  where calcflag='N'
update evrtavotinguplAnnexB02 set cantsayshr	= RIGHT('000000000000'+CONVERT(VARCHAR,cantsayshr),12)	+'000'	  where calcflag='N'
(SELECT 
		+parameterv+'='+
		+isin		 +'~'
		+evsn
		as vtmp1 into temp201     
		from evrtavotinguplAnnexB01)
(
SELECT 
		+parameterv+'='+
		+boid_foliono + '~'
		+resno + '~'
		+yesshr + '~'
		+noshr + '~'
		+cantsayshr
		as vtmp1 into temp202     
		from evrtavotinguplAnnexB02)
		truncate table cctemp1
		insert into cctemp1  select * from temp201
		insert into cctemp1  select * from temp202
		select * from cctemp1
		DECLARE @cmd varchar(500),@filename1 varchar(100)
		SELECT @filename1 ='RTA_VOTINGUPLOAD_CDSL_ANNEX_B'+FORMAT(GETDATE(),'yyyyMMdd')+FORMAT(GETDATE(),'HHmmss')+'.TXT'       
		SET @cmd = 'bcp "SELECT * FROM evoting.dbo.cctemp1" '+ 'queryout D:\evote\cdsl\UploadFilestoCDSL\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
		EXEC master..xp_cmdshell @cmd
END
GO
/****** Object:  StoredProcedure [dbo].[evngenfile01f]    Script Date: 22-02-2024 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[evngenfile01f]
as 
begin
IF OBJECT_ID ( 'temp101', 'U' ) IS NOT NULL DROP TABLE temp101
IF OBJECT_ID ( 'temp102', 'U' ) IS NOT NULL DROP TABLE temp102
IF OBJECT_ID ( 'vvtemp1', 'U' ) IS NOT NULL DROP TABLE vvtemp1	
IF OBJECT_ID ( 'temphash', 'U' ) IS NOT NULL DROP TABLE temphash
create table vvtemp1 (vtmp1 varchar(1000))
(SELECT 
		+'0700355'+'^'
		+'11'+'^'
		+Shr_id      +'^'
		+'INE255C01018'	 +'^'
		+'20231222'  +'^'
		+'5640'  +'^'
		+'127224'
		as vtmp1 into temp101     
		from evnheader001)
(
SELECT 
		+'0700355'+'^'
		+'12'+'^'
		+Dep_Type	+'^'
		+Account_No	+'^'	
		+Name1		+'^'
		+Pan1		+'^'	
		+Name2		+'^'	
		+Pan2		+'^'	
		+Name3		+'^'
		+Pan3		+'^'	
		+Add1		+'^'
		+Add2		+'^'	
		+Add3		+'^'
		+Add4		+'^'	
		+Pin	+'^'
		+Mobile_No	+'^'	
		+Email_Id	+'^'
		+Holdings_Shr +'^'	
		+Category
		as vtmp1 into temp102     
		from query2
		)
		(SELECT '{}' as vtmp1 into temphash)

		truncate table vvtemp1
		insert into vvtemp1  select * from temphash
		insert into vvtemp1  select * from temp101
		insert into vvtemp1  select * from temp102
		insert into vvtemp1  select * from temphash
		select * from vvtemp1
		DECLARE @cmd varchar(500),@filename1 varchar(100)
		SELECT @filename1 ='EVNSDL_'+FORMAT(GETDATE(),'yyyyMMdd')+FORMAT(GETDATE(),'HHmmss')+'.TXT'       
		SET @cmd = 'bcp "SELECT * FROM evoting.dbo.vvtemp1" '+ 'queryout D:\evote\nsdl\UploadFilestoNSDL\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
		EXEC master..xp_cmdshell @cmd
END
GO
USE [master]
GO
ALTER DATABASE [EVoting] SET  READ_WRITE 
GO
