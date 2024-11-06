F--create database vccipl
USE [VCCIPL]
GO
/****** Object:  Table [dbo].[09RT95UONE-30092023]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[ABC1]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABC1](
	[ISIN] [varchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABC2]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABC2](
	[ISIN] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BBBB]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[BendemVerUplFileNSDLHeader]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BendemVerUplFileNSDLHeader](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Type] [int] NULL,
	[Batch_Number] [int] NULL,
	[RTA_ID] [nchar](8) NULL,
	[ISIN] [nchar](12) NULL,
	[Request_Type] [int] NULL,
	[Sender_ID] [nchar](8) NULL,
	[Sender_Date ] [date] NULL,
	[Filler] [nchar](18) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BENPOSdt]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BENPOSdt](
	[Record_Type] [varchar](50) NULL,
	[Line_No] [varchar](50) NULL,
	[DP_ID] [varchar](54) NULL,
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
	[PAN_Flag_for_TH] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bovcrec]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bovcrec](
	[bovercdsoutfilerecords] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bover5]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bover5](
	[Btemp] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bover6]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bover6](
	[btemp] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOVERCDSOUTFILE]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOVERCDSOUTFILE](
	[CLID] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOVERCOFILE]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOVERCOFILE](
	[DPID] [nvarchar](16) NULL,
	[FOLIO] [nvarchar](16) NULL,
	[CLID] [nvarchar](16) NULL,
	[SH_NAME] [nvarchar](75) NULL,
	[DFROM] [nvarchar](10) NULL,
	[DTO] [nvarchar](10) NULL,
	[SHARES] [nvarchar](10) NULL,
	[LDATE] [datetime] NULL,
	[DALLOT] [datetime] NULL,
	[DPID2] [nvarchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoverifforIEPFCDSL]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[cccc]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[CD031101U]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[CDSL_ISIN_DETAIL]    Script Date: 03-11-2023 10:34:33 ******/
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
	[Remarks] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CDSLISIN_DETAIL]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[cdslisindata]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[cdslisindata1]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[CDSLISINMASTER]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[cdslisinmasterfile]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[CDSLRECON_MASTER]    Script Date: 03-11-2023 10:34:33 ******/
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
	[Remarks] [varchar](50) NULL,
	[Remarks1] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[drnmastn]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[drnmastn](
	[rem] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DRNNSDL1BH]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[DRNNSDL2DT]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[extrarecfromnsdl]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[extrarecfromnsdl](
	[isin_alpha_code] [varchar](12) NULL,
	[isin_description] [varchar](140) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fftemp2]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fftemp2](
	[ftemp2] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FINALBENDEM]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[finalupl]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[finalupl](
	[ftemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[g1file]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[g1file](
	[opentexta] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[g2file]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[g2file](
	[opentexta] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[g3file]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[g3file](
	[opentexta] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genid]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genid](
	[id] [int] IDENTITY(3000,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idt_cmaster_file]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idt_cmaster_file](
	[RemSource] [varchar](250) NULL,
	[ISIN_NO] [varchar](12) NULL,
	[LINE_NO] [varchar](7) NULL,
	[CLINE_NO] [int] NULL,
	[REM2] [varchar](5) NULL,
	[nooftimes] [int] NULL,
	[Finalrem] [varchar](20) NULL,
	[RemTarget] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idt_mast51]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idt_mast51](
	[RemSource] [varchar](250) NULL,
	[ISIN_NO] [varchar](12) NULL,
	[LINE_NO] [varchar](7) NULL,
	[CLINE_NO] [int] NULL,
	[REM2] [varchar](5) NULL,
	[nooftimes] [int] NULL,
	[Finalrem] [varchar](20) NULL,
	[RemTarget] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idt_mast51_file]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idt_mast51_file](
	[RemSource] [varchar](250) NULL,
	[ISIN_NO] [varchar](12) NULL,
	[LINE_NO] [varchar](7) NULL,
	[CLINE_NO] [int] NULL,
	[REM2] [varchar](5) NULL,
	[nooftimes] [int] NULL,
	[Finalrem] [varchar](20) NULL,
	[RemTarget] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idt_mast51out]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idt_mast51out](
	[remtargeta] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idt_mast90]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idt_mast90](
	[Remsource] [varchar](250) NULL,
	[Isin_no] [varchar](12) NULL,
	[Line_no] [varchar](7) NULL,
	[Cline_no] [int] NULL,
	[Shares] [varchar](18) NULL,
	[Date2] [datetime] NULL,
	[Date3] [datetime] NULL,
	[Date4] [datetime] NULL,
	[Idtfiletype] [varchar](18) NULL,
	[Rem2] [varchar](5) NULL,
	[Nooftimes] [int] NULL,
	[Finalrem] [varchar](20) NULL,
	[Remtarget] [varchar](250) NULL,
	[shares1] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idt_master_file]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idt_master_file](
	[RemSource] [varchar](250) NULL,
	[ISIN_NO] [varchar](12) NULL,
	[LINE_NO] [varchar](7) NULL,
	[CLINE_NO] [int] NULL,
	[REM2] [varchar](5) NULL,
	[nooftimes] [int] NULL,
	[Finalrem] [varchar](20) NULL,
	[RemTarget] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idt_master_out]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idt_master_out](
	[remtargeta] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idt_nmaster_file]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idt_nmaster_file](
	[RemSource] [varchar](250) NULL,
	[ISIN_NO] [varchar](12) NULL,
	[LINE_NO] [varchar](7) NULL,
	[CLINE_NO] [int] NULL,
	[REM2] [varchar](5) NULL,
	[nooftimes] [int] NULL,
	[Finalrem] [varchar](20) NULL,
	[RemTarget] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idtbackup]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idtbackup](
	[RemSource] [varchar](250) NULL,
	[ISIN_NO] [varchar](12) NULL,
	[LINE_NO] [varchar](7) NULL,
	[CLINE_NO] [int] NULL,
	[REM2] [varchar](5) NULL,
	[nooftimes] [int] NULL,
	[Finalrem] [varchar](20) NULL,
	[RemTarget] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idtsource]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idtsource](
	[020000001202303290000INE019D01016000000000000003000202303292023032920230329 000000000000000051         ] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idtsource1]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idtsource1](
	[01AIN000018IN00002600000000827706500020230329202309281235570000255                                                       ] [varchar](300) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IepfNSDLDetailRecord]    Script Date: 03-11-2023 10:34:33 ******/
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
	[Credit_Client_Account_Category] [varchar](2) NULL,
	[Debit_DP_ID] [varchar](8) NULL,
	[Debit_Client_ID] [varchar](8) NULL,
	[Debit_Client_Account_Category] [varchar](2) NULL,
	[Credit_Quantity] [varchar](18) NULL,
	[Debit_Quantity] [varchar](18) NULL,
	[Credit_Quantity_Lockin_Reason_Code] [varchar](2) NULL,
	[Credit_Quantity_Lockin_Release_Date] [varchar](8) NULL,
	[Debit_Quantity_Lockin_Reason_Code] [varchar](2) NULL,
	[Debit_Quantity_Lockin_Release_Date] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IepfNSDLHeaderRecord]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IepfNSDLHeaderRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Record_Identification] [varchar](2) NULL,
	[File_Identification] [varchar](7) NULL,
	[RTA_Internal_Reference_No] [varchar](16) NULL,
	[Credit_ISIN] [varchar](12) NULL,
	[Debit_ISIN] [varchar](12) NULL,
	[CA_Type] [varchar](4) NULL,
	[Board_Approval_Date] [varchar](8) NULL,
	[CA_Description] [varchar](4) NULL,
	[Execution_Date] [varchar](8) NULL,
	[Total_Credit_Quantity_Free_Lockin_Block] [varchar](18) NULL,
	[Total_Debit_Quantity_Free_Lockin+Block] [varchar](18) NULL,
	[Total_Credit_Quantity_Lockin] [varchar](18) NULL,
	[Total_Debit_Quantity_Lockin] [varchar](18) NULL,
	[Total_number_detail_records] [varchar](7) NULL,
	[CIN_BCIN_Number] [varchar](21) NULL,
	[FinYear_Which_Amount_Relates] [varchar](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[isinmaster]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[isinmaster](
	[id] [int] NULL,
	[isin] [varchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MutualFunddt01]    Script Date: 03-11-2023 10:34:33 ******/
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
PRIMARY KEY CLUSTERED 
(
	[mfdt01_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MutualFunddt02]    Script Date: 03-11-2023 10:34:33 ******/
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
PRIMARY KEY CLUSTERED 
(
	[mfdt02_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MutualFundhd00]    Script Date: 03-11-2023 10:34:33 ******/
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
PRIMARY KEY CLUSTERED 
(
	[mfhd00_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nbovname]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nbovname](
	[Column 0] [varchar](5000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[normalca_upload_hd]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[normalca_upload_hd](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rec_id] [varchar](2) NULL,
	[File_idn] [varchar](7) NULL,
	[Rta_irno] [varchar](16) NULL,
	[Drcr_ind] [varchar](1) NULL,
	[Isin] [varchar](12) NULL,
	[Ca_type] [varchar](4) NULL,
	[Allot_date] [varchar](8) NULL,
	[Alloc_allot_desc] [varchar](4) NULL,
	[Exec_date] [varchar](8) NULL,
	[Totallqtyfli] [varchar](15) NULL,
	[Totallqtyli] [varchar](15) NULL,
	[Tot_detrec] [varchar](7) NULL,
	[Totiss_amt] [varchar](16) NULL,
	[Totpaid_amt] [varchar](16) NULL,
	[Stmp_dutypay] [varchar](1) NULL,
	[Bc_stmpduty] [varchar](2) NULL,
	[Ebp_name] [varchar](2) NULL,
	[Funds_colthr] [varchar](2) NULL,
	[Filler] [varchar](2) NULL,
	[TAllot_date] [datetime] NULL,
	[datetest] [datetime] NULL,
	[Normalcauploaduniqueno] [int] NULL,
	[executiondate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NormalCADetailDistRecord]    Script Date: 03-11-2023 10:34:33 ******/
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
	[Quantity] [varchar](15) NULL,
	[Flag_status_DN_Range] [varchar](18) NULL,
	[CA_Type] [varchar](12) NULL,
	[Normalcauploaduniqueno] [varchar](7) NULL,
	[MasterUniqNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NormalCADetailRecord]    Script Date: 03-11-2023 10:34:33 ******/
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
	[Allotment_Quantity] [varchar](15) NULL,
	[Lockin_Reason_Code] [varchar](2) NULL,
	[Lockin_Release_Date] [datetime] NULL,
	[Issue_Price] [varchar](12) NULL,
	[Issued_Amount] [varchar](16) NULL,
	[Paidup_Price] [varchar](12) NULL,
	[Paidup_Amount] [varchar](16) NULL,
	[Filler] [varchar](12) NULL,
	[Normalcauploaduniqueno] [int] NULL,
	[MasterUniqNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NormalCAHeaderRecord]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NormalCAHeaderRecord](
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
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nsdlbenpos2023]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[NSDLCDSLISIN]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[NSDLISIN_DETAIL]    Script Date: 03-11-2023 10:34:33 ******/
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
	[Security_Type_Description] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSDLISIN_HEADER]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[NSDLRAWDATA]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSDLRAWDATA](
	[NSDLDATA] [varchar](3000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSDLRECON_MASTER]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[NSDLRECONTABLE1]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[NSDLTOTALFILE]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[NSDLUNIQUEISIN]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[OUT51]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OUT51](
	[ISIN_NO] [varchar](12) NULL,
	[nooftimes] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OUT90]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OUT90](
	[ISIN_NO] [varchar](12) NULL,
	[nooftimes] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Outfile]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfile](
	[vtemp1] [nvarchar](76) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OUTX]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OUTX](
	[ISIN_NO] [varchar](12) NULL,
	[nooftimes] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OUTZ]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OUTZ](
	[ISIN_NO] [varchar](12) NULL,
	[UNIQLINE] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PY0923T]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PY0923T](
	[Column 0] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[recon_cdslnsdl]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[RECON_CMASTER_FILE]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[RECON_NMASTER_FILE]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[RT9530092023]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[sample1]    Script Date: 03-11-2023 10:34:33 ******/
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
/****** Object:  Table [dbo].[sfinalupl]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sfinalupl](
	[stemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sfinaluplx]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sfinaluplx](
	[stemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SimulCADetailDistRecord]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SimulCADetailDistRecord](
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SimulCADetailRecord]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SimulCADetailRecord](
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SimulCADetailRecord_temp1]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SimulCADetailRecord_temp1](
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
	[InsertedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SimulCAHeaderRecord]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SimulCAHeaderRecord](
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SimulCAHeaderRecord_Temp1]    Script Date: 03-11-2023 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SimulCAHeaderRecord_Temp1](
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
	[InsertedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sstemp1]    Script Date: 03-11-2023 10:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sstemp1](
	[stemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sstemp2]    Script Date: 03-11-2023 10:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sstemp2](
	[stemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp_recon]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[temp_reconbackup]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[Temp1]    Script Date: 03-11-2023 10:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp1](
	[ISIN_NO] [varchar](12) NULL,
	[CLINE_NO] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp2]    Script Date: 03-11-2023 10:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp2](
	[ISIN_NO] [varchar](12) NULL,
	[nooftimes] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempben]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[TempDetailSummary]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[TempSummary]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[temptotrec]    Script Date: 03-11-2023 10:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temptotrec](
	[total_Records] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempx]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[TOTALISIN_BOTH]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[TOTALISIN_BOTH_01112023]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[TOTALISIN_BOTH_30092023]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[vbenposdownloadedfiledt]    Script Date: 03-11-2023 10:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vbenposdownloadedfiledt](
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
/****** Object:  Table [dbo].[vbenposdownloadedfileHD]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[VcciplUsersMaster]    Script Date: 03-11-2023 10:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VcciplUsersMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](10) NULL,
	[password] [varchar](10) NULL,
 CONSTRAINT [PK_VcciplUsersMaster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VCDSLISINMAST]    Script Date: 03-11-2023 10:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VCDSLISINMAST](
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
/****** Object:  Table [dbo].[VMAST_CERT]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[VMAST_HOLD]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[vresponsefromnsdlfileDT]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[vresponsefromnsdlfileHD]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[vtem1]    Script Date: 03-11-2023 10:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vtem1](
	[vtemp1] [nvarchar](76) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vtem1a]    Script Date: 03-11-2023 10:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vtem1a](
	[vtemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[woemailidcos]    Script Date: 03-11-2023 10:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[woemailidcos](
	[co_name] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[x157]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[XADD375]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[XADDFILE1]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[xcdsl]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[xcdslisin_detail]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[xOUT90]    Script Date: 03-11-2023 10:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xOUT90](
	[ISIN_NO] [varchar](12) NULL,
	[UNIQLINE] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xsrcfromflat]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[xtempx]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[XUNIQUENSDL]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[xx]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  Table [dbo].[xxReport]    Script Date: 03-11-2023 10:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxReport](
	[ISIN] [nvarchar](255) NULL,
	[SERIAL_NUMBER] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XXX1234]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[fetch1]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[fetchisininfo]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[fetchisininfo1]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[GenerateBover]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[GenerateBovera]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[GenerateCDSLCAHeader]    Script Date: 03-11-2023 10:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GenerateCDSLCAHeader] 
AS 
BEGIN
SET NOCOUNT ON
(
SELECT '01'+                                                  
       +REPLICATE('0',7-LEN(File_IDentification))+CONVERT(VARCHAR,File_IDentification)  
	   +REPLICATE('0',16-LEN(RTA_Internal_Reference_No))+CONVERT(VARCHAR,RTA_Internal_Reference_No)  
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
/****** Object:  StoredProcedure [dbo].[generateflatfileMFDT01]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[generateflatfileMFDT02]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[generateflatfileMFHD00]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[GenerateNormalCAUploadDetailDist]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[GenerateNormalCAUploadDetailRecord]    Script Date: 03-11-2023 10:34:34 ******/
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
	   +'IN3'+REPLICATE('0',5-LEN(DP_ID))+CONVERT(VARCHAR,DP_ID) 
	   +REPLICATE('0',8-LEN(Client_ID))+CONVERT(VARCHAR,Client_ID) 
	   +REPLICATE(' ',2-len(Client_Account_Category))+CONVERT(VARCHAR,Client_Account_Category)
	   +REPLICATE('0',15-LEN(Allotment_Quantity))+CONVERT(VARCHAR,Allotment_Quantity)+'000' 
	   +REPLICATE('0',2-LEN(Lockin_Reason_Code))+CONVERT(VARCHAR,Lockin_Reason_Code)
	--(CASE WHEN LEN(phone)>2 THEN 'R' ELSE '' END), 		 WHEN B.occupation =2 then 'F'   WHEN B.occupation =3 then 'H'               ELSE 'O' END,    ELSE	   +'00000000'		END
	   +REPLICATE(' ',8-len(CONVERT(varchar,Lockin_Release_Date,112)))+CONVERT(varchar,Lockin_Release_Date,112)
	   +REPLICATE('0',12-LEN(Issue_Price))+CONVERT(VARCHAR,Issue_Price)+'000000' 
	   +REPLICATE('0',16-LEN(Issued_Amount))+CONVERT(VARCHAR,Issued_Amount)+'00' 
	   +REPLICATE('0',12-LEN(Paidup_Price))+CONVERT(VARCHAR,Paidup_Price) +'000000'
	   +REPLICATE('0',16-LEN(Paidup_Amount))+CONVERT(VARCHAR,Paidup_Amount)+'00' 
	   +CONVERT(VARCHAR(12),ISNULL(FILLER,''))+REPLICATE(' ',12-LEN(FILLER)) as ftemp2 into fftemp2                                                                                
	   --+REPLICATE(' ',12-LEN(FILLER))+CONVERT(VARCHAR,FILLER)  as ftemp2 into fftemp2
FROM NormalCADetailRecord where masteruniqno = @MastUNo)
END
GO
/****** Object:  StoredProcedure [dbo].[GenerateNormalCAUploadHeader]    Script Date: 03-11-2023 10:34:34 ******/
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
	   +REPLICATE(' ',12-len(Ltrim(RTA_Internal_Reference_No)))+Ltrim(RTA_Internal_Reference_No)
	   +REPLICATE(' ',1-len(Debit_Credit_Indicator))+CONVERT(VARCHAR,Debit_Credit_Indicator)
	   +REPLICATE(' ',12-len(ISIN))+CONVERT(VARCHAR,ISIN)
	   +REPLICATE('0',4-LEN(CA_Type))+CONVERT(VARCHAR,CA_Type)  
	   +REPLICATE(' ',8-len(CONVERT(varchar,Allotment_Date,112)))+CONVERT(varchar,Allotment_Date,112)
	   +REPLICATE('0',4-LEN(Allocation_Allotment_Description))+CONVERT(VARCHAR,Allocation_Allotment_Description)
	   +REPLICATE(' ',8-len(CONVERT(varchar,Execution_Date,112)))+CONVERT(varchar,Execution_Date,112)
	   +REPLICATE('0',15-LEN(Total_Allotted_Quantity_Free_Lockin))+CONVERT(VARCHAR,Total_Allotted_Quantity_Free_Lockin)+'000'
	   +REPLICATE('0',15-LEN(Total_Allotted_Quantity_Lockin))+CONVERT(VARCHAR,Total_Allotted_Quantity_Lockin)+'000'
	   +REPLICATE('0',7-LEN(Total_No_detail_records))+CONVERT(VARCHAR,Total_No_detail_records)
	   +REPLICATE('0',16-LEN(Total_Issued_Amount))+CONVERT(VARCHAR,Total_Issued_Amount)+'00'
	   +REPLICATE('0',16-LEN(Total_Paidup_Amount))+CONVERT(VARCHAR,Total_Paidup_Amount)+'00'  
	   +REPLICATE(' ',1-len(Stamp_Duty_Payable))+CONVERT(VARCHAR,Stamp_Duty_Payable)
	   +REPLICATE(' ',2-len(Basis_calculation_Stamp_Duty))+CONVERT(VARCHAR,Basis_calculation_Stamp_Duty)
	   +REPLICATE(' ',2-len(EBP_Name))+CONVERT(VARCHAR,EBP_Name)
	   +REPLICATE(' ',2-len(Funds_collected_through))+CONVERT(VARCHAR,Funds_collected_through)
	   +REPLICATE(' ',2-len(FILLER))+CONVERT(VARCHAR,FILLER) as ftemp1 into fftemp1
	FROM NormalCAHeaderRecord where masteruniqno = @MastUNo)
END
GO
/****** Object:  StoredProcedure [dbo].[NCASTEP3]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[NCASTEP4]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[NCASTEP5]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[remtoallcolsnsdl]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[sample_proc]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SimulCAUploadDetailDist]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SimulCAUploadDetailRecord]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SimulCAUploadHeader]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[VbenposDT]    Script Date: 03-11-2023 10:34:34 ******/
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
/****** Object:  StoredProcedure [dbo].[VbenposHD]    Script Date: 03-11-2023 10:34:34 ******/
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

