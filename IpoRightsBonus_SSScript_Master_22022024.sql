USE [master]
GO
/****** Object:  Database [IpoRightsBonus]    Script Date: 22-02-2024 19:20:11 ******/
CREATE DATABASE [IpoRightsBonus]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IpoRightsBonus', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VENTURESQLEXP\MSSQL\DATA\IpoRightsBonus.mdf' , SIZE = 139264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'IpoRightsBonus_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VENTURESQLEXP\MSSQL\DATA\IpoRightsBonus_log.ldf' , SIZE = 532480KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [IpoRightsBonus] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IpoRightsBonus].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IpoRightsBonus] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET ARITHABORT OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IpoRightsBonus] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IpoRightsBonus] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET  DISABLE_BROKER 
GO
ALTER DATABASE [IpoRightsBonus] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IpoRightsBonus] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [IpoRightsBonus] SET  MULTI_USER 
GO
ALTER DATABASE [IpoRightsBonus] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IpoRightsBonus] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IpoRightsBonus] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IpoRightsBonus] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [IpoRightsBonus] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [IpoRightsBonus] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [IpoRightsBonus] SET QUERY_STORE = OFF
GO
USE [IpoRightsBonus]
GO
/****** Object:  Table [dbo].[adrasba_refund_file]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adrasba_refund_file](
	[Symbol] [nvarchar](50) NULL,
	[IFSC_Code] [nvarchar](50) NULL,
	[Application_No] [nvarchar](50) NULL,
	[DP_ID] [nvarchar](50) NULL,
	[Client_ID_Beneficiary_ID] [nvarchar](50) NULL,
	[Bid_Quantity] [nvarchar](16) NULL,
	[Rate_Price] [nvarchar](18) NULL,
	[Amount_to_be_blocked] [nvarchar](20) NULL,
	[PAN_no] [nvarchar](50) NULL,
	[Investor_Category] [nvarchar](50) NULL,
	[Bank_Refernce_No] [nvarchar](50) NULL,
	[Account_No] [nvarchar](50) NULL,
	[Created_Date] [nvarchar](50) NULL,
	[Modified_Date] [nvarchar](50) NULL,
	[Order_No] [nvarchar](50) NULL,
	[Share_Alloted] [nvarchar](20) NULL,
	[Amount_to_be_Transferred] [nvarchar](40) NULL,
	[Amount_to_be_Refunded] [nvarchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[adrcdhd01shr]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adrcdhd01shr](
	[AdrCHdShr] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[adrcdheadsampl]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adrcdheadsampl](
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
/****** Object:  Table [dbo].[adrhd01shr]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adrhd01shr](
	[AdrHdShr] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[adrnshd01shr]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adrnshd01shr](
	[AdrNHdShr] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[adrnsheadsampl]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adrnsheadsampl](
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
/****** Object:  Table [dbo].[adroit_bidBSE_file01]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adroit_bidBSE_file01](
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
	[ACTIONCODE] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[adroit_bidnse_file]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adroit_bidnse_file](
	[Symbol] [varchar](20) NULL,
	[IFSC_Code] [varchar](20) NULL,
	[Application_Number] [varchar](20) NULL,
	[DP_Id] [varchar](20) NULL,
	[Ben_Id] [varchar](20) NULL,
	[No_of_shares] [varchar](20) NULL,
	[Price_Cutoff] [varchar](20) NULL,
	[Total_Amount] [varchar](20) NULL,
	[PAN] [varchar](20) NULL,
	[Category] [varchar](20) NULL,
	[ASBA] [varchar](20) NULL,
	[Block_Reference_Number] [varchar](20) NULL,
	[Bank_Account_Number] [varchar](20) NULL,
	[Transaction_Date] [varchar](20) NULL,
	[Modification_Date] [varchar](20) NULL,
	[Transaction_Number] [varchar](20) NULL,
	[Username] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[adroit_bidnse_file01]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adroit_bidnse_file01](
	[Symbol] [nvarchar](30) NULL,
	[IFSC_Code] [nvarchar](30) NULL,
	[Application_Number] [nvarchar](30) NULL,
	[DP_Id] [nvarchar](30) NULL,
	[Ben_Id] [nvarchar](30) NULL,
	[No_of_shares] [nvarchar](30) NULL,
	[Price_Cutoff] [nvarchar](30) NULL,
	[Total_Amount] [nvarchar](30) NULL,
	[PAN] [nvarchar](30) NULL,
	[Category] [nvarchar](30) NULL,
	[ASBA_Block_Reference_Number] [nvarchar](30) NULL,
	[Bank_Account_Number] [nvarchar](30) NULL,
	[Transaction_Date] [nvarchar](30) NULL,
	[Modification_Date] [nvarchar](30) NULL,
	[Transaction_Number] [nvarchar](30) NULL,
	[Username1] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADROIT_CAFMAS]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADROIT_CAFMAS](
	[ISIN] [nvarchar](20) NULL,
	[CAFNO] [nvarchar](20) NULL,
	[DPID] [nvarchar](20) NULL,
	[FOLIO] [nvarchar](20) NULL,
	[STATUS] [nvarchar](20) NULL,
	[BTYPE] [nvarchar](20) NULL,
	[BTAC] [nvarchar](20) NULL,
	[NAME] [nvarchar](100) NULL,
	[FNAME] [nvarchar](100) NULL,
	[ADDR1] [nvarchar](100) NULL,
	[ADDR2] [nvarchar](100) NULL,
	[ADDR3] [nvarchar](100) NULL,
	[ADDR4] [nvarchar](100) NULL,
	[PIN] [nvarchar](40) NULL,
	[PHONE1] [nvarchar](50) NULL,
	[JH1] [nvarchar](100) NULL,
	[JH2] [nvarchar](100) NULL,
	[FHOLD_PAN] [nvarchar](40) NULL,
	[SHOLD_PAN] [nvarchar](40) NULL,
	[THOLD_PAN] [nvarchar](40) NULL,
	[EMAILID1] [nvarchar](100) NULL,
	[ASBA] [nvarchar](100) NULL,
	[BACNO] [nvarchar](100) NULL,
	[BNAME] [nvarchar](100) NULL,
	[MICR] [nvarchar](50) NULL,
	[BAC_TYPE] [nvarchar](50) NULL,
	[IFSC] [nvarchar](50) NULL,
	[SHARES] [varchar](40) NULL,
	[ESHARES] [varchar](40) NULL,
	[REMARK] [nvarchar](50) NULL,
	[EDATE] [nvarchar](50) NULL,
	[FSHARES] [varchar](60) NULL,
	[DPIDCLID] [varchar](16) NULL,
	[ASBAREFNO] [varchar](50) NULL,
	[SE] [varchar](3) NULL,
	[MATCH_FLAG] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[asba_banks]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asba_banks](
	[bankcode1] [varchar](20) NULL,
	[bankname] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CCtemp1]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCtemp1](
	[Ctemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cctemp12]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cctemp12](
	[ctemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cctemp2]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cctemp2](
	[ctemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cfin1]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cfin1](
	[cTEMP1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fftemp1]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fftemp1](
	[ftemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mastadr01]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mastadr01](
	[CAFNO] [varchar](8) NULL,
	[DPID] [varchar](8) NULL,
	[FOLIO] [varchar](8) NULL,
	[STATUS] [varchar](5) NULL,
	[BTYPE] [varchar](5) NULL,
	[NAME] [varchar](50) NULL,
	[ADDR1] [varchar](40) NULL,
	[ADDR2] [varchar](40) NULL,
	[ADDR3] [varchar](40) NULL,
	[ADDR4] [varchar](40) NULL,
	[PIN] [varchar](7) NULL,
	[JH1] [varchar](50) NULL,
	[JH2] [varchar](50) NULL,
	[FHOLD_PAN] [varchar](15) NULL,
	[SHOLD_PAN] [varchar](15) NULL,
	[THOLD_PAN] [varchar](15) NULL,
	[EMAILID1] [varchar](100) NULL,
	[SHARES] [varchar](18) NULL,
	[ESHARES] [varchar](18) NULL,
	[FSHARES] [varchar](18) NULL,
	[DEPFLAG] [varchar](8) NULL,
	[entshares] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mastadr02]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mastadr02](
	[ISIN] [varchar](12) NULL,
	[CATYPE] [varchar](4) NULL,
	[CLID] [varchar](16) NULL,
	[DPID] [varchar](8) NULL,
	[FOLIO] [varchar](8) NULL,
	[STATUS] [varchar](12) NULL,
	[BTYPE] [varchar](12) NULL,
	[BP_ACT_CT] [varchar](12) NULL,
	[BP_OC] [varchar](12) NULL,
	[NAME] [varchar](50) NULL,
	[ADDR1] [varchar](40) NULL,
	[ADDR2] [varchar](40) NULL,
	[ADDR3] [varchar](40) NULL,
	[ADDR4] [varchar](40) NULL,
	[PIN] [varchar](7) NULL,
	[JH1] [varchar](50) NULL,
	[JH2] [varchar](50) NULL,
	[FHOLD_IN] [varchar](15) NULL,
	[SHOLD_IN] [varchar](15) NULL,
	[THOLD_IN] [varchar](15) NULL,
	[SHARES] [varchar](18) NULL,
	[CSHARES] [varchar](18) NULL,
	[LSHARES] [varchar](18) NULL,
	[FSHARES] [varchar](18) NULL,
	[DFROM] [varchar](18) NULL,
	[DTO] [varchar](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mastadr02dt]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mastadr02dt](
	[Record_IDentification] [varchar](2) NOT NULL,
	[Detail_Record_Line_No] [varchar](7) NOT NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NOT NULL,
	[Lockin_Release_Date] [varchar](8) NOT NULL,
	[issue_price] [varchar](18) NOT NULL,
	[Issued_Amount] [varchar](18) NOT NULL,
	[Paidup_Price] [varchar](18) NOT NULL,
	[Paidup_Amount] [varchar](18) NOT NULL,
	[filler] [varchar](2) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mastadr02DTCDSL]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mastadr02DTCDSL](
	[Record_IDentification] [varchar](2) NOT NULL,
	[BO_ID] [varchar](16) NULL,
	[RTA_INTREF_NO] [varchar](16) NOT NULL,
	[PISIN] [varchar](12) NOT NULL,
	[pcurr_qty] [varchar](16) NOT NULL,
	[PFrozen_Qty] [varchar](16) NOT NULL,
	[PLockin_Qty] [varchar](16) NOT NULL,
	[PLockin_Reason_Cd] [varchar](2) NOT NULL,
	[PLockin_Reason] [varchar](50) NULL,
	[PLockin_Exp_Date] [varchar](8) NOT NULL,
	[PDRCR_Flag] [varchar](1) NOT NULL,
	[BISIN] [varchar](12) NOT NULL,
	[Bcurr_qty] [varchar](16) NULL,
	[BFrozen_Qty] [varchar](16) NOT NULL,
	[BLockin_Qty] [varchar](16) NOT NULL,
	[BLockin_Reason_Cd] [varchar](2) NOT NULL,
	[BLockin_Reason] [varchar](50) NULL,
	[BLockin_Exp_Date] [varchar](8) NOT NULL,
	[BDRCR_Flag] [varchar](1) NOT NULL,
	[offerprice] [varchar](16) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mastcadr02dt]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mastcadr02dt](
	[Record_IDentification] [varchar](2) NOT NULL,
	[BO_ID] [varchar](16) NULL,
	[RTA_INTREF_NO] [varchar](16) NOT NULL,
	[PISIN] [varchar](12) NOT NULL,
	[pcurr_qty] [varchar](16) NOT NULL,
	[PFrozen_Qty] [varchar](16) NOT NULL,
	[PLockin_Qty] [varchar](16) NOT NULL,
	[PLockin_Reason_Cd] [varchar](2) NOT NULL,
	[PLockin_Reason] [varchar](50) NULL,
	[PLockin_Exp_Date] [varchar](8) NOT NULL,
	[PDRCR_Flag] [varchar](1) NOT NULL,
	[BISIN] [varchar](12) NOT NULL,
	[Bcurr_qty] [varchar](16) NULL,
	[BFrozen_Qty] [varchar](16) NOT NULL,
	[BLockin_Qty] [varchar](16) NOT NULL,
	[BLockin_Reason_Cd] [varchar](2) NOT NULL,
	[BLockin_Reason] [varchar](50) NULL,
	[BLockin_Exp_Date] [varchar](8) NOT NULL,
	[BDRCR_Flag] [varchar](1) NOT NULL,
	[offerprice] [varchar](16) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MASTER_ADROIT]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTER_ADROIT](
	[ISIN] [varchar](12) NULL,
	[COMPANY_NAME] [varchar](100) NULL,
	[ISSUE_OPEN] [datetime] NULL,
	[ISSUE_CLOSE] [datetime] NULL,
	[ISSUE_SHARES] [varchar](18) NULL,
	[ISSUE_AMOUNT] [varchar](18) NULL,
	[TOTAL_SHARES] [varchar](18) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mastnadr01hd]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mastnadr01hd](
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
/****** Object:  Table [dbo].[mastNadr02dt]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mastNadr02dt](
	[Record_IDentification] [varchar](2) NOT NULL,
	[Detail_Record_Line_No] [varchar](7) NOT NULL,
	[DP_ID] [varchar](8) NULL,
	[Client_ID] [varchar](8) NULL,
	[Client_Account_Category] [varchar](2) NOT NULL,
	[Allotment_Quantity] [varchar](18) NULL,
	[Lockin_Reason_Code] [varchar](2) NOT NULL,
	[Lockin_Release_Date] [varchar](8) NOT NULL,
	[issue_price] [varchar](18) NOT NULL,
	[Issued_Amount] [varchar](18) NOT NULL,
	[Paidup_Price] [varchar](18) NOT NULL,
	[Paidup_Amount] [varchar](18) NOT NULL,
	[filler] [varchar](2) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nfin1]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nfin1](
	[FTEMP1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nntemp12]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nntemp12](
	[ctemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nre01infile]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nre01infile](
	[DPID] [varchar](8) NULL,
	[CLID] [varchar](8) NULL,
	[STATUS] [varchar](3) NULL,
	[BTYPE] [varchar](3) NULL,
	[BTAC] [varchar](3) NULL,
	[NAME] [varchar](50) NULL,
	[JH1] [varchar](50) NULL,
	[JH2] [varchar](50) NULL,
	[ISIN] [varchar](12) NULL,
	[FOLIO] [varchar](8) NULL,
	[SHARES] [varchar](18) NULL,
	[ESHARES] [varchar](18) NULL,
	[CSHARES] [varchar](18) NULL,
	[LSHARES] [varchar](18) NULL,
	[FSHARES] [varchar](18) NULL,
	[LDATE] [varchar](8) NULL,
	[LCODE] [varchar](2) NULL,
	[EDATE] [varchar](10) NULL,
	[DALLOT] [varchar](10) NULL,
	[ALLOTDIC] [varchar](10) NULL,
	[LTAPCOFD] [varchar](10) NULL,
	[DFROM] [varchar](18) NULL,
	[DTO] [varchar](18) NULL,
	[DNSTAT] [varchar](10) NULL,
	[CATYPE] [varchar](4) NULL,
	[IPRICE] [varchar](18) NULL,
	[IAMOUNT] [varchar](18) NULL,
	[PPRICE] [varchar](18) NULL,
	[PAMOUNT] [varchar](18) NULL,
	[STAMP] [varchar](1) NULL,
	[BASIS] [varchar](2) NULL,
	[EBP] [varchar](2) NULL,
	[FUNDS] [varchar](2) NULL,
	[FILER] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ntemp1]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ntemp1](
	[ftemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pincode_master]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pincode_master](
	[PostOfficeName] [varchar](100) NULL,
	[Pincode] [varchar](20) NULL,
	[DistrictsName] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[Statename] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PINEXT]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PINEXT](
	[CITY] [varchar](20) NULL,
	[PIN_NO] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PINMAST]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PINMAST](
	[PINF] [int] NULL,
	[PINT] [int] NULL,
	[CITY] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sandur_bonus_nsdl_normal_file]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sandur_bonus_nsdl_normal_file](
	[Record_Type] [varchar](2) NULL,
	[ACA_BP_Instruction_ID] [varchar](14) NULL,
	[ISIN_] [varchar](12) NULL,
	[Total_Free_quantity] [varchar](18) NULL,
	[Total_Locked_quantity] [varchar](18) NULL,
	[Total_Blocked_quantity] [varchar](18) NULL,
	[Total_Number_of_Detail_Records] [varchar](7) NULL,
	[Statement_Preparation_Date] [varchar](8) NULL,
	[Statement_Preparation_Time] [varchar](6) NULL,
	[Filler] [varchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sandur_bonus_nsdl_normal_file_DT]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sandur_bonus_nsdl_normal_file_DT](
	[Record_Type] [varchar](2) NULL,
	[Line_Number] [varchar](7) NULL,
	[DP_Id] [varchar](8) NULL,
	[Beneficiary_Account_Number] [varchar](8) NULL,
	[Beneficiary_Type] [varchar](2) NULL,
	[Beneficiary_sub_type] [varchar](2) NULL,
	[Beneficiary_Account_Category] [varchar](2) NULL,
	[Beneficiary_Occupation] [varchar](2) NULL,
	[First_Holders_NameBP__Name] [varchar](250) NULL,
	[First_Holders_FatherHusband_name] [varchar](45) NULL,
	[Beneficiary_Address_Part_1Bp_Addr_1] [varchar](36) NULL,
	[Beneficiary_Address_Part_2Bp_Addr_2] [varchar](36) NULL,
	[Beneficiary_Address_Part_3Bp_Addr_3] [varchar](36) NULL,
	[Beneficiary_Address_Part_4Bp_Addr_4] [varchar](36) NULL,
	[Beneficiary_Address_Pin_codeBp_Pin_Code] [varchar](10) NULL,
	[Beneficiary_Phone_NumberBp_Phone_No] [varchar](24) NULL,
	[Beneficiary_Fax_NumberBp_Fax_No] [varchar](24) NULL,
	[Second_Holders_Name] [varchar](45) NULL,
	[Second_Holders_FatherHusband_name] [varchar](45) NULL,
	[Third_Holders_Name] [varchar](45) NULL,
	[Third_Holders_FatherHusband_name] [varchar](45) NULL,
	[Filler1] [varchar](6) NULL,
	[First_holders_Income_Tax_PAN__] [varchar](30) NULL,
	[Second_holders_Income_Tax_PAN__] [varchar](30) NULL,
	[Third_holders_Income_Tax_PAN__] [varchar](30) NULL,
	[NomineeGuardian_Indicator] [varchar](1) NULL,
	[NomineeGuardian_Name] [varchar](45) NULL,
	[NomineeGuardian_Address_Part_1] [varchar](36) NULL,
	[NomineeGuardian_Address_Part_2] [varchar](36) NULL,
	[NomineeGuardian_Address_Part_3] [varchar](36) NULL,
	[NomineeGuardian_Address_Part_4] [varchar](36) NULL,
	[NomineeGuardian_Address_Pin_code] [varchar](10) NULL,
	[Date_of_Birth_in_case_of_minor] [varchar](8) NULL,
	[Beneficiary_Bank_Account_Number] [varchar](30) NULL,
	[Bank_Name_and_Branch] [varchar](135) NULL,
	[Branch_Code] [varchar](6) NULL,
	[Bank_Address_Part_1] [varchar](36) NULL,
	[Bank_Address_Part_2] [varchar](36) NULL,
	[Bank_Address_Part_3] [varchar](36) NULL,
	[Bank_Address_Part_4] [varchar](36) NULL,
	[Bank_Address_Pin_code] [varchar](10) NULL,
	[RBI_Reference_Number_In_case_of_NRI] [varchar](50) NULL,
	[RBI_Approval_Date_In_case_of_NRI] [varchar](8) NULL,
	[SEBI_Registration_Number] [varchar](24) NULL,
	[Beneficiary_Tax_Deduction_Status] [varchar](20) NULL,
	[MICR_Code] [varchar](9) NULL,
	[Bank_Account_Type] [varchar](2) NULL,
	[Benificiary_Status] [varchar](2) NULL,
	[Fractional_Position] [varchar](18) NULL,
	[BlockFree_Flag] [varchar](1) NULL,
	[Lock_in_Reason_Code] [varchar](2) NULL,
	[Lock_in_Reason_Date] [varchar](8) NULL,
	[Market_Type] [varchar](2) NULL,
	[Settlement_Number] [varchar](7) NULL,
	[Filler2] [varchar](5) NULL,
	[rem] [varchar](1600) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sandur_bonus_nsdl_normal_file_HD]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sandur_bonus_nsdl_normal_file_HD](
	[Record_Type] [varchar](2) NULL,
	[ACA_BP_Instruction_ID] [varchar](14) NULL,
	[ISIN_] [varchar](12) NULL,
	[Total_Free_quantity] [varchar](18) NULL,
	[Total_Locked_quantity] [varchar](18) NULL,
	[Total_Blocked_quantity] [varchar](18) NULL,
	[Total_Number_of_Detail_Records] [varchar](7) NULL,
	[Statement_Preparation_Date] [varchar](8) NULL,
	[Statement_Preparation_Time] [varchar](6) NULL,
	[Filler] [varchar](8) NULL,
	[rem] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SandurBonusRejFileHD]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SandurBonusRejFileHD](
	[rec_type] [varchar](2) NULL,
	[Aca_BP_instruction_ID] [varchar](14) NULL,
	[Isin] [varchar](12) NULL,
	[Total_rejected_Bonus_quantity_due_to_Acct_Closure] [varchar](18) NULL,
	[Total_Number_of_Detail_Records] [varchar](7) NULL,
	[Statement_Preparation_Date] [varchar](8) NULL,
	[Statement_Preparation_Time] [varchar](6) NULL,
	[rem] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SCCB_BankList]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SCCB_BankList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Slno] [varchar](3) NOT NULL,
	[BankName] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SCCB_BankMaster]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SCCB_BankMaster](
	[slno] [varchar](10) NULL,
	[bankname] [varchar](100) NULL,
	[t_applns] [varchar](18) NULL,
	[t_shares] [varchar](18) NULL,
	[t_amount] [varchar](18) NULL,
	[pt_Applsn] [varchar](18) NULL,
	[pt_amount] [varchar](18) NULL,
	[pt_issue] [varchar](18) NULL,
	[ZONE_WISE] [varchar](10) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SCCB_RejectionFile01F]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SCCB_RejectionFile01F](
	[SCCB_Id] [int] IDENTITY(1,1) NOT NULL,
	[Scrip_Id] [varchar](10) NULL,
	[Application_No] [varchar](16) NULL,
	[Category] [varchar](5) NULL,
	[Applicant_Name] [varchar](50) NULL,
	[Depository] [varchar](4) NULL,
	[DpID] [varchar](8) NULL,
	[ClientId_Benf_Id] [varchar](16) NULL,
	[Quantity] [varchar](11) NULL,
	[Cut_off_flag] [varchar](1) NULL,
	[Rate] [varchar](6) NULL,
	[Amount_Received_Flag] [varchar](1) NULL,
	[Amount] [varchar](12) NULL,
	[Reference_Number] [varchar](9) NULL,
	[Pan_No] [varchar](10) NULL,
	[Bank_Name] [varchar](6) NULL,
	[Location_Name] [varchar](6) NULL,
	[Account_No_UPI_ID] [varchar](45) NULL,
	[Bid_Id] [varchar](16) NULL,
	[Action_Code] [varchar](1) NULL,
	[Error_text] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[SCCB_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SCCB_SuccessFile01F]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SCCB_SuccessFile01F](
	[SCCB_Id] [int] IDENTITY(1,1) NOT NULL,
	[Scrip_Id] [varchar](10) NULL,
	[Application_No] [varchar](16) NULL,
	[Category] [varchar](5) NULL,
	[Applicant_Name] [varchar](50) NULL,
	[Depository] [varchar](4) NULL,
	[DpID] [varchar](8) NULL,
	[ClientId_Benf_Id] [varchar](16) NULL,
	[Quantity] [varchar](11) NULL,
	[Cut_off_flag] [varchar](1) NULL,
	[Rate] [varchar](6) NULL,
	[Amount_Received_Flag] [varchar](1) NULL,
	[Amount] [varchar](12) NULL,
	[Reference_Number] [varchar](9) NULL,
	[Pan_No] [varchar](10) NULL,
	[Bank_Name] [varchar](6) NULL,
	[Location_Name] [varchar](6) NULL,
	[Account_No_UPI_ID] [varchar](45) NULL,
	[Bid_Id] [varchar](16) NULL,
	[Action_Code] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[SCCB_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SCCB_UplFile01F]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SCCB_UplFile01F](
	[SCCB_Id] [int] IDENTITY(1,1) NOT NULL,
	[Scrip_Id] [varchar](10) NULL,
	[Application_No] [varchar](16) NULL,
	[Category] [varchar](5) NULL,
	[Applicant_Name] [varchar](50) NULL,
	[Depository] [varchar](4) NULL,
	[DpID] [varchar](8) NULL,
	[ClientId_Benf_Id] [varchar](16) NULL,
	[Quantity] [varchar](11) NULL,
	[Cut_off_flag] [varchar](1) NULL,
	[Rate] [varchar](6) NULL,
	[Amount_Received_Flag] [varchar](1) NULL,
	[Amount] [varchar](12) NULL,
	[Reference_Number] [varchar](9) NULL,
	[Pan_No] [varchar](10) NULL,
	[Bank_Name] [varchar](6) NULL,
	[Location_Name] [varchar](6) NULL,
	[Account_No_UPI_ID] [varchar](45) NULL,
	[Bid_Id] [varchar](16) NULL,
	[Action_Code] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[SCCB_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMP123]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP123](
	[RowN] [bigint] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp1234]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp1234](
	[ftemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp1235]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp1235](
	[Ctemp1] [varchar](292) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp1236]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp1236](
	[ctemp1] [varchar](80) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMP123c]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP123c](
	[RowN] [bigint] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempnsdlhead01]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tempnsdlhead01](
	[DPID] [varchar](8) NULL,
	[CLID] [varchar](8) NULL,
	[STATUS] [varchar](3) NULL,
	[BTYPE] [varchar](3) NULL,
	[BTAC] [varchar](3) NULL,
	[NAME] [varchar](50) NULL,
	[JH1] [varchar](50) NULL,
	[JH2] [varchar](50) NULL,
	[ISIN] [varchar](12) NULL,
	[FOLIO] [varchar](8) NULL,
	[SHARES] [varchar](18) NULL,
	[ESHARES] [varchar](18) NULL,
	[CSHARES] [varchar](18) NULL,
	[LSHARES] [varchar](18) NULL,
	[FSHARES] [varchar](18) NULL,
	[LDATE] [varchar](8) NULL,
	[LCODE] [varchar](2) NULL,
	[EDATE] [varchar](10) NULL,
	[DALLOT] [varchar](10) NULL,
	[ALLOTDIC] [varchar](10) NULL,
	[LTAPCOFD] [varchar](10) NULL,
	[DFROM] [varchar](18) NULL,
	[DTO] [varchar](18) NULL,
	[DNSTAT] [varchar](10) NULL,
	[CATYPE] [varchar](4) NULL,
	[IPRICE] [varchar](18) NULL,
	[IAMOUNT] [varchar](18) NULL,
	[PPRICE] [varchar](18) NULL,
	[PAMOUNT] [varchar](18) NULL,
	[STAMP] [varchar](1) NULL,
	[BASIS] [varchar](2) NULL,
	[EBP] [varchar](2) NULL,
	[FUNDS] [varchar](2) NULL,
	[FILER] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TOTNSEBSE]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOTNSEBSE](
	[SE] [varchar](3) NULL,
	[APPLNO] [varchar](40) NULL,
	[DPID] [varchar](30) NULL,
	[CLID] [varchar](30) NULL,
	[TOTSHR] [varchar](30) NULL,
	[TOTAMT] [varchar](30) NULL,
	[PANNO] [varchar](30) NULL,
	[IFSC] [varchar](30) NULL,
	[ACCNO] [varchar](50) NULL,
	[ASBAREFNO] [varchar](100) NULL,
	[USERID] [varchar](20) NULL,
	[dpidclid] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[add2filecdslhddt]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[add2filecdslhddt]
as 
begin

IF OBJECT_ID ( 'cFIN1', 'U' ) IS NOT NULL  DROP TABLE cFIN1
create table cfin1 (cTEMP1 varchar(1000))
INSERT INTO cFIN1 SELECT * from temp1236
INSERT INTO cFIN1 SELECT * from temp1235
SELECT * FROM cFIN1
DECLARE @cmd varchar(500), @filename4 varchar(100)
SELECT @filename4 ='CDSLADR01_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM iporightsbonus.dbo.CFIN1" '+ 'queryout D:\Rights_Bonus\ADROIT\'+ @filename4 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
end
GO
/****** Object:  StoredProcedure [dbo].[cdslhead01]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[cdslhead01]
as 
begin
IF OBJECT_ID ( 'temp1236', 'U' ) IS NOT NULL  DROP TABLE temp1236
IF OBJECT_ID ( 'cctemp12', 'U' ) IS NOT NULL  DROP TABLE cctemp12
 (      
 SELECT '01'+                                                        
  +total_records
  +Tot_Curr_Qty
  +Tot_Freeze_Qty
  +Tot_Lockin_Qty
  +Tot_Detail_Rec02
  +Tot_Detail_Rec03
  AS ctemp1 into temp1236
  FROM adrcdheadsampl      
  )
  --select * from adrcdheadsampl
--select * from cctemp2
IF OBJECT_ID ( 'cctemp12', 'U' ) IS NOT NULL  DROP TABLE cctemp12
create table cctemp12 (ctemp1 varchar(1000))
INSERT INTO cctemp12  SELECT * from temp1236
DECLARE @cmd varchar(500),@filename1 varchar(100)
SELECT @filename1 ='CDSLADROITHD_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM iporightsbonus.dbo.cctemp12" '+ 'queryout D:\Rights_Bonus\ADROIT\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
end
GO
/****** Object:  StoredProcedure [dbo].[MASTERRIGHTSPRO]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[MASTERRIGHTSPRO] 
AS
BEGIN 
IF OBJECT_ID ( 'mastadr01', 'U' ) IS NOT NULL  DROP TABLE mastadr01
create table mastadr01 (
	CAFNO		varchar(8),
	DPID		varchar(8),
	FOLIO		varchar(8),
	STATUS		varchar(5),
	BTYPE		varchar(5),
	NAME		varchar(50),
	ADDR1		varchar(40),
	ADDR2		varchar(40),
	ADDR3		varchar(40),
	ADDR4		varchar(40),
	PIN			varchar(7),
	JH1			varchar(50),
	JH2			varchar(50),
	FHOLD_PAN	varchar(15),
	SHOLD_PAN	varchar(15),
	THOLD_PAN	varchar(15),
	EMAILID1	varchar(100),
	SHARES		varchar(18),
	ESHARES		varchar(18),
	FSHARES		varchar(18),
	DEPFLAG		varchar(8))
	TRUNCATE table mastadr01
	BULK INSERT mastadr01
		FROM 'D:\Rights_Bonus\ADROIT\FORTABLESQL.csv'
		WITH 
		(
		FIRSTROW = 2, 
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		BATCHSIZE=5000
		)
	alter table mastadr01 add entshares varchar(18) 
	update mastadr01 set entshares = convert(float,eshares) 
	IF OBJECT_ID ( 'mastadr02DT', 'U' ) IS NOT NULL  DROP TABLE mastadr02DT
	SELECT	'02' AS Record_IDentification,
			'0000000' as Detail_Record_Line_No,
			DPID as DP_ID,
			FOLIO AS Client_ID,
			RIGHT('00'+CONVERT(VARCHAR,btype),2) as Client_Account_Category,
			RIGHT('000000000000000'+CONVERT(VARCHAR,entshares),15)   +'000' as Allotment_Quantity, 
			'00' as Lockin_Reason_Code,
			'        ' as Lockin_Release_Date,
			'000000000000000000' as issue_price,			
			'000000000000000000' as Issued_Amount,			
			'000000000000000000' as Paidup_Price,			
			'000000000000000000' as Paidup_Amount,		
			'  ' as filler 
			into mastadr02dt
			FROM MASTADR01 where dpid like 'i%'
			alter table mastadr02dt add id int identity(1,1)
			IF OBJECT_ID ( 'TEMP123', 'U' ) IS NOT NULL  DROP TABLE TEMP123
			SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO TEMP123 FROM mastadr02dt WHERE id < 99999
			UPDATE a SET a.Detail_Record_Line_No = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM mastadr02dt a JOIN TEMP123 b ON a.ID=b.ID
	IF OBJECT_ID ( 'temp1234', 'U' ) IS NOT NULL  DROP TABLE temp1234			
	SELECT '02'+                                                        
		+Detail_Record_Line_No
		+REPLICATE('0',8-LEN(DP_ID))+CONVERT(VARCHAR,DP_ID)       
		+REPLICATE(' ',8-len(client_id))+CONVERT(VARCHAR,CLIENT_ID)       
		+REPLICATE(' ',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
		+Allotment_Quantity
		+REPLICATE('0',2-LEN(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
		+'        '      
		+Issue_Price
		+Issued_Amount
		+Paidup_Price
		+Paidup_Amount
		+'            '    
		as ftemp1 into temp1234 
	FROM mastadr02dt
SELECT * FROM TEMP1234
IF OBJECT_ID ( 'fftemp1', 'U' ) IS NOT NULL  DROP TABLE fftemp1
create table fftemp1 (ftemp1 varchar(1000))
INSERT INTO fftemp1  SELECT * from temp1234
DECLARE @cmd varchar(500),@filename1 varchar(100)
SELECT @filename1 ='NSDLADROIT_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM iporightsbonus.dbo.fftemp1" '+ 'queryout D:\Rights_Bonus\ADROIT\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
END 
GO
/****** Object:  StoredProcedure [dbo].[MASTERRIGHTSPROCDSL]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[MASTERRIGHTSPROCDSL]
AS
BEGIN 
IF OBJECT_ID ( 'mastadr02', 'U' ) IS NOT NULL  DROP TABLE mastadr02
create table mastadr02 (
ISIN		varchar(12),
CATYPE      varchar(4),
CLID        varchar(16),
DPID        varchar(8),
FOLIO       varchar(8),
STATUS      varchar(12),
BTYPE       varchar(12),
BP_ACT_CT   varchar(12),
BP_OC       varchar(12),
NAME        varchar(50),
ADDR1       varchar(40),
ADDR2       varchar(40),
ADDR3       varchar(40),
ADDR4       varchar(40),
PIN         varchar(7),
JH1         varchar(50),
JH2         varchar(50),
FHOLD_IN    varchar(15),
SHOLD_IN    varchar(15),
THOLD_IN    varchar(15),
SHARES      varchar(18),
CSHARES     varchar(18),
LSHARES     varchar(18),
FSHARES     varchar(18),
DFROM       varchar(18),
DTO         varchar(18))

	TRUNCATE table cre01infile
	BULK INSERT mastadr02
		FROM 'D:\Rights_Bonus\ADROIT\cre01.csv'
		WITH 
		(
		FIRSTROW = 2, 
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		BATCHSIZE=5000
		)
	select * from mastadr02
	--update mastadr01 set entshares = convert(float,eshares) 
	IF OBJECT_ID ( 'mastadr02DTCDSL', 'U' ) IS NOT NULL  DROP TABLE mastadr02DTCDSL
	SELECT	'02' AS Record_IDentification,
			 clid as BO_ID,
			'AIL RIGHTS ENT  ' as RTA_INTREF_NO,
			'INE737B20017' as PISIN,
			'000000000000.000' as pcurr_qty,
			'000000000000.000' as PFrozen_Qty,
			'000000000000.000' as PLockin_Qty,
			'00' as PLockin_Reason_Cd,
			 space(50) as PLockin_Reason,
			'00000000' as PLockin_Exp_Date,
			'D' as PDRCR_Flag,
			'INE737B20017' as BISIN,
			RIGHT('000000000000'+ CONVERT(VARCHAR,cshares),12) +'.000' as Bcurr_qty,
			'000000000000.000' as BFrozen_Qty,
			'000000000000.000' as BLockin_Qty,
			'00' as BLockin_Reason_Cd,
			space(50) as BLockin_Reason,
			'00000000' as BLockin_Exp_Date,
			'C' as BDRCR_Flag,
			'000000000000.000' as offerprice
			into  mastcadr02dt
			from mastadr02
			alter table mastCadr02dt add id int identity(1,1)
			SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO TEMP123c FROM mastCadr02dt WHERE id < 99999
			UPDATE a SET a.RTA_INTREF_NO = 'ARE '+ RIGHT('0000'+CONVERT(VARCHAR,B.RowN),4) + '       ' FROM mastCadr02dt a JOIN TEMP123c b ON a.ID=b.ID
	IF OBJECT_ID ( 'temp1235', 'U' ) IS NOT NULL  DROP TABLE temp1235			
	SELECT '02'+                                                        
		+BO_ID
		+RTA_IntRef_No
		+PISIN
		+PCurr_Qty
		+PFrozen_Qty
		+PLockin_Qty
		+PLockin_Reason_Cd
		+PLockin_Reason
		+PLockin_Exp_Date
		+PDRCR_Flag
		+BIsin
		+BCurr_Qty
		+BFrozen_Qty
		+BLockin_Qty
		+BLockin_Reason_Cd
		+BLockin_Reason
		+BLockin_Exp_Date
		+BDRCR_Flag
		+OfferPrice
		as Ctemp1 into temp1235 
	FROM mastcadr02dt
IF OBJECT_ID ( 'CCTEMP1', 'U' ) IS NOT NULL  DROP TABLE CCtemp1
create table CCtemp1 (Ctemp1 varchar(1000))
INSERT INTO CCtemp1  SELECT * from temp1235
DECLARE @cmd varchar(500),@filename1 varchar(100)
SELECT @filename1 ='CDSLADROIT_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM iporightsbonus.dbo.cctemp1" '+ 'queryout D:\Rights_Bonus\ADROIT\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
END 
GO
/****** Object:  StoredProcedure [dbo].[MASTERRIGHTSPRONSDL]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[MASTERRIGHTSPRONSDL]
AS
BEGIN 
IF OBJECT_ID ( 'mastadr01', 'U' ) IS NOT NULL  DROP TABLE mastadr01
create table mastadr01 (
	CAFNO		varchar(8),
	DPID		varchar(8),
	FOLIO		varchar(8),
	STATUS		varchar(5),
	BTYPE		varchar(5),
	NAME		varchar(50),
	ADDR1		varchar(40),
	ADDR2		varchar(40),
	ADDR3		varchar(40),
	ADDR4		varchar(40),
	PIN			varchar(7),
	JH1			varchar(50),
	JH2			varchar(50),
	FHOLD_PAN	varchar(15),
	SHOLD_PAN	varchar(15),
	THOLD_PAN	varchar(15),
	EMAILID1	varchar(100),
	SHARES		varchar(18),
	ESHARES		varchar(18),
	FSHARES		varchar(18),
	DEPFLAG		varchar(8))
	TRUNCATE table mastadr01
	BULK INSERT mastadr01
		FROM 'D:\Rights_Bonus\ADROIT\FORTABLESQL.csv'
		WITH 
		(
		FIRSTROW = 2, 
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		BATCHSIZE=5000
		)
	alter table mastadr01 add entshares varchar(18) 
	update mastadr01 set entshares = convert(float,eshares) 
	IF OBJECT_ID ( 'mastadr02DT', 'U' ) IS NOT NULL  DROP TABLE mastadr02DT
	SELECT	'02' AS Record_IDentification,
			'0000000' as Detail_Record_Line_No,
			DPID as DP_ID,
			FOLIO AS Client_ID,
			RIGHT('00'+CONVERT(VARCHAR,btype),2) as Client_Account_Category,
			RIGHT('000000000000000'+CONVERT(VARCHAR,entshares),15)   +'000' as Allotment_Quantity, 
			'00' as Lockin_Reason_Code,
			'        ' as Lockin_Release_Date,
			'000000000000000000' as issue_price,			
			'000000000000000000' as Issued_Amount,			
			'000000000000000000' as Paidup_Price,			
			'000000000000000000' as Paidup_Amount,		
			'  ' as filler 
			into mastadr02dt
			FROM MASTADR01 where dpid like 'i%'
			alter table mastadr02dt add id int identity(1,1)
			IF OBJECT_ID ( 'TEMP123', 'U' ) IS NOT NULL  DROP TABLE TEMP123
			SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO TEMP123 FROM mastadr02dt WHERE id < 99999
			UPDATE a SET a.Detail_Record_Line_No = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM mastadr02dt a JOIN TEMP123 b ON a.ID=b.ID
	IF OBJECT_ID ( 'temp1234', 'U' ) IS NOT NULL  DROP TABLE temp1234			
	SELECT '02'+                                                        
		+Detail_Record_Line_No
		+REPLICATE('0',8-LEN(DP_ID))+CONVERT(VARCHAR,DP_ID)       
		+REPLICATE(' ',8-len(client_id))+CONVERT(VARCHAR,CLIENT_ID)       
		+REPLICATE(' ',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
		+Allotment_Quantity
		+REPLICATE('0',2-LEN(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
		+'        '      
		+Issue_Price
		+Issued_Amount
		+Paidup_Price
		+Paidup_Amount
		+'            '    
		as ftemp1 into temp1234 
	FROM mastadr02dt
SELECT * FROM TEMP1234
IF OBJECT_ID ( 'fftemp1', 'U' ) IS NOT NULL  DROP TABLE fftemp1
create table fftemp1 (ftemp1 varchar(1000))
INSERT INTO fftemp1  SELECT * from temp1234
DECLARE @cmd varchar(500),@filename1 varchar(100)
SELECT @filename1 ='NSDLADROIT_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM iporightsbonus.dbo.fftemp1" '+ 'queryout D:\Rights_Bonus\ADROIT\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
END 
GO
/****** Object:  StoredProcedure [dbo].[sccb_upl01f]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sccb_upl01f]
as
begin
SET NOCOUNT ON      
(
SELECT '01SHRI001'+           
	+CONVERT(VARCHAR(10),Scrip_Id)+REPLICATE(' ',10-LEN(Scrip_Id))      
    +REPLICATE(' ',16-len(Application_No))+CONVERT(VARCHAR,Application_No)      
    +REPLICATE(' ',5-len(Category))+CONVERT(VARCHAR,Category)      
    +REPLICATE(' ',50-LEN(Applicant_Name))+CONVERT(VARCHAR,Applicant_Name)      
	+REPLICATE(' ',4-LEN(Depository))+CONVERT(VARCHAR,Depository)      
	+REPLICATE(' ',8-LEN(DpID))+CONVERT(VARCHAR,DpID)      
	+REPLICATE(' ',16-LEN(ClientId_Benf_Id))+CONVERT(VARCHAR,ClientId_Benf_Id)      
	+REPLICATE(' ',11-LEN(Quantity))+CONVERT(VARCHAR,Quantity)      
	+REPLICATE(' ',1-LEN(Cut_off_flag))+CONVERT(VARCHAR,Cut_off_flag)      
	+REPLICATE(' ',6-LEN(Rate))+CONVERT(VARCHAR,Rate)      
	+REPLICATE(' ',1-LEN(Amount_Received_Flag))+CONVERT(VARCHAR,Amount_Received_Flag)      
	+REPLICATE('0',12-LEN(Amount))+CONVERT(VARCHAR,Amount)  
	+REPLICATE(' ',9-LEN(Reference_Number))+CONVERT(VARCHAR,Reference_Number)      
	+REPLICATE(' ',10-LEN(Pan_No))+CONVERT(VARCHAR,Pan_No)      
	+REPLICATE(' ',6-LEN(Bank_Name))+CONVERT(VARCHAR,Bank_Name)      	
	+REPLICATE(' ',6-LEN(Location_Name))+CONVERT(VARCHAR,Location_Name)      
	+REPLICATE(' ',45-LEN(Account_No_UPI_ID))+CONVERT(VARCHAR,Account_No_UPI_ID)      
	+REPLICATE(' ',16-LEN(Bid_Id))+CONVERT(VARCHAR,Bid_Id)      
	+REPLICATE(' ',1-LEN(Action_Code))+CONVERT(VARCHAR,Action_Code)      
	as ftemp1 into #temp1      
	FROM SCCB_UplFile01F
)      

IF OBJECT_ID ( 'fftemp1', 'U' ) IS NOT NULL  DROP TABLE fftemp1
select * into fftemp1  from #temp1
--select * from fftemp1
DECLARE @cmd varchar(500),@filename1 varchar(100)
SELECT @filename1 ='IN200537_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM fftemp1" '+ 'queryout D:\brdata\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_genrightscreditnsdlheaduplfile]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_genrightscreditnsdlheaduplfile]
as 
begin
--process of updation header with CO information
update mastNadr01hd set Record_IDentification				= '01'
update mastNadr01hd set File_IDentification					= 'SHRI001'
update mastNadr01hd set RTA_Internal_Reference_No			= 'AIL RIGHTS      '
update mastNadr01hd set Debit_Credit_Indicator				= 'C'
update mastNadr01hd set ISIN								= 'INE737B20017'
update mastNadr01hd set CA_Type								= '0005'
update mastNadr01hd set Allotment_Date						= '2024-01-19 00:00:00.000'
update mastNadr01hd set Allocation_Allotment_Description	= '0085'
update mastNadr01hd set Execution_Date						= '2024-01-25 00:00:00.000'
update mastNadr01hd set Total_Allotted_Quantity_Free_Lockin	= '000000012521674000'   
update mastNadr01hd set Total_Allotted_Quantity_Lockin		= '000000000000000000'
update mastNadr01hd set Total_No_detail_records				= '0006027'
update mastNadr01hd set Total_Issued_Amount					= '000000000000000000'     
update mastNadr01hd set Total_Paidup_Amount					= '000000000000000000'     
update mastNadr01hd set Stamp_Duty_Payable					= 'N'
update mastNadr01hd set Basis_calculation_Stamp_Duty		= '00'
update mastNadr01hd set EBP_Name							= '00'
update mastNadr01hd set Funds_collected_through				= '00'
update mastNadr01hd set Filler								= '  '
update mastNadr01hd set MasterUniqNo						= '3001'
update mastNadr01hd set Processflag							= 'Y'
update mastNadr01hd set FractionFlag						= 'N'
update mastNadr01hd set calcflag							= 'Y'
--process of updation header with CO information


IF OBJECT_ID ( 'ntemp1', 'U' ) IS NOT NULL  DROP TABLE ntemp1
SELECT '01'
	+file_identification
    +rta_internal_reference_no
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
	as ftemp1 into ntemp1     
	FROM mastNadr01hd

IF OBJECT_ID ( 'nntemp12', 'U' ) IS NOT NULL  DROP TABLE nntemp12
create table nntemp12 (ctemp1 varchar(1000))
INSERT INTO nntemp12  SELECT * from ntemp1
DECLARE @cmd varchar(500),@filename1 varchar(100)
SELECT @filename1 ='NSDL02HEAD.TXT'       
SET @cmd = 'bcp "SELECT * FROM iporightsbonus.dbo.nntemp12" '+ 'queryout D:\Rights_Bonus\ADROIT\'+ @filename1 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
end
GO
/****** Object:  StoredProcedure [dbo].[sp_genrightscreditnsdltotuplfile]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_genrightscreditnsdltotuplfile]
as 
begin

DROP TABLE NFIN1
create table nfin1 (FTEMP1 varchar(1000))
INSERT INTO NFIN1 SELECT * from ntemp1
INSERT INTO NFIN1 SELECT * from temp1234
SELECT * FROM NFIN1
DECLARE @cmd varchar(500), @filename3 varchar(100)
SELECT @filename3 ='NSDLADRCA01_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM iporightsbonus.dbo.NFIN1" '+ 'queryout D:\Rights_Bonus\ADROIT\'+ @filename3 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
END

GO
/****** Object:  StoredProcedure [dbo].[sp_genrightscreditsnsdldetailuplfile]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_genrightscreditsnsdldetailuplfile] 
as 
begin
truncate table nre01infile

	BULK INSERT nre01infile
		FROM 'D:\Rights_Bonus\ADROIT\nre01.csv'
		WITH 
		(
		FIRSTROW = 2, 
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		BATCHSIZE=10000
		)
	--alter table nre01infile add entshares varchar(18) 
	--select * from nre01infile order by btac desc
	IF OBJECT_ID ( 'mastNadr02dt', 'U' ) IS NOT NULL  DROP TABLE mastNadr02dt





	SELECT	'02' AS Record_IDentification,
			'0000000' as Detail_Record_Line_No,
			DPID as DP_ID,
			FOLIO AS Client_ID,
			'00' as Client_Account_Category,
			RIGHT('000000000000000'+CONVERT(VARCHAR,cshares),15)   +'000' as Allotment_Quantity, 
			'00' as Lockin_Reason_Code,
			'        ' as Lockin_Release_Date,
			'000000000000000000' as issue_price,			
			'000000000000000000' as Issued_Amount,			
			'000000000000000000' as Paidup_Price,			
			'000000000000000000' as Paidup_Amount,		
			'  ' as filler 
			into mastNadr02dt
			FROM nre01infile 
			
			UPDATE a SET a.client_account_category = '00' FROM 
			mastNadr02dt a JOIN  nre01infile b 
			ON a.client_id = b.clid and a.DP_ID = b.dpid and (b.btac ='11' or b.btac='10')

			UPDATE a SET a.client_account_category = '03' FROM 
			mastNadr02dt a JOIN  nre01infile b 
			ON a.client_id = b.clid and a.DP_ID = b.dpid and b.btac ='19'
			--SELECT * FROM MASTNADR02DT
			alter table mastNadr02dt add id int identity(1,1)
			IF OBJECT_ID ( 'TEMP123', 'U' ) IS NOT NULL  DROP TABLE TEMP123
			SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO TEMP123 FROM mastNadr02dt WHERE id < 99999
			UPDATE a SET a.Detail_Record_Line_No = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM mastNadr02dt a JOIN TEMP123 b ON a.ID=b.ID
	IF OBJECT_ID ( 'temp1234', 'U' ) IS NOT NULL  DROP TABLE temp1234			
	SELECT '02'+                                                        
		+Detail_Record_Line_No
		+REPLICATE('0',8-LEN(DP_ID))+CONVERT(VARCHAR,DP_ID)       
		+REPLICATE(' ',8-len(client_id))+CONVERT(VARCHAR,CLIENT_ID)       
		+REPLICATE(' ',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
		+Allotment_Quantity
		+REPLICATE('0',2-LEN(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
		+'        '      
		+Issue_Price
		+Issued_Amount
		+Paidup_Price
		+Paidup_Amount
		+'            '    
		as ftemp1 into temp1234 
	FROM mastNadr02dt
IF OBJECT_ID ( 'fftemp1', 'U' ) IS NOT NULL  DROP TABLE fftemp1
create table fftemp1 (ftemp1 varchar(1000))
INSERT INTO fftemp1  SELECT * from temp1234
DECLARE @cmd varchar(500),@filename2 varchar(100)
SELECT @filename2 ='NSDL02DET.TXT'       
--SELECT @filename1 ='NSDLADROIT_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM iporightsbonus.dbo.fftemp1" '+ 'queryout D:\Rights_Bonus\ADROIT\'+ @filename2 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
end
GO
/****** Object:  StoredProcedure [dbo].[sp_genrightscreditsnsdluplfile]    Script Date: 22-02-2024 19:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_genrightscreditsnsdluplfile] 
as 
begin
IF OBJECT_ID ( 'nre01infile', 'U' ) IS NOT NULL  DROP TABLE nre01infile
drop table nre01infile
create table nre01infile(
DPID	varchar(8),
CLID	varchar(8),
STATUS	varchar(3),
BTYPE	varchar(3),
BTAC	varchar(3),
NAME	varchar(50),
JH1	varchar(50),
JH2	varchar(50),
ISIN	varchar(12),
FOLIO	varchar(8),
SHARES	varchar(18),
ESHARES	varchar(18),
CSHARES	varchar(18),
LSHARES	varchar(18),
FSHARES	varchar(18),
LDATE	varchar(8),
LCODE	varchar(2),
EDATE	varchar(10),
DALLOT	varchar(10),
ALLOTDIC	varchar(10),
LTAPCOFD	varchar(10),
DFROM	varchar(18),
DTO	varchar(18),
DNSTAT	varchar(10),
CATYPE	varchar(4),
IPRICE	varchar(18),
IAMOUNT	varchar(18),
PPRICE	varchar(18),
PAMOUNT	varchar(18),
STAMP	varchar(1),
BASIS	varchar(2),
EBP	varchar(2),
FUNDS	varchar(2),
FILER	varchar(2))

	BULK INSERT nre01infile
		FROM 'D:\Rights_Bonus\ADROIT\nre01.csv'
		WITH 
		(
		FIRSTROW = 2, 
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		BATCHSIZE=5000
		)
	--alter table nre01infile add entshares varchar(18) 
	select * from nre01infile
	IF OBJECT_ID ( 'mastadr02DT', 'U' ) IS NOT NULL  DROP TABLE mastadr02DT
	SELECT	'02' AS Record_IDentification,
			'0000000' as Detail_Record_Line_No,
			DPID as DP_ID,
			FOLIO AS Client_ID,
			RIGHT('00'+CONVERT(VARCHAR,btype),2) as Client_Account_Category,
			RIGHT('000000000000000'+CONVERT(VARCHAR,cshares),15)   +'000' as Allotment_Quantity, 
			'00' as Lockin_Reason_Code,
			'        ' as Lockin_Release_Date,
			'000000000000000000' as issue_price,			
			'000000000000000000' as Issued_Amount,			
			'000000000000000000' as Paidup_Price,			
			'000000000000000000' as Paidup_Amount,		
			'  ' as filler 
			into mastadr02dt
			FROM nre01infile 
			alter table mastadr02dt add id int identity(1,1)
			IF OBJECT_ID ( 'TEMP123', 'U' ) IS NOT NULL  DROP TABLE TEMP123
			SELECT   ROW_NUMBER() OVER(ORDER BY ID ASC) AS RowN,ID INTO TEMP123 FROM mastadr02dt WHERE id < 99999
			UPDATE a SET a.Detail_Record_Line_No = RIGHT('0000000'+CONVERT(VARCHAR,B.RowN),7) FROM mastadr02dt a JOIN TEMP123 b ON a.ID=b.ID
	IF OBJECT_ID ( 'temp1234', 'U' ) IS NOT NULL  DROP TABLE temp1234			
	SELECT '02'+                                                        
		+Detail_Record_Line_No
		+REPLICATE('0',8-LEN(DP_ID))+CONVERT(VARCHAR,DP_ID)       
		+REPLICATE(' ',8-len(client_id))+CONVERT(VARCHAR,CLIENT_ID)       
		+REPLICATE(' ',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)      
		+Allotment_Quantity
		+REPLICATE('0',2-LEN(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)      
		+'        '      
		+Issue_Price
		+Issued_Amount
		+Paidup_Price
		+Paidup_Amount
		+'            '    
		as ftemp1 into temp1234 
	FROM mastadr02dt
SELECT * FROM TEMP1234
IF OBJECT_ID ( 'fftemp1', 'U' ) IS NOT NULL  DROP TABLE fftemp1
create table fftemp1 (ftemp1 varchar(1000))
INSERT INTO fftemp1  SELECT * from temp1234
DECLARE @cmd varchar(500),@filename2 varchar(100)
SELECT @filename2 ='NSDL02DET_.TXT'       
--SELECT @filename1 ='NSDLADROIT_'+FORMAT(GETDATE(),'yyyyMMddHHmmss')+'.TXT'       
SET @cmd = 'bcp "SELECT * FROM iporightsbonus.dbo.fftemp1" '+ 'queryout D:\Rights_Bonus\ADROIT\'+ @filename2 + ' -c -UTF8 -T -Slocalhost'
EXEC master..xp_cmdshell @cmd
end
GO
USE [master]
GO
ALTER DATABASE [IpoRightsBonus] SET  READ_WRITE 
GO
