USE [IpoRightsBonus]
GO
/****** Object:  Table [dbo].[ABL_ASBA]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABL_ASBA](
	[BANKCODE] [varchar](20) NULL,
	[BANKNAME] [varchar](100) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABL_ASBA_REFUND]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABL_ASBA_REFUND](
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
	[Amount_to_be_Refunded] [nvarchar](40) NULL,
	[Reason_for_Non_Allotment] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABL_BENPOSF12032024]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABL_BENPOSF12032024](
	[REC_TYPE] [nvarchar](255) NULL,
	[LIN_NUM] [nvarchar](255) NULL,
	[DPID] [nvarchar](255) NULL,
	[FOLIO] [nvarchar](255) NULL,
	[STATUS] [nvarchar](255) NULL,
	[BTYPE] [nvarchar](255) NULL,
	[BTAC] [nvarchar](255) NULL,
	[OC] [nvarchar](255) NULL,
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
	[B_STATUS] [nvarchar](255) NULL,
	[SHARES] [float] NULL,
	[LSHARES] [nvarchar](255) NULL,
	[BENBLKPO] [nvarchar](255) NULL,
	[PLSHARES] [nvarchar](255) NULL,
	[PLGWTLCK] [nvarchar](255) NULL,
	[PLGUNCFP] [nvarchar](255) NULL,
	[BPLUNLK] [nvarchar](255) NULL,
	[BREMTPO] [nvarchar](255) NULL,
	[BDMTLOCK] [nvarchar](255) NULL,
	[CMIDDPO] [nvarchar](255) NULL,
	[CMPOOLPO] [nvarchar](255) NULL,
	[CCSETLPO] [nvarchar](255) NULL,
	[MICR] [nvarchar](255) NULL,
	[IFSC] [nvarchar](255) NULL,
	[BAC_TYPE] [nvarchar](255) NULL,
	[FILER1] [nvarchar](255) NULL,
	[MAPID1] [nvarchar](255) NULL,
	[MAPID2] [nvarchar](255) NULL,
	[MAPID3] [nvarchar](255) NULL,
	[EMAILID1] [nvarchar](255) NULL,
	[EMAILID2] [nvarchar](255) NULL,
	[EMAILID3] [nvarchar](255) NULL,
	[RGESS] [nvarchar](255) NULL,
	[NDUFSH] [nvarchar](255) NULL,
	[NDULSH] [nvarchar](255) NULL,
	[NDUUCF] [nvarchar](255) NULL,
	[NDUUCL] [nvarchar](255) NULL,
	[STATCODE] [nvarchar](255) NULL,
	[COUNCODE] [nvarchar](255) NULL,
	[LEITEMP] [nvarchar](255) NULL,
	[FHOLD_PF] [nvarchar](255) NULL,
	[SHOLD_PF] [nvarchar](255) NULL,
	[THOLD_PF] [nvarchar](255) NULL,
	[PRMKMP] [nvarchar](255) NULL,
	[FPICAT] [nvarchar](255) NULL,
	[FILERR] [nvarchar](255) NULL,
	[STATUS2] [nvarchar](255) NULL,
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
	[AC_OPEN_DA] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABL_BID]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABL_BID](
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
/****** Object:  Table [dbo].[ABL_BIDFINAL]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABL_BIDFINAL](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](50) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[CRU_FLAG] [varchar](5) NULL,
	[COLLBANK] [varchar](50) NULL,
	[BIDDPID] [varchar](16) NULL,
	[BIDPAN] [varchar](20) NULL,
	[RDKEY] [varchar](20) NULL,
	[MATCHING_REMARKS] [varchar](30) NULL,
	[TXNS] [varchar](5) NULL,
	[BEN_NAME] [varchar](100) NULL,
	[BEN_PAN] [varchar](20) NULL,
	[BEN_JT1PAN] [varchar](20) NULL,
	[BEN_JT2PAN] [varchar](20) NULL,
	[REJN_REASON] [varchar](100) NULL,
	[BASIS] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABL_BM]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABL_BM](
	[CODE] [varchar](5) NULL,
	[BANKNAME] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABL_CAFMAS]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABL_CAFMAS](
	[REJECT] [varchar](20) NULL,
	[PRM] [varchar](20) NULL,
	[BOUNCE] [varchar](20) NULL,
	[ISIN] [varchar](12) NULL,
	[LOT] [varchar](10) NULL,
	[BRANCH] [varchar](20) NULL,
	[IHNO] [varchar](10) NULL,
	[BANKREF] [varchar](50) NULL,
	[CAFNO] [varchar](10) NULL,
	[APPNO] [varchar](30) NULL,
	[DPID] [varchar](8) NULL,
	[FOLIO] [varchar](8) NULL,
	[STATUS] [varchar](20) NULL,
	[BTYPE] [varchar](10) NULL,
	[BTAC] [varchar](10) NULL,
	[NAME] [varchar](140) NULL,
	[FNAME] [varchar](140) NULL,
	[ADDR1] [varchar](50) NULL,
	[ADDR2] [varchar](50) NULL,
	[ADDR3] [varchar](50) NULL,
	[ADDR4] [varchar](50) NULL,
	[PIN] [varchar](20) NULL,
	[PHONE1] [varchar](25) NULL,
	[JH1] [varchar](140) NULL,
	[JH2] [varchar](140) NULL,
	[FHOLD_PAN] [varchar](20) NULL,
	[SHOLD_PAN] [varchar](20) NULL,
	[THOLD_PAN] [varchar](20) NULL,
	[EMAILID1] [varchar](100) NULL,
	[ASBA] [varchar](50) NULL,
	[BACNO] [varchar](50) NULL,
	[BNAME] [varchar](100) NULL,
	[MICR] [varchar](50) NULL,
	[BAC_TYPE] [varchar](20) NULL,
	[IFSC] [varchar](20) NULL,
	[SHARES] [int] NULL,
	[ESHARES] [numeric](18, 2) NULL,
	[SHAPP] [varchar](18) NULL,
	[AMTPAID] [varchar](18) NULL,
	[SHALL] [varchar](18) NULL,
	[AMTADJ] [varchar](18) NULL,
	[AMTREF] [varchar](18) NULL,
	[REJCODE] [varchar](18) NULL,
	[ALLOT] [varchar](18) NULL,
	[RLNO] [varchar](18) NULL,
	[SHABY] [varchar](18) NULL,
	[REMARK] [varchar](100) NULL,
	[EDATE] [varchar](10) NULL,
	[ALLDATE] [varchar](10) NULL,
	[FSHARES] [varchar](18) NULL,
	[CLID2] [varchar](20) NULL,
	[DPIDCLID] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABL_CDSLFB]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABL_CDSLFB](
	[ISIN] [nvarchar](255) NULL,
	[BOID] [nvarchar](255) NULL,
	[NAME] [nvarchar](255) NULL,
	[JH1] [nvarchar](255) NULL,
	[JH2] [nvarchar](255) NULL,
	[GNAME] [nvarchar](255) NULL,
	[NNAME] [nvarchar](255) NULL,
	[FHNAME] [nvarchar](255) NULL,
	[GENDER] [nvarchar](255) NULL,
	[DOB] [nvarchar](255) NULL,
	[ACCSTATUS] [nvarchar](255) NULL,
	[BOCATEGORY] [nvarchar](255) NULL,
	[BOPRODUCT] [nvarchar](255) NULL,
	[CUST_TYPE] [nvarchar](255) NULL,
	[BOSUBSTATUS] [nvarchar](255) NULL,
	[OCC] [nvarchar](255) NULL,
	[PAN1] [nvarchar](255) NULL,
	[PAN2] [nvarchar](255) NULL,
	[PAN3] [nvarchar](255) NULL,
	[BOFREEZEFLAG] [nvarchar](255) NULL,
	[FRZREASONCODE] [nvarchar](255) NULL,
	[ISINSTAT] [nvarchar](255) NULL,
	[ACCOPDATE] [nvarchar](255) NULL,
	[SEBIREGN] [nvarchar](255) NULL,
	[SEIDNO] [nvarchar](255) NULL,
	[CHCIDNO] [nvarchar](255) NULL,
	[CMID] [nvarchar](255) NULL,
	[TRID] [nvarchar](255) NULL,
	[RBIREGN] [nvarchar](255) NULL,
	[RBIAPRDATE] [nvarchar](255) NULL,
	[TDSNO] [nvarchar](255) NULL,
	[Nationality] [nvarchar](255) NULL,
	[BOADD1] [nvarchar](255) NULL,
	[BOADD2] [nvarchar](255) NULL,
	[BOADD3] [nvarchar](255) NULL,
	[BOCITY] [nvarchar](255) NULL,
	[BOSTATE] [nvarchar](255) NULL,
	[BOCOUNTRY] [nvarchar](255) NULL,
	[BOPIN] [nvarchar](255) NULL,
	[PBOADD1] [nvarchar](255) NULL,
	[PBOADD2] [nvarchar](255) NULL,
	[PBOADD3] [nvarchar](255) NULL,
	[PBOCITY] [nvarchar](255) NULL,
	[PBOSTATE] [nvarchar](255) NULL,
	[PBOCOUNTRY] [nvarchar](255) NULL,
	[PBOPIN] [nvarchar](255) NULL,
	[MOBILE1] [nvarchar](255) NULL,
	[TEL1] [nvarchar](255) NULL,
	[FAXNO] [nvarchar](255) NULL,
	[EMAILID] [nvarchar](255) NULL,
	[ECSFLAG] [nvarchar](255) NULL,
	[DIVMICR] [nvarchar](255) NULL,
	[DIVIFSC] [nvarchar](255) NULL,
	[BANKNAME] [nvarchar](255) NULL,
	[BANKADD1] [nvarchar](255) NULL,
	[BANKADD2] [nvarchar](255) NULL,
	[BANKADD3] [nvarchar](255) NULL,
	[BANKCITY] [nvarchar](255) NULL,
	[BANKSTATE] [nvarchar](255) NULL,
	[BANKCOUNTRY] [nvarchar](255) NULL,
	[BANKPIN] [nvarchar](255) NULL,
	[DIVBANKCUR] [nvarchar](255) NULL,
	[DIVBKACTYPE] [nvarchar](255) NULL,
	[DIVBKACCNO] [nvarchar](255) NULL,
	[TOTHOLD] [float] NULL,
	[TOTLOCKIN] [float] NULL,
	[PLEDGEBAL] [float] NULL,
	[SAFEKEEPBAL] [float] NULL,
	[EARMARKBAL] [float] NULL,
	[PDREMATCONF] [float] NULL,
	[FREEBALANCE] [float] NULL,
	[PDEMATV] [float] NULL,
	[PDEMACONF] [float] NULL,
	[DOBENPOS] [nvarchar](255) NULL,
	[PLEDGESBAL] [float] NULL,
	[REMAGALINBAL] [float] NULL,
	[ARFLAG] [nvarchar](255) NULL,
	[UID1] [nvarchar](255) NULL,
	[UID2] [nvarchar](255) NULL,
	[UID3] [nvarchar](255) NULL,
	[PANGUARD] [nvarchar](255) NULL,
	[UDIGUARD] [nvarchar](255) NULL,
	[CUSTPMSEMAIL] [nvarchar](255) NULL,
	[LEI] [nvarchar](255) NULL,
	[LEIEXPDT] [nvarchar](255) NULL,
	[FILLER1] [nvarchar](255) NULL,
	[BORGESSFLAG] [nvarchar](255) NULL,
	[MOOPERA] [nvarchar](255) NULL,
	[COMMPRE] [nvarchar](255) NULL,
	[FILLER2] [nvarchar](255) NULL,
	[FILLER3] [nvarchar](255) NULL,
	[NOMGNAME1] [nvarchar](255) NULL,
	[NOMRELA1] [nvarchar](255) NULL,
	[NOMPERC1] [nvarchar](255) NULL,
	[NOM2NAME] [nvarchar](255) NULL,
	[NOMGNAME2] [nvarchar](255) NULL,
	[NOMRELA2] [nvarchar](255) NULL,
	[NOMPERC2] [nvarchar](255) NULL,
	[NOM3NAME] [nvarchar](255) NULL,
	[NOMGNAME3] [nvarchar](255) NULL,
	[NOMRELA3] [nvarchar](255) NULL,
	[NOMPERC3] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABL_DUPLBID]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABL_DUPLBID](
	[BIDDPID] [varchar](16) NULL,
	[APPLSHARES] [int] NULL,
	[TXNS] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABL_MULTIDP]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABL_MULTIDP](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](50) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[BIDDPID] [varchar](16) NULL,
	[MULTDPIDREC] [int] NULL,
	[CONSSHR] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABL_NSDLFB]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABL_NSDLFB](
	[REC_TYPE] [nvarchar](255) NULL,
	[LIN_NUM] [nvarchar](255) NULL,
	[DPID] [nvarchar](255) NULL,
	[FOLIO] [nvarchar](255) NULL,
	[STATUS] [nvarchar](255) NULL,
	[BTYPE] [nvarchar](255) NULL,
	[BTAC] [nvarchar](255) NULL,
	[OC] [nvarchar](255) NULL,
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
	[B_STATUS] [nvarchar](255) NULL,
	[SHARES] [float] NULL,
	[LSHARES] [nvarchar](255) NULL,
	[BENBLKPO] [nvarchar](255) NULL,
	[PLSHARES] [nvarchar](255) NULL,
	[PLGWTLCK] [nvarchar](255) NULL,
	[PLGUNCFP] [nvarchar](255) NULL,
	[BPLUNLK] [nvarchar](255) NULL,
	[BREMTPO] [nvarchar](255) NULL,
	[BDMTLOCK] [nvarchar](255) NULL,
	[CMIDDPO] [nvarchar](255) NULL,
	[CMPOOLPO] [nvarchar](255) NULL,
	[CCSETLPO] [nvarchar](255) NULL,
	[MICR] [nvarchar](255) NULL,
	[IFSC] [nvarchar](255) NULL,
	[BAC_TYPE] [nvarchar](255) NULL,
	[FILER1] [nvarchar](255) NULL,
	[MAPID1] [nvarchar](255) NULL,
	[MAPID2] [nvarchar](255) NULL,
	[MAPID3] [nvarchar](255) NULL,
	[EMAILID1] [nvarchar](255) NULL,
	[EMAILID2] [nvarchar](255) NULL,
	[EMAILID3] [nvarchar](255) NULL,
	[RGESS] [nvarchar](255) NULL,
	[NDUFSH] [nvarchar](255) NULL,
	[NDULSH] [nvarchar](255) NULL,
	[NDUUCF] [nvarchar](255) NULL,
	[NDUUCL] [nvarchar](255) NULL,
	[STATCODE] [nvarchar](255) NULL,
	[COUNCODE] [nvarchar](255) NULL,
	[LEITEMP] [nvarchar](255) NULL,
	[FHOLD_PF] [nvarchar](255) NULL,
	[SHOLD_PF] [nvarchar](255) NULL,
	[THOLD_PF] [nvarchar](255) NULL,
	[PRMKMP] [nvarchar](255) NULL,
	[FPICAT] [nvarchar](255) NULL,
	[FILERR] [nvarchar](255) NULL,
	[STATUS2] [nvarchar](255) NULL,
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
	[AC_OPEN_DA] [nvarchar](255) NULL,
	[dpidclid] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABLMAST]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABLMAST](
	[SNO] [int] NULL,
	[Folio] [varchar](20) NULL,
	[SHNAME] [varchar](100) NULL,
	[PANNO] [varchar](15) NULL,
	[SHARES] [int] NULL,
	[SharesPer] [varchar](15) NULL,
	[dpidclid] [varchar](16) NULL,
	[Remarks] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[adrasba_refund_file]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[adrcdhd01shr]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adrcdhd01shr](
	[AdrCHdShr] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[adrcdheadsampl]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[adrhd01shr]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adrhd01shr](
	[AdrHdShr] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[adrnshd01shr]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adrnshd01shr](
	[AdrNHdShr] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[adrnsheadsampl]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[adroit_bidBSE_file01]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[adroit_bidnse_file]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[adroit_bidnse_file01]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[ADROIT_CAFMAS]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[adroit_finalbook]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adroit_finalbook](
	[SLNO] [nvarchar](20) NULL,
	[ORDERNO] [nvarchar](30) NULL,
	[BOOKID] [nvarchar](30) NULL,
	[BRANCH] [nvarchar](30) NULL,
	[USR_ID] [nvarchar](20) NULL,
	[SYMBOL] [nvarchar](30) NULL,
	[ASHARES1] [nvarchar](30) NULL,
	[APRICE] [nvarchar](20) NULL,
	[AAPPL] [nvarchar](20) NULL,
	[Dep] [nvarchar](20) NULL,
	[DP_ID] [nvarchar](20) NULL,
	[CL_ID] [nvarchar](20) NULL,
	[CATEGORY] [nvarchar](30) NULL,
	[AAPAMT] [nvarchar](20) NULL,
	[CLNAME] [nvarchar](100) NULL,
	[PAN_No] [nvarchar](20) NULL,
	[BankName] [nvarchar](100) NULL,
	[Loc] [nvarchar](20) NULL,
	[AcNo] [nvarchar](20) NULL,
	[IFSCCode] [nvarchar](20) NULL,
	[BRefno] [nvarchar](100) NULL,
	[EDATE] [nvarchar](40) NULL,
	[MODDATE] [nvarchar](40) NULL,
	[SBCODE] [nvarchar](20) NULL,
	[MEMTYPE] [nvarchar](20) NULL,
	[ACCODE] [nvarchar](20) NULL,
	[EXCHG] [nvarchar](20) NULL,
	[CRU_FLAG] [nvarchar](20) NULL,
	[COLL_BANK] [nvarchar](100) NULL,
	[BIDDPID] [nvarchar](20) NULL,
	[BIDPAN] [nvarchar](20) NULL,
	[RDKEY] [nvarchar](20) NULL,
	[MATREM1] [nvarchar](20) NULL,
	[TXNS] [nvarchar](20) NULL,
	[REJN_REASON] [nvarchar](100) NULL,
	[BASIS] [nvarchar](20) NULL,
	[STATUSNRI] [nvarchar](20) NULL,
	[ALLOTTEE] [nvarchar](20) NULL,
	[MBOID1602] [nvarchar](20) NULL,
	[MPAN1602] [nvarchar](20) NULL,
	[HoldFlag] [nvarchar](100) NULL,
	[ALLSHRF] [nvarchar](20) NULL,
	[AMTADJF] [nvarchar](20) NULL,
	[AMTREFF] [nvarchar](20) NULL,
	[REASALLF] [nvarchar](100) NULL,
	[CABOIDFINAL] [nvarchar](20) NULL,
	[BNKNAME] [nvarchar](100) NULL,
	[BNKCODE] [nvarchar](20) NULL,
	[DEPOSITORY] [nvarchar](20) NULL,
	[BONAME] [nvarchar](100) NULL,
	[ADD1] [nvarchar](100) NULL,
	[ADD2] [nvarchar](100) NULL,
	[ADD3] [nvarchar](100) NULL,
	[ADDCITY] [nvarchar](100) NULL,
	[ADDSTATE] [nvarchar](100) NULL,
	[ADDZIP] [nvarchar](100) NULL,
	[ADDCNTRY] [nvarchar](100) NULL,
	[EMAILF] [nvarchar](100) NULL,
	[SHRFRRECL] [nvarchar](20) NULL,
	[ASONRECDATE] [nvarchar](20) NULL,
	[C_BONAME] [varchar](164) NULL,
	[C_JH1] [varchar](164) NULL,
	[C_JH2] [varchar](164) NULL,
	[C_FHNAME] [varchar](142) NULL,
	[C_GMNAME] [varchar](142) NULL,
	[C_PAN] [varchar](25) NULL,
	[C_PAN1] [varchar](25) NULL,
	[C_PAN2] [varchar](25) NULL,
	[C_ADD1] [varchar](60) NULL,
	[C_ADD2] [varchar](60) NULL,
	[C_ADD3] [varchar](60) NULL,
	[C_ADDCITY] [varchar](60) NULL,
	[C_ADDSTATE] [varchar](60) NULL,
	[C_ADDZIP] [varchar](10) NULL,
	[C_ADDCNTRY] [varchar](25) NULL,
	[C_EMAILID] [varchar](50) NULL,
	[C_BOACCSTAT] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[adroit2_finalbook]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adroit2_finalbook](
	[SLNO] [nvarchar](20) NULL,
	[ORDERNO] [nvarchar](30) NULL,
	[BOOKID] [nvarchar](30) NULL,
	[BRANCH] [nvarchar](30) NULL,
	[USR_ID] [nvarchar](20) NULL,
	[SYMBOL] [nvarchar](30) NULL,
	[ASHARES1] [nvarchar](30) NULL,
	[APRICE] [nvarchar](20) NULL,
	[AAPPL] [nvarchar](20) NULL,
	[Dep] [nvarchar](20) NULL,
	[DP_ID] [nvarchar](20) NULL,
	[CL_ID] [nvarchar](20) NULL,
	[CATEGORY] [nvarchar](30) NULL,
	[AAPAMT] [nvarchar](20) NULL,
	[CLNAME] [nvarchar](100) NULL,
	[PAN_No] [nvarchar](20) NULL,
	[BankName] [nvarchar](100) NULL,
	[Loc] [nvarchar](20) NULL,
	[AcNo] [nvarchar](20) NULL,
	[IFSCCode] [nvarchar](20) NULL,
	[BRefno] [nvarchar](100) NULL,
	[EDATE] [nvarchar](40) NULL,
	[MODDATE] [nvarchar](40) NULL,
	[SBCODE] [nvarchar](20) NULL,
	[MEMTYPE] [nvarchar](20) NULL,
	[ACCODE] [nvarchar](20) NULL,
	[EXCHG] [nvarchar](20) NULL,
	[CRU_FLAG] [nvarchar](20) NULL,
	[COLL_BANK] [nvarchar](100) NULL,
	[BIDDPID] [nvarchar](20) NULL,
	[BIDPAN] [nvarchar](20) NULL,
	[RDKEY] [nvarchar](20) NULL,
	[MATREM1] [nvarchar](20) NULL,
	[TXNS] [nvarchar](20) NULL,
	[REJN_REASON] [nvarchar](100) NULL,
	[BASIS] [nvarchar](20) NULL,
	[STATUSNRI] [nvarchar](20) NULL,
	[ALLOTTEE] [nvarchar](20) NULL,
	[MBOID1602] [nvarchar](20) NULL,
	[MPAN1602] [nvarchar](20) NULL,
	[HoldFlag] [nvarchar](100) NULL,
	[ALLSHRF] [nvarchar](20) NULL,
	[AMTADJF] [nvarchar](20) NULL,
	[AMTREFF] [nvarchar](20) NULL,
	[REASALLF] [nvarchar](100) NULL,
	[CABOIDFINAL] [nvarchar](20) NULL,
	[BNKNAME] [nvarchar](100) NULL,
	[BNKCODE] [nvarchar](20) NULL,
	[DEPOSITORY] [nvarchar](20) NULL,
	[BONAME] [nvarchar](100) NULL,
	[ADD1] [nvarchar](100) NULL,
	[ADD2] [nvarchar](100) NULL,
	[ADD3] [nvarchar](100) NULL,
	[ADDCITY] [nvarchar](100) NULL,
	[ADDSTATE] [nvarchar](100) NULL,
	[ADDZIP] [nvarchar](100) NULL,
	[ADDCNTRY] [nvarchar](100) NULL,
	[EMAILF] [nvarchar](100) NULL,
	[SHRFRRECL] [nvarchar](20) NULL,
	[ASONRECDATE] [nvarchar](20) NULL,
	[C_BONAME] [varchar](164) NULL,
	[C_JH1] [varchar](164) NULL,
	[C_JH2] [varchar](164) NULL,
	[C_FHNAME] [varchar](142) NULL,
	[C_GMNAME] [varchar](142) NULL,
	[C_PAN] [varchar](25) NULL,
	[C_PAN1] [varchar](25) NULL,
	[C_PAN2] [varchar](25) NULL,
	[C_ADD1] [varchar](60) NULL,
	[C_ADD2] [varchar](60) NULL,
	[C_ADD3] [varchar](60) NULL,
	[C_ADDCITY] [varchar](60) NULL,
	[C_ADDSTATE] [varchar](60) NULL,
	[C_ADDZIP] [varchar](10) NULL,
	[C_ADDCNTRY] [varchar](25) NULL,
	[C_EMAILID] [varchar](50) NULL,
	[C_BOACCSTAT] [varchar](2) NULL,
	[bid2dpidclid] [varchar](16) NULL,
	[dupl2bidflag] [int] NULL,
	[dupl2pannoflag] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AIL_BIDCONS01]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIL_BIDCONS01](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](50) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[CRU_FLAG] [varchar](5) NULL,
	[COLLBANK] [varchar](50) NULL,
	[BIDDPID] [varchar](16) NULL,
	[BIDPAN] [varchar](20) NULL,
	[RDKEY] [varchar](20) NULL,
	[MATCHING_REMARKS] [varchar](30) NULL,
	[TXNS] [varchar](5) NULL,
	[BEN_NAME] [varchar](100) NULL,
	[BEN_PAN] [varchar](20) NULL,
	[BEN_JT1PAN] [varchar](20) NULL,
	[BEN_JT2PAN] [varchar](20) NULL,
	[REJN_REASON] [varchar](100) NULL,
	[BASIS] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AIL_BSEBID01]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIL_BSEBID01](
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
/****** Object:  Table [dbo].[AIL_CAFMAS]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIL_CAFMAS](
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
/****** Object:  Table [dbo].[AIL_CAFMASTER]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIL_CAFMASTER](
	[REJECT] [varchar](10) NULL,
	[PRM] [varchar](10) NULL,
	[BOUNCE] [varchar](10) NULL,
	[ISIN] [varchar](12) NULL,
	[LOT] [varchar](20) NULL,
	[BRANCH] [varchar](20) NULL,
	[IHNO] [varchar](20) NULL,
	[BANKREF] [varchar](20) NULL,
	[CAFNO] [varchar](20) NULL,
	[APPNO] [varchar](20) NULL,
	[DPID] [varchar](8) NULL,
	[FOLIO] [varchar](8) NULL,
	[STATUS] [varchar](10) NULL,
	[BTYPE] [varchar](10) NULL,
	[BTAC] [varchar](10) NULL,
	[NAME] [varchar](100) NULL,
	[FNAME] [varchar](100) NULL,
	[ADDR1] [varchar](100) NULL,
	[ADDR2] [varchar](100) NULL,
	[ADDR3] [varchar](100) NULL,
	[ADDR4] [varchar](100) NULL,
	[PIN] [varchar](10) NULL,
	[PHONE1] [varchar](30) NULL,
	[JH1] [varchar](100) NULL,
	[JH2] [varchar](100) NULL,
	[FHOLD_PAN] [varchar](20) NULL,
	[SHOLD_PAN] [varchar](20) NULL,
	[THOLD_PAN] [varchar](20) NULL,
	[EMAILID1] [varchar](100) NULL,
	[ASBA] [varchar](50) NULL,
	[BACNO] [varchar](50) NULL,
	[BNAME] [varchar](100) NULL,
	[MICR] [varchar](50) NULL,
	[BAC_TYPE] [varchar](50) NULL,
	[IFSC] [varchar](50) NULL,
	[SHARES] [int] NULL,
	[ESHARES] [numeric](18, 2) NULL,
	[SHAPP] [int] NULL,
	[AMTPAID] [int] NULL,
	[SHALL] [int] NULL,
	[AMTADJ] [int] NULL,
	[AMTREF] [int] NULL,
	[REJCODE] [varchar](20) NULL,
	[ALLOT] [int] NULL,
	[RLNO] [int] NULL,
	[SHABY] [int] NULL,
	[REMARK] [varchar](20) NULL,
	[EDATE] [datetime] NULL,
	[ALLDATE] [datetime] NULL,
	[FSHARES] [int] NULL,
	[CLID2] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AIL_CDSLFULL_BENDEM2476]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIL_CDSLFULL_BENDEM2476](
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
/****** Object:  Table [dbo].[AIL_CDSLFULL_BENDEMF]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIL_CDSLFULL_BENDEMF](
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
/****** Object:  Table [dbo].[AIL_NSDLFULL_BENDEMF]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIL_NSDLFULL_BENDEMF](
	[DP_ID] [varchar](8) NULL,
	[CL_ID] [varchar](8) NULL,
	[NAME] [varchar](250) NULL,
	[SNAME] [varchar](45) NULL,
	[TNAME] [varchar](45) NULL,
	[FHName] [varchar](45) NULL,
	[Occ] [varchar](10) NULL,
	[Bank_ID] [varchar](30) NULL,
	[Client_Type] [varchar](7) NULL,
	[Cl_Category] [varchar](8) NULL,
	[Client_Sub_Type] [varchar](5) NULL,
	[Status_Cl_Account] [varchar](6) NULL,
	[Minor_Indi] [varchar](10) NULL,
	[BANKACCNO] [varchar](30) NULL,
	[BANKACCTYPE] [varchar](13) NULL,
	[BANKNAME] [varchar](135) NULL,
	[MICR] [varchar](9) NULL,
	[IFSC] [varchar](11) NULL,
	[FHOLD_PAN] [varchar](30) NULL,
	[FHPANSTAT] [varchar](8) NULL,
	[SHOLD_PAN] [varchar](30) NULL,
	[SHPANSTAT] [varchar](8) NULL,
	[THOLD_PAN] [varchar](30) NULL,
	[THPANSTAT] [varchar](8) NULL,
	[RBIAPP] [varchar](10) NULL,
	[RBIREF] [varchar](50) NULL,
	[SEBIREGN] [varchar](24) NULL,
	[ADD1] [varchar](36) NULL,
	[ADD2] [varchar](36) NULL,
	[ADD3] [varchar](36) NULL,
	[ADD4] [varchar](36) NULL,
	[PINCODE] [varchar](10) NULL,
	[PHONE] [varchar](24) NULL,
	[FAX] [varchar](24) NULL,
	[BNKADD1] [varchar](36) NULL,
	[BNKADD2] [varchar](36) NULL,
	[BNKADD3] [varchar](36) NULL,
	[BNKADD4] [varchar](36) NULL,
	[BNKPIN] [varchar](10) NULL,
	[ACHOLD] [varchar](16) NULL,
	[EMAILID] [varchar](50) NULL,
	[rem] [varchar](1500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AIL_NSEBID01]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIL_NSEBID01](
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
/****** Object:  Table [dbo].[AJBL_BID]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AJBL_BID](
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
/****** Object:  Table [dbo].[AJBL_CAFMAS]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AJBL_CAFMAS](
	[REJECT] [varchar](20) NULL,
	[PRM] [varchar](20) NULL,
	[BOUNCE] [varchar](20) NULL,
	[ISIN] [varchar](12) NULL,
	[LOT] [varchar](10) NULL,
	[BRANCH] [varchar](20) NULL,
	[IHNO] [varchar](10) NULL,
	[BANKREF] [varchar](50) NULL,
	[CAFNO] [varchar](10) NULL,
	[APPNO] [varchar](30) NULL,
	[DPID] [varchar](16) NULL,
	[FOLIO] [varchar](16) NULL,
	[STATUS] [varchar](20) NULL,
	[BTYPE] [varchar](10) NULL,
	[BTAC] [varchar](10) NULL,
	[NAME] [varchar](140) NULL,
	[FNAME] [varchar](140) NULL,
	[ADDR1] [varchar](50) NULL,
	[ADDR2] [varchar](50) NULL,
	[ADDR3] [varchar](50) NULL,
	[ADDR4] [varchar](50) NULL,
	[PIN] [varchar](10) NULL,
	[PHONE1] [varchar](25) NULL,
	[JH1] [varchar](140) NULL,
	[JH2] [varchar](140) NULL,
	[FHOLD_PAN] [varchar](20) NULL,
	[SHOLD_PAN] [varchar](20) NULL,
	[THOLD_PAN] [varchar](20) NULL,
	[EMAILID1] [varchar](100) NULL,
	[ASBA] [varchar](50) NULL,
	[BACNO] [varchar](50) NULL,
	[BNAME] [varchar](100) NULL,
	[MICR] [varchar](50) NULL,
	[BAC_TYPE] [varchar](10) NULL,
	[IFSC] [varchar](20) NULL,
	[SHARES] [varchar](18) NULL,
	[ESHARES] [varchar](18) NULL,
	[SHAPP] [varchar](18) NULL,
	[AMTPAID] [varchar](18) NULL,
	[SHALL] [varchar](18) NULL,
	[AMTADJ] [varchar](18) NULL,
	[AMTREF] [varchar](18) NULL,
	[REJCODE] [varchar](18) NULL,
	[ALLOT] [varchar](18) NULL,
	[RLNO] [varchar](18) NULL,
	[SHABY] [varchar](18) NULL,
	[REMARK] [varchar](100) NULL,
	[EDATE] [datetime] NULL,
	[ALLDATE] [datetime] NULL,
	[FSHARES] [varchar](18) NULL,
	[CLID2] [varchar](20) NULL,
	[DPIDCLID] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Arunjyoti_ASBA]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arunjyoti_ASBA](
	[BANKCODE] [varchar](20) NULL,
	[BANKNAME] [varchar](100) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Arunjyoti_ASBA_REFUND]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arunjyoti_ASBA_REFUND](
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
/****** Object:  Table [dbo].[Arunjyoti_BID]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arunjyoti_BID](
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
/****** Object:  Table [dbo].[Arunjyoti_BIDFINAL]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arunjyoti_BIDFINAL](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](50) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[CRU_FLAG] [varchar](5) NULL,
	[COLLBANK] [varchar](50) NULL,
	[BIDDPID] [varchar](16) NULL,
	[BIDPAN] [varchar](20) NULL,
	[RDKEY] [varchar](20) NULL,
	[MATCHING_REMARKS] [varchar](30) NULL,
	[TXNS] [varchar](5) NULL,
	[BEN_NAME] [varchar](100) NULL,
	[BEN_PAN] [varchar](20) NULL,
	[BEN_JT1PAN] [varchar](20) NULL,
	[BEN_JT2PAN] [varchar](20) NULL,
	[REJN_REASON] [varchar](100) NULL,
	[BASIS] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Arunjyoti_BM]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arunjyoti_BM](
	[CODE] [varchar](5) NULL,
	[BANKNAME] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Arunjyoti_CAFMAS]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arunjyoti_CAFMAS](
	[REJECT] [varchar](20) NULL,
	[PRM] [varchar](20) NULL,
	[BOUNCE] [varchar](20) NULL,
	[ISIN] [varchar](12) NULL,
	[LOT] [varchar](10) NULL,
	[BRANCH] [varchar](20) NULL,
	[IHNO] [varchar](10) NULL,
	[BANKREF] [varchar](50) NULL,
	[CAFNO] [varchar](10) NULL,
	[APPNO] [varchar](30) NULL,
	[DPID] [varchar](16) NULL,
	[FOLIO] [varchar](16) NULL,
	[STATUS] [varchar](20) NULL,
	[BTYPE] [varchar](10) NULL,
	[BTAC] [varchar](10) NULL,
	[NAME] [varchar](140) NULL,
	[FNAME] [varchar](140) NULL,
	[ADDR1] [varchar](50) NULL,
	[ADDR2] [varchar](50) NULL,
	[ADDR3] [varchar](50) NULL,
	[ADDR4] [varchar](50) NULL,
	[PIN] [varchar](20) NULL,
	[PHONE1] [varchar](25) NULL,
	[JH1] [varchar](140) NULL,
	[JH2] [varchar](140) NULL,
	[FHOLD_PAN] [varchar](20) NULL,
	[SHOLD_PAN] [varchar](20) NULL,
	[THOLD_PAN] [varchar](20) NULL,
	[EMAILID1] [varchar](100) NULL,
	[ASBA] [varchar](50) NULL,
	[BACNO] [varchar](50) NULL,
	[BNAME] [varchar](100) NULL,
	[MICR] [varchar](50) NULL,
	[BAC_TYPE] [varchar](20) NULL,
	[IFSC] [varchar](20) NULL,
	[SHARES] [varchar](18) NULL,
	[ESHARES] [varchar](18) NULL,
	[SHAPP] [varchar](18) NULL,
	[AMTPAID] [varchar](18) NULL,
	[SHALL] [varchar](18) NULL,
	[AMTADJ] [varchar](18) NULL,
	[AMTREF] [varchar](18) NULL,
	[REJCODE] [varchar](18) NULL,
	[ALLOT] [varchar](18) NULL,
	[RLNO] [varchar](18) NULL,
	[SHABY] [varchar](18) NULL,
	[REMARK] [varchar](100) NULL,
	[EDATE] [varchar](10) NULL,
	[ALLDATE] [varchar](10) NULL,
	[FSHARES] [varchar](18) NULL,
	[CLID2] [varchar](20) NULL,
	[DPIDCLID] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Arunjyoti_RECLDATA]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arunjyoti_RECLDATA](
	[RERDSLNO] [int] NULL,
	[DPIDCLID] [varchar](16) NULL,
	[SHARES] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Arunjyoti_REDATA]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arunjyoti_REDATA](
	[DPID] [varchar](8) NULL,
	[FOLIO] [varchar](8) NULL,
	[NAME] [varchar](100) NULL,
	[SHARES] [int] NULL,
	[ESHARES] [numeric](18, 2) NULL,
	[emailid1] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[asba_banks]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asba_banks](
	[bankcode1] [varchar](20) NULL,
	[bankname] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ASBA_MASTER01]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASBA_MASTER01](
	[BANKCODE] [varchar](20) NULL,
	[BANKNAME] [varchar](100) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ASBA_TIERRA]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASBA_TIERRA](
	[BANKCODE] [varchar](20) NULL,
	[BANKNAME] [varchar](100) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B236]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B236](
	[ORDER_NO] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BANKMASTER01]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANKMASTER01](
	[CODE] [varchar](5) NULL,
	[BANKNAME] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bconsshrfile]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bconsshrfile](
	[MFOLIO] [varchar](8) NULL,
	[MSHARES] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BID_ARUN01]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BID_ARUN01](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](50) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[CRU_FLAG] [varchar](5) NULL,
	[COLLBANK] [varchar](50) NULL,
	[BIDDPID] [varchar](16) NULL,
	[BIDPAN] [varchar](20) NULL,
	[RDKEY] [varchar](20) NULL,
	[MATCHING_REMARKS] [varchar](30) NULL,
	[TXNS] [varchar](5) NULL,
	[BEN_NAME] [varchar](100) NULL,
	[BEN_PAN] [varchar](20) NULL,
	[BEN_JT1PAN] [varchar](20) NULL,
	[BEN_JT2PAN] [varchar](20) NULL,
	[REJN_REASON] [varchar](100) NULL,
	[BASIS] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BID_CONS01]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BID_CONS01](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](150) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BID_CONS0A]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BID_CONS0A](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](50) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[CRU_FLAG] [varchar](5) NULL,
	[COLLBANK] [varchar](50) NULL,
	[BIDDPID] [varchar](16) NULL,
	[BIDPAN] [varchar](20) NULL,
	[RDKEY] [varchar](20) NULL,
	[MATCHING_REMARKS] [varchar](30) NULL,
	[TXNS] [varchar](5) NULL,
	[BEN_NAME] [varchar](100) NULL,
	[BEN_PAN] [varchar](20) NULL,
	[BEN_JT1PAN] [varchar](20) NULL,
	[BEN_JT2PAN] [varchar](20) NULL,
	[REJN_REASON] [varchar](100) NULL,
	[BASIS] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BID_CONS0T]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BID_CONS0T](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](50) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[CRU_FLAG] [varchar](5) NULL,
	[COLLBANK] [varchar](50) NULL,
	[BIDDPID] [varchar](16) NULL,
	[BIDPAN] [varchar](20) NULL,
	[RDKEY] [varchar](20) NULL,
	[MATCHING_REMARKS] [varchar](30) NULL,
	[TXNS] [varchar](5) NULL,
	[BEN_NAME] [varchar](100) NULL,
	[BEN_PAN] [varchar](20) NULL,
	[BEN_JT1PAN] [varchar](20) NULL,
	[BEN_JT2PAN] [varchar](20) NULL,
	[REJN_REASON] [varchar](100) NULL,
	[BASIS] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BID_CONSGACMEQ]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BID_CONSGACMEQ](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](50) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[CRU_FLAG] [varchar](5) NULL,
	[COLLBANK] [varchar](50) NULL,
	[BIDDPID] [varchar](16) NULL,
	[BIDPAN] [varchar](20) NULL,
	[RDKEY] [varchar](20) NULL,
	[MATCHING_REMARKS] [varchar](30) NULL,
	[TXNS] [varchar](5) NULL,
	[BEN_NAME] [varchar](100) NULL,
	[BEN_PAN] [varchar](20) NULL,
	[BEN_JT1PAN] [varchar](20) NULL,
	[BEN_JT2PAN] [varchar](20) NULL,
	[REJN_REASON] [varchar](100) NULL,
	[BASIS] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BID_MISMATCHES]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BID_MISMATCHES](
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
	[Amount_to_be_Refunded] [nvarchar](40) NULL,
	[Reason_for_Non_Allotment] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BID_USRID]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BID_USRID](
	[ORDERNO] [varchar](30) NULL,
	[USR_ID] [varchar](15) NULL,
	[BRANCH] [varchar](50) NULL,
	[IFSCCODE] [varchar](20) NULL,
	[BANKCODE] [varchar](4) NULL,
	[BANKNAME] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BID26]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BID26](
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
/****** Object:  Table [dbo].[BIDCONS_GACMDV]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIDCONS_GACMDV](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](150) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[DPIDCLID] [varchar](16) NULL,
	[DEPOSITORYFLAG] [varchar](4) NULL,
	[bank_code] [varchar](4) NULL,
	[bank_name] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIDCONS_GACMEQ]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIDCONS_GACMEQ](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](150) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[DPIDCLID] [varchar](16) NULL,
	[DEPOSITORYFLAG] [varchar](4) NULL,
	[bank_code] [varchar](4) NULL,
	[bank_name] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIDCONSFILE]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIDCONSFILE](
	[BIDDPID] [varchar](16) NULL,
	[CONSAPPLSHARES] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIDCONT01]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIDCONT01](
	[NOOFRECORDS] [int] NULL,
	[TOTQTYAPPLIED] [int] NULL,
	[TOTAMTRECD] [numeric](38, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIDCONT01AFC]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIDCONT01AFC](
	[NOOFRECORDS] [int] NULL,
	[TOTQTYAPPLIED] [int] NULL,
	[TOTAMTRECD] [numeric](38, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIDCONT01GACMDV]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIDCONT01GACMDV](
	[NOOFRECORDS] [int] NULL,
	[TOTQTYAPPLIED] [int] NULL,
	[TOTAMTRECD] [numeric](38, 0) NULL,
	[EXCHG] [varchar](3) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIDCONT01GACMEQ]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIDCONT01GACMEQ](
	[NOOFRECORDS] [int] NULL,
	[TOTQTYAPPLIED] [int] NULL,
	[TOTAMTRECD] [numeric](38, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIDCONT01TAL]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIDCONT01TAL](
	[NOOFRECORDS] [int] NULL,
	[TOTQTYAPPLIED] [int] NULL,
	[TOTAMTRECD] [numeric](38, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIDCONT02]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIDCONT02](
	[Vbank_name] [varchar](100) NULL,
	[Vbank_code] [varchar](4) NULL,
	[TOTAL_BIDS] [int] NULL,
	[SHARES_APPLIED] [int] NULL,
	[APPLIED_AMOUNT] [numeric](38, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIDCONT02AFC]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIDCONT02AFC](
	[Vbank_name] [varchar](100) NULL,
	[Vbank_code] [varchar](4) NULL,
	[TOTAL_BIDS] [int] NULL,
	[SHARES_APPLIED] [int] NULL,
	[APPLIED_AMOUNT] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIDCONT02GACMDV]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIDCONT02GACMDV](
	[Vbank_name] [varchar](100) NULL,
	[Vbank_code] [varchar](4) NULL,
	[TOTAL_BIDS] [int] NULL,
	[SHARES_APPLIED] [int] NULL,
	[APPLIED_AMOUNT] [float] NULL,
	[EXCHG] [varchar](3) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIDCONT02GACMEQ]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIDCONT02GACMEQ](
	[Vbank_name] [varchar](100) NULL,
	[Vbank_code] [varchar](4) NULL,
	[TOTAL_BIDS] [int] NULL,
	[SHARES_APPLIED] [int] NULL,
	[APPLIED_AMOUNT] [float] NULL,
	[EXCHG] [varchar](3) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIDCONT02TAL]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIDCONT02TAL](
	[Vbank_name] [varchar](100) NULL,
	[Vbank_code] [varchar](4) NULL,
	[TOTAL_BIDS] [int] NULL,
	[SHARES_APPLIED] [int] NULL,
	[APPLIED_AMOUNT] [numeric](38, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIDSUMMARY_GACMEQ01]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIDSUMMARY_GACMEQ01](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BANK_NAME] [varchar](100) NULL,
	[BANK_CODE] [varchar](4) NULL,
	[Total_Bids_Count] [int] NULL,
	[Total_Applied_Shares] [int] NULL,
	[Total_Applied_Amount] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIDSUMMARY_GACMEQ02]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIDSUMMARY_GACMEQ02](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[exchg] [varchar](4) NULL,
	[BANK NAME] [varchar](100) NULL,
	[BANK CODE] [varchar](4) NULL,
	[No.of.Bids] [int] NULL,
	[Applied_Shares] [int] NULL,
	[appl_Amount_received] [decimal](38, 3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIDSUMMARY01]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIDSUMMARY01](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BANK_NAME] [varchar](100) NULL,
	[BANK_CODE] [varchar](4) NULL,
	[Total_Bids_Count] [int] NULL,
	[Total_Applied_Shares] [int] NULL,
	[Total_Applied_Amount] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIDuserBankData]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIDuserBankData](
	[EXCHG] [varchar](3) NULL,
	[User_Name] [nvarchar](50) NULL,
	[IFSC_Code] [nvarchar](4) NULL,
	[Bank_Name] [varchar](100) NULL,
	[Bank_Code] [varchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[borigshrfile]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[borigshrfile](
	[MFOLIO] [varchar](8) NULL,
	[MSHARES] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BSE_BID01]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BSE_BID01](
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
/****** Object:  Table [dbo].[BSE_BID02]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BSE_BID02](
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
/****** Object:  Table [dbo].[BSE_BIDAJBL]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BSE_BIDAJBL](
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
/****** Object:  Table [dbo].[BSEBID_GACMEQ01]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BSEBID_GACMEQ01](
	[BANK_NAME] [varchar](100) NULL,
	[BANK_CODE] [varchar](4) NULL,
	[BSE] [varchar](3) NOT NULL,
	[Total_Bids_Count] [int] NULL,
	[Total_Applied_Shares] [int] NULL,
	[Total_Applied_Amount] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BSEBIDABL]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BSEBIDABL](
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
	[DPIDCLID] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BSEBIDGACMDV]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BSEBIDGACMDV](
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
	[DPIDCLID] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BSEBIDGACMEQ]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BSEBIDGACMEQ](
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
	[DPIDCLID] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bsebidsample]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bsebidsample](
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
/****** Object:  Table [dbo].[BSEBIDSUMMARY_GACMDV01]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BSEBIDSUMMARY_GACMDV01](
	[BANK_NAME] [varchar](100) NULL,
	[BANK_CODE] [varchar](4) NULL,
	[EXCHG] [varchar](3) NOT NULL,
	[Total_Bids_Count] [int] NULL,
	[Total_Applied_Shares] [int] NULL,
	[Total_Applied_Amount] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BSEBIDSUMMARY_GACMEQ01]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BSEBIDSUMMARY_GACMEQ01](
	[BANK_NAME] [varchar](100) NULL,
	[BANK_CODE] [varchar](4) NULL,
	[EXCHG] [varchar](3) NOT NULL,
	[Total_Bids_Count] [int] NULL,
	[Total_Applied_Shares] [int] NULL,
	[Total_Applied_Amount] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BSEBIDTAL]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BSEBIDTAL](
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
	[DPIDCLID] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BSEBIDTDPLEQ]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BSEBIDTDPLEQ](
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
/****** Object:  Table [dbo].[CCtemp1]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCtemp1](
	[Ctemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cctemp12]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cctemp12](
	[ctemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cctemp2]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cctemp2](
	[ctemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cdslfbstru]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdslfbstru](
	[ISIN] [nvarchar](255) NULL,
	[BOID] [nvarchar](255) NULL,
	[NAME] [nvarchar](255) NULL,
	[JH1] [nvarchar](255) NULL,
	[JH2] [nvarchar](255) NULL,
	[GNAME] [nvarchar](255) NULL,
	[NNAME] [nvarchar](255) NULL,
	[FHNAME] [nvarchar](255) NULL,
	[GENDER] [nvarchar](255) NULL,
	[DOB] [nvarchar](255) NULL,
	[ACCSTATUS] [nvarchar](255) NULL,
	[BOCATEGORY] [nvarchar](255) NULL,
	[BOPRODUCT] [nvarchar](255) NULL,
	[CUST_TYPE] [nvarchar](255) NULL,
	[BOSUBSTATUS] [nvarchar](255) NULL,
	[OCC] [nvarchar](255) NULL,
	[PAN1] [nvarchar](255) NULL,
	[PAN2] [nvarchar](255) NULL,
	[PAN3] [nvarchar](255) NULL,
	[BOFREEZEFLAG] [nvarchar](255) NULL,
	[FRZREASONCODE] [nvarchar](255) NULL,
	[ISINSTAT] [nvarchar](255) NULL,
	[ACCOPDATE] [nvarchar](255) NULL,
	[SEBIREGN] [nvarchar](255) NULL,
	[SEIDNO] [nvarchar](255) NULL,
	[CHCIDNO] [nvarchar](255) NULL,
	[CMID] [nvarchar](255) NULL,
	[TRID] [nvarchar](255) NULL,
	[RBIREGN] [nvarchar](255) NULL,
	[RBIAPRDATE] [nvarchar](255) NULL,
	[TDSNO] [nvarchar](255) NULL,
	[Nationality] [nvarchar](255) NULL,
	[BOADD1] [nvarchar](255) NULL,
	[BOADD2] [nvarchar](255) NULL,
	[BOADD3] [nvarchar](255) NULL,
	[BOCITY] [nvarchar](255) NULL,
	[BOSTATE] [nvarchar](255) NULL,
	[BOCOUNTRY] [nvarchar](255) NULL,
	[BOPIN] [nvarchar](255) NULL,
	[PBOADD1] [nvarchar](255) NULL,
	[PBOADD2] [nvarchar](255) NULL,
	[PBOADD3] [nvarchar](255) NULL,
	[PBOCITY] [nvarchar](255) NULL,
	[PBOSTATE] [nvarchar](255) NULL,
	[PBOCOUNTRY] [nvarchar](255) NULL,
	[PBOPIN] [nvarchar](255) NULL,
	[MOBILE1] [nvarchar](255) NULL,
	[TEL1] [nvarchar](255) NULL,
	[FAXNO] [nvarchar](255) NULL,
	[EMAILID] [nvarchar](255) NULL,
	[ECSFLAG] [nvarchar](255) NULL,
	[DIVMICR] [nvarchar](255) NULL,
	[DIVIFSC] [nvarchar](255) NULL,
	[BANKNAME] [nvarchar](255) NULL,
	[BANKADD1] [nvarchar](255) NULL,
	[BANKADD2] [nvarchar](255) NULL,
	[BANKADD3] [nvarchar](255) NULL,
	[BANKCITY] [nvarchar](255) NULL,
	[BANKSTATE] [nvarchar](255) NULL,
	[BANKCOUNTRY] [nvarchar](255) NULL,
	[BANKPIN] [nvarchar](255) NULL,
	[DIVBANKCUR] [nvarchar](255) NULL,
	[DIVBKACTYPE] [nvarchar](255) NULL,
	[DIVBKACCNO] [nvarchar](255) NULL,
	[TOTHOLD] [float] NULL,
	[TOTLOCKIN] [float] NULL,
	[PLEDGEBAL] [float] NULL,
	[SAFEKEEPBAL] [float] NULL,
	[EARMARKBAL] [float] NULL,
	[PDREMATCONF] [float] NULL,
	[FREEBALANCE] [float] NULL,
	[PDEMATV] [float] NULL,
	[PDEMACONF] [float] NULL,
	[DOBENPOS] [nvarchar](255) NULL,
	[PLEDGESBAL] [float] NULL,
	[REMAGALINBAL] [float] NULL,
	[ARFLAG] [nvarchar](255) NULL,
	[UID1] [nvarchar](255) NULL,
	[UID2] [nvarchar](255) NULL,
	[UID3] [nvarchar](255) NULL,
	[PANGUARD] [nvarchar](255) NULL,
	[UDIGUARD] [nvarchar](255) NULL,
	[CUSTPMSEMAIL] [nvarchar](255) NULL,
	[LEI] [nvarchar](255) NULL,
	[LEIEXPDT] [nvarchar](255) NULL,
	[FILLER1] [nvarchar](255) NULL,
	[BORGESSFLAG] [nvarchar](255) NULL,
	[MOOPERA] [nvarchar](255) NULL,
	[COMMPRE] [nvarchar](255) NULL,
	[FILLER2] [nvarchar](255) NULL,
	[FILLER3] [nvarchar](255) NULL,
	[NOMGNAME1] [nvarchar](255) NULL,
	[NOMRELA1] [nvarchar](255) NULL,
	[NOMPERC1] [nvarchar](255) NULL,
	[NOM2NAME] [nvarchar](255) NULL,
	[NOMGNAME2] [nvarchar](255) NULL,
	[NOMRELA2] [nvarchar](255) NULL,
	[NOMPERC2] [nvarchar](255) NULL,
	[NOM3NAME] [nvarchar](255) NULL,
	[NOMGNAME3] [nvarchar](255) NULL,
	[NOMRELA3] [nvarchar](255) NULL,
	[NOMPERC3] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CDSLFULL_BENDEM2476]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CDSLFULL_BENDEM2476](
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
/****** Object:  Table [dbo].[CDSLFULL_BENDEMF]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CDSLFULL_BENDEMF](
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
/****** Object:  Table [dbo].[CDSLFULLBENDEM_2476]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[cdslfullbenstru]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdslfullbenstru](
	[ISIN] [nvarchar](255) NULL,
	[BOID] [nvarchar](255) NULL,
	[NAME] [nvarchar](255) NULL,
	[JH1] [nvarchar](255) NULL,
	[JH2] [nvarchar](255) NULL,
	[GNAME] [nvarchar](255) NULL,
	[NNAME] [nvarchar](255) NULL,
	[FHNAME] [nvarchar](255) NULL,
	[GENDER] [nvarchar](255) NULL,
	[DOB] [nvarchar](255) NULL,
	[ACCSTATUS] [nvarchar](255) NULL,
	[BOCATEGORY] [nvarchar](255) NULL,
	[BOPRODUCT] [nvarchar](255) NULL,
	[CUST_TYPE] [nvarchar](255) NULL,
	[BOSUBSTATUS] [nvarchar](255) NULL,
	[OCC] [nvarchar](255) NULL,
	[PAN1] [nvarchar](255) NULL,
	[PAN2] [nvarchar](255) NULL,
	[PAN3] [nvarchar](255) NULL,
	[BOFREEZEFLAG] [nvarchar](255) NULL,
	[FRZREASONCODE] [nvarchar](255) NULL,
	[ISINSTAT] [nvarchar](255) NULL,
	[ACCOPDATE] [nvarchar](255) NULL,
	[SEBIREGN] [nvarchar](255) NULL,
	[SEIDNO] [nvarchar](255) NULL,
	[CHCIDNO] [nvarchar](255) NULL,
	[CMID] [nvarchar](255) NULL,
	[TRID] [nvarchar](255) NULL,
	[RBIREGN] [nvarchar](255) NULL,
	[RBIAPRDATE] [nvarchar](255) NULL,
	[TDSNO] [nvarchar](255) NULL,
	[Nationality] [nvarchar](255) NULL,
	[BOADD1] [nvarchar](255) NULL,
	[BOADD2] [nvarchar](255) NULL,
	[BOADD3] [nvarchar](255) NULL,
	[BOCITY] [nvarchar](255) NULL,
	[BOSTATE] [nvarchar](255) NULL,
	[BOCOUNTRY] [nvarchar](255) NULL,
	[BOPIN] [nvarchar](255) NULL,
	[PBOADD1] [nvarchar](255) NULL,
	[PBOADD2] [nvarchar](255) NULL,
	[PBOADD3] [nvarchar](255) NULL,
	[PBOCITY] [nvarchar](255) NULL,
	[PBOSTATE] [nvarchar](255) NULL,
	[PBOCOUNTRY] [nvarchar](255) NULL,
	[PBOPIN] [nvarchar](255) NULL,
	[MOBILE1] [nvarchar](255) NULL,
	[TEL1] [nvarchar](255) NULL,
	[FAXNO] [nvarchar](255) NULL,
	[EMAILID] [nvarchar](255) NULL,
	[ECSFLAG] [nvarchar](255) NULL,
	[DIVMICR] [nvarchar](255) NULL,
	[DIVIFSC] [nvarchar](255) NULL,
	[BANKNAME] [nvarchar](255) NULL,
	[BANKADD1] [nvarchar](255) NULL,
	[BANKADD2] [nvarchar](255) NULL,
	[BANKADD3] [nvarchar](255) NULL,
	[BANKCITY] [nvarchar](255) NULL,
	[BANKSTATE] [nvarchar](255) NULL,
	[BANKCOUNTRY] [nvarchar](255) NULL,
	[BANKPIN] [nvarchar](255) NULL,
	[DIVBANKCUR] [nvarchar](255) NULL,
	[DIVBKACTYPE] [nvarchar](255) NULL,
	[DIVBKACCNO] [nvarchar](255) NULL,
	[TOTHOLD] [float] NULL,
	[TOTLOCKIN] [float] NULL,
	[PLEDGEBAL] [float] NULL,
	[SAFEKEEPBAL] [float] NULL,
	[EARMARKBAL] [float] NULL,
	[PDREMATCONF] [float] NULL,
	[FREEBALANCE] [float] NULL,
	[PDEMATV] [float] NULL,
	[PDEMACONF] [float] NULL,
	[DOBENPOS] [nvarchar](255) NULL,
	[PLEDGESBAL] [float] NULL,
	[REMAGALINBAL] [float] NULL,
	[ARFLAG] [nvarchar](255) NULL,
	[UID1] [nvarchar](255) NULL,
	[UID2] [nvarchar](255) NULL,
	[UID3] [nvarchar](255) NULL,
	[PANGUARD] [nvarchar](255) NULL,
	[UDIGUARD] [nvarchar](255) NULL,
	[CUSTPMSEMAIL] [nvarchar](255) NULL,
	[LEI] [nvarchar](255) NULL,
	[LEIEXPDT] [nvarchar](255) NULL,
	[FILLER1] [nvarchar](255) NULL,
	[BORGESSFLAG] [nvarchar](255) NULL,
	[MOOPERA] [nvarchar](255) NULL,
	[COMMPRE] [nvarchar](255) NULL,
	[FILLER2] [nvarchar](255) NULL,
	[FILLER3] [nvarchar](255) NULL,
	[NOMGNAME1] [nvarchar](255) NULL,
	[NOMRELA1] [nvarchar](255) NULL,
	[NOMPERC1] [nvarchar](255) NULL,
	[NOM2NAME] [nvarchar](255) NULL,
	[NOMGNAME2] [nvarchar](255) NULL,
	[NOMRELA2] [nvarchar](255) NULL,
	[NOMPERC2] [nvarchar](255) NULL,
	[NOM3NAME] [nvarchar](255) NULL,
	[NOMGNAME3] [nvarchar](255) NULL,
	[NOMRELA3] [nvarchar](255) NULL,
	[NOMPERC3] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CDSLNSDLBD]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CDSLNSDLBD](
	[DPIDCLID] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cfin1]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cfin1](
	[cTEMP1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dupl2bid]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dupl2bid](
	[bid2dpidclid] [varchar](16) NULL,
	[noofbids2] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dupl2pannos]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dupl2pannos](
	[PAN_NO] [nvarchar](20) NULL,
	[noofpannos2] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DUPLCNT]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DUPLCNT](
	[PAN_NO] [varchar](40) NULL,
	[cl_id] [varchar](16) NULL,
	[COUNT] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[errorlog_1378]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[errorlog_1378](
	[rem] [varchar](1500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FB_CONA002]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FB_CONA002](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](50) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[CRU_FLAG] [varchar](5) NULL,
	[COLLBANK] [varchar](50) NULL,
	[BIDDPID] [varchar](16) NULL,
	[BIDPAN] [varchar](20) NULL,
	[RDKEY] [varchar](20) NULL,
	[MATCHING_REMARKS] [varchar](30) NULL,
	[TXNS] [varchar](5) NULL,
	[BEN_NAME] [varchar](100) NULL,
	[BEN_PAN] [varchar](20) NULL,
	[BEN_JT1PAN] [varchar](20) NULL,
	[BEN_JT2PAN] [varchar](20) NULL,
	[REJN_REASON] [varchar](100) NULL,
	[BASIS] [varchar](10) NULL,
	[BANK_NAME] [varchar](100) NULL,
	[BANKCODE] [varchar](4) NULL,
	[BIDDEPOSITORY] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fftemp1]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fftemp1](
	[ftemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinalGACMDVConsolReport]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinalGACMDVConsolReport](
	[BANK_NAME] [varchar](100) NULL,
	[BANK_CODE] [varchar](4) NULL,
	[TOTAL_BIDS_COUNT] [int] NULL,
	[Total_Applied_Shares] [int] NULL,
	[Total_Applied_Amount] [decimal](38, 2) NULL,
	[Stock_Exchange] [varchar](6) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinalGacmEqConsolReport]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinalGacmEqConsolReport](
	[BANK_NAME] [varchar](100) NULL,
	[BANK_CODE] [varchar](4) NULL,
	[TOTAL_BIDS_COUNT] [int] NULL,
	[Total_Applied_Shares] [int] NULL,
	[Total_Applied_Amount] [decimal](38, 2) NULL,
	[Stock_Exchange] [varchar](6) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FINBOOK_ABL]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FINBOOK_ABL](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](50) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[CRU_FLAG] [varchar](5) NULL,
	[COLLBANK] [varchar](50) NULL,
	[BIDDPID] [varchar](16) NULL,
	[BIDPAN] [varchar](20) NULL,
	[RDKEY] [varchar](20) NULL,
	[MATCHING_REMARKS] [varchar](30) NULL,
	[TXNS] [varchar](5) NULL,
	[BEN_NAME] [varchar](100) NULL,
	[BEN_PAN] [varchar](20) NULL,
	[BEN_JT1PAN] [varchar](20) NULL,
	[BEN_JT2PAN] [varchar](20) NULL,
	[REJN_REASON] [varchar](100) NULL,
	[BASIS] [varchar](10) NULL,
	[BANK_NAME] [varchar](100) NULL,
	[BANKCODE] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FINBOOK_AIL002]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FINBOOK_AIL002](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](50) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[CRU_FLAG] [varchar](5) NULL,
	[COLLBANK] [varchar](50) NULL,
	[BIDDPID] [varchar](16) NULL,
	[BIDPAN] [varchar](20) NULL,
	[RDKEY] [varchar](20) NULL,
	[MATCHING_REMARKS] [varchar](30) NULL,
	[TXNS] [varchar](5) NULL,
	[BEN_NAME] [varchar](100) NULL,
	[BEN_PAN] [varchar](20) NULL,
	[BEN_JT1PAN] [varchar](20) NULL,
	[BEN_JT2PAN] [varchar](20) NULL,
	[REJN_REASON] [varchar](100) NULL,
	[BASIS] [varchar](10) NULL,
	[BANK_NAME] [varchar](100) NULL,
	[BANKCODE] [varchar](4) NULL,
	[BIDDEPOSITORY] [varchar](4) NULL,
	[MATCHSRCFILENAME] [varchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FINBOOK_AJBL]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FINBOOK_AJBL](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](50) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[CRU_FLAG] [varchar](5) NULL,
	[COLLBANK] [varchar](50) NULL,
	[BIDDPID] [varchar](16) NULL,
	[BIDPAN] [varchar](20) NULL,
	[RDKEY] [varchar](20) NULL,
	[MATCHING_REMARKS] [varchar](30) NULL,
	[TXNS] [varchar](5) NULL,
	[BEN_NAME] [varchar](100) NULL,
	[BEN_PAN] [varchar](20) NULL,
	[BEN_JT1PAN] [varchar](20) NULL,
	[BEN_JT2PAN] [varchar](20) NULL,
	[REJN_REASON] [varchar](100) NULL,
	[BASIS] [varchar](10) NULL,
	[BANK_NAME] [varchar](100) NULL,
	[BANKCODE] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FINBOOK_CON002]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FINBOOK_CON002](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](50) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[CRU_FLAG] [varchar](5) NULL,
	[COLLBANK] [varchar](50) NULL,
	[BIDDPID] [varchar](16) NULL,
	[BIDPAN] [varchar](20) NULL,
	[RDKEY] [varchar](20) NULL,
	[MATCHING_REMARKS] [varchar](30) NULL,
	[TXNS] [varchar](5) NULL,
	[BEN_NAME] [varchar](100) NULL,
	[BEN_PAN] [varchar](20) NULL,
	[BEN_JT1PAN] [varchar](20) NULL,
	[BEN_JT2PAN] [varchar](20) NULL,
	[REJN_REASON] [varchar](100) NULL,
	[BASIS] [varchar](10) NULL,
	[BANK_NAME] [varchar](100) NULL,
	[BANKCODE] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FINBOOK_TAL]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FINBOOK_TAL](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](50) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[CRU_FLAG] [varchar](5) NULL,
	[COLLBANK] [varchar](50) NULL,
	[BIDDPID] [varchar](16) NULL,
	[BIDPAN] [varchar](20) NULL,
	[RDKEY] [varchar](20) NULL,
	[MATCHING_REMARKS] [varchar](30) NULL,
	[TXNS] [varchar](5) NULL,
	[BEN_NAME] [varchar](100) NULL,
	[BEN_PAN] [varchar](20) NULL,
	[BEN_JT1PAN] [varchar](20) NULL,
	[BEN_JT2PAN] [varchar](20) NULL,
	[REJN_REASON] [varchar](100) NULL,
	[BASIS] [varchar](10) NULL,
	[BANK_NAME] [varchar](100) NULL,
	[BANKCODE] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JTEMP01]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JTEMP01](
	[EXCHG] [varchar](4) NULL,
	[Bank Code] [varchar](4) NULL,
	[Bank Name] [varchar](100) NULL,
	[No.of.Bids] [int] NULL,
	[Applied_Shares] [int] NULL,
	[Appl_Amount_Received] [decimal](38, 2) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jtemp1]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jtemp1](
	[Description] [varchar](49) NOT NULL,
	[Bank_Name] [varchar](100) NULL,
	[Bank_Code] [varchar](4) NULL,
	[BSE] [varchar](3) NOT NULL,
	[Total_Bids_Count] [int] NULL,
	[Total_Applied_Shares] [int] NULL,
	[Total_Applied_Amount] [decimal](18, 2) NULL,
	[EXCHG] [varchar](3) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JUSTTEST]    Script Date: 26-10-2024 15:44:20 ******/
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
	[FINREM] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mastadr01]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[mastadr02]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[mastadr02dt]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[mastadr02DTCDSL]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[mastcadr02dt]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[MASTER_ADROIT]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[Master_Param_ABL]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_Param_ABL](
	[RIGHTS_IDNO] [int] IDENTITY(1,1) NOT NULL,
	[RIGHTS_CODE] [varchar](8) NULL,
	[ISIN] [varchar](12) NULL,
	[COMPANY_NAME] [varchar](150) NULL,
	[ISSUE_SHARES] [int] NULL,
	[ISSUE_PRICE] [numeric](12, 2) NULL,
	[RD_FROM] [datetime] NULL,
	[RD_TO] [datetime] NULL,
	[ISSUE_OPENS] [datetime] NULL,
	[ISSUE_CLOSES] [datetime] NULL,
	[RE_TRADING_FROM] [datetime] NULL,
	[RE_TRADING_TO] [datetime] NULL,
	[RIGESCR_SUSPACCNO] [varchar](20) NULL,
	[UNCLSEC_SUSPACCNO] [varchar](20) NULL,
	[RIGHTENTITLETISIN] [varchar](12) NULL,
	[TEMPISIN] [varchar](12) NULL,
	[PART_FULLISIN] [varchar](12) NULL,
	[SOURCEFOLDER] [varchar](50) NULL,
	[TARGETFOLDER] [varchar](50) NULL,
	[REMARKS1] [varchar](100) NULL,
	[REMARKS2] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_Param_Arunjyoti]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_Param_Arunjyoti](
	[RIGHTS_IDNO] [int] IDENTITY(1,1) NOT NULL,
	[RIGHTS_CODE] [varchar](8) NULL,
	[ISIN] [varchar](12) NULL,
	[COMPANY_NAME] [varchar](150) NULL,
	[ISSUE_SHARES] [int] NULL,
	[ISSUE_PRICE] [numeric](12, 2) NULL,
	[RD_FROM] [datetime] NULL,
	[RD_TO] [datetime] NULL,
	[ISSUE_OPENS] [datetime] NULL,
	[ISSUE_CLOSES] [datetime] NULL,
	[RE_TRADING_FROM] [datetime] NULL,
	[RE_TRADING_TO] [datetime] NULL,
	[RIGESCR_SUSPACCNO] [varchar](20) NULL,
	[UNCLSEC_SUSPACCNO] [varchar](20) NULL,
	[RIGHTENTITLETISIN] [varchar](12) NULL,
	[TEMPISIN] [varchar](12) NULL,
	[PART_FULLISIN] [varchar](12) NULL,
	[SOURCEFOLDER] [varchar](50) NULL,
	[TARGETFOLDER] [varchar](50) NULL,
	[REMARKS1] [varchar](100) NULL,
	[REMARKS2] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_Param_Tierra]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_Param_Tierra](
	[RIGHTS_IDNO] [int] IDENTITY(1,1) NOT NULL,
	[RIGHTS_CODE] [varchar](8) NULL,
	[ISIN] [varchar](12) NULL,
	[COMPANY_NAME] [varchar](150) NULL,
	[ISSUE_SHARES] [int] NULL,
	[ISSUE_PRICE] [numeric](12, 2) NULL,
	[RD_FROM] [datetime] NULL,
	[RD_TO] [datetime] NULL,
	[ISSUE_OPENS] [datetime] NULL,
	[ISSUE_CLOSES] [datetime] NULL,
	[RE_TRADING_FROM] [datetime] NULL,
	[RE_TRADING_TO] [datetime] NULL,
	[RIGESCR_SUSPACCNO] [varchar](20) NULL,
	[UNCLSEC_SUSPACCNO] [varchar](20) NULL,
	[RIGHTENTITLETISIN] [varchar](12) NULL,
	[TEMPISIN] [varchar](12) NULL,
	[PART_FULLISIN] [varchar](12) NULL,
	[SOURCEFOLDER] [varchar](50) NULL,
	[TARGETFOLDER] [varchar](50) NULL,
	[REMARKS1] [varchar](100) NULL,
	[REMARKS2] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MASTER_RIGHTS_APARAM]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTER_RIGHTS_APARAM](
	[RIGHTS_IDNO] [int] IDENTITY(1,1) NOT NULL,
	[RIGHTS_CODE] [varchar](8) NULL,
	[ISIN] [varchar](12) NULL,
	[COMPANY_NAME] [varchar](150) NULL,
	[ISSUE_SHARES] [int] NULL,
	[ISSUE_PRICE] [numeric](12, 2) NULL,
	[RD_FROM] [datetime] NULL,
	[RD_TO] [datetime] NULL,
	[ISSUE_OPENS] [datetime] NULL,
	[ISSUE_CLOSES] [datetime] NULL,
	[RE_TRADING_FROM] [datetime] NULL,
	[RE_TRADING_TO] [datetime] NULL,
	[RIGESCR_SUSPACCNO] [varchar](20) NULL,
	[UNCLSEC_SUSPACCNO] [varchar](20) NULL,
	[RIGHTENTITLETISIN] [varchar](12) NULL,
	[TEMPISIN] [varchar](12) NULL,
	[PART_FULLISIN] [varchar](12) NULL,
	[SOURCEFOLDER] [varchar](50) NULL,
	[TARGETFOLDER] [varchar](50) NULL,
	[REMARKS1] [varchar](100) NULL,
	[REMARKS2] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MASTER_RIGHTS_PARAM]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTER_RIGHTS_PARAM](
	[RIGHTS_IDNO] [int] IDENTITY(1,1) NOT NULL,
	[RIGHTS_CODE] [varchar](8) NULL,
	[ISIN] [varchar](12) NULL,
	[COMPANY_NAME] [varchar](150) NULL,
	[ISSUE_SHARES] [int] NULL,
	[ISSUE_PRICE] [numeric](12, 2) NULL,
	[RD_FROM] [datetime] NULL,
	[RD_TO] [datetime] NULL,
	[ISSUE_OPENS] [datetime] NULL,
	[ISSUE_CLOSES] [datetime] NULL,
	[RE_TRADING_FROM] [datetime] NULL,
	[RE_TRADING_TO] [datetime] NULL,
	[RIGESCR_SUSPACCNO] [varchar](20) NULL,
	[UNCLSEC_SUSPACCNO] [varchar](20) NULL,
	[RIGHTENTITLETISIN] [varchar](12) NULL,
	[TEMPISIN] [varchar](12) NULL,
	[PART_FULLISIN] [varchar](12) NULL,
	[SOURCEFOLDER] [varchar](50) NULL,
	[TARGETFOLDER] [varchar](50) NULL,
	[REMARKS1] [varchar](100) NULL,
	[REMARKS2] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MASTER_RIGHTS_TPARAM]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTER_RIGHTS_TPARAM](
	[RIGHTS_IDNO] [int] IDENTITY(1,1) NOT NULL,
	[RIGHTS_CODE] [varchar](8) NULL,
	[ISIN] [varchar](12) NULL,
	[COMPANY_NAME] [varchar](150) NULL,
	[ISSUE_SHARES] [int] NULL,
	[ISSUE_PRICE] [numeric](12, 2) NULL,
	[RD_FROM] [datetime] NULL,
	[RD_TO] [datetime] NULL,
	[ISSUE_OPENS] [datetime] NULL,
	[ISSUE_CLOSES] [datetime] NULL,
	[RE_TRADING_FROM] [datetime] NULL,
	[RE_TRADING_TO] [datetime] NULL,
	[RIGESCR_SUSPACCNO] [varchar](20) NULL,
	[UNCLSEC_SUSPACCNO] [varchar](20) NULL,
	[RIGHTENTITLETISIN] [varchar](12) NULL,
	[TEMPISIN] [varchar](12) NULL,
	[PART_FULLISIN] [varchar](12) NULL,
	[SOURCEFOLDER] [varchar](50) NULL,
	[TARGETFOLDER] [varchar](50) NULL,
	[REMARKS1] [varchar](100) NULL,
	[REMARKS2] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mastnadr01hd]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[mastNadr02dt]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[MST_BM]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MST_BM](
	[CODE] [varchar](5) NULL,
	[BANKNAME] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MULTDPID]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MULTDPID](
	[BIDDPID] [varchar](16) NULL,
	[RECORDS] [int] NULL,
	[CONSAPPLSHARES] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[multidp]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[multidp](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](50) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[BIDDPID] [varchar](16) NULL,
	[MULTDPIDREC] [int] NULL,
	[CONSSHR] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nfin1]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nfin1](
	[FTEMP1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nntemp12]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nntemp12](
	[ctemp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nre01infile]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[nsdlfbstru]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nsdlfbstru](
	[REC_TYPE] [nvarchar](255) NULL,
	[LIN_NUM] [nvarchar](255) NULL,
	[DPID] [nvarchar](255) NULL,
	[FOLIO] [nvarchar](255) NULL,
	[STATUS] [nvarchar](255) NULL,
	[BTYPE] [nvarchar](255) NULL,
	[BTAC] [nvarchar](255) NULL,
	[OC] [nvarchar](255) NULL,
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
	[B_STATUS] [nvarchar](255) NULL,
	[SHARES] [float] NULL,
	[LSHARES] [float] NULL,
	[BENBLKPO] [float] NULL,
	[PLSHARES] [float] NULL,
	[PLGWTLCK] [float] NULL,
	[PLGUNCFP] [float] NULL,
	[BPLUNLK] [float] NULL,
	[BREMTPO] [float] NULL,
	[BDMTLOCK] [float] NULL,
	[CMIDDPO] [float] NULL,
	[CMPOOLPO] [float] NULL,
	[CCSETLPO] [float] NULL,
	[MICR] [float] NULL,
	[IFSC] [nvarchar](255) NULL,
	[BAC_TYPE] [nvarchar](255) NULL,
	[FILER1] [nvarchar](255) NULL,
	[MAPID1] [nvarchar](255) NULL,
	[MAPID2] [nvarchar](255) NULL,
	[MAPID3] [nvarchar](255) NULL,
	[EMAILID1] [nvarchar](255) NULL,
	[EMAILID2] [nvarchar](255) NULL,
	[EMAILID3] [nvarchar](255) NULL,
	[RGESS] [nvarchar](255) NULL,
	[NDUFSH] [nvarchar](255) NULL,
	[NDULSH] [nvarchar](255) NULL,
	[NDUUCF] [nvarchar](255) NULL,
	[NDUUCL] [nvarchar](255) NULL,
	[STATCODE] [nvarchar](255) NULL,
	[COUNCODE] [nvarchar](255) NULL,
	[LEITEMP] [nvarchar](255) NULL,
	[FHOLD_PF] [nvarchar](255) NULL,
	[SHOLD_PF] [nvarchar](255) NULL,
	[THOLD_PF] [nvarchar](255) NULL,
	[PRMKMP] [nvarchar](255) NULL,
	[FPICAT] [nvarchar](255) NULL,
	[FILERR] [nvarchar](255) NULL,
	[STATUS2] [nvarchar](255) NULL,
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
	[AC_OPEN_DA] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSDLFULL_BENDEM1378]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSDLFULL_BENDEM1378](
	[FILLER1] [varchar](2) NULL,
	[DP_ID] [varchar](8) NULL,
	[FILLER2] [varchar](2) NULL,
	[CL_ID] [varchar](8) NULL,
	[FILLER3] [varchar](2) NULL,
	[NAME] [varchar](250) NULL,
	[FILLER4] [varchar](2) NULL,
	[SNAME] [varchar](45) NULL,
	[FILLER5] [varchar](2) NULL,
	[TNAME] [varchar](45) NULL,
	[FILLER6] [varchar](2) NULL,
	[FHName] [varchar](45) NULL,
	[FILLER7] [varchar](2) NULL,
	[Occ] [varchar](10) NULL,
	[FILLER8] [varchar](2) NULL,
	[Bank_ID] [varchar](30) NULL,
	[FILLER9] [varchar](2) NULL,
	[Client_Type] [varchar](7) NULL,
	[FILLER10] [varchar](2) NULL,
	[Cl_Category] [varchar](8) NULL,
	[FILLER11] [varchar](2) NULL,
	[Client_Sub_Type] [varchar](5) NULL,
	[FILLER12] [varchar](2) NULL,
	[Status_Cl_Account] [varchar](6) NULL,
	[FILLER13] [varchar](2) NULL,
	[Minor_Indi] [varchar](10) NULL,
	[FILLER14] [varchar](2) NULL,
	[BANKACCNO] [varchar](30) NULL,
	[FILLER15] [varchar](2) NULL,
	[BANKACCTYPE] [varchar](13) NULL,
	[FILLER16] [varchar](2) NULL,
	[BANKNAME] [varchar](135) NULL,
	[FILLER17] [varchar](2) NULL,
	[MICR] [varchar](9) NULL,
	[FILLER18] [varchar](2) NULL,
	[IFSC] [varchar](11) NULL,
	[FILLER19] [varchar](2) NULL,
	[FHOLD_PAN] [varchar](30) NULL,
	[FILLER20] [varchar](2) NULL,
	[FHPANSTAT] [varchar](8) NULL,
	[FILLER21] [varchar](2) NULL,
	[SHOLD_PAN] [varchar](30) NULL,
	[FILLER22] [varchar](2) NULL,
	[SHPANSTAT] [varchar](8) NULL,
	[FILLER23] [varchar](2) NULL,
	[THOLD_PAN] [varchar](30) NULL,
	[FILLER24] [varchar](2) NULL,
	[THPANSTAT] [varchar](8) NULL,
	[FILLER25] [varchar](2) NULL,
	[RBIAPP] [varchar](10) NULL,
	[FILLER26] [varchar](2) NULL,
	[RBIREF] [varchar](50) NULL,
	[FILLER27] [varchar](2) NULL,
	[SEBIREGN] [varchar](24) NULL,
	[FILLER28] [varchar](2) NULL,
	[ADD1] [varchar](36) NULL,
	[FILLER29] [varchar](2) NULL,
	[ADD2] [varchar](36) NULL,
	[FILLER30] [varchar](2) NULL,
	[ADD3] [varchar](36) NULL,
	[FILLER31] [varchar](2) NULL,
	[ADD4] [varchar](36) NULL,
	[FILLER32] [varchar](2) NULL,
	[PINCODE] [varchar](10) NULL,
	[FILLER33] [varchar](2) NULL,
	[PHONE] [varchar](24) NULL,
	[FILLER34] [varchar](2) NULL,
	[FAX] [varchar](24) NULL,
	[FILLER35] [varchar](2) NULL,
	[BNKADD1] [varchar](36) NULL,
	[FILLER36] [varchar](2) NULL,
	[BNKADD2] [varchar](36) NULL,
	[FILLER37] [varchar](2) NULL,
	[BNKADD3] [varchar](36) NULL,
	[FILLER38] [varchar](2) NULL,
	[BNKADD4] [varchar](36) NULL,
	[FILLER39] [varchar](2) NULL,
	[BNKPIN] [varchar](10) NULL,
	[FILLER40] [varchar](2) NULL,
	[ACHOLD] [varchar](16) NULL,
	[FILLER41] [varchar](2) NULL,
	[EMAILID] [varchar](50) NULL,
	[rem] [varchar](1500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSDLFULL_BENDEMF]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSDLFULL_BENDEMF](
	[DP_ID] [varchar](8) NULL,
	[CL_ID] [varchar](8) NULL,
	[NAME] [varchar](250) NULL,
	[SNAME] [varchar](45) NULL,
	[TNAME] [varchar](45) NULL,
	[FHName] [varchar](45) NULL,
	[Occ] [varchar](10) NULL,
	[Bank_ID] [varchar](30) NULL,
	[Client_Type] [varchar](7) NULL,
	[Cl_Category] [varchar](8) NULL,
	[Client_Sub_Type] [varchar](5) NULL,
	[Status_Cl_Account] [varchar](6) NULL,
	[Minor_Indi] [varchar](10) NULL,
	[BANKACCNO] [varchar](30) NULL,
	[BANKACCTYPE] [varchar](13) NULL,
	[BANKNAME] [varchar](135) NULL,
	[MICR] [varchar](9) NULL,
	[IFSC] [varchar](11) NULL,
	[FHOLD_PAN] [varchar](30) NULL,
	[FHPANSTAT] [varchar](8) NULL,
	[SHOLD_PAN] [varchar](30) NULL,
	[SHPANSTAT] [varchar](8) NULL,
	[THOLD_PAN] [varchar](30) NULL,
	[THPANSTAT] [varchar](8) NULL,
	[RBIAPP] [varchar](10) NULL,
	[RBIREF] [varchar](50) NULL,
	[SEBIREGN] [varchar](24) NULL,
	[ADD1] [varchar](36) NULL,
	[ADD2] [varchar](36) NULL,
	[ADD3] [varchar](36) NULL,
	[ADD4] [varchar](36) NULL,
	[PINCODE] [varchar](10) NULL,
	[PHONE] [varchar](24) NULL,
	[FAX] [varchar](24) NULL,
	[BNKADD1] [varchar](36) NULL,
	[BNKADD2] [varchar](36) NULL,
	[BNKADD3] [varchar](36) NULL,
	[BNKADD4] [varchar](36) NULL,
	[BNKPIN] [varchar](10) NULL,
	[ACHOLD] [varchar](16) NULL,
	[EMAILID] [varchar](50) NULL,
	[rem] [varchar](1500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nsdlfullbendem]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nsdlfullbendem](
	[REM] [varchar](2000) NULL,
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
	[FIRST_HOLDER_EMAIL_ID] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSE_BID01]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSE_BID01](
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
/****** Object:  Table [dbo].[NSE_BIDGACMDV]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSE_BIDGACMDV](
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
	[Username1] [nvarchar](50) NULL,
	[BANK_CODE] [varchar](5) NULL,
	[BANK_NAME] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSE_BIDGACMEQ]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSE_BIDGACMEQ](
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
	[Username1] [nvarchar](50) NULL,
	[BANK_CODE] [varchar](5) NULL,
	[BANK_NAME] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSEBIDSUMMARY_GACMDV02]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSEBIDSUMMARY_GACMDV02](
	[exchg] [varchar](4) NULL,
	[BANK NAME] [varchar](100) NULL,
	[BANK CODE] [varchar](4) NULL,
	[No.of.Bids] [int] NULL,
	[Applied_Shares] [int] NULL,
	[appl_Amount_received] [decimal](38, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSEBIDSUMMARY_GACMEQ01]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSEBIDSUMMARY_GACMEQ01](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](150) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[DPIDCLID] [varchar](16) NULL,
	[DEPOSITORYFLAG] [varchar](4) NULL,
	[bank_code] [varchar](4) NULL,
	[bank_name] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSEBIDSUMMARY_GACMEQ02]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSEBIDSUMMARY_GACMEQ02](
	[exchg] [varchar](4) NULL,
	[BANK NAME] [varchar](100) NULL,
	[BANK CODE] [varchar](4) NULL,
	[No.of.Bids] [int] NULL,
	[Applied_Shares] [int] NULL,
	[appl_Amount_received] [decimal](38, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ntemp1]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ntemp1](
	[ftemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pincode_master]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[PINEXT]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PINEXT](
	[CITY] [varchar](20) NULL,
	[PIN_NO] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PINMAST]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[RE_AIL002]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RE_AIL002](
	[RERDSLNO] [int] NULL,
	[DPID] [varchar](8) NULL,
	[FOLIO] [varchar](8) NULL,
	[STATUS] [int] NULL,
	[BTYPE] [int] NULL,
	[BTAC] [int] NULL,
	[OC] [int] NULL,
	[NAME] [varchar](100) NULL,
	[FNAME] [varchar](100) NULL,
	[JH1] [varchar](100) NULL,
	[JH2] [varchar](100) NULL,
	[FHOLD_PAN] [varchar](15) NULL,
	[SHOLD_PAN] [varchar](15) NULL,
	[THOLD_PAN] [varchar](15) NULL,
	[BACNO] [varchar](100) NULL,
	[BNAME] [varchar](100) NULL,
	[SHARES] [int] NULL,
	[MICR] [varchar](20) NULL,
	[IFSC] [varchar](20) NULL,
	[DPIDCLID] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RE_CONA002]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RE_CONA002](
	[RERDSLNO] [int] NULL,
	[DPID] [varchar](8) NULL,
	[FOLIO] [varchar](8) NULL,
	[STATUS] [int] NULL,
	[BTYPE] [int] NULL,
	[BTAC] [int] NULL,
	[OC] [int] NULL,
	[NAME] [varchar](100) NULL,
	[FNAME] [varchar](100) NULL,
	[JH1] [varchar](100) NULL,
	[JH2] [varchar](100) NULL,
	[FHOLD_PAN] [varchar](15) NULL,
	[SHOLD_PAN] [varchar](15) NULL,
	[THOLD_PAN] [varchar](15) NULL,
	[BACNO] [varchar](100) NULL,
	[BNAME] [varchar](100) NULL,
	[SHARES] [int] NULL,
	[MICR] [varchar](20) NULL,
	[IFSC] [varchar](20) NULL,
	[DPIDCLID] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REARUNJYO]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REARUNJYO](
	[DPID] [varchar](8) NULL,
	[FOLIO] [varchar](8) NULL,
	[NAME] [varchar](100) NULL,
	[SHARES] [int] NULL,
	[ESHARES] [numeric](18, 2) NULL,
	[EMAILID] [varchar](100) NULL,
	[dpidclid] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RECL_AIL002]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECL_AIL002](
	[RERDSLNO] [int] NULL,
	[DPIDCLID] [varchar](16) NULL,
	[SHARES] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RECL_CONA002]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECL_CONA002](
	[RERDSLNO] [int] NULL,
	[DPIDCLID] [varchar](16) NULL,
	[SHARES] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RETIERRA]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RETIERRA](
	[DPID] [varchar](8) NULL,
	[FOLIO] [varchar](8) NULL,
	[NAME] [varchar](100) NULL,
	[SHARES] [int] NULL,
	[ESHARES] [numeric](18, 2) NULL,
	[FSHARES] [numeric](18, 2) NULL,
	[emailid1] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sandur_bonus_nsdl_normal_file]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[sandur_bonus_nsdl_normal_file_DT]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[sandur_bonus_nsdl_normal_file_HD]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[SandurBonusRejFileHD]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[SCCB_BankList]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[SCCB_BankMaster]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[SCCB_RejectionFile01F]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[SCCB_SuccessFile01F]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[SCCB_UplFile01F]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[Smaildata]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Smaildata](
	[Name] [nvarchar](50) NULL,
	[DOB] [date] NULL,
	[Email] [nvarchar](150) NULL,
	[Mob] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TA24419]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA24419](
	[REC_TYPE] [nvarchar](255) NULL,
	[LIN_NUM] [float] NULL,
	[DPID] [nvarchar](255) NULL,
	[FOLIO] [nvarchar](255) NULL,
	[STATUS] [float] NULL,
	[BTYPE] [float] NULL,
	[BTAC] [float] NULL,
	[OC] [float] NULL,
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
	[B_STATUS] [float] NULL,
	[SHARES] [float] NULL,
	[LSHARES] [float] NULL,
	[BENBLKPO] [float] NULL,
	[PLSHARES] [float] NULL,
	[PLGWTLCK] [float] NULL,
	[PLGUNCFP] [float] NULL,
	[BPLUNLK] [float] NULL,
	[BREMTPO] [float] NULL,
	[BDMTLOCK] [float] NULL,
	[CMIDDPO] [float] NULL,
	[CMPOOLPO] [float] NULL,
	[CCSETLPO] [float] NULL,
	[MICR] [nvarchar](255) NULL,
	[IFSC] [nvarchar](255) NULL,
	[BAC_TYPE] [float] NULL,
	[FILER1] [nvarchar](255) NULL,
	[MAPID1] [nvarchar](255) NULL,
	[MAPID2] [nvarchar](255) NULL,
	[MAPID3] [nvarchar](255) NULL,
	[EMAILID1] [nvarchar](255) NULL,
	[EMAILID2] [nvarchar](255) NULL,
	[EMAILID3] [nvarchar](255) NULL,
	[RGESS] [nvarchar](255) NULL,
	[NDUFSH] [float] NULL,
	[NDULSH] [float] NULL,
	[NDUUCF] [float] NULL,
	[NDUUCL] [float] NULL,
	[STATCODE] [nvarchar](255) NULL,
	[LEITEMP] [nvarchar](255) NULL,
	[COUNCODE] [nvarchar](255) NULL,
	[FHOLD_PF] [nvarchar](255) NULL,
	[SHOLD_PF] [nvarchar](255) NULL,
	[THOLD_PF] [nvarchar](255) NULL,
	[FILER2] [nvarchar](255) NULL,
	[FILERR] [nvarchar](255) NULL,
	[STATUS2] [nvarchar](255) NULL,
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
	[AC_OPEN_DA] [nvarchar](255) NULL,
	[dpidclid] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAL_CDSLFB]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAL_CDSLFB](
	[ISIN] [nvarchar](255) NULL,
	[BOID] [nvarchar](255) NULL,
	[NAME] [nvarchar](255) NULL,
	[JH1] [nvarchar](255) NULL,
	[JH2] [nvarchar](255) NULL,
	[GNAME] [nvarchar](255) NULL,
	[NNAME] [nvarchar](255) NULL,
	[FHNAME] [nvarchar](255) NULL,
	[GENDER] [nvarchar](255) NULL,
	[DOB] [nvarchar](255) NULL,
	[ACCSTATUS] [nvarchar](255) NULL,
	[BOCATEGORY] [nvarchar](255) NULL,
	[BOPRODUCT] [nvarchar](255) NULL,
	[CUST_TYPE] [nvarchar](255) NULL,
	[BOSUBSTATUS] [nvarchar](255) NULL,
	[OCC] [nvarchar](255) NULL,
	[PAN1] [nvarchar](255) NULL,
	[PAN2] [nvarchar](255) NULL,
	[PAN3] [nvarchar](255) NULL,
	[BOFREEZEFLAG] [nvarchar](255) NULL,
	[FRZREASONCODE] [nvarchar](255) NULL,
	[ISINSTAT] [nvarchar](255) NULL,
	[ACCOPDATE] [nvarchar](255) NULL,
	[SEBIREGN] [nvarchar](255) NULL,
	[SEIDNO] [nvarchar](255) NULL,
	[CHCIDNO] [nvarchar](255) NULL,
	[CMID] [nvarchar](255) NULL,
	[TRID] [nvarchar](255) NULL,
	[RBIREGN] [nvarchar](255) NULL,
	[RBIAPRDATE] [nvarchar](255) NULL,
	[TDSNO] [nvarchar](255) NULL,
	[Nationality] [nvarchar](255) NULL,
	[BOADD1] [nvarchar](255) NULL,
	[BOADD2] [nvarchar](255) NULL,
	[BOADD3] [nvarchar](255) NULL,
	[BOCITY] [nvarchar](255) NULL,
	[BOSTATE] [nvarchar](255) NULL,
	[BOCOUNTRY] [nvarchar](255) NULL,
	[BOPIN] [nvarchar](255) NULL,
	[PBOADD1] [nvarchar](255) NULL,
	[PBOADD2] [nvarchar](255) NULL,
	[PBOADD3] [nvarchar](255) NULL,
	[PBOCITY] [nvarchar](255) NULL,
	[PBOSTATE] [nvarchar](255) NULL,
	[PBOCOUNTRY] [nvarchar](255) NULL,
	[PBOPIN] [nvarchar](255) NULL,
	[MOBILE1] [nvarchar](255) NULL,
	[TEL1] [nvarchar](255) NULL,
	[FAXNO] [nvarchar](255) NULL,
	[EMAILID] [nvarchar](255) NULL,
	[ECSFLAG] [nvarchar](255) NULL,
	[DIVMICR] [nvarchar](255) NULL,
	[DIVIFSC] [nvarchar](255) NULL,
	[BANKNAME] [nvarchar](255) NULL,
	[BANKADD1] [nvarchar](255) NULL,
	[BANKADD2] [nvarchar](255) NULL,
	[BANKADD3] [nvarchar](255) NULL,
	[BANKCITY] [nvarchar](255) NULL,
	[BANKSTATE] [nvarchar](255) NULL,
	[BANKCOUNTRY] [nvarchar](255) NULL,
	[BANKPIN] [nvarchar](255) NULL,
	[DIVBANKCUR] [nvarchar](255) NULL,
	[DIVBKACTYPE] [nvarchar](255) NULL,
	[DIVBKACCNO] [nvarchar](255) NULL,
	[TOTHOLD] [float] NULL,
	[TOTLOCKIN] [float] NULL,
	[PLEDGEBAL] [float] NULL,
	[SAFEKEEPBAL] [float] NULL,
	[EARMARKBAL] [float] NULL,
	[PDREMATCONF] [float] NULL,
	[FREEBALANCE] [float] NULL,
	[PDEMATV] [float] NULL,
	[PDEMACONF] [float] NULL,
	[DOBENPOS] [nvarchar](255) NULL,
	[PLEDGESBAL] [float] NULL,
	[REMAGALINBAL] [float] NULL,
	[ARFLAG] [nvarchar](255) NULL,
	[UID1] [nvarchar](255) NULL,
	[UID2] [nvarchar](255) NULL,
	[UID3] [nvarchar](255) NULL,
	[PANGUARD] [nvarchar](255) NULL,
	[UDIGUARD] [nvarchar](255) NULL,
	[CUSTPMSEMAIL] [nvarchar](255) NULL,
	[LEI] [nvarchar](255) NULL,
	[LEIEXPDT] [nvarchar](255) NULL,
	[FILLER1] [nvarchar](255) NULL,
	[BORGESSFLAG] [nvarchar](255) NULL,
	[MOOPERA] [nvarchar](255) NULL,
	[COMMPRE] [nvarchar](255) NULL,
	[FILLER2] [nvarchar](255) NULL,
	[FILLER3] [nvarchar](255) NULL,
	[NOMGNAME1] [nvarchar](255) NULL,
	[NOMRELA1] [nvarchar](255) NULL,
	[NOMPERC1] [nvarchar](255) NULL,
	[NOM2NAME] [nvarchar](255) NULL,
	[NOMGNAME2] [nvarchar](255) NULL,
	[NOMRELA2] [nvarchar](255) NULL,
	[NOMPERC2] [nvarchar](255) NULL,
	[NOM3NAME] [nvarchar](255) NULL,
	[NOMGNAME3] [nvarchar](255) NULL,
	[NOMRELA3] [nvarchar](255) NULL,
	[NOMPERC3] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAL_NSDLFB]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAL_NSDLFB](
	[REC_TYPE] [nvarchar](255) NULL,
	[LIN_NUM] [nvarchar](255) NULL,
	[DPID] [nvarchar](255) NULL,
	[FOLIO] [nvarchar](255) NULL,
	[STATUS] [nvarchar](255) NULL,
	[BTYPE] [nvarchar](255) NULL,
	[BTAC] [nvarchar](255) NULL,
	[OC] [nvarchar](255) NULL,
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
	[B_STATUS] [nvarchar](255) NULL,
	[SHARES] [float] NULL,
	[LSHARES] [nvarchar](255) NULL,
	[BENBLKPO] [nvarchar](255) NULL,
	[PLSHARES] [nvarchar](255) NULL,
	[PLGWTLCK] [nvarchar](255) NULL,
	[PLGUNCFP] [nvarchar](255) NULL,
	[BPLUNLK] [nvarchar](255) NULL,
	[BREMTPO] [nvarchar](255) NULL,
	[BDMTLOCK] [nvarchar](255) NULL,
	[CMIDDPO] [nvarchar](255) NULL,
	[CMPOOLPO] [nvarchar](255) NULL,
	[CCSETLPO] [nvarchar](255) NULL,
	[MICR] [nvarchar](255) NULL,
	[IFSC] [nvarchar](255) NULL,
	[BAC_TYPE] [nvarchar](255) NULL,
	[FILER1] [nvarchar](255) NULL,
	[MAPID1] [nvarchar](255) NULL,
	[MAPID2] [nvarchar](255) NULL,
	[MAPID3] [nvarchar](255) NULL,
	[EMAILID1] [nvarchar](255) NULL,
	[EMAILID2] [nvarchar](255) NULL,
	[EMAILID3] [nvarchar](255) NULL,
	[RGESS] [nvarchar](255) NULL,
	[NDUFSH] [nvarchar](255) NULL,
	[NDULSH] [nvarchar](255) NULL,
	[NDUUCF] [nvarchar](255) NULL,
	[NDUUCL] [nvarchar](255) NULL,
	[STATCODE] [nvarchar](255) NULL,
	[COUNCODE] [nvarchar](255) NULL,
	[LEITEMP] [nvarchar](255) NULL,
	[FHOLD_PF] [nvarchar](255) NULL,
	[SHOLD_PF] [nvarchar](255) NULL,
	[THOLD_PF] [nvarchar](255) NULL,
	[PRMKMP] [nvarchar](255) NULL,
	[FPICAT] [nvarchar](255) NULL,
	[FILERR] [nvarchar](255) NULL,
	[STATUS2] [nvarchar](255) NULL,
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
	[AC_OPEN_DA] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAL_NSDLFB18032024]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAL_NSDLFB18032024](
	[REC_TYPE] [nvarchar](255) NULL,
	[LIN_NUM] [nvarchar](255) NULL,
	[DPID] [nvarchar](255) NULL,
	[FOLIO] [nvarchar](255) NULL,
	[STATUS] [nvarchar](255) NULL,
	[BTYPE] [nvarchar](255) NULL,
	[BTAC] [nvarchar](255) NULL,
	[OC] [nvarchar](255) NULL,
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
	[B_STATUS] [nvarchar](255) NULL,
	[SHARES] [float] NULL,
	[LSHARES] [nvarchar](255) NULL,
	[BENBLKPO] [nvarchar](255) NULL,
	[PLSHARES] [nvarchar](255) NULL,
	[PLGWTLCK] [nvarchar](255) NULL,
	[PLGUNCFP] [nvarchar](255) NULL,
	[BPLUNLK] [nvarchar](255) NULL,
	[BREMTPO] [nvarchar](255) NULL,
	[BDMTLOCK] [nvarchar](255) NULL,
	[CMIDDPO] [nvarchar](255) NULL,
	[CMPOOLPO] [nvarchar](255) NULL,
	[CCSETLPO] [nvarchar](255) NULL,
	[MICR] [nvarchar](255) NULL,
	[IFSC] [nvarchar](255) NULL,
	[BAC_TYPE] [nvarchar](255) NULL,
	[FILER1] [nvarchar](255) NULL,
	[MAPID1] [nvarchar](255) NULL,
	[MAPID2] [nvarchar](255) NULL,
	[MAPID3] [nvarchar](255) NULL,
	[EMAILID1] [nvarchar](255) NULL,
	[EMAILID2] [nvarchar](255) NULL,
	[EMAILID3] [nvarchar](255) NULL,
	[RGESS] [nvarchar](255) NULL,
	[NDUFSH] [nvarchar](255) NULL,
	[NDULSH] [nvarchar](255) NULL,
	[NDUUCF] [nvarchar](255) NULL,
	[NDUUCL] [nvarchar](255) NULL,
	[STATCODE] [nvarchar](255) NULL,
	[COUNCODE] [nvarchar](255) NULL,
	[LEITEMP] [nvarchar](255) NULL,
	[FHOLD_PF] [nvarchar](255) NULL,
	[SHOLD_PF] [nvarchar](255) NULL,
	[THOLD_PF] [nvarchar](255) NULL,
	[PRMKMP] [nvarchar](255) NULL,
	[FPICAT] [nvarchar](255) NULL,
	[FILERR] [nvarchar](255) NULL,
	[STATUS2] [nvarchar](255) NULL,
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
	[AC_OPEN_DA] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp1]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp1](
	[BANK_NAME] [varchar](100) NULL,
	[BANK_CODE] [varchar](4) NULL,
	[TOTAL_BIDS_COUNT] [int] NULL,
	[Total_Applied_Shares] [int] NULL,
	[Total_Applied_Amount] [decimal](38, 2) NULL,
	[Stock_Exchange] [varchar](6) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMP123]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP123](
	[RowN] [bigint] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp1234]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp1234](
	[ftemp1] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp1235]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp1235](
	[Ctemp1] [varchar](292) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp1236]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp1236](
	[ctemp1] [varchar](80) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMP123c]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP123c](
	[RowN] [bigint] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp2]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp2](
	[BANK_NAME] [varchar](100) NULL,
	[BANK_CODE] [varchar](4) NULL,
	[TOTAL_BIDS_COUNT] [int] NULL,
	[Total_Applied_Shares] [int] NULL,
	[Total_Applied_Amount] [decimal](38, 2) NULL,
	[Stock_Exchange] [varchar](6) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempbsebidGACMDV]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tempbsebidGACMDV](
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
	[DPIDCLID] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempbsebidGACMEQ]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tempbsebidGACMEQ](
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
	[DPIDCLID] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempbsebidnow]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tempbsebidnow](
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
	[DPIDCLID] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempnsdlhead01]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[TIERRA_ASBA]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIERRA_ASBA](
	[BANKCODE] [varchar](20) NULL,
	[BANKNAME] [varchar](100) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIERRA_ASBA_REFUND]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIERRA_ASBA_REFUND](
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
/****** Object:  Table [dbo].[TIERRA_BID]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIERRA_BID](
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
/****** Object:  Table [dbo].[TIERRA_BIDFINAL]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIERRA_BIDFINAL](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[ORDERNO] [varchar](30) NULL,
	[BOOKID] [varchar](20) NULL,
	[BRANCH] [varchar](50) NULL,
	[USR_ID] [varchar](15) NULL,
	[SYMBOL] [varchar](20) NULL,
	[APPLSHARES] [int] NULL,
	[PRICE] [numeric](12, 2) NULL,
	[APPL_NO] [varchar](25) NULL,
	[Dep] [varchar](20) NULL,
	[DP_ID] [varchar](16) NULL,
	[CL_ID] [varchar](16) NULL,
	[CATEGORY] [varchar](15) NULL,
	[APPLAMOUNT] [numeric](18, 2) NULL,
	[CLNAME] [varchar](100) NULL,
	[PAN_No] [varchar](40) NULL,
	[BankName] [varchar](100) NULL,
	[Loc] [varchar](50) NULL,
	[AcNo] [varchar](30) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BRefno] [varchar](50) NULL,
	[EDATE] [varchar](30) NULL,
	[MODDATE] [varchar](30) NULL,
	[SBCODE] [varchar](20) NULL,
	[MEMTYPE] [varchar](20) NULL,
	[ACCODE] [varchar](20) NULL,
	[EXCHG] [varchar](4) NULL,
	[CRU_FLAG] [varchar](5) NULL,
	[COLLBANK] [varchar](50) NULL,
	[BIDDPID] [varchar](16) NULL,
	[BIDPAN] [varchar](20) NULL,
	[RDKEY] [varchar](20) NULL,
	[MATCHING_REMARKS] [varchar](30) NULL,
	[TXNS] [varchar](5) NULL,
	[BEN_NAME] [varchar](100) NULL,
	[BEN_PAN] [varchar](20) NULL,
	[BEN_JT1PAN] [varchar](20) NULL,
	[BEN_JT2PAN] [varchar](20) NULL,
	[REJN_REASON] [varchar](100) NULL,
	[BASIS] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIERRA_BM]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIERRA_BM](
	[CODE] [varchar](5) NULL,
	[BANKNAME] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIERRA_CAFMAS]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIERRA_CAFMAS](
	[REJECT] [varchar](20) NULL,
	[PRM] [varchar](20) NULL,
	[BOUNCE] [varchar](20) NULL,
	[ISIN] [varchar](12) NULL,
	[LOT] [varchar](10) NULL,
	[BRANCH] [varchar](20) NULL,
	[IHNO] [varchar](10) NULL,
	[BANKREF] [varchar](50) NULL,
	[CAFNO] [varchar](10) NULL,
	[APPNO] [varchar](30) NULL,
	[DPID] [varchar](16) NULL,
	[FOLIO] [varchar](16) NULL,
	[STATUS] [varchar](20) NULL,
	[BTYPE] [varchar](10) NULL,
	[BTAC] [varchar](10) NULL,
	[NAME] [varchar](140) NULL,
	[FNAME] [varchar](140) NULL,
	[ADDR1] [varchar](50) NULL,
	[ADDR2] [varchar](50) NULL,
	[ADDR3] [varchar](50) NULL,
	[ADDR4] [varchar](50) NULL,
	[PIN] [varchar](20) NULL,
	[PHONE1] [varchar](25) NULL,
	[JH1] [varchar](140) NULL,
	[JH2] [varchar](140) NULL,
	[FHOLD_PAN] [varchar](20) NULL,
	[SHOLD_PAN] [varchar](20) NULL,
	[THOLD_PAN] [varchar](20) NULL,
	[EMAILID1] [varchar](100) NULL,
	[ASBA] [varchar](50) NULL,
	[BACNO] [varchar](50) NULL,
	[BNAME] [varchar](100) NULL,
	[MICR] [varchar](50) NULL,
	[BAC_TYPE] [varchar](20) NULL,
	[IFSC] [varchar](20) NULL,
	[SHARES] [varchar](18) NULL,
	[ESHARES] [varchar](18) NULL,
	[SHAPP] [varchar](18) NULL,
	[AMTPAID] [varchar](18) NULL,
	[SHALL] [varchar](18) NULL,
	[AMTADJ] [varchar](18) NULL,
	[AMTREF] [varchar](18) NULL,
	[REJCODE] [varchar](18) NULL,
	[ALLOT] [varchar](18) NULL,
	[RLNO] [varchar](18) NULL,
	[SHABY] [varchar](18) NULL,
	[REMARK] [varchar](100) NULL,
	[EDATE] [varchar](10) NULL,
	[ALLDATE] [varchar](10) NULL,
	[FSHARES] [varchar](18) NULL,
	[CLID2] [varchar](20) NULL,
	[DPIDCLID] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIERRA_RECLDATA]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIERRA_RECLDATA](
	[RERDSLNO] [int] NULL,
	[DPIDCLID] [varchar](16) NULL,
	[SHARES] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIERRA_REDATA]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIERRA_REDATA](
	[DPID] [varchar](8) NULL,
	[FOLIO] [varchar](8) NULL,
	[NAME] [varchar](100) NULL,
	[SHARES] [int] NULL,
	[ESHARES] [numeric](18, 2) NULL,
	[FSHARES] [numeric](18, 2) NULL,
	[emailid1] [varchar](100) NULL,
	[dpidclid] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TOTNSEBSE]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  Table [dbo].[totnsebse2]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[totnsebse2](
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
/****** Object:  StoredProcedure [dbo].[add2filecdslhddt]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  StoredProcedure [dbo].[bcheck1]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[bcheck1]
as
begin
		declare @counter int,@reccount int,@mfol varchar(8),@mshr int,@mshr1 int
		select mfolio,count(*) as MFOLIOREC into #temp1 from bconsshrfile group by mfolio
		select mfolio,SUM(mshares) as totshr, count(*) as MFOLIOREC into #temp1a from bconsshrfile group by mfolio,mshares
		select mfolio,count(*) as MFOLIOREC into #temp2 from borigshrfile group by mfolio
		select mfolio,sum(mshares) as totshr, count(*) as MFOLIOREC into #temp2a from borigshrfile group by mfolio,mshares
		select * from #temp1A
		select * from #temp2A
		set @reccount = (select mfoliorec from #temp1)
		while @counter <= @reccount
			begin
				set @mfol = (select mfolio from bconsshrfile)
				set @mshr1 = (select mshares from borigshrfile)
				while @mshr <= (select mshares from borigshrfile)
					print 'same folio' + str(@mfol) +STR(@MSHR1) 
					print 'rajka' 
			end
end
GO
/****** Object:  StoredProcedure [dbo].[cdslhead01]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  StoredProcedure [dbo].[MASTERRIGHTSPRO]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  StoredProcedure [dbo].[MASTERRIGHTSPROCDSL]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  StoredProcedure [dbo].[MASTERRIGHTSPRONSDL]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  StoredProcedure [dbo].[sccb_upl01f]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_BIDPROGACMDV]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
-- Brahmajee.S
-- Bid Process Both BSE & NSE and create a Summary Files - EQUITY
-- Source BSE & NSE BID FILES
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--File 001. D:\VRights\GACMDV\bsebid.dat									[ BSE BID FILE]
--File 002. D:\VRIGHTS\BANKMASTER\BANK.csv									[ BANK MASTER ]
--File 003. D:\VRights\GACMDV\ASBA_ADROITINFR_16FEB2024171952_BANK_01.csv   [ NSE BID FILE]
--D:\VRIGHTS\GACMDV\BSEBID_GACMDV_20240725123517							[ BSE BID SUMMARY FILE ]
--D:\VRIGHTS\GACMDV\NSEBID_GACMDV_20240725123517							[ NSE BID SUMMARY FILE ]
--D:\VRIGHTS\GACMDV\TOTBID_GACMDV_20240725123517							[ TOTAL BID SUMMARY FILE ]
--BANK MASTER - D:\VRIGHTS\BANKMASTER\BANK.csv
--SELECT NAME as 'List Of Tables' FROM SYSOBJECTS WHERE ID IN (SELECT SD.DEPID FROM SYSOBJECTS SO,SYSDEPENDS SD WHERE SO.NAME = 'SP_BIDPROGACMDV' AND SD.ID = SO.ID)
CREATE Procedure [dbo].[SP_BIDPROGACMDV]
with 
RECOMPILE
as
begin
	IF OBJECT_ID ( 'BSEBIDGACMDV', 'U' ) IS NOT NULL  DROP TABLE BSEBIDGACMDV
	select * into BSEBIDGACMDV from bsebidsample
	TRUNCATE TABLE BSEBIDGACMDV
	BULK INSERT BSEBIDGACMDV
		FROM 'D:\VRights\GACMDV\bsebid.dat' 
		WITH 
		(  
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',  
			ROWTERMINATOR = '\n',  
			BATCHSIZE=10
		)
	ALTER TABLE BSEBIDGACMDV ADD exchg varchar(3),VBANK_NAME VARCHAR(100),VBANK_CODE VARCHAR(4),DPIDCLID VARCHAR(16)
	UPDATE BSEBIDGACMDV	SET CLIENTNAME =''	WHERE CLIENTNAME IS NULL
	UPDATE BSEBIDGACMDV	SET BANK_NAME = ''  WHERE BANK_NAME IS NULL
	UPDATE BSEBIDGACMDV	SET	LOCATION  =''	WHERE LOCATION IS NULL
	UPDATE BSEBIDGACMDV	SET Account_Number ='' WHERE Account_Number IS NULL
	UPDATE BSEBIDGACMDV	SET SUBBROKERCODE_REF_NO ='' WHERE SUBBROKERCODE_REF_NO IS NULL
	IF OBJECT_ID ( 'BIDCONT01GACMDV', 'U' ) IS NOT NULL  DROP TABLE BIDCONT01GACMDV
	SELECT COUNT(*) AS NOOFRECORDS, SUM(CONVERT(INT,QUANTITY)) TOTQTYAPPLIED,SUM(CAST(AMOUNT AS NUMERIC)) AS TOTAMTRECD,'BSE' AS EXCHG  INTO BIDCONT01GACMDV FROM BSEBIDGACMDV 	
	--SELECT * FROM BIDCONT01GACMDV
	--SELECT * FROM BSEBIDGACMDV 	
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	--BANK MASTER DATA
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	IF OBJECT_ID ( 'MST_BM', 'U' ) IS NOT NULL  DROP TABLE MST_BM
	    CREATE TABLE MST_BM (CODE VARCHAR(5),BANKNAME VARCHAR(100))
		BULK INSERT MST_BM
		FROM 'D:\VRIGHTS\BANKMASTER\BANK.csv' 
		WITH 
		(  
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=50
		)
		--select * from BSEBIDGACMDV
		UPDATE BSEBIDGACMDV set EXCHG = 'BSE'
--		ALTER TABLE BSEBIDGACMDV ADD VBANK_NAME VARCHAR(100) ,VBANK_CODE VARCHAR(4), DPIDCLID VARCHAR(16)
		update a set a.VBANK_NAME = b.BANKNAME,a.VBANK_CODE  = b.CODE FROM  BSEBIDGACMDV a 
				join MST_BM b  
				ON trim(a.usr_id) = trim(b.code)

	--select * from BSEBIDGACMDV where Vbank_name is null
	--EXECUTE ONCE ANY RECORDS DISPLAYED
	--select usr_id,substring(ifsccode,1,4) from BSEBIDGACMDV where Vbank_name is null group by usr_id,substring(IFSCCode,1,4)
	select * from mst_bm
	update BSEBIDGACMDV set vbank_code = '5027', vbank_name = 'Indian Bank'									where usr_id = 'VIGNESH'	and substring(IFSCCode,1,4) = 'IDIB'
	update BSEBIDGACMDV set vbank_code = '5008', vbank_name = 'Axis Bank Ltd'								where usr_id = 'LK447360'	and substring(IFSCCode,1,4) = 'UTIB'
	update BSEBIDGACMDV set vbank_code = '5014', vbank_name = 'HSBC Ltd'									where usr_id = 'IPOOPS16'	and substring(IFSCCode,1,4) = 'HSBC'
	update BSEBIDGACMDV set vbank_code = '5029', vbank_name = 'Canara Bank'									where usr_id = 'NAPIUSER'	and substring(IFSCCode,1,4) = 'CNRB'
	update BSEBIDGACMDV set vbank_code = '5032', vbank_name = 'Standard Chartered Bank'						where usr_id = '1165498'	and substring(IFSCCode,1,4) = 'SCBL'
	update BSEBIDGACMDV set vbank_code = '5038', vbank_name = 'Tamilnad Mercantile Bank Ltd'				where usr_id = '4849'		and substring(IFSCCode,1,4) = 'TMBL'
	update BSEBIDGACMDV set vbank_code = '5039', vbank_name = 'Nutan Nagarik Sahakari Bank Ltd'				where usr_id = 'JINAL'		and substring(IFSCCode,1,4) = 'NNSB'
	update BSEBIDGACMDV set vbank_code = '5042', vbank_name = 'The South Indian Bank Ltd'					where usr_id = 'BR0024'		and substring(IFSCCode,1,4) = 'SIBL'
	update BSEBIDGACMDV set vbank_code = '5045', vbank_name = 'DBS Bank Ltd'								where usr_id = 'ASHISH'		and substring(IFSCCode,1,4) = 'DBSS'
	update BSEBIDGACMDV set vbank_code = '5051', vbank_name = 'The Surat Peoples Coop Bank Ltd'				where usr_id = 'MAA416'		and substring(IFSCCode,1,4) = 'SPCB'
	update BSEBIDGACMDV set vbank_code = '5054', vbank_name = 'Karnataka Bank Ltd' 							where usr_id = 'COMSEC'		and substring(IFSCCode,1,4) = 'KARB'
	update BSEBIDGACMDV set vbank_code = '5057', vbank_name = 'Janta Sahakari Bank Ltd'						where usr_id = 'MCV1365'	and substring(IFSCCode,1,4) = 'JSBP'
	update BSEBIDGACMDV set vbank_code = '5060', vbank_name = 'The Jammu and Kashmir Bank Limited'			where usr_id = '8663'		and substring(IFSCCode,1,4) = 'JAKA'
	update BSEBIDGACMDV set vbank_code = '5064', vbank_name = 'Mehsana Urban Coop Bank Ltd'					where usr_id = 'WEBAPI'		and substring(IFSCCode,1,4) = '0001'
	update BSEBIDGACMDV set vbank_code = '5067', vbank_name = 'Bandhan Bank Ltd'							where usr_id = 'SHUBHAM_D'	and substring(IFSCCode,1,4) = 'BDBL'
	update BSEBIDGACMDV set vbank_code = '5069', vbank_name = 'Au Small Finance Bank '						where usr_id = 'API1'		and substring(IFSCCode,1,4) = 'AUBL'
	--select * from BSEBIDGACMDV where VBANK_CODE IS NULL
	--select usr_id,substring(ifsccode,1,4) from BSEBIDGACMDV where vbank_name is null group by usr_id,substring(IFSCCode,1,4)
	--if nil recods displays [ok] 
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	--summary of bids stock exchange wise & bank wise
	--select * from BSEBIDGACMDV WHERE DP_ID NOT LIKE 'I%' AND LEN(CLIENT_ID_BENEFICIARY_ID) = 16
	UPDATE BSEBIDGACMDV SET DPIDCLID = TRIM(DP_ID)+TRIM(CLIENT_ID_BENEFICIARY_ID) WHERE DP_ID LIKE 'IN%'
	UPDATE BSEBIDGACMDV SET DPIDCLID = TRIM(CLIENT_ID_BENEFICIARY_ID) WHERE DP_ID NOT LIKE 'I%' AND LEN(CLIENT_ID_BENEFICIARY_ID) = 16
	UPDATE BSEBIDGACMDV SET DPIDCLID = TRIM(CLIENT_ID_BENEFICIARY_ID) WHERE LEN(CLIENT_ID_BENEFICIARY_ID) = 16 and dpidclid is null
	--IF OBJECT_ID ( 'CDSLNSDLBD', 'U' ) IS NOT NULL  DROP TABLE CDSLNSDLBD
	--SELECT DPIDCLID INTO CDSLNSDLBD  FROM BSEBIDGACMDV GROUP BY DPIDCLID  
	--SELECT SUBSTRING(DPIDCLID,1,8)+','+SUBSTRING(DPIDCLID,9,8)+',IN9737B01023' as 'NsdlBid_Dpid_Clid'  FROM CDSLNSDLBD  WHERE DPIDCLID LIKE 'I%' --280
	--SELECT TRIM(DPIDCLID)  FROM CDSLNSDLBD  WHERE DPIDCLID LIKE 'I%'  ---FOR EXCEL--280
	--NSDL
	--exec VCCIPL.DBO.sp_NSDLBENDEMF --[INPUT FILE D:\BENDEM\NSDL\NCNVBD001.csv ] [OUTPUT D:\BENDEM\NSDL\IN200537_BENDEM????.TXT]
	--SELECT TRIM(DPIDCLID)+',IN9737B01023' FROM CDSLNSDLBD WHERE DPIDCLID LIKE '1%' GROUP BY DPIDCLID --490
	--SELECT TRIM(DPIDCLID) FROM CDSLNSDLBD WHERE DPIDCLID LIKE '1%' GROUP BY DPIDCLID --384
	----CDSL
	--EXEC VCCIPL.DBO.sp_genAnyCompanyBendemCDSL '1204','IN9737B01023'  --[INPUT:-D:\bendem\CDSLBENDEM.csv][OUTPUT:-D:\BENDEM\CDSL\999999.????.CVF]
	--SELECT	exchg AS [STOCK EXCHANGE],COUNT(*) AS TOTAL_BIDS,SUM(CONVERT(INT,QUANTITY)) AS SHARES_APPLIED, 
	--		SUM(convert(numeric(18,2),AMOUNT)) AS APPLIED_AMOUNT 
	--		FROM BSEBIDGACMDV group by exchg
	IF OBJECT_ID ( 'BIDCONT02GACMDV', 'U' ) IS NOT NULL  DROP TABLE BIDCONT02GACMDV
	SELECT	Vbank_name,Vbank_code,COUNT(*) AS TOTAL_BIDS,SUM(CONVERT(INT,QUANTITY)) AS SHARES_APPLIED, 
			SUM(CAST(AMOUNT AS FLOAT)) AS APPLIED_AMOUNT, 'BSE' AS EXCHG into BIDCONT02GACMDV FROM 
			BSEBIDGACMDV A  group by Vbank_name,Vbank_code order by COUNT(*) DESC
	--IMPORTANT
	--SELECT AMOUNT,TRY_CONVERT(FLOAT,AMOUNT) AS [VARCHAR TO FLOAT] FROM BSEBIDGACMDV
	--SELECT AMOUNT,CAST(AMOUNT AS FLOAT) AS AMTFLOATCOLUMN FROM BSEBIDGACMDV;
	--IMPORTANT
	IF OBJECT_ID ( 'Jtemp1', 'U' ) IS NOT NULL  DROP TABLE Jtemp1
	--select 'BSEBID-BIDGACMDV-FILE-[BIDCONT01GACMDV]' AS [DESCRIPTION],Noofrecords as [No.of.Records],totqtyapplied as [Applied_Shares],
	--CAST(totamtrecd AS decimal(18,2)) as [Appl_Amount_Received],EXCHG from BIDCONT01GACMDV

	select 'BSEBID-BIDGACMDV-BANK-WISE-FILE-[BIDCONT02GACMDV]' as [Description],Vbank_name AS [Bank_Name],Vbank_code AS [Bank_Code],'BSE' AS BSE,
	TOTAL_BIDS AS [Total_Bids_Count],SHARES_APPLIED AS [Total_Applied_Shares], CAST(APPLIED_AMOUNT AS decimal(18,2))  AS [Total_Applied_Amount],
	EXCHG INTO Jtemp1 from BIDCONT02GACMDV order by VBANK_NAME
	--SELECT * FROM BIDCONT02GACMDV 
	
	IF OBJECT_ID ( 'BSEBIDSUMMARY_GACMDV01', 'U' ) IS NOT NULL  DROP TABLE BSEBIDSUMMARY_GACMDV01
	ALTER TABLE Jtemp1 ADD ID INT IDENTITY (1,1)
	--SELECT * FROM JTEMP1
	--UPDATE JTEMP1 SET EXCHG ='BSE'
	select BANK_NAME,BANK_CODE,EXCHG,Total_Bids_Count,Total_Applied_Shares,Total_Applied_Amount  INTO BSEBIDSUMMARY_GACMDV01 From Jtemp1
	--bsesummary-
	--SELECT * FROM BSEBIDSUMMARY_GACMDV01
	DECLARE @cmd varchar(500),@filename1 varchar(100)
	SELECT @filename1 ='BSEBID_GACMDV_'+FORMAT(GETDATE(),'yyyyMMdd')+FORMAT(GETDATE(),'HHmmss')+'.TXT'       
	SET @cmd = 'bcp "SELECT BANK_CODE,BANK_NAME,EXCHG,Total_Bids_Count,Total_Applied_Shares,Total_Applied_Amount FROM IPORIGHTSBONUS.DBO.BSEBIDSUMMARY_GACMDV01" '+ 'queryout D:\VRIGHTS\GACMDV\'+ @filename1 + ' -c -UTF8 -T -Slocalhost -t,'
	EXEC master..xp_cmdshell @cmd
	IF OBJECT_ID ( 'tempbsebidGACMDV', 'U' ) IS NOT NULL  DROP TABLE tempbsebidGACMDV
	select * into tempbsebidGACMDV from BSEBIDGACMDV
--END
--EXEC SP_BIDPROGACMDV1
--ALTER Procedure SP_BIDPROGACMDV1
--with 
--RECOMPILE
--as
--begin

--	IF OBJECT_ID ( 'BSEBIDGACMDV', 'U' ) IS NOT NULL  DROP TABLE BSEBIDGACMDV
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--BID FILE - NSE PROCESS
--IMPORT FROM SOURCE [D:\VRIGHTS\GACMDV\]
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	IF OBJECT_ID ( 'NSE_BIDGACMDV', 'U' ) IS NOT NULL  DROP TABLE NSE_BIDGACMDV
	--SELECT * FROM NSE_BID01
	--SELECT * FROM NSE_BIDGACMDV
	SELECT * INTO NSE_BIDGACMDV FROM NSE_BID01
	TRUNCATE TABLE NSE_BIDGACMDV
	BULK INSERT NSE_BIDGACMDV
	FROM 'D:\VRights\GACMDV\NSEBID.DAT' 
	WITH 
	(  
		FIRSTROW = 0,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=1000
	)
	--SELECT * FROM NSE_BIDGACMDV
	ALTER TABLE NSE_BIDGACMDV ADD BANK_CODE VARCHAR(5),BANK_NAME VARCHAR(100)
	--SELECT * FROM NSE_BIDGACMDV where bank_name is null

	select * from mst_bm

	update NSE_BIDGACMDV  set bank_code = '5038', bank_name = 'Tamilnad Mercantile Bank Ltd'			where username1= 'TMB5097'		and substring(IFSC_Code,1,4) = 'TMBL'
	update NSE_BIDGACMDV  set bank_code = '5070', bank_name = 'IDFC FIRST Bank Ltd'						where username1= 'CB USER 14'	and substring(IFSC_Code,1,4) = 'IDFB'
	update NSE_BIDGACMDV  set bank_code = '5022', bank_name = 'Bank of Maharashtra '					where username1= '30378'		and substring(IFSC_Code,1,4) = 'MAHB'
	
	update NSE_BIDGACMDV  set bank_code = '5027', bank_name = 'Indian Bank'							    where username1= 'VIGNESH'		and substring(IFSC_Code,1,4) = 'IDIB'
	update NSE_BIDGACMDV  set bank_code = '5008', bank_name = 'Axis Bank Ltd'							where username1= 'HK335646'		and substring(IFSC_Code,1,4) = 'UTIB'
	update NSE_BIDGACMDV  set bank_code = '5008', bank_name = 'Axis Bank Ltd'							where username1= 'LK447360'		and substring(IFSC_Code,1,4) = 'UTIB'
	update NSE_BIDGACMDV  set bank_code = '5010', bank_name = 'Kotak Mahindra Bank Ltd'					where username1= '109735'		and substring(IFSC_Code,1,4) = 'KKBK'
	update NSE_BIDGACMDV  set bank_code = '5014', bank_name = 'HSBC Ltd'								where username1= 'IPOOPS16'		and substring(IFSC_Code,1,4) = 'HSBC'
	update NSE_BIDGACMDV  set bank_code = '5016', bank_name = 'Bank of India '							where username1= 'AS215701'		and substring(IFSC_Code,1,4) = 'BKID'
	update NSE_BIDGACMDV  set bank_code = '5029', bank_name = 'Canara Bank'								where username1= 'NAPIUSER'		and substring(IFSC_Code,1,4) = 'CNRB'
	update NSE_BIDGACMDV  set bank_code = '5032', bank_name = 'Standard Chartered Bank'					where username1= '1165498'		and substring(IFSC_Code,1,4) = 'SCBL'
	update NSE_BIDGACMDV  set bank_code = '5038', bank_name = 'Tamilnad Mercantile Bank Ltd'			where username1= '4849'			and substring(IFSC_Code,1,4) = 'TMBL'
	update NSE_BIDGACMDV  set bank_code = '5038', bank_name = 'Tamilnad Mercantile Bank Ltd'			where username1= 'TMBAPI'		and substring(IFSC_Code,1,4) = 'TMBL'

	update NSE_BIDGACMDV  set bank_code = '5039', bank_name = 'Nutan Nagarik Sahakari Bank Ltd'			where username1= 'JINAL'		and substring(IFSC_Code,1,4) = 'NNSB'
	update NSE_BIDGACMDV  set bank_code = '5042', bank_name = 'The South Indian Bank Ltd'				where username1= 'BR0024'		and substring(IFSC_Code,1,4) = 'SIBL'
	update NSE_BIDGACMDV  set bank_code = '5045', bank_name = 'DBS Bank Ltd'							where username1= 'ASHISH' 		and substring(IFSC_Code,1,4) = 'DBSS' 
	update NSE_BIDGACMDV  set bank_code = '5051', bank_name = 'The Surat Peoples Coop Bank Ltd'			where username1= 'MAA416'		and substring(IFSC_Code,1,4) = 'SPCB'
	update NSE_BIDGACMDV  set bank_code = '5054', bank_name = 'Karnataka Bank Ltd' 						where username1= 'COMSEC'		and substring(IFSC_Code,1,4) = 'KARB'
	update NSE_BIDGACMDV  set bank_code = '5057', bank_name = 'Janta Sahakari Bank Ltd'					where username1= 'MCV1365'		and substring(IFSC_Code,1,4) = 'JSBP'
	update NSE_BIDGACMDV  set bank_code = '5060', bank_name = 'The Jammu and Kashmir Bank Limited'		where username1= '8663'			and substring(IFSC_Code,1,4) = 'JAKA'
	update NSE_BIDGACMDV  set bank_code = '5064', bank_name = 'Mehsana Urban Coop Bank Ltd'				where username1= 'WEBAPI'		and substring(IFSC_Code,1,4) = '0001'
	update NSE_BIDGACMDV  set bank_code = '5069', bank_name = 'Au Small Finance Bank '					where username1= 'API1'			and substring(IFSC_Code,1,4) = 'AUBL'
	update NSE_BIDGACMDV  set bank_code = '5067', bank_name = 'Bandhan Bank Ltd'						where username1= 'SHUBHAM_D'	and substring(IFSC_Code,1,4) = 'BDBL'
	update NSE_BIDGACMDV  set bank_code = '5070', bank_name = 'IDFC FIRST Bank Ltd'						where username1= 'CBUSER1PROD'	and substring(IFSC_Code,1,4) = 'IDFB'
	
	--SELECT IFSC_CODE,USERNAME1,BANK_NAME,BANK_CODE  FROM NSE_BIDGACMDV  ORDER BY IFSC_CODE
	--SBRSBR
	
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	--CREATE A CONSOLIDATE FILE WITH BSE & NSE BID FILES
	--WITH ALL THE DATA FIELDS
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	IF OBJECT_ID ( 'BIDCONS_GACMDV', 'U' ) IS NOT NULL  DROP TABLE BIDCONS_GACMDV
	SELECT * INTO BIDCONS_GACMDV FROM BID_CONS01
	TRUNCATE TABLE BIDCONS_GACMDV
		--CREATE TABLE BIDCONS_GACMDV 
		--(	
		--	SLNO int IDENTITY(1,1),ORDERNO varchar(30),BOOKID varchar(20),BRANCH varchar(50),USR_ID varchar(15),SYMBOL varchar(20),APPLSHARES int,
		--	PRICE numeric(12,2),APPL_NO	varchar(25),Dep	varchar(20),DP_ID varchar(16),CL_ID varchar(16),CATEGORY varchar(15),APPLAMOUNT numeric(18,2),
		--	CLNAME varchar(100),PAN_No varchar(40),BankName varchar(100),Loc varchar(50),AcNo varchar(30),IFSCCode varchar(20),BRefno varchar(50),
		--	EDATE varchar(30),MODDATE varchar(30),SBCODE varchar(20),MEMTYPE varchar(20),ACCODE varchar(20),EXCHG varchar(4),CRU_FLAG varchar(5),
		--	COLLBANK varchar(50),BIDDPID varchar(16),BIDPAN varchar(20),RDKEY varchar(20),MATCHING_REMARKS varchar(30),TXNS varchar(5),
		--	BEN_NAME varchar(100),BEN_PAN varchar(20),BEN_JT1PAN varchar(20),BEN_JT2PAN varchar(20),REJN_REASON	Varchar(100),BASIS varchar(10)
		--)
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
		INSERT INTO BIDCONS_GACMDV
		(
			ORDERNO,SYMBOL,APPL_NO,DP_ID,CL_ID,APPLSHARES,PRICE,APPLAMOUNT,IFSCCODE,
			ACNO,PAN_NO,BREFNO,EDATE,MODDATE,CATEGORY,USR_ID,BOOKID,BRANCH,DEP,
			CLNAME,BANKNAME,LOC,SBCODE,MEMTYPE,ACCODE,EXCHG
		)
		SELECT
			ORDER_NO,SYMBOL,APPL_NO,DP_ID,CLIENT_ID_BENEFICIARY_ID,QUANTITY,PRICE,
			Amount,IFSCCode,Account_Number,PAN_No,BankReferenceNumber,ENTRY_DATE_TIME,
			LAST_MODF_DT_TIME,CATEGORY,USR_ID,BOOK_ID,BRANCH,Depository,CLIENTNAME,
			Bank_Name,Location,SUBBROKERCODE_REF_NO,MEMBERTYPE,ACTIONCODE,'BSE '
		FROM BSEBIDGACMDV
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
		INSERT INTO BIDCONS_GACMDV
		(
			ORDERNO,SYMBOL,APPL_NO,DP_ID,CL_ID,APPLSHARES,PRICE,APPLAMOUNT,IFSCCODE,ACNO,
			PAN_NO,BREFNO,EDATE,MODDATE,CATEGORY,USR_ID,BOOKID,BRANCH,DEP,CLNAME,
			BANKNAME,LOC,SBCODE,MEMTYPE,ACCODE,EXCHG	
		)
		SELECT
			Transaction_Number,Symbol,Application_Number,DP_Id,Ben_Id,No_of_shares,Price_Cutoff,
			Total_Amount,IFSC_Code,Bank_Account_Number,PAN,ASBA_Block_Reference_Number,
			Transaction_Date,Modification_Date,Category,Username1,'','','','','','','','','','NSE '
		FROM NSE_BIDGACMDV 

		ALTER TABLE BIDCONS_GACMDV ADD DPIDCLID VARCHAR(16),DEPOSITORYFLAG VARCHAR(4),bank_code varchar(4),bank_name varchar(100)
		UPDATE BIDCONS_GACMDV  SET DPIDCLID = TRIM(DP_ID)+TRIM(CL_ID) WHERE DP_ID LIKE 'IN%' AND EXCHG = 'BSE'
		UPDATE BIDCONS_GACMDV  SET DPIDCLID = TRIM(CL_ID) WHERE DP_ID NOT LIKE 'I%' AND LEN(CL_ID) = 16 
		UPDATE BIDCONS_GACMDV  SET DPIDCLID = TRIM(CL_ID) WHERE DP_ID IS NULL AND LEN(CL_ID) = 16 
		UPDATE BIDCONS_GACMDV  SET DPIDCLID = TRIM(CL_ID) WHERE DP_ID ='NULL' AND LEN(CL_ID) = 16 
		UPDATE BIDCONS_GACMDV  SET DPIDCLID = TRIM(DP_ID)+TRIM(CL_ID) WHERE DP_ID LIKE 'IN%' AND EXCHG = 'NSE'
		UPDATE BIDCONS_GACMDV  SET DEPOSITORYFLAG = 'NSDL' WHERE DPIDCLID LIKE 'IN%'
		UPDATE BIDCONS_GACMDV  SET DEPOSITORYFLAG = 'CDSL' WHERE DPIDCLID NOT LIKE 'IN%'
		UPDATE A SET a.BANK_NAME = b.BANKNAME,a.BANK_CODE  = b.CODE
			FROM  BIDCONS_GACMDV a join MST_BM b 
			ON trim(a.usr_id) = trim(b.code)
			--select * from bidcons_GACMDV order by bank_name
--				  CBUSER1PROD
		--SBRSBRSBR SELECT * FROM BIDCONS_GACMDV
			update BIDCONS_GACMDV  set bank_code = '5038', bank_name = 'Tamilnad Mercantile Bank Ltd'				where usr_id= 'TMB5097'			and substring(IFSCCode,1,4) = 'TMBL'
			update BIDCONS_GACMDV  set bank_code = '5070', bank_name = 'IDFC FIRST Bank Ltd'						where usr_id= 'CB USER 14'		and substring(IFSCCode,1,4) = 'IDFB'
			update BIDCONS_GACMDV  set bank_code = '5022', bank_name = 'Bank of Maharashtra '						where usr_id= '30378'			and substring(IFSCCode,1,4) = 'MAHB'
			update BIDCONS_GACMDV  set bank_code = '5027', bank_name = 'Indian Bank'								where usr_id = 'VIGNESH'		and substring(IFSCCode,1,4) = 'IDIB'
			update BIDCONS_GACMDV  set bank_code = '5008', bank_name = 'Axis Bank Ltd'								where usr_id = 'HK335646'		and substring(IFSCCode,1,4) = 'UTIB'
			update BIDCONS_GACMDV  set bank_code = '5008', bank_name = 'Axis Bank Ltd'								where usr_id = 'LK447360'		and substring(IFSCCode,1,4) = 'UTIB'
			update BIDCONS_GACMDV  set bank_code = '5010', bank_name = 'Kotak Mahindra Bank Ltd'					where usr_id = '109735'			and substring(IFSCCode,1,4) = 'KKBK'
			update BIDCONS_GACMDV  set bank_code = '5014', bank_name = 'HSBC Ltd'									where usr_id = 'IPOOPS16'		and substring(IFSCCode,1,4) = 'HSBC'
			update BIDCONS_GACMDV  set bank_code = '5016', bank_name = 'Bank of India '								where usr_id = 'AS215701'		and substring(IFSCCode,1,4) = 'BKID'
			update BIDCONS_GACMDV  set bank_code = '5029', bank_name = 'Canara Bank Ltd '							where usr_id = 'NAPIUSER'		and substring(IFSCCode,1,4) = 'CNRB'
			update BIDCONS_GACMDV  set bank_code = '5032', bank_name = 'Standard Chartered Bank'					where usr_id = '1165498'		and substring(IFSCCode,1,4) = 'SCBL'
			update BIDCONS_GACMDV  set bank_code = '5038', bank_name = 'Tamilnad Mercantile Bank Ltd'				where usr_id = '4849'			and substring(IFSCCode,1,4) = 'TMBL'
			update BIDCONS_GACMDV  set bank_code = '5038', bank_name = 'Tamilnad Mercantile Bank Ltd'			    where usr_id = 'TMBAPI'			and substring(IFSCCode,1,4) = 'TMBL'	
			update BIDCONS_GACMDV  set bank_code = '5039', bank_name = 'Nutan Nagarik Sahakari Bank Ltd'			where usr_id = 'JINAL'			and substring(IFSCCode,1,4) = 'NNSB'
			update BIDCONS_GACMDV  set bank_code = '5042', bank_name = 'The South Indian Bank Ltd'					where usr_id = 'BR0024'			and substring(IFSCCode,1,4) = 'SIBL'
			update BIDCONS_GACMDV  set bank_code = '5045', bank_name = 'DBS Bank Ltd'								where usr_id = 'ASHISH'			and substring(IFSCCode,1,4) = 'DBSS'
			update BIDCONS_GACMDV  set bank_code = '5051', bank_name = 'The Surat Peoples Coop Bank Ltd'			where usr_id = 'MAA416'			and substring(IFSCCode,1,4) = 'SPCB'
			update BIDCONS_GACMDV  set bank_code = '5054', bank_name = 'Karnataka Bank Ltd' 						where usr_id = 'COMSEC'			and substring(IFSCCode,1,4) = 'KARB'
			update BIDCONS_GACMDV  set bank_code = '5060', bank_name = 'The Jammu and Kashmir Bank Limited'			where usr_id = '8663'			and substring(IFSCCode,1,4) = 'JAKA'
			update BIDCONS_GACMDV  set bank_code = '5064', bank_name = 'Mehsana Urban Coop Bank Ltd'				where usr_id = 'WEBAPI'			and substring(IFSCCode,1,4) = '0001'
			update BIDCONS_GACMDV  set bank_code = '5069', bank_name = 'Au Small Finance Bank  '					where usr_id = 'API1'			and substring(IFSCCode,1,4) = 'AUBL'
			update BIDCONS_GACMDV  set bank_code = '5070', bank_name = 'IDFC First Bank Ltd '						where usr_id = 'CBUSER1PROD'	and substring(IFSCCode,1,4) = 'IDFB'
			update BIDCONS_GACMDV  set bank_code = '5057', bank_name = 'Janta Sahakari Bank Ltd'					where usr_id = 'MCV1365'		and substring(IFSCCode,1,4) = 'JSBP'
			update BIDCONS_GACMDV  set bank_code = '5067', bank_name = 'Bandhan Bank Ltd'							where usr_id = 'SHUBHAM_D'		and substring(IFSCCode,1,4) = 'BDBL'
	--select 'NSEBID-BIDGACMDV-FILE-[BIDCONT01GACMDV]' AS [DESCRIPTION],EXCHG, COUNT(*) as [No.of.Records],SUM(INT,APPLSHARES) as [Applied_Shares],
	--SUM(CAST(totamtrecd AS decimal(18,3))) as [Appl_Amount_Received] from BIDCONS_GACMDV GROUP BY EXCHG
	----SELECT * into FROM BIDCONS_GACMDV 
	--NSEsummary-
	--SELECT * FROM BSEBIDSUMMARY_GACMDV01
	if object_id('NSEBIDSUMMARY_GACMDV01','u') is not null drop table NSEBIDSUMMARY_GACMDV01
	--SELECT * INTO NSEBIDSUMMARY_GACMDV01 FROM BIDCONS_GACMDV WHERE EXCHG = 'NSE'
	--SELECT * FROM NSEBIDSUMMARY_GACMDV01
	if object_id('jtemp01','u') is not null drop table jtemp01
	SELECT EXCHG,bank_code as [Bank Code],bank_name as [Bank Name],COUNT(*) AS [No.of.Bids],sum(applshares) as [Applied_Shares],SUM(CAST(applamount AS decimal(18,2))) as [Appl_Amount_Received] into JTEMP01 FROM BIDCONS_GACMDV  GROUP BY EXCHG,bank_code,bank_name order by bank_name
	ALTER TABLE Jtemp01 ADD ID INT IDENTITY (1,1)
	--SELECT * FROM JTEMP01
	--select 'NSEBID-BIDGACMDV-BANK-WISE-FILE-[BIDCONT02GACMDV]' as [Description],Vbank_name AS [Bank_Name],Vbank_code AS [Bank_Code],
	--TOTAL_BIDS AS [Total_Bids_Count],SHARES_APPLIED AS [Total_Applied_Shares], CAST(APPLIED_AMOUNT AS decimal(18,2))  AS [Total_Applied_Amount] 
	if object_id('NSEBIDSUMMARY_GACMDV02','u') is not null drop table NSEBIDSUMMARY_GACMDV02
	select [exchg],[BANK NAME],[BANK CODE],[No.of.Bids],Applied_Shares,appl_Amount_received INTO NSEBIDSUMMARY_GACMDV02 From Jtemp01 WHERE EXCHG = 'NSE'
	--select * from NSEBIDSUMMARY_GACMDV02
	DECLARE @cmd2 varchar(500),@filename2 varchar(100)
	SELECT @filename2 ='NSEBID_GACMDV_'+FORMAT(GETDATE(),'yyyyMMdd')+FORMAT(GETDATE(),'HHmmss')+'.TXT'       
	SET @cmd2 = 'bcp "SELECT [BANK CODE],[BANK NAME],[EXCHG],[NO.OF.BIDS] AS [Total Bids] ,Applied_Shares,Appl_Amount_received FROM IPORIGHTSBONUS.DBO.NSEBIDSUMMARY_GACMDV02" '+ 'queryout D:\VRIGHTS\GACMDV\'+ @filename2 + ' -c -UTF8 -T -Slocalhost -t,'
	EXEC master..xp_cmdshell @cmd2
	IF OBJECT_ID ( 'temp1', 'U' ) IS NOT NULL  DROP TABLE temp1
	IF OBJECT_ID ( 'temp2', 'U' ) IS NOT NULL  DROP TABLE temp2
	IF OBJECT_ID ( 'temp3', 'U' ) IS NOT NULL  DROP TABLE temp3
	SELECT BANK_NAME,BANK_CODE,COUNT(*) AS TOTAL_BIDS_COUNT,SUM(CONVERT(INT,APPLSHARES)) as Total_Applied_Shares, sum(CAST(APPLAMOUNT AS decimal(18,2)))  as Total_Applied_Amount,'SE-BSE' AS Stock_Exchange into temp1 FROM BIDCONS_GACMDV where exchg ='BSE' group by bank_name,bank_code
	SELECT BANK_NAME,BANK_CODE,COUNT(*) AS TOTAL_BIDS_COUNT,SUM(CONVERT(INT,APPLSHARES)) as Total_Applied_Shares, sum(CAST(APPLAMOUNT AS decimal(18,2)))  as Total_Applied_Amount,'SE-NSE' AS Stock_Exchange into temp2 FROM BIDCONS_GACMDV where exchg ='NSE' group by bank_name,bank_code
	ALTER TABLE TEMP1 ADD ID INT IDENTITY(1,1)
--	ALTER TABLE TEMP1 ADD ID INT IDENTITY(1001,1)
--	SELECT * FROM TEMP1
--	SELECT * FROM TEMP2
	IF OBJECT_ID ( 'FinalGACMDVConsolReport', 'U' ) IS NOT NULL  DROP TABLE FinalGACMDVConsolReport		
	select * into FinalGACMDVConsolReport FROM TEMP1
	insert into FinalGACMDVConsolReport SELECT * FROM TEMP2
	update FinalGACMDVConsolReport		set bank_name = trim(bank_name)
--	SELECT * FROM FinalGACMDVConsolReport
	DECLARE @cmd4 varchar(500),@filename4 varchar(100)
	SELECT @filename4 ='TOTBID_GACMDV.CSV'       
	SET @cmd4 = 'bcp "SELECT ID,Bank_Name,Bank_Code,Total_Bids_Count,Total_Applied_Shares,Total_Applied_amount,Stock_Exchange  FROM IPORIGHTSBONUS.DBO.FinalGACMDVConsolReport" '+ 'queryout d:\VRIGHTS\GACMDV\'+ @filename4 + ' -c -UTF8 -T -Slocalhost -t,'
	EXEC master..xp_cmdshell @cmd4
END
GO
/****** Object:  StoredProcedure [dbo].[SP_BIDPROGACMEQ]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
-- Brahmajee.S
-- Bid Process Both BSE & NSE and create a Summary Files - EQUITY
-- Source BSE & NSE BID FILES
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--File 001. D:\VRights\GACMEQ\bsebid.dat									[ BSE BID FILE]
--File 002. D:\VRIGHTS\BANKMASTER\BANK.csv									[ BANK MASTER ]
--File 003. D:\VRights\GACMEQ\ASBA_ADROITINFR_16FEB2024171952_BANK_01.csv   [ NSE BID FILE]
--D:\VRIGHTS\GACMEQ\BSEBID_GACMEQ_20240725123517							[ BSE BID SUMMARY FILE ]
--D:\VRIGHTS\GACMEQ\NSEBID_GACMEQ_20240725123517							[ NSE BID SUMMARY FILE ]
--D:\VRIGHTS\GACMEQ\TOTBID_GACMEQ_20240725123517							[ TOTAL BID SUMMARY FILE ]
--BANK MASTER - D:\VRIGHTS\BANKMASTER\BANK.csv
--SELECT NAME as 'List Of Tables' FROM SYSOBJECTS WHERE ID IN (SELECT SD.DEPID FROM SYSOBJECTS SO,SYSDEPENDS SD WHERE SO.NAME = 'SP_BIDPROGACMEQ' AND SD.ID = SO.ID)
CREATE Procedure [dbo].[SP_BIDPROGACMEQ]
with 
RECOMPILE
as
begin
	IF OBJECT_ID ( 'BSEBIDGACMEQ', 'U' ) IS NOT NULL  DROP TABLE BSEBIDGACMEQ
	select * into BSEBIDGACMEQ from bsebidsample
	--select * from BSEBIDGACMEQ
	TRUNCATE TABLE BSEBIDGACMEQ
	BULK INSERT BSEBIDGACMEQ
		FROM 'D:\VRights\GACMEQ\bsebid.dat' 
		WITH 
		(  
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',  
			ROWTERMINATOR = '\n',  
			BATCHSIZE=500
		)
	
	UPDATE BSEBIDGACMEQ	SET CLIENTNAME =''	WHERE CLIENTNAME IS NULL
	UPDATE BSEBIDGACMEQ	SET BANK_NAME = ''  WHERE BANK_NAME IS NULL
	UPDATE BSEBIDGACMEQ	SET	LOCATION  =''	WHERE LOCATION IS NULL
	UPDATE BSEBIDGACMEQ	SET Account_Number ='' WHERE Account_Number IS NULL
	UPDATE BSEBIDGACMEQ	SET SUBBROKERCODE_REF_NO ='' WHERE SUBBROKERCODE_REF_NO IS NULL
	IF OBJECT_ID ( 'BIDCONT01GACMEQ', 'U' ) IS NOT NULL  DROP TABLE BIDCONT01GACMEQ
	SELECT COUNT(*) AS NOOFRECORDS, SUM(CONVERT(INT,QUANTITY)) TOTQTYAPPLIED,SUM(CAST(AMOUNT AS NUMERIC)) AS TOTAMTRECD  INTO BIDCONT01GACMEQ FROM BSEBIDGACMEQ 	
	---DATA - EQ BSEBID FILE 
	--SELECT * FROM BSEBIDGACMEQ  	

	--SELECT * FROM BIDCONT01GACMEQ
	
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	--BANK MASTER DATA
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	IF OBJECT_ID ( 'MST_BM', 'U' ) IS NOT NULL  DROP TABLE MST_BM
	    CREATE TABLE MST_BM (CODE VARCHAR(5),BANKNAME VARCHAR(100))
		BULK INSERT MST_BM
		FROM 'D:\VRIGHTS\BANKMASTER\BANK.csv' 
		WITH 
		(  
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=50
		)
	--select * from bsebidgacmeq
	--select * from mst_bm
	ALTER TABLE BSEBIDGACMEQ ADD exchg varchar(3)
	UPDATE BSEBIDGACMEQ set EXCHG = 'BSE'
	ALTER TABLE BSEBIDGACMEQ ADD VBANK_NAME VARCHAR(100) ,VBANK_CODE VARCHAR(4), DPIDCLID VARCHAR(16)
	update a set a.VBANK_NAME = b.BANKNAME,a.VBANK_CODE  = b.CODE FROM  BSEBIDGACMEQ a 
				join MST_BM b  
				ON trim(a.usr_id) = trim(b.code)
	--select * from BSEBIDGACMEQ where Vbank_name is null
	--EXECUTE ONCE ANY RECORDS DISPLAYED
	--select usr_id,substring(ifsccode,1,4) from BSEBIDGACMEQ where Vbank_name is null group by usr_id,substring(IFSCCode,1,4)
	
	update BSEBIDGACMEQ set vbank_code = '5008', vbank_name = 'Axis Bank Ltd'								where usr_id = 'LK447360'	and substring(IFSCCode,1,4) = 'UTIB'
	update BSEBIDGACMEQ set vbank_code = '5014', vbank_name = 'HSBC Ltd'									where usr_id = 'IPOOPS16'	and substring(IFSCCode,1,4) = 'HSBC'
	update BSEBIDGACMEQ set vbank_code = '5027', vbank_name = 'Indian Bank'									where usr_id = 'VIGNESH'	and substring(IFSCCode,1,4) = 'IDIB'		
	update BSEBIDGACMEQ set vbank_code = '5029', vbank_name = 'Canara Bank'									where usr_id = 'NAPIUSER'	and substring(IFSCCode,1,4) = 'CNRB'
	update BSEBIDGACMEQ set vbank_code = '5032', vbank_name = 'Standard Chartered Bank'						where usr_id = '1165498'	and substring(IFSCCode,1,4) = 'SCBL'
	update BSEBIDGACMEQ set vbank_code = '5038', vbank_name = 'Tamilnad Mercantile Bank Ltd'				where usr_id = '4849'		and substring(IFSCCode,1,4) = 'TMBL'
	update BSEBIDGACMEQ set vbank_code = '5039', vbank_name = 'Nutan Nagarik Sahakari Bank Ltd'				where usr_id = 'JINAL'		and substring(IFSCCode,1,4) = 'NNSB'
	update BSEBIDGACMEQ set vbank_code = '5042', vbank_name = 'The South Indian Bank Ltd'					where usr_id = 'BR0024'		and substring(IFSCCode,1,4) = 'SIBL'
	update BSEBIDGACMEQ set vbank_code = '5045', vbank_name = 'DBS Bank Ltd'								where usr_id = 'ASHISH'		and substring(IFSCCode,1,4) = 'DBSS'
	update BSEBIDGACMEQ set vbank_code = '5051', vbank_name = 'The Surat Peoples Coop Bank Ltd'				where usr_id = 'MAA416'		and substring(IFSCCode,1,4) = 'SPCB'
	update BSEBIDGACMEQ set vbank_code = '5054', vbank_name = 'Karnataka Bank Ltd' 							where usr_id = 'COMSEC'		and substring(IFSCCode,1,4) = 'KARB'
	update BSEBIDGACMEQ set vbank_code = '5057', vbank_name = 'Janta Sahakari Bank Ltd'						where usr_id = 'MCV1365'	and substring(IFSCCode,1,4) = 'JSBP'
	update BSEBIDGACMEQ set vbank_code = '5060', vbank_name = 'The Jammu and Kashmir Bank Limited'			where usr_id = '8663'		and substring(IFSCCode,1,4) = 'JAKA'
	update BSEBIDGACMEQ set vbank_code = '5064', vbank_name = 'Mehsana Urban Coop Bank Ltd'					where usr_id = 'WEBAPI'		and substring(IFSCCode,1,4) = '0001'
	update BSEBIDGACMEQ set vbank_code = '5067', vbank_name = 'Bandhan Bank Ltd'							where usr_id = 'SHUBHAM_D'	and substring(IFSCCode,1,4) = 'BDBL'
	update BSEBIDGACMEQ set vbank_code = '5069', vbank_name = 'Au Small Finance Bank '						where usr_id = 'API1'		and substring(IFSCCode,1,4) = 'AUBL'
	--select * from BSEBIDGACMEQ where VBANK_CODE IS NULL
	--select usr_id,substring(ifsccode,1,4) from BSEBIDGACMEQ where vbank_name is null group by usr_id,substring(IFSCCode,1,4)
	--if nil recods displays [ok] 
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	--summary of bids stock exchange wise & bank wise
	--select * from BSEBIDGACMEQ WHERE DP_ID NOT LIKE 'I%' AND LEN(CLIENT_ID_BENEFICIARY_ID) = 16
	UPDATE BSEBIDGACMEQ SET DPIDCLID = TRIM(DP_ID)+TRIM(CLIENT_ID_BENEFICIARY_ID) WHERE DP_ID LIKE 'IN%'
	UPDATE BSEBIDGACMEQ SET DPIDCLID = TRIM(CLIENT_ID_BENEFICIARY_ID) WHERE DP_ID NOT LIKE 'I%' AND LEN(CLIENT_ID_BENEFICIARY_ID) = 16
	UPDATE BSEBIDGACMEQ SET DPIDCLID = TRIM(CLIENT_ID_BENEFICIARY_ID) WHERE LEN(CLIENT_ID_BENEFICIARY_ID) = 16 and dpidclid is null
	--IF OBJECT_ID ( 'CDSLNSDLBD', 'U' ) IS NOT NULL  DROP TABLE CDSLNSDLBD
	--SELECT DPIDCLID INTO CDSLNSDLBD  FROM BSEBIDGACMEQ GROUP BY DPIDCLID  
	--SELECT SUBSTRING(DPIDCLID,1,8)+','+SUBSTRING(DPIDCLID,9,8)+',IN9737B01023' as 'NsdlBid_Dpid_Clid'  FROM CDSLNSDLBD  WHERE DPIDCLID LIKE 'I%' --280
	--SELECT TRIM(DPIDCLID)  FROM CDSLNSDLBD  WHERE DPIDCLID LIKE 'I%'  ---FOR EXCEL--280
	--NSDL
	--exec VCCIPL.DBO.sp_NSDLBENDEMF --[INPUT FILE D:\BENDEM\NSDL\NCNVBD001.csv ] [OUTPUT D:\BENDEM\NSDL\IN200537_BENDEM????.TXT]
	--SELECT TRIM(DPIDCLID)+',IN9737B01023' FROM CDSLNSDLBD WHERE DPIDCLID LIKE '1%' GROUP BY DPIDCLID --490
	--SELECT TRIM(DPIDCLID) FROM CDSLNSDLBD WHERE DPIDCLID LIKE '1%' GROUP BY DPIDCLID --384
	----CDSL
	--EXEC VCCIPL.DBO.sp_genAnyCompanyBendemCDSL '1204','IN9737B01023'  --[INPUT:-D:\bendem\CDSLBENDEM.csv][OUTPUT:-D:\BENDEM\CDSL\999999.????.CVF]
	--SELECT	exchg AS [STOCK EXCHANGE],COUNT(*) AS TOTAL_BIDS,SUM(CONVERT(INT,QUANTITY)) AS SHARES_APPLIED, 
	--		SUM(convert(numeric(18,2),AMOUNT)) AS APPLIED_AMOUNT 
	--		FROM BSEBIDGACMEQ group by exchg
	IF OBJECT_ID ( 'BIDCONT02GACMEQ', 'U' ) IS NOT NULL  DROP TABLE BIDCONT02GACMEQ
	SELECT	Vbank_name,Vbank_code,COUNT(*) AS TOTAL_BIDS,SUM(CONVERT(INT,QUANTITY)) AS SHARES_APPLIED, 
			SUM(CAST(AMOUNT AS FLOAT)) AS APPLIED_AMOUNT, 'BSE' AS EXCHG into BIDCONT02GACMEQ FROM 
			BSEBIDGACMEQ A  group by Vbank_name,Vbank_code order by COUNT(*) DESC
	--IMPORTANT
	--SELECT AMOUNT,TRY_CONVERT(FLOAT,AMOUNT) AS [VARCHAR TO FLOAT] FROM BSEBIDGACMEQ
	--SELECT AMOUNT,CAST(AMOUNT AS FLOAT) AS AMTFLOATCOLUMN FROM BSEBIDGACMEQ;
	--IMPORTANT
	IF OBJECT_ID ( 'Jtemp1', 'U' ) IS NOT NULL  DROP TABLE Jtemp1
	--select 'BSEBID-BIDGACMEQ-FILE-[BIDCONT01GACMEQ]' AS [DESCRIPTION],Noofrecords as [No.of.Records],totqtyapplied as [Applied_Shares],
	--CAST(totamtrecd AS decimal(18,2)) as [Appl_Amount_Received],'BSE' AS EXCHG from BIDCONT01GACMEQ

	select 'BSEBID-BIDGACMEQ-BANK-WISE-FILE-[BIDCONT02GACMEQ]' as [Description],Vbank_name AS [Bank_Name],Vbank_code AS [Bank_Code],'BSE' AS BSE,
	TOTAL_BIDS AS [Total_Bids_Count],SHARES_APPLIED AS [Total_Applied_Shares], CAST(APPLIED_AMOUNT AS decimal(18,2))  AS [Total_Applied_Amount],
	EXCHG INTO Jtemp1 from BIDCONT02GACMEQ order by VBANK_NAME
	
	--SELECT * FROM BIDCONT02GACMEQ 
	
	IF OBJECT_ID ( 'BSEBIDSUMMARY_GACMEQ01', 'U' ) IS NOT NULL  DROP TABLE BSEBIDSUMMARY_GACMEQ01
	ALTER TABLE Jtemp1 ADD ID INT IDENTITY (1,1)
	--SELECT * FROM JTEMP1
	--UPDATE JTEMP1 SET EXCHG ='BSE'
	select BANK_NAME,BANK_CODE,EXCHG,Total_Bids_Count,Total_Applied_Shares,Total_Applied_Amount  INTO BSEBIDSUMMARY_GACMEQ01 From Jtemp1
	--bsesummary-
	--SELECT * FROM BSEBIDSUMMARY_GACMEQ01
	DECLARE @cmd varchar(500),@filename1 varchar(100)
	SELECT @filename1 ='BSEBID_GACMEQ_'+FORMAT(GETDATE(),'yyyyMMdd')+FORMAT(GETDATE(),'HHmmss')+'.TXT'       
	SET @cmd = 'bcp "SELECT BANK_CODE,BANK_NAME,EXCHG,Total_Bids_Count,Total_Applied_Shares,Total_Applied_Amount FROM IPORIGHTSBONUS.DBO.BSEBIDSUMMARY_GACMEQ01" '+ 'queryout D:\VRIGHTS\GACMEQ\'+ @filename1 + ' -c -UTF8 -T -Slocalhost -t,'
	EXEC master..xp_cmdshell @cmd
	IF OBJECT_ID ( 'tempbsebidGACMEQ', 'U' ) IS NOT NULL  DROP TABLE tempbsebidGACMEQ
	select * into tempbsebidGACMEQ from BSEBIDGACMEQ
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--BID FILE - NSE PROCESS
--IMPORT FROM SOURCE [D:\VRIGHTS\GACMEQ\]
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	IF OBJECT_ID ( 'NSE_BIDGACMEQ', 'U' ) IS NOT NULL  DROP TABLE NSE_BIDGACMEQ
	--SELECT * FROM NSE_BID01
	SELECT * INTO NSE_BIDGACMEQ FROM NSE_BID01
	TRUNCATE TABLE NSE_BIDGACMEQ
	BULK INSERT NSE_BIDGACMEQ
	FROM 'D:\VRights\GACMEQ\NSEBID.DAT' 
	WITH 
	(  
		FIRSTROW = 0,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=1000
	)
	---DATA - EQ NSEBID FILE 
	--SELECT * FROM NSE_BIDGACMEQ order by bank_name
	--select bank_name,count(*) from nse_bidgacmeq group by bank_name
	ALTER TABLE NSE_BIDGACMEQ ADD BANK_CODE VARCHAR(5),BANK_NAME VARCHAR(100)
	--SELECT * FROM NSE_BIDGACMEQ where bank_name is null

	update NSE_BIDGACMEQ  set bank_code = '5038', bank_name = 'Tamilnad Mercantile Bank Ltd'			where username1= 'TMB5097'		and substring(IFSC_Code,1,4) = 'TMBL'
	update NSE_BIDGACMEQ  set bank_code = '5070', bank_name = 'IDFC FIRST Bank Ltd'						where username1= 'CB USER 14'	and substring(IFSC_Code,1,4) = 'IDFB'
	update NSE_BIDGACMEQ  set bank_code = '5022', bank_name = 'Bank of Maharashtra '					where username1= '30378'		and substring(IFSC_Code,1,4) = 'MAHB'
	
	
	update NSE_BIDGACMEQ  set bank_code = '5008', bank_name = 'Axis Bank Ltd'							where username1= 'HK335646'		and substring(IFSC_Code,1,4) = 'UTIB'
	update NSE_BIDGACMEQ  set bank_code = '5008', bank_name = 'Axis Bank Ltd'							where username1= 'LK447360'		and substring(IFSC_Code,1,4) = 'UTIB'
	update NSE_BIDGACMEQ  set bank_code = '5010', bank_name = 'Kotak Mahindra Bank Ltd'					where username1= '109735'		and substring(IFSC_Code,1,4) = 'KKBK'
	update NSE_BIDGACMEQ  set bank_code = '5014', bank_name = 'HSBC Ltd'								where username1= 'IPOOPS16'		and substring(IFSC_Code,1,4) = 'HSBC'
	update NSE_BIDGACMEQ  set bank_code = '5016', bank_name = 'Bank of India '							where username1= 'AS215701'		and substring(IFSC_Code,1,4) = 'BKID'
	update NSE_BIDGACMEQ  set bank_code = '5027', bank_name = 'Indian Bank'							    where username1= 'VIGNESH'		and substring(IFSC_Code,1,4) = 'IDIB'
	update NSE_BIDGACMEQ  set bank_code = '5029', bank_name = 'Canara Bank'								where username1= 'NAPIUSER'		and substring(IFSC_Code,1,4) = 'CNRB'
	update NSE_BIDGACMEQ  set bank_code = '5032', bank_name = 'Standard Chartered Bank'					where username1= '1165498'		and substring(IFSC_Code,1,4) = 'SCBL'
	update NSE_BIDGACMEQ  set bank_code = '5038', bank_name = 'Tamilnad Mercantile Bank Ltd'			where username1= '4849'			and substring(IFSC_Code,1,4) = 'TMBL'
	update NSE_BIDGACMEQ  set bank_code = '5038', bank_name = 'Tamilnad Mercantile Bank Ltd'			where username1= 'TMBAPI'		and substring(IFSC_Code,1,4) = 'TMBL'
	update NSE_BIDGACMEQ  set bank_code = '5039', bank_name = 'Nutan Nagarik Sahakari Bank Ltd'			where username1= 'JINAL'		and substring(IFSC_Code,1,4) = 'NNSB'
	update NSE_BIDGACMEQ  set bank_code = '5042', bank_name = 'The South Indian Bank Ltd'				where username1= 'BR0024'		and substring(IFSC_Code,1,4) = 'SIBL'
	update NSE_BIDGACMEQ  set bank_code = '5045', bank_name = 'DBS Bank Ltd'							where username1= 'ASHISH' 		and substring(IFSC_Code,1,4) = 'DBSS' 
	update NSE_BIDGACMEQ  set bank_code = '5051', bank_name = 'The Surat Peoples Coop Bank Ltd'			where username1= 'MAA416'		and substring(IFSC_Code,1,4) = 'SPCB'
	update NSE_BIDGACMEQ  set bank_code = '5054', bank_name = 'Karnataka Bank Ltd' 						where username1= 'COMSEC'		and substring(IFSC_Code,1,4) = 'KARB'
	update NSE_BIDGACMEQ  set bank_code = '5057', bank_name = 'Janta Sahakari Bank Ltd'					where username1= 'MCV1365'		and substring(IFSC_Code,1,4) = 'JSBP'
	update NSE_BIDGACMEQ  set bank_code = '5060', bank_name = 'The Jammu and Kashmir Bank Limited'		where username1= '8663'			and substring(IFSC_Code,1,4) = 'JAKA'
	update NSE_BIDGACMEQ  set bank_code = '5064', bank_name = 'Mehsana Urban Coop Bank Ltd'				where username1= 'WEBAPI'		and substring(IFSC_Code,1,4) = '0001'
	update NSE_BIDGACMEQ  set bank_code = '5069', bank_name = 'Au Small Finance Bank '					where username1= 'API1'			and substring(IFSC_Code,1,4) = 'AUBL'
	update NSE_BIDGACMEQ  set bank_code = '5067', bank_name = 'Bandhan Bank Ltd'						where username1= 'SHUBHAM_D'	and substring(IFSC_Code,1,4) = 'BDBL'
	update NSE_BIDGACMEQ  set bank_code = '5070', bank_name = 'IDFC First Bank Ltd'						where username1= 'CBUSER1PROD'	and substring(IFSC_Code,1,4) = 'IDFB'
	--select * from NSE_BIDGACMEQ
	--SELECT IFSC_CODE,USERNAME1,BANK_NAME,BANK_CODE  FROM NSE_BIDGACMEQ  ORDER BY IFSC_CODE
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	--CREATE A CONSOLIDATE FILE WITH BSE & NSE BID FILES
	--WITH ALL THE DATA FIELDS
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	--alter table BIDCONS_GACMEQ drop columns CRU_FLAG ,COLLBANK,BIDDPID,BIDPAN,RDKEY,MATCHING_REMARKS,TXNS,BEN_NAME,BEN_PAN,BEN_JT1PAN,BEN_JT2PAN,REJN_REASON,BASIS
	IF OBJECT_ID ( 'BIDCONS_GACMEQ', 'U' ) IS NOT NULL  DROP TABLE BIDCONS_GACMEQ
	SELECT * INTO BIDCONS_GACMEQ FROM BID_CONS01
	--select * from bid_cons01
	TRUNCATE TABLE BIDCONS_GACMEQ
		--CREATE TABLE BIDCONS_GACMEQ 
		--(	
		--	SLNO int IDENTITY(1,1),ORDERNO varchar(30),BOOKID varchar(20),BRANCH varchar(50),USR_ID varchar(15),SYMBOL varchar(20),APPLSHARES int,
		--	PRICE numeric(12,2),APPL_NO	varchar(25),Dep	varchar(20),DP_ID varchar(16),CL_ID varchar(16),CATEGORY varchar(15),APPLAMOUNT numeric(18,2),
		--	CLNAME varchar(100),PAN_No varchar(40),BankName varchar(100),Loc varchar(50),AcNo varchar(30),IFSCCode varchar(20),BRefno varchar(150),
		--	EDATE varchar(30),MODDATE varchar(30),SBCODE varchar(20),MEMTYPE varchar(20),ACCODE varchar(20),EXCHG varchar(4),CRU_FLAG varchar(5),
		--	COLLBANK varchar(50),BIDDPID varchar(16),BIDPAN varchar(20),RDKEY varchar(20),MATCHING_REMARKS varchar(30),TXNS varchar(5),
		--	BEN_NAME varchar(100),BEN_PAN varchar(20),BEN_JT1PAN varchar(20),BEN_JT2PAN varchar(20),REJN_REASON	Varchar(100),BASIS varchar(10)
		--)
		--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
		INSERT INTO BIDCONS_GACMEQ
		(
			ORDERNO,SYMBOL,APPL_NO,DP_ID,CL_ID,APPLSHARES,PRICE,APPLAMOUNT,IFSCCODE,
			ACNO,PAN_NO,BREFNO,EDATE,MODDATE,CATEGORY,USR_ID,BOOKID,BRANCH,DEP,
			CLNAME,BANKNAME,LOC,SBCODE,MEMTYPE,ACCODE,EXCHG
		)
		SELECT
			ORDER_NO,SYMBOL,APPL_NO,DP_ID,CLIENT_ID_BENEFICIARY_ID,QUANTITY,PRICE,
			Amount,IFSCCode,Account_Number,PAN_No,BankReferenceNumber,ENTRY_DATE_TIME,
			LAST_MODF_DT_TIME,CATEGORY,USR_ID,BOOK_ID,BRANCH,Depository,CLIENTNAME,
			Bank_Name,Location,SUBBROKERCODE_REF_NO,MEMBERTYPE,ACTIONCODE,'BSE '
		FROM BSEBIDGACMEQ
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
		INSERT INTO BIDCONS_GACMEQ
		(
			ORDERNO,SYMBOL,APPL_NO,DP_ID,CL_ID,APPLSHARES,PRICE,APPLAMOUNT,IFSCCODE,ACNO,
			PAN_NO,BREFNO,EDATE,MODDATE,CATEGORY,USR_ID,BOOKID,BRANCH,DEP,CLNAME,
			BANKNAME,LOC,SBCODE,MEMTYPE,ACCODE,EXCHG	
		)
		SELECT
			Transaction_Number,Symbol,Application_Number,DP_Id,Ben_Id,No_of_shares,Price_Cutoff,
			Total_Amount,IFSC_Code,Bank_Account_Number,PAN,ASBA_Block_Reference_Number,
			Transaction_Date,Modification_Date,Category,Username1,'','','','','','','','','','NSE '
		FROM NSE_BIDGACMEQ
		ALTER TABLE BIDCONS_GACMEQ ADD DPIDCLID VARCHAR(16)
		UPDATE BIDCONS_GACMEQ  SET DPIDCLID = TRIM(DP_ID)+TRIM(CL_ID) WHERE DP_ID LIKE 'IN%' --AND EXCHG = 'BSE'
		UPDATE BIDCONS_GACMEQ  SET DPIDCLID = TRIM(CL_ID) WHERE DP_ID NOT LIKE 'I%' AND LEN(CL_ID) = 16 
		UPDATE BIDCONS_GACMEQ  SET DPIDCLID = TRIM(CL_ID) WHERE DP_ID IS NULL AND LEN(CL_ID) = 16 
		UPDATE BIDCONS_GACMEQ  SET DPIDCLID = TRIM(CL_ID) WHERE DP_ID ='NULL' AND LEN(CL_ID) = 16 
		
		ALTER TABLE BIDCONS_GACMEQ ADD DEPOSITORYFLAG VARCHAR(4)
		UPDATE BIDCONS_GACMEQ  SET DEPOSITORYFLAG = 'NSDL' WHERE DPIDCLID LIKE 'IN%'
		UPDATE BIDCONS_GACMEQ  SET DEPOSITORYFLAG = 'CDSL' WHERE DPIDCLID NOT LIKE 'IN%'
		alter table BIDCONS_GACMEQ  add bank_code varchar(4),bank_name varchar(100)
		UPDATE A SET a.BANK_NAME = b.BANKNAME,a.BANK_CODE  = b.CODE
			FROM  BIDCONS_GACMEQ a join MST_BM b 
			ON trim(a.usr_id) = trim(b.code)

			--select * from bidcons_gacmeq order by bank_name
			update BIDCONS_GACMEQ  set bank_code = '5038', bank_name = 'Tamilnad Mercantile Bank Ltd'				where usr_id= 'TMB5097'			and substring(IFSCCode,1,4) = 'TMBL'
			update BIDCONS_GACMEQ  set bank_code = '5070', bank_name = 'IDFC FIRST Bank Ltd'						where usr_id= 'CB USER 14'		and substring(IFSCCode,1,4) = 'IDFB'
			update BIDCONS_GACMEQ  set bank_code = '5022', bank_name = 'Bank of Maharashtra '						where usr_id= '30378'			and substring(IFSCCode,1,4) = 'MAHB'

			
			update BIDCONS_GACMEQ  set bank_code = '5008', bank_name = 'Axis Bank Ltd'								where usr_id = 'HK335646'		and substring(IFSCCode,1,4) = 'UTIB'
			update BIDCONS_GACMEQ  set bank_code = '5008', bank_name = 'Axis Bank Ltd'								where usr_id = 'LK447360'		and substring(IFSCCode,1,4) = 'UTIB'
			update BIDCONS_GACMEQ  set bank_code = '5010', bank_name = 'Kotak Mahindra Bank Ltd'					where usr_id = '109735'			and substring(IFSCCode,1,4) = 'KKBK'
			update BIDCONS_GACMEQ  set bank_code = '5014', bank_name = 'HSBC Ltd'									where usr_id = 'IPOOPS16'		and substring(IFSCCode,1,4) = 'HSBC'
			update BIDCONS_GACMEQ  set bank_code = '5016', bank_name = 'Bank of India '								where usr_id = 'AS215701'		and substring(IFSCCode,1,4) = 'BKID'
			update BIDCONS_GACMEQ  set bank_code = '5027', bank_name = 'Indian Bank'								where usr_id = 'VIGNESH'		and substring(IFSCCode,1,4) = 'IDIB'
			update BIDCONS_GACMEQ  set bank_code = '5029', bank_name = 'Canara Bank Ltd '							where usr_id = 'NAPIUSER'		and substring(IFSCCode,1,4) = 'CNRB'
			update BIDCONS_GACMEQ  set bank_code = '5032', bank_name = 'Standard Chartered Bank'					where usr_id = '1165498'		and substring(IFSCCode,1,4) = 'SCBL'
			update BIDCONS_GACMEQ  set bank_code = '5038', bank_name = 'Tamilnad Mercantile Bank Ltd'				where usr_id = '4849'			and substring(IFSCCode,1,4) = 'TMBL'
			update BIDCONS_GACMEQ  set bank_code = '5038', bank_name = 'Tamilnad Mercantile Bank Ltd'			    where usr_id = 'TMBAPI'			and substring(IFSCCode,1,4) = 'TMBL'	
			update BIDCONS_GACMEQ  set bank_code = '5039', bank_name = 'Nutan Nagarik Sahakari Bank Ltd'			where usr_id = 'JINAL'			and substring(IFSCCode,1,4) = 'NNSB'
			update BIDCONS_GACMEQ  set bank_code = '5042', bank_name = 'The South Indian Bank Ltd'					where usr_id = 'BR0024'			and substring(IFSCCode,1,4) = 'SIBL'
			update BIDCONS_GACMEQ  set bank_code = '5045', bank_name = 'DBS Bank Ltd'								where usr_id = 'ASHISH'			and substring(IFSCCode,1,4) = 'DBSS'
			update BIDCONS_GACMEQ  set bank_code = '5051', bank_name = 'The Surat Peoples Coop Bank Ltd'			where usr_id = 'MAA416'			and substring(IFSCCode,1,4) = 'SPCB'
			update BIDCONS_GACMEQ  set bank_code = '5054', bank_name = 'Karnataka Bank Ltd' 						where usr_id = 'COMSEC'			and substring(IFSCCode,1,4) = 'KARB'
			update BIDCONS_GACMEQ  set bank_code = '5060', bank_name = 'The Jammu and Kashmir Bank Limited'			where usr_id = '8663'			and substring(IFSCCode,1,4) = 'JAKA'
			update BIDCONS_GACMEQ  set bank_code = '5064', bank_name = 'Mehsana Urban Coop Bank Ltd'				where usr_id = 'WEBAPI'			and substring(IFSCCode,1,4) = '0001'
			update BIDCONS_GACMEQ  set bank_code = '5069', bank_name = 'Au Small Finance Bank  '					where usr_id = 'API1'			and substring(IFSCCode,1,4) = 'AUBL'
			update BIDCONS_GACMEQ  set bank_code = '5070', bank_name = 'IDFC First Bank Ltd '						where usr_id = 'CBUSER1PROD'	and substring(IFSCCode,1,4) = 'IDFB'
			update BIDCONS_GACMEQ  set bank_code = '5057', bank_name = 'Janta Sahakari Bank Ltd'					where usr_id = 'MCV1365'		and substring(IFSCCode,1,4) = 'JSBP'
			update BIDCONS_GACMEQ  set bank_code = '5067', bank_name = 'Bandhan Bank Ltd'							where usr_id = 'SHUBHAM_D'		and substring(IFSCCode,1,4) = 'BDBL'

	--select 'NSEBID-BIDGACMEQ-FILE-[BIDCONT01GACMEQ]' AS [DESCRIPTION],EXCHG, COUNT(*) as [No.of.Records],SUM(INT,APPLSHARES) as [Applied_Shares],
	--SUM(CAST(totamtrecd AS decimal(18,3))) as [Appl_Amount_Received] from BIDCONS_GACMEQ GROUP BY EXCHG
	----SELECT * into FROM BIDCONS_GACMEQ 
	--NSEsummary-
	--SELECT * FROM BSEBIDSUMMARY_GACMEQ01
	if object_id('NSEBIDSUMMARY_GACMEQ01','u') is not null drop table NSEBIDSUMMARY_GACMEQ01
	SELECT * INTO NSEBIDSUMMARY_GACMEQ01 FROM BIDCONS_GACMEQ WHERE EXCHG = 'NSE'
	--SELECT * FROM NSEBIDSUMMARY_GACMEQ01
	if object_id('jtemp01','u') is not null drop table jtemp01
	SELECT EXCHG,bank_code as [Bank Code],bank_name as [Bank Name],COUNT(*) AS [No.of.Bids],sum(applshares) as [Applied_Shares],SUM(CAST(applamount AS decimal(18,2))) as [Appl_Amount_Received] into JTEMP01 FROM BIDCONS_GACMEQ  GROUP BY EXCHG,bank_code,bank_name order by bank_name
	ALTER TABLE Jtemp01 ADD ID INT IDENTITY (1,1)
	--select 'NSEBID-BIDGACMEQ-BANK-WISE-FILE-[BIDCONT02GACMEQ]' as [Description],Vbank_name AS [Bank_Name],Vbank_code AS [Bank_Code],
	--TOTAL_BIDS AS [Total_Bids_Count],SHARES_APPLIED AS [Total_Applied_Shares], CAST(APPLIED_AMOUNT AS decimal(18,2))  AS [Total_Applied_Amount] 
	if object_id('NSEBIDSUMMARY_GACMEQ02','u') is not null drop table NSEBIDSUMMARY_GACMEQ02
	select [exchg],[BANK NAME],[BANK CODE],[No.of.Bids],Applied_Shares,appl_Amount_received INTO NSEBIDSUMMARY_GACMEQ02 From Jtemp01 WHERE EXCHG = 'NSE'
	--select * from NSEBIDSUMMARY_GACMEQ02
	DECLARE @cmd2 varchar(500),@filename2 varchar(100)
	SELECT @filename2 ='NSEBID_GACMEQ_'+FORMAT(GETDATE(),'yyyyMMdd')+FORMAT(GETDATE(),'HHmmss')+'.TXT'       
	SET @cmd2 = 'bcp "SELECT [BANK CODE],[BANK NAME],[EXCHG],[NO.OF.BIDS] AS [Total Bids] ,Applied_Shares,Appl_Amount_received FROM IPORIGHTSBONUS.DBO.NSEBIDSUMMARY_GACMEQ02" '+ 'queryout D:\VRIGHTS\GACMEQ\'+ @filename2 + ' -c -UTF8 -T -Slocalhost -t,'
	EXEC master..xp_cmdshell @cmd2
	IF OBJECT_ID ( 'temp1', 'U' ) IS NOT NULL  DROP TABLE temp1
	IF OBJECT_ID ( 'temp2', 'U' ) IS NOT NULL  DROP TABLE temp2
	IF OBJECT_ID ( 'temp3', 'U' ) IS NOT NULL  DROP TABLE temp3
	SELECT BANK_NAME,BANK_CODE,COUNT(*) AS TOTAL_BIDS_COUNT,SUM(CONVERT(INT,APPLSHARES)) as Total_Applied_Shares, sum(CAST(APPLAMOUNT AS decimal(18,2)))  as Total_Applied_Amount,'SE-BSE' AS Stock_Exchange into temp1 FROM BIDCONS_GACMEQ where exchg ='BSE' group by bank_name,bank_code
	SELECT BANK_NAME,BANK_CODE,COUNT(*) AS TOTAL_BIDS_COUNT,SUM(CONVERT(INT,APPLSHARES)) as Total_Applied_Shares, sum(CAST(APPLAMOUNT AS decimal(18,2)))  as Total_Applied_Amount,'SE-NSE' AS Stock_Exchange into temp2 FROM BIDCONS_GACMEQ where exchg ='NSE' group by bank_name,bank_code
	ALTER TABLE TEMP1 ADD ID INT IDENTITY(1,1)
--	ALTER TABLE TEMP1 ADD ID INT IDENTITY(1001,1)
--	SELECT * FROM TEMP1
--	SELECT * FROM TEMP2
	IF OBJECT_ID ( 'FinalGacmEqConsolReport', 'U' ) IS NOT NULL  DROP TABLE FinalGacmEqConsolReport		
	select * into FinalGacmEqConsolReport FROM TEMP1
	insert into FinalGacmEqConsolReport SELECT * FROM TEMP2
	update FINALGACMEQCONSOLREPORT		set bank_name = trim(bank_name)
--	SELECT * FROM FINALGACMEQCONSOLREPORT		
	DECLARE @cmd3 varchar(500),@filename3 varchar(100)
	SELECT @filename3 ='TOTBID_GACMEQ.CSV'       
	--SELECT @filename3 ='TOTBID_GACMEQ_'+FORMAT(GETDATE(),'yyyyMMdd')+FORMAT(GETDATE(),'HHmmss')+'.TXT'       
	SET @cmd3 = 'bcp "SELECT ID,Bank_Name,Bank_Code,Total_Bids_Count,Total_Applied_Shares,Total_Applied_amount,Stock_Exchange  FROM IPORIGHTSBONUS.DBO.FINALGACMEQCONSOLREPORT" '+ 'queryout d:\VRIGHTS\GACMEQ\'+ @filename3 + ' -c -UTF8 -T -Slocalhost -t, '
	EXEC master..xp_cmdshell @cmd3
	--IF REQUIRED INDIVIDUAL FILES OF BOTH NSE AND BSE 
	--SELECT * FROM BIDCONS_GACMEQ	
	--IF DATA OF BSEBID ONLY FOR EQ
	--SELECT * FROM BSEBIDGACMEQ  	
	--IF DATA OF NSEBID ONLY FOR EQ
	--SELECT * FROM NSE_BIDGACMEQ
END



GO
/****** Object:  StoredProcedure [dbo].[SP_BIDPROGACMEQ1]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_BIDPROGACMEQ1]
with 
RECOMPILE
as
begin

--	IF OBJECT_ID ( 'BSEBIDGACMEQ', 'U' ) IS NOT NULL  DROP TABLE BSEBIDGACMEQ
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--BID FILE - NSE PROCESS
--IMPORT FROM SOURCE [D:\VRIGHTS\GACMEQ\]
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	IF OBJECT_ID ( 'NSE_BIDGACMEQ', 'U' ) IS NOT NULL  DROP TABLE NSE_BIDGACMEQ
	SELECT * INTO NSE_BIDGACMEQ FROM NSE_BID01
	TRUNCATE TABLE NSE_BIDGACMEQ
	BULK INSERT NSE_BIDGACMEQ
	FROM 'D:\VRights\GACMEQ\ASBA_ADROITINFR_16FEB2024171952_BANK_01.csv' 
	WITH 
	(  
		FIRSTROW = 0,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=1000
	)
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	--CREATE A CONSOLIDATE FILE WITH BSE & NSE BID FILES
	--WITH ALL THE DATA FIELDS
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	IF OBJECT_ID ( 'BIDCONS_GACMEQ', 'U' ) IS NOT NULL  DROP TABLE BIDCONS_GACMEQ
	SELECT * INTO BIDCONS_GACMEQ FROM BID_CONS01
	TRUNCATE TABLE BIDCONS_GACMEQ
		--CREATE TABLE BIDCONS_GACMEQ 
		--(	
		--	SLNO int IDENTITY(1,1),ORDERNO varchar(30),BOOKID varchar(20),BRANCH varchar(50),USR_ID varchar(15),SYMBOL varchar(20),APPLSHARES int,
		--	PRICE numeric(12,2),APPL_NO	varchar(25),Dep	varchar(20),DP_ID varchar(16),CL_ID varchar(16),CATEGORY varchar(15),APPLAMOUNT numeric(18,2),
		--	CLNAME varchar(100),PAN_No varchar(40),BankName varchar(100),Loc varchar(50),AcNo varchar(30),IFSCCode varchar(20),BRefno varchar(50),
		--	EDATE varchar(30),MODDATE varchar(30),SBCODE varchar(20),MEMTYPE varchar(20),ACCODE varchar(20),EXCHG varchar(4),CRU_FLAG varchar(5),
		--	COLLBANK varchar(50),BIDDPID varchar(16),BIDPAN varchar(20),RDKEY varchar(20),MATCHING_REMARKS varchar(30),TXNS varchar(5),
		--	BEN_NAME varchar(100),BEN_PAN varchar(20),BEN_JT1PAN varchar(20),BEN_JT2PAN varchar(20),REJN_REASON	Varchar(100),BASIS varchar(10)
		--)
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
		INSERT INTO BIDCONS_GACMEQ
		(
			ORDERNO,SYMBOL,APPL_NO,DP_ID,CL_ID,APPLSHARES,PRICE,APPLAMOUNT,IFSCCODE,
			ACNO,PAN_NO,BREFNO,EDATE,MODDATE,CATEGORY,USR_ID,BOOKID,BRANCH,DEP,
			CLNAME,BANKNAME,LOC,SBCODE,MEMTYPE,ACCODE,EXCHG
		)
		SELECT
			ORDER_NO,SYMBOL,APPL_NO,DP_ID,CLIENT_ID_BENEFICIARY_ID,QUANTITY,PRICE,
			Amount,IFSCCode,Account_Number,PAN_No,BankReferenceNumber,ENTRY_DATE_TIME,
			LAST_MODF_DT_TIME,CATEGORY,USR_ID,BOOK_ID,BRANCH,Depository,CLIENTNAME,
			Bank_Name,Location,SUBBROKERCODE_REF_NO,MEMBERTYPE,ACTIONCODE,'BSE '
		FROM BSEBIDGACMEQ
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
		INSERT INTO BIDCONS_GACMEQ
		(
			ORDERNO,SYMBOL,APPL_NO,DP_ID,CL_ID,APPLSHARES,PRICE,APPLAMOUNT,IFSCCODE,ACNO,
			PAN_NO,BREFNO,EDATE,MODDATE,CATEGORY,USR_ID,BOOKID,BRANCH,DEP,CLNAME,
			BANKNAME,LOC,SBCODE,MEMTYPE,ACCODE,EXCHG	
		)
		SELECT
			Transaction_Number,Symbol,Application_Number,DP_Id,Ben_Id,No_of_shares,Price_Cutoff,
			Total_Amount,IFSC_Code,Bank_Account_Number,PAN,ASBA_Block_Reference_Number,
			Transaction_Date,Modification_Date,Category,Username1,'','','','','','','','','','NSE '
		FROM NSE_BIDGACMEQ
		ALTER TABLE BIDCONS_GACMEQ ADD DPIDCLID VARCHAR(16)
		UPDATE BIDCONS_GACMEQ  SET DPIDCLID = TRIM(DP_ID)+TRIM(CL_ID) WHERE DP_ID LIKE 'IN%' AND EXCHG = 'BSE'
		UPDATE BIDCONS_GACMEQ  SET DPIDCLID = TRIM(CL_ID) WHERE DP_ID NOT LIKE 'I%' AND LEN(CL_ID) = 16 
		UPDATE BIDCONS_GACMEQ  SET DPIDCLID = TRIM(CL_ID) WHERE DP_ID IS NULL AND LEN(CL_ID) = 16 
		UPDATE BIDCONS_GACMEQ  SET DPIDCLID = TRIM(CL_ID) WHERE DP_ID ='NULL' AND LEN(CL_ID) = 16 
		ALTER TABLE BIDCONS_GACMEQ ADD DEPOSITORYFLAG VARCHAR(4)
		UPDATE BIDCONS_GACMEQ  SET DEPOSITORYFLAG = 'NSDL' WHERE DPIDCLID LIKE 'IN%'
		UPDATE BIDCONS_GACMEQ  SET DEPOSITORYFLAG = 'CDSL' WHERE DPIDCLID NOT LIKE 'IN%'
		alter table BIDCONS_GACMEQ  add bank_code varchar(4),bank_name varchar(100)
		UPDATE A SET a.BANK_NAME = b.BANKNAME,a.BANK_CODE  = b.CODE
			FROM  BIDCONS_GACMEQ a join MST_BM b 
			ON trim(a.usr_id) = trim(b.code)
select * from bidcons_gacmeq
				update BIDCONS_GACMEQ  set bank_code = '5064', bank_name = 'MEHSANA URBAN CO_OP BANK LTD'	where usr_id = 'WEBAPI'	and substring(IFSCCode,1,4) = '0001'
				update BIDCONS_GACMEQ  set bank_code = '5060', bank_name = 'The Jammu_Kashmir Bank Limited' where usr_id = '8663'	and substring(IFSCCode,1,4) = 'JAKA'
				update BIDCONS_GACMEQ  set bank_code = '5051', bank_name = 'The Surat Peoples Co_op Bank Ltd' where usr_id = 'MAA416'and substring(IFSCCode,1,4) = 'SPCB'
				update BIDCONS_GACMEQ  set bank_code = '5008', bank_name = 'Axis Bank Ltd' where usr_id = 'LK447360'and substring(IFSCCode,1,4) = 'UTIB'
				update BIDCONS_GACMEQ  set bank_code = '5054', bank_name = 'Karnataka Bank Ltd' 	 where usr_id = 'COMSEC'and substring(IFSCCode,1,4) = 'KARB'
				update BIDCONS_GACMEQ  set bank_code = '5032', bank_name = 'Standard Chartered Bank' where usr_id = '1165498'and substring(IFSCCode,1,4) = 'SCBL'
				update BIDCONS_GACMEQ  set bank_code = '5038', bank_name = 'Tamilnad Mercantile Bank Ltd'	 where usr_id = '4849'	and substring(IFSCCode,1,4) = 'TMBL'
				update BIDCONS_GACMEQ  set bank_code = '5069', bank_name = 'Au Small Finance Bank ' where usr_id = 'API1'	and substring(IFSCCode,1,4) = 'AUBL'
				update BIDCONS_GACMEQ  set bank_code = '5045', bank_name = 'DBS Bank Ltd' where (usr_id = 'ASHISH' or substring(IFSCCode,1,4) = 'DBSS') and bank_code  is null
				update BIDCONS_GACMEQ  set bank_code = '5042', bank_name = 'The South Indian Bank Ltd' where usr_id = 'BR0024'and substring(IFSCCode,1,4) = 'SIBL'
				update BIDCONS_GACMEQ  set bank_code = '5014', bank_name = 'HSBC Ltd' where usr_id = 'IPOOPS16'and substring(IFSCCode,1,4) = 'HSBC'
				update BIDCONS_GACMEQ  set bank_code = '5039', bank_name = 'Nutan Nagarik Sahakari Bank Ltd'	 where usr_id = 'JINAL'	and substring(IFSCCode,1,4) = 'NNSB'
				update BIDCONS_GACMEQ  set bank_code = '5057', bank_name = 'Janta Sahakari Bank Ltd' where usr_id = 'MCV1365'and substring(IFSCCode,1,4) = 'JSBP'
				update BIDCONS_GACMEQ  set bank_code = '5029', bank_name = 'Canara Bank' where usr_id = 'NAPIUSER'and substring(IFSCCode,1,4) = 'CNRB'
				update BIDCONS_GACMEQ  set bank_code = '5067', bank_name = 'Bandhan Bank Ltd'	 where usr_id = 'SHUBHAM_D'and substring(IFSCCode,1,4) = 'BDBL'
				update BIDCONS_GACMEQ  set bank_code = '5001', bank_name = 'IDBI Bank Ltd' where usr_id = 'VIGNESH'and substring(IFSCCode,1,4) = 'IDIB'
		IF OBJECT_ID ( 'temp1', 'U' ) IS NOT NULL  DROP TABLE temp1
		IF OBJECT_ID ( 'temp2', 'U' ) IS NOT NULL  DROP TABLE temp2
		IF OBJECT_ID ( 'temp3', 'U' ) IS NOT NULL  DROP TABLE temp3
		SELECT bank_name,SUM(CONVERT(INT,APPLSHARES)) as AppliedShares, sum(CAST(APPLAMOUNT AS decimal(18,3)))  as AppliedAmount,'SE-BSE' AS SE into temp1 FROM BIDCONS_GACMEQ where exchg ='BSE' group by bank_name
		SELECT bank_name,SUM(CONVERT(INT,APPLSHARES)) as AppliedShares, sum(CAST(APPLAMOUNT AS decimal(18,3)))  as AppliedAmount,'SE-NSE' AS SE into temp2 FROM BIDCONS_GACMEQ where exchg ='NSE' group by bank_name
		SELECT * FROM TEMP1
		UNION ALL
		SELECT * FROM TEMP2
END

GO
/****** Object:  StoredProcedure [dbo].[SP_BIDPROTDPLEQ]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_BIDPROTDPLEQ]
with 
RECOMPILE
as
begin
	IF OBJECT_ID ( 'BSEBIDTDPLEQ', 'U' ) IS NOT NULL  DROP TABLE BSEBIDTDPLEQ
	select * into BSEBIDTDPLEQ from bsebidsample
	TRUNCATE TABLE BSEBIDTDPLEQ
	BULK INSERT BSEBIDTDPLEQ
		FROM 'D:\VRights\TDPLEQ\bsebid.dat' 
		WITH 
		(  
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',  
			ROWTERMINATOR = '\n',  
			BATCHSIZE=1000
		)
	UPDATE BSEBIDTDPLEQ	SET CLIENTNAME =''	WHERE CLIENTNAME IS NULL
	UPDATE BSEBIDTDPLEQ	SET BANK_NAME = ''  WHERE BANK_NAME IS NULL
	UPDATE BSEBIDTDPLEQ	SET	LOCATION  =''	WHERE LOCATION IS NULL
	UPDATE BSEBIDTDPLEQ	SET Account_Number ='' WHERE Account_Number IS NULL
	UPDATE BSEBIDTDPLEQ	SET SUBBROKERCODE_REF_NO ='' WHERE SUBBROKERCODE_REF_NO IS NULL
	IF OBJECT_ID ( 'BIDCONT01TDPLEQ', 'U' ) IS NOT NULL  DROP TABLE BIDCONT01TDPLEQ
	SELECT COUNT(*) AS NOOFRECORDS, SUM(CONVERT(INT,QUANTITY)) TOTQTYAPPLIED,SUM(CAST(AMOUNT AS NUMERIC)) AS TOTAMTRECD  INTO BIDCONT01TDPLEQ FROM BSEBIDTDPLEQ 	
	--SELECT * FROM BIDCONT01TDPLEQ
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	--BANK MASTER DATA
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	IF OBJECT_ID ( 'MST_BM', 'U' ) IS NOT NULL  DROP TABLE MST_BM
	    CREATE TABLE MST_BM (CODE VARCHAR(5),BANKNAME VARCHAR(100))
		BULK INSERT MST_BM
		FROM 'D:\VRIGHTS\BANKMASTER\BANK.csv' 
		WITH 
		(  
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=50
		)
	ALTER TABLE BSEBIDTDPLEQ ADD exchg varchar(3)
	ALTER TABLE BSEBIDTDPLEQ ADD VBANK_NAME VARCHAR(100) 
	ALTER TABLE BSEBIDTDPLEQ ADD VBANK_CODE VARCHAR(4)
	ALTER TABLE BSEBIDTDPLEQ ADD DPIDCLID VARCHAR(16)
	UPDATE A SET a.EXCHG = 'BSE',a.VBANK_NAME = b.BANKNAME,a.VBANK_CODE  = b.CODE
		FROM  BSEBIDTDPLEQ a join MST_BM b 
		ON trim(a.usr_id) = trim(b.code)
	--select * from BSEBIDTDPLEQ where Vbank_name is null
	--EXECUTE ONCE ANY RECORDS DISPLAYED
	--select usr_id,substring(ifsccode,1,4) from BSEBIDTDPLEQ where Vbank_name is null group by usr_id,substring(IFSCCode,1,4)
	update BSEBIDTDPLEQ set vbank_code = '5008', vbank_name = 'Axis Bank Ltd' where usr_id = 'LK447360'and substring(IFSCCode,1,4) = 'UTIB'
	update BSEBIDTDPLEQ set vbank_code = '5054', vbank_name = 'Karnataka Bank Ltd' 	 where usr_id = 'COMSEC'and substring(IFSCCode,1,4) = 'KARB'
	update BSEBIDTDPLEQ set vbank_code = '5032', vbank_name = 'Standard Chartered Bank' where usr_id = '1165498'and substring(IFSCCode,1,4) = 'SCBL'
	update BSEBIDTDPLEQ set vbank_code = '5038', vbank_name = 'Tamilnad Mercantile Bank Ltd'	 where usr_id = '4849'	and substring(IFSCCode,1,4) = 'TMBL'
	update BSEBIDTDPLEQ set vbank_code = '5060', vbank_name = 'The Jammu and Kashmir Bank Limited' where usr_id = '8663'	and substring(IFSCCode,1,4) = 'JAKA'
	update BSEBIDTDPLEQ set vbank_code = '5069', vbank_name = 'Au Small Finance Bank ' where usr_id = 'API1'	and substring(IFSCCode,1,4) = 'AUBL'
	update BSEBIDTDPLEQ set vbank_code = '5045', vbank_name = 'DBS Bank Ltd' where exchg is null AND (usr_id = 'ASHISH' OR substring(IFSCCode,1,4) = 'DBSS')
	update BSEBIDTDPLEQ set vbank_code = '5042', vbank_name = 'The South Indian Bank Ltd' where usr_id = 'BR0024'and substring(IFSCCode,1,4) = 'SIBL'
	update BSEBIDTDPLEQ set vbank_code = '5014', vbank_name = 'HSBC Ltd' where usr_id = 'IPOOPS16'and substring(IFSCCode,1,4) = 'HSBC'
	update BSEBIDTDPLEQ set vbank_code = '5039', vbank_name = 'Nutan Nagarik Sahakari Bank Ltd'	 where usr_id = 'JINAL'	and substring(IFSCCode,1,4) = 'NNSB'
	update BSEBIDTDPLEQ set vbank_code = '5051', vbank_name = 'The Surat Peoples Coop Bank Ltd' where usr_id = 'MAA416'and substring(IFSCCode,1,4) = 'SPCB'
	update BSEBIDTDPLEQ set vbank_code = '5057', vbank_name = 'Janta Sahakari Bank Ltd' where usr_id = 'MCV1365'and substring(IFSCCode,1,4) = 'JSBP'
	update BSEBIDTDPLEQ set vbank_code = '5029', vbank_name = 'Canara Bank' where usr_id = 'NAPIUSER'and substring(IFSCCode,1,4) = 'CNRB'
	update BSEBIDTDPLEQ set vbank_code = '5067', vbank_name = 'Bandhan Bank Ltd'	 where usr_id = 'SHUBHAM_D'and substring(IFSCCode,1,4) = 'BDBL'
	update BSEBIDTDPLEQ set vbank_code = '5001', vbank_name = 'IDBI Bank Ltd' where usr_id = 'VIGNESH'and substring(IFSCCode,1,4) = 'IDIB'
	update BSEBIDTDPLEQ set vbank_code = '5064', vbank_name = 'Mehsana Urban Coop Bank Ltd'	where usr_id = 'WEBAPI'	and substring(IFSCCode,1,4) = '0001'
	--select * from BSEBIDTDPLEQ where VBANK_CODE IS NULL
	--select usr_id,substring(ifsccode,1,4) from BSEBIDTDPLEQ where vbank_name is null group by usr_id,substring(IFSCCode,1,4)
	--if nil recods displays [ok] 
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	--summary of bids stock exchange wise & bank wise
	--select * from BSEBIDTDPLEQ WHERE DP_ID NOT LIKE 'I%' AND LEN(CLIENT_ID_BENEFICIARY_ID) = 16
	UPDATE BSEBIDTDPLEQ SET DPIDCLID = TRIM(DP_ID)+TRIM(CLIENT_ID_BENEFICIARY_ID) WHERE DP_ID LIKE 'IN%'
	UPDATE BSEBIDTDPLEQ SET DPIDCLID = TRIM(CLIENT_ID_BENEFICIARY_ID) WHERE DP_ID NOT LIKE 'I%' AND LEN(CLIENT_ID_BENEFICIARY_ID) = 16
	UPDATE BSEBIDTDPLEQ SET DPIDCLID = TRIM(CLIENT_ID_BENEFICIARY_ID) WHERE LEN(CLIENT_ID_BENEFICIARY_ID) = 16 and dpidclid is null
	--IF OBJECT_ID ( 'CDSLNSDLBD', 'U' ) IS NOT NULL  DROP TABLE CDSLNSDLBD
	--SELECT DPIDCLID INTO CDSLNSDLBD  FROM BSEBIDTDPLEQ GROUP BY DPIDCLID  
	--SELECT SUBSTRING(DPIDCLID,1,8)+','+SUBSTRING(DPIDCLID,9,8)+',IN9737B01023' as 'NsdlBid_Dpid_Clid'  FROM CDSLNSDLBD  WHERE DPIDCLID LIKE 'I%' --280
	--SELECT TRIM(DPIDCLID)  FROM CDSLNSDLBD  WHERE DPIDCLID LIKE 'I%'  ---FOR EXCEL--280
	--NSDL
	--exec VCCIPL.DBO.sp_NSDLBENDEMF --[INPUT FILE D:\BENDEM\NSDL\NCNVBD001.csv ] [OUTPUT D:\BENDEM\NSDL\IN200537_BENDEM????.TXT]
	--SELECT TRIM(DPIDCLID)+',IN9737B01023' FROM CDSLNSDLBD WHERE DPIDCLID LIKE '1%' GROUP BY DPIDCLID --490
	--SELECT TRIM(DPIDCLID) FROM CDSLNSDLBD WHERE DPIDCLID LIKE '1%' GROUP BY DPIDCLID --384
	----CDSL
	--EXEC VCCIPL.DBO.sp_genAnyCompanyBendemCDSL '1204','IN9737B01023'  --[INPUT:-D:\bendem\CDSLBENDEM.csv][OUTPUT:-D:\BENDEM\CDSL\999999.????.CVF]
	--SELECT	exchg AS [STOCK EXCHANGE],COUNT(*) AS TOTAL_BIDS,SUM(CONVERT(INT,QUANTITY)) AS SHARES_APPLIED, 
	--		SUM(convert(numeric(18,2),AMOUNT)) AS APPLIED_AMOUNT 
	--		FROM BSEBIDTDPLEQ group by exchg
	IF OBJECT_ID ( 'BIDCONT02TDPLEQ', 'U' ) IS NOT NULL  DROP TABLE BIDCONT02TDPLEQ
	SELECT	Vbank_name,Vbank_code,COUNT(*) AS TOTAL_BIDS,SUM(CONVERT(INT,QUANTITY)) AS SHARES_APPLIED, 
			SUM(CAST(AMOUNT AS FLOAT)) AS APPLIED_AMOUNT, 'BSE' AS EXCHG into BIDCONT02TDPLEQ FROM 
			BSEBIDTDPLEQ A  group by Vbank_name,Vbank_code order by COUNT(*) DESC
	--IMPORTANT
	--SELECT AMOUNT,TRY_CONVERT(FLOAT,AMOUNT) AS [VARCHAR TO FLOAT] FROM BSEBIDTDPLEQ
	--SELECT AMOUNT,CAST(AMOUNT AS FLOAT) AS AMTFLOATCOLUMN FROM BSEBIDTDPLEQ;
	--IMPORTANT
	IF OBJECT_ID ( 'Jtemp1', 'U' ) IS NOT NULL  DROP TABLE Jtemp1
	select 'BSEBID-BIDTDPLEQ-FILE-[BIDCONT01TDPLEQ]' AS [DESCRIPTION],Noofrecords as [No.of.Records],totqtyapplied as [Applied_Shares],
	CAST(totamtrecd AS decimal(18,2)) as [Appl_Amount_Received],'BSE' AS EXCHG from BIDCONT01TDPLEQ

	select 'BSEBID-BIDTDPLEQ-BANK-WISE-FILE-[BIDCONT02TDPLEQ]' as [Description],Vbank_name AS [Bank_Name],Vbank_code AS [Bank_Code],'BSE' AS BSE,
	TOTAL_BIDS AS [Total_Bids_Count],SHARES_APPLIED AS [Total_Applied_Shares], CAST(APPLIED_AMOUNT AS decimal(18,2))  AS [Total_Applied_Amount],
	EXCHG INTO Jtemp1 from BIDCONT02TDPLEQ order by VBANK_NAME
	SELECT * FROM BIDCONT02TDPLEQ 
	
	IF OBJECT_ID ( 'BSEBIDSUMMARY_TDPLEQ01', 'U' ) IS NOT NULL  DROP TABLE BSEBIDSUMMARY_TDPLEQ01
	ALTER TABLE Jtemp1 ADD ID INT IDENTITY (1,1)
	SELECT * FROM JTEMP1
	--UPDATE JTEMP1 SET EXCHG ='BSE'
	select BANK_NAME,BANK_CODE,EXCHG,Total_Bids_Count,Total_Applied_Shares,Total_Applied_Amount  INTO BSEBIDSUMMARY_TDPLEQ01 From Jtemp1
	--bsesummary-
	--SELECT * FROM BSEBIDSUMMARY_TDPLEQ01
	DECLARE @cmd varchar(500),@filename1 varchar(100)
	SELECT @filename1 ='BSEBID_TDPLEQ_'+FORMAT(GETDATE(),'yyyyMMdd')+FORMAT(GETDATE(),'HHmmss')+'.TXT'       
	SET @cmd = 'bcp "SELECT BANK_CODE,BANK_NAME,EXCHG,Total_Bids_Count,Total_Applied_Shares,Total_Applied_Amount FROM IPORIGHTSBONUS.DBO.BSEBIDSUMMARY_TDPLEQ01" '+ 'queryout D:\VRIGHTS\TDPLEQ\'+ @filename1 + ' -c -UTF8 -T -Slocalhost -t,'
	EXEC master..xp_cmdshell @cmd
	IF OBJECT_ID ( 'tempbsebidTDPLEQ', 'U' ) IS NOT NULL  DROP TABLE tempbsebidTDPLEQ
	select * into tempbsebidTDPLEQ from BSEBIDTDPLEQ
--END
--EXEC SP_BIDPROTDPLEQ1
--ALTER Procedure SP_BIDPROTDPLEQ1
--with 
--RECOMPILE
--as
--begin

--	IF OBJECT_ID ( 'BSEBIDTDPLEQ', 'U' ) IS NOT NULL  DROP TABLE BSEBIDTDPLEQ
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--BID FILE - NSE PROCESS
--IMPORT FROM SOURCE [D:\VRIGHTS\TDPLEQ\]
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	IF OBJECT_ID ( 'NSE_BIDTDPLEQ', 'U' ) IS NOT NULL  DROP TABLE NSE_BIDTDPLEQ
	SELECT * INTO NSE_BIDTDPLEQ FROM NSE_BID01
	TRUNCATE TABLE NSE_BIDTDPLEQ
	BULK INSERT NSE_BIDTDPLEQ
	FROM 'D:\VRights\TDPLEQ\ASBA_ADROITINFR_19FEB2024170028_BANK_01.CSV' 
	WITH 
	(  
		FIRSTROW = 0,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=1000
	)
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	--CREATE A CONSOLIDATE FILE WITH BSE & NSE BID FILES
	--WITH ALL THE DATA FIELDS
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	IF OBJECT_ID ( 'BIDCONS_TDPLEQ', 'U' ) IS NOT NULL  DROP TABLE BIDCONS_TDPLEQ
	SELECT * INTO BIDCONS_TDPLEQ FROM BID_CONS01
	TRUNCATE TABLE BIDCONS_TDPLEQ
		--CREATE TABLE BIDCONS_TDPLEQ 
		--(	
		--	SLNO int IDENTITY(1,1),ORDERNO varchar(30),BOOKID varchar(20),BRANCH varchar(50),USR_ID varchar(15),SYMBOL varchar(20),APPLSHARES int,
		--	PRICE numeric(12,2),APPL_NO	varchar(25),Dep	varchar(20),DP_ID varchar(16),CL_ID varchar(16),CATEGORY varchar(15),APPLAMOUNT numeric(18,2),
		--	CLNAME varchar(100),PAN_No varchar(40),BankName varchar(100),Loc varchar(50),AcNo varchar(30),IFSCCode varchar(20),BRefno varchar(50),
		--	EDATE varchar(30),MODDATE varchar(30),SBCODE varchar(20),MEMTYPE varchar(20),ACCODE varchar(20),EXCHG varchar(4),CRU_FLAG varchar(5),
		--	COLLBANK varchar(50),BIDDPID varchar(16),BIDPAN varchar(20),RDKEY varchar(20),MATCHING_REMARKS varchar(30),TXNS varchar(5),
		--	BEN_NAME varchar(100),BEN_PAN varchar(20),BEN_JT1PAN varchar(20),BEN_JT2PAN varchar(20),REJN_REASON	Varchar(100),BASIS varchar(10)
		--)
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
		INSERT INTO BIDCONS_TDPLEQ
		(
			ORDERNO,SYMBOL,APPL_NO,DP_ID,CL_ID,APPLSHARES,PRICE,APPLAMOUNT,IFSCCODE,
			ACNO,PAN_NO,BREFNO,EDATE,MODDATE,CATEGORY,USR_ID,BOOKID,BRANCH,DEP,
			CLNAME,BANKNAME,LOC,SBCODE,MEMTYPE,ACCODE,EXCHG
		)
		SELECT
			ORDER_NO,SYMBOL,APPL_NO,DP_ID,CLIENT_ID_BENEFICIARY_ID,QUANTITY,PRICE,
			Amount,IFSCCode,Account_Number,PAN_No,BankReferenceNumber,ENTRY_DATE_TIME,
			LAST_MODF_DT_TIME,CATEGORY,USR_ID,BOOK_ID,BRANCH,Depository,CLIENTNAME,
			Bank_Name,Location,SUBBROKERCODE_REF_NO,MEMBERTYPE,ACTIONCODE,'BSE '
		FROM BSEBIDTDPLEQ
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
		INSERT INTO BIDCONS_TDPLEQ
		(
			ORDERNO,SYMBOL,APPL_NO,DP_ID,CL_ID,APPLSHARES,PRICE,APPLAMOUNT,IFSCCODE,ACNO,
			PAN_NO,BREFNO,EDATE,MODDATE,CATEGORY,USR_ID,BOOKID,BRANCH,DEP,CLNAME,
			BANKNAME,LOC,SBCODE,MEMTYPE,ACCODE,EXCHG	
		)
		SELECT
			Transaction_Number,Symbol,Application_Number,DP_Id,Ben_Id,No_of_shares,Price_Cutoff,
			Total_Amount,IFSC_Code,Bank_Account_Number,PAN,ASBA_Block_Reference_Number,
			Transaction_Date,Modification_Date,Category,Username1,'','','','','','','','','','NSE '
		FROM NSE_BIDTDPLEQ
		ALTER TABLE BIDCONS_TDPLEQ ADD DPIDCLID VARCHAR(16)
		UPDATE BIDCONS_TDPLEQ  SET DPIDCLID = TRIM(DP_ID)+TRIM(CL_ID) WHERE DP_ID LIKE 'IN%' AND EXCHG = 'BSE'
		UPDATE BIDCONS_TDPLEQ  SET DPIDCLID = TRIM(CL_ID) WHERE DP_ID NOT LIKE 'I%' AND LEN(CL_ID) = 16 
		UPDATE BIDCONS_TDPLEQ  SET DPIDCLID = TRIM(CL_ID) WHERE DP_ID IS NULL AND LEN(CL_ID) = 16 
		UPDATE BIDCONS_TDPLEQ  SET DPIDCLID = TRIM(CL_ID) WHERE DP_ID ='NULL' AND LEN(CL_ID) = 16 
		ALTER TABLE BIDCONS_TDPLEQ ADD DEPOSITORYFLAG VARCHAR(4)
		UPDATE BIDCONS_TDPLEQ  SET DEPOSITORYFLAG = 'NSDL' WHERE DPIDCLID LIKE 'IN%'
		UPDATE BIDCONS_TDPLEQ  SET DEPOSITORYFLAG = 'CDSL' WHERE DPIDCLID NOT LIKE 'IN%'
		alter table BIDCONS_TDPLEQ  add bank_code varchar(4),bank_name varchar(100)
		UPDATE A SET a.BANK_NAME = b.BANKNAME,a.BANK_CODE  = b.CODE
			FROM  BIDCONS_TDPLEQ a join MST_BM b 
			ON trim(a.usr_id) = trim(b.code)
			--select * from bidcons_TDPLEQ
				update BIDCONS_TDPLEQ  set bank_code = '5064', bank_name = 'Mehsana Urban Coop Bank Ltd'	where usr_id = 'WEBAPI'	and substring(IFSCCode,1,4) = '0001'
				update BIDCONS_TDPLEQ  set bank_code = '5060', bank_name = 'The Jammu and Kashmir Bank Limited' where usr_id = '8663'	and substring(IFSCCode,1,4) = 'JAKA'
				update BIDCONS_TDPLEQ  set bank_code = '5051', bank_name = 'The Surat Peoples Coop Bank Ltd' where usr_id = 'MAA416'and substring(IFSCCode,1,4) = 'SPCB'
				update BIDCONS_TDPLEQ  set bank_code = '5008', bank_name = 'Axis Bank Ltd' where usr_id = 'LK447360'and substring(IFSCCode,1,4) = 'UTIB'
				update BIDCONS_TDPLEQ  set bank_code = '5054', bank_name = 'Karnataka Bank Ltd' 	 where usr_id = 'COMSEC'and substring(IFSCCode,1,4) = 'KARB'
				update BIDCONS_TDPLEQ  set bank_code = '5032', bank_name = 'Standard Chartered Bank' where usr_id = '1165498'and substring(IFSCCode,1,4) = 'SCBL'
				update BIDCONS_TDPLEQ  set bank_code = '5038', bank_name = 'Tamilnad Mercantile Bank Ltd'	 where usr_id = '4849'	and substring(IFSCCode,1,4) = 'TMBL'
				update BIDCONS_TDPLEQ  set bank_code = '5069', bank_name = 'Au Small Finance Bank ' where usr_id = 'API1'	and substring(IFSCCode,1,4) = 'AUBL'
				update BIDCONS_TDPLEQ  set bank_code = '5045', bank_name = 'DBS Bank Ltd' where (usr_id = 'ASHISH' or substring(IFSCCode,1,4) = 'DBSS') and bank_code  is null
				update BIDCONS_TDPLEQ  set bank_code = '5042', bank_name = 'The South Indian Bank Ltd' where usr_id = 'BR0024'and substring(IFSCCode,1,4) = 'SIBL'
				update BIDCONS_TDPLEQ  set bank_code = '5014', bank_name = 'HSBC Ltd' where usr_id = 'IPOOPS16'and substring(IFSCCode,1,4) = 'HSBC'
				update BIDCONS_TDPLEQ  set bank_code = '5039', bank_name = 'Nutan Nagarik Sahakari Bank Ltd'	 where usr_id = 'JINAL'	and substring(IFSCCode,1,4) = 'NNSB'
				update BIDCONS_TDPLEQ  set bank_code = '5057', bank_name = 'Janta Sahakari Bank Ltd' where usr_id = 'MCV1365'and substring(IFSCCode,1,4) = 'JSBP'
				update BIDCONS_TDPLEQ  set bank_code = '5029', bank_name = 'Canara Bank' where usr_id = 'NAPIUSER'and substring(IFSCCode,1,4) = 'CNRB'
				update BIDCONS_TDPLEQ  set bank_code = '5067', bank_name = 'Bandhan Bank Ltd'	 where usr_id = 'SHUBHAM_D'and substring(IFSCCode,1,4) = 'BDBL'
				update BIDCONS_TDPLEQ  set bank_code = '5001', bank_name = 'IDBI Bank Ltd' where usr_id = 'VIGNESH'and substring(IFSCCode,1,4) = 'IDIB'

	--select 'NSEBID-BIDTDPLEQ-FILE-[BIDCONT01TDPLEQ]' AS [DESCRIPTION],EXCHG, COUNT(*) as [No.of.Records],SUM(INT,APPLSHARES) as [Applied_Shares],
	--SUM(CAST(totamtrecd AS decimal(18,3))) as [Appl_Amount_Received] from BIDCONS_TDPLEQ GROUP BY EXCHG
	----SELECT * into FROM BIDCONS_TDPLEQ 
	--NSEsummary-
	--SELECT * FROM BSEBIDSUMMARY_TDPLEQ01
	if object_id('NSEBIDSUMMARY_TDPLEQ01','u') is not null drop table NSEBIDSUMMARY_TDPLEQ01
	SELECT * INTO NSEBIDSUMMARY_TDPLEQ01 FROM BIDCONS_TDPLEQ WHERE EXCHG = 'NSE'
	SELECT * FROM NSEBIDSUMMARY_TDPLEQ01
	if object_id('jtemp01','u') is not null drop table jtemp01
	SELECT EXCHG,bank_code as [Bank Code],bank_name as [Bank Name],COUNT(*) AS [No.of.Bids],sum(applshares) as [Applied_Shares],SUM(CAST(applamount AS decimal(18,2))) as [Appl_Amount_Received] into JTEMP01 FROM BIDCONS_TDPLEQ  GROUP BY EXCHG,bank_code,bank_name order by bank_name
	ALTER TABLE Jtemp01 ADD ID INT IDENTITY (1,1)
	--select 'NSEBID-BIDTDPLEQ-BANK-WISE-FILE-[BIDCONT02TDPLEQ]' as [Description],Vbank_name AS [Bank_Name],Vbank_code AS [Bank_Code],
	--TOTAL_BIDS AS [Total_Bids_Count],SHARES_APPLIED AS [Total_Applied_Shares], CAST(APPLIED_AMOUNT AS decimal(18,2))  AS [Total_Applied_Amount] 
	if object_id('NSEBIDSUMMARY_TDPLEQ02','u') is not null drop table NSEBIDSUMMARY_TDPLEQ02
	select [exchg],[BANK NAME],[BANK CODE],[No.of.Bids],Applied_Shares,appl_Amount_received INTO NSEBIDSUMMARY_TDPLEQ02 From Jtemp01 WHERE EXCHG = 'NSE'
	--select * from NSEBIDSUMMARY_TDPLEQ02
	DECLARE @cmd2 varchar(500),@filename2 varchar(100)
	SELECT @filename2 ='NSEBID_TDPLEQ_'+FORMAT(GETDATE(),'yyyyMMdd')+FORMAT(GETDATE(),'HHmmss')+'.TXT'       
	SET @cmd2 = 'bcp "SELECT [BANK CODE],[BANK NAME],[EXCHG],[NO.OF.BIDS] AS [Total Bids] ,Applied_Shares,Appl_Amount_received FROM IPORIGHTSBONUS.DBO.NSEBIDSUMMARY_TDPLEQ02" '+ 'queryout D:\VRIGHTS\TDPLEQ\'+ @filename2 + ' -c -UTF8 -T -Slocalhost -t,'
	EXEC master..xp_cmdshell @cmd2
	IF OBJECT_ID ( 'temp1', 'U' ) IS NOT NULL  DROP TABLE temp1
	IF OBJECT_ID ( 'temp2', 'U' ) IS NOT NULL  DROP TABLE temp2
	IF OBJECT_ID ( 'temp3', 'U' ) IS NOT NULL  DROP TABLE temp3
	SELECT BANK_NAME,BANK_CODE,COUNT(*) AS TOTAL_BIDS_COUNT,SUM(CONVERT(INT,APPLSHARES)) as Total_Applied_Shares, sum(CAST(APPLAMOUNT AS decimal(18,2)))  as Total_Applied_Amount,'SE-BSE' AS Stock_Exchange into temp1 FROM BIDCONS_TDPLEQ where exchg ='BSE' group by bank_name,bank_code
	SELECT BANK_NAME,BANK_CODE,COUNT(*) AS TOTAL_BIDS_COUNT,SUM(CONVERT(INT,APPLSHARES)) as Total_Applied_Shares, sum(CAST(APPLAMOUNT AS decimal(18,2)))  as Total_Applied_Amount,'SE-NSE' AS Stock_Exchange into temp2 FROM BIDCONS_TDPLEQ where exchg ='NSE' group by bank_name,bank_code
	ALTER TABLE TEMP1 ADD ID INT IDENTITY(1,1)
--	ALTER TABLE TEMP1 ADD ID INT IDENTITY(1001,1)
--	SELECT * FROM TEMP1
--	SELECT * FROM TEMP2
	IF OBJECT_ID ( 'FinalTDPLEQConsolReport', 'U' ) IS NOT NULL  DROP TABLE FinalTDPLEQConsolReport		
	select * into FinalTDPLEQConsolReport FROM TEMP1
	insert into FinalTDPLEQConsolReport SELECT * FROM TEMP2
	update FINALTDPLEQCONSOLREPORT		set bank_name = trim(bank_name)
--	SELECT * FROM FINALTDPLEQCONSOLREPORT		
	DECLARE @cmd3 varchar(500),@filename3 varchar(100)
	SELECT @filename3 ='TOTBID_TDPLEQ_'+FORMAT(GETDATE(),'yyyyMMdd')+FORMAT(GETDATE(),'HHmmss')+'.TXT'       
	SET @cmd3 = 'bcp "SELECT ID,Bank_Name,Bank_Code,Total_Bids_Count,Total_Applied_Shares,Total_Applied_amount,Stock_Exchange  FROM IPORIGHTSBONUS.DBO.FINALTDPLEQCONSOLREPORT" '+ 'queryout D:\VRIGHTS\TDPLEQ\'+ @filename3 + ' -c -UTF8 -T -Slocalhost -t,'
	EXEC master..xp_cmdshell @cmd3
END




	IF OBJECT_ID ( 'BID_MISMATCHES', 'U' ) IS NOT NULL  DROP TABLE BID_MISMATCHES
	create table BID_MISMATCHES
	(
		Symbol						nvarchar(50),	
		IFSC_Code					nvarchar(50),
		Application_No				nvarchar(50),
		DP_ID						nvarchar(50),
		Client_ID_Beneficiary_ID	nvarchar(50),
		Bid_Quantity				nvarchar(16),
		Rate_Price					NVARCHAR(18),
		Amount_to_be_blocked		NVARCHAR(20),
		PAN_no						nvarchar(50),
		Investor_Category           nvarchar(50),
		Bank_Refernce_No			nvarchar(50),
		Account_No					nvarchar(50),
		Created_Date				nvarchar(50),
		Modified_Date				nvarchar(50),
		Order_No					nvarchar(50),
		Share_Alloted				nvarchar(20),
		Amount_to_be_Transferred	nvarchar(40),
		Amount_to_be_Refunded		nvarchar(40),
		Reason_for_Non_Allotment	nvarchar(100),
		)
	TRUNCATE TABLE BID_MISMATCHES
	select * from BID_MISMATCHES
	BULK INSERT BID_MISMATCHES
	FROM 'D:\VRIGHTS\TDPLEQ\sample1.csv'
	WITH
	(
		FORMAT  ='CSV',
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		DATAFILETYPE = 'char',
		ROWTERMINATOR = '0x0D0A',
		BATCHSIZE=5,
		MAXERRORS = 3
	)
	SELECT * FROM BID_MISMATCHES
	--NOT ELIGIBLE EQUITY SHAREHOLDERS / ALLOTEE /PAN MISMATCH / MULTIPLE APPLICATION / INVALID APPLICATION
	
GO
/****** Object:  StoredProcedure [dbo].[sp_genrightscreditnsdlheaduplfile]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_genrightscreditnsdltotuplfile]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_genrightscreditsnsdldetailuplfile]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_genrightscreditsnsdluplfile]    Script Date: 26-10-2024 15:44:20 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GetTotalBSENSEEQDVUserBankDataBidData]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_GetTotalBSENSEEQDVUserBankDataBidData]
AS
BEGIN
		IF OBJECT_ID ( 'BIDuserBankData', 'U' ) IS NOT NULL  DROP TABLE BIDuserBankData
		SELECT EXCHG,USR_ID as User_Name,substring(IFSCCODE,1,4) as IFSC_Code,VBANK_NAME as Bank_Name,VBANK_CODE as Bank_Code into BIDuserBankData FROM  BSEBIDGACMEQ 
		union
		SELECT EXCHG,USR_ID as User_Name,substring(IFSCCODE,1,4) as IFSC_Code,VBANK_NAME as Bank_Name,VBANK_CODE as Bank_Code FROM BSEBIDGACMDV  
		union
		SELECT 'NSE' AS EXCHG,USERNAME1 as User_Name,substring(IFSC_CODE,1,4) as IFSC_Code,BANK_NAME as Bank_Name,BANK_CODE as Bank_Code FROM NSE_BIDGACMEQ 
		union
		SELECT 'NSE' AS EXCHG,USERNAME1 as User_Name,substring(IFSC_CODE,1,4) as IFSC_Code,BANK_NAME as Bank_Name,BANK_CODE as Bank_Code  FROM NSE_BIDGACMDV
		select * from BIDuserBankData
END
GO
/****** Object:  StoredProcedure [dbo].[sp_vcreate1]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE procedure [dbo].[sp_vcreate1] @mcode varchar(8)
	as 
	begin
		declare @fullpath varchar(50)
		set @fullpath = 'd:\rights_bonus\' + (select RIGHTS_CODE from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)
		PRINT ' full path '  +@fullpath + '\'

	end
GO
/****** Object:  StoredProcedure [dbo].[sp_vselect]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_vselect] @mcode varchar(8)
	as 
	begin
		declare @RIGHTS_CODE VARCHAR(8),@ISIN VARCHAR(12),@COMPANY_NAME	VARCHAR(150),@ISSUE_SHARES INT,
		@ISSUE_PRICE NUMERIC(12,2),@RD_FROM DATETIME,@RD_TO DATETIME,@ISSUE_OPENS DATETIME,@ISSUE_CLOSES DATETIME,@RE_TRADING_FROM DATETIME,@RE_TRADING_TO DATETIME,@RIGESCR_SUSPACCNO VARCHAR(20),@UNCLSEC_SUSPACCNO VARCHAR(20),
		@RIGHTENTITLETISIN VARCHAR(12),@TEMPISIN VARCHAR(12),@PART_FULLISIN	VARCHAR(12),@SOURCEFOLDER VARCHAR(50),@TARGETFOLDER	VARCHAR(50)
			set @isin = (Select isin from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)
			set @RIGHTS_CODE		= (select 	RIGHTS_CODE			from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)	
			set @ISIN				= (select 	ISIN				from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)
			set @COMPANY_NAME		= (select 	COMPANY_NAME		from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)
			set @ISSUE_SHARES		= (select 	ISSUE_SHARES		from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)
			set @ISSUE_PRICE		= (select 	ISSUE_PRICE			from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)	
			set @RD_FROM			= (select 	RD_FROM				from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)	
			set @RD_TO				= (select 	RD_TO				from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)
			set @ISSUE_OPENS		= (select 	ISSUE_OPENS			from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)	
			set @ISSUE_CLOSES		= (select 	ISSUE_CLOSES		from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)
			set @RE_TRADING_FROM	= (select 	RE_TRADING_FROM		from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)	
			set @RE_TRADING_TO		= (select 	RE_TRADING_TO		from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)
			set @RIGESCR_SUSPACCNO  = (select   RIGESCR_SUSPACCNO   from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)  
			set @UNCLSEC_SUSPACCNO  = (select   UNCLSEC_SUSPACCNO   from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)  
			set @RIGHTENTITLETISIN	= (select   RIGHTENTITLETISIN	from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)
			set @TEMPISIN			= (select   TEMPISIN			from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)
			set @PART_FULLISIN		= (select   PART_FULLISIN		from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)
			set @SOURCEFOLDER		= (select   SOURCEFOLDER		from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)
			set @TARGETFOLDER		= (select   TARGETFOLDER		from MASTER_RIGHTS_PARAM where RIGHTS_CODE = @mcode)
			
			PRINT '02 ' + @RIGHTS_CODE		
			PRINT '03 ' + @ISIN				
			PRINT '04 ' + @COMPANY_NAME		
			PRINT '05 ' + @ISSUE_SHARES		
			PRINT '06 ' + @ISSUE_PRICE		
			PRINT '07 ' + format(@RD_FROM,'yyyyMMdd')			
			PRINT '08 ' + format(@RD_TO,'yyyyMMdd')							
			PRINT '09 ' + format(@ISSUE_OPENS,'yyyyMMdd')					
			PRINT '10 ' + format(@ISSUE_CLOSES,'yyyyMMdd')					
			PRINT '11 ' + format(@RE_TRADING_FROM,'yyyyMMdd')				
			PRINT '12 ' + format(@RE_TRADING_TO,'yyyyMMdd')					
			PRINT '13 ' + @RIGESCR_SUSPACCNO  
			PRINT '14 ' + @UNCLSEC_SUSPACCNO  
			PRINT '15 ' + @RIGHTENTITLETISIN	
			PRINT '16 ' + @TEMPISIN			
			PRINT '17 ' + @PART_FULLISIN		
			PRINT '18 ' + @SOURCEFOLDER		
			PRINT '19 ' + @TARGETFOLDER		
	end
GO
/****** Object:  StoredProcedure [dbo].[vbidProcess01]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--BSEBIDAFC [COMPANYNAME]
--FIRSTCALL [FOLDERNAME]
-- bsebidsample
--BANK MASTER - D:\VRIGHTS\BANKMASTER\BANK.csv
--MST_BM
--BIDCONT02AFC

--[INPUT FILE D:\BENDEM\NSDL\NCNVBD001.csv ] [OUTPUT D:\BENDEM\NSDL\IN200537_BENDEM????.TXT]
--[INPUT FILE D:\bendem\CDSLBENDEM.csv]      [OUTPUT:-D:\BENDEM\CDSL\999999.????.CVF]
--PROCEDURES
--VCCIPL.DBO.sp_NSDLBENDEMF
--VCCIPL.DBO.sp_genAnyCompanyBendemCDSL '1204','IN9737B01023'  
--SELECT NAME as 'List Of Tables' FROM SYSOBJECTS WHERE ID IN (SELECT SD.DEPID FROM SYSOBJECTS SO,SYSDEPENDS SD WHERE SO.NAME = 'vbidProcess01' AND SD.ID = SO.ID)
--EXEC VBIDPROCESS01
CREATE Procedure [dbo].[vbidProcess01]
with 
RECOMPILE
as
begin
	IF OBJECT_ID ( 'BSEBIDAFC', 'U' ) IS NOT NULL  DROP TABLE BSEBIDAFC
	select * into bsebidafc from bsebidsample
	--SELECT * FROM BSEBIDAFC where CLIENT_ID_BENEFICIARY_ID ='10132151'
	TRUNCATE TABLE BSEBIDAFC
	BULK INSERT BSEBIDAFC
		FROM 'D:\VRights\FirstCall\bsebid.dat' 
		WITH 
		(  
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',  
			ROWTERMINATOR = '\n',  
			BATCHSIZE=1000
		)
	UPDATE BSEBIDAFC	SET CLIENTNAME =''	WHERE CLIENTNAME IS NULL
	UPDATE BSEBIDAFC	SET BANK_NAME = ''  WHERE BANK_NAME IS NULL
	UPDATE BSEBIDAFC	SET	LOCATION  =''	WHERE LOCATION IS NULL
	UPDATE BSEBIDAFC	SET Account_Number ='' WHERE Account_Number IS NULL
	UPDATE BSEBIDAFC	SET SUBBROKERCODE_REF_NO ='' WHERE SUBBROKERCODE_REF_NO IS NULL
	IF OBJECT_ID ( 'BIDCONT01AFC', 'U' ) IS NOT NULL  DROP TABLE BIDCONT01AFC
	SELECT COUNT(*) AS NOOFRECORDS, SUM(CONVERT(INT,QUANTITY)) TOTQTYAPPLIED,SUM(CAST(AMOUNT AS NUMERIC)) AS TOTAMTRECD  INTO BIDCONT01AFC FROM BSEBIDAFC 	
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	--BANK MASTER DATA
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	----IF OBJECT_ID ( 'ABL_BM', 'U' ) IS NOT NULL  DROP TABLE ABL_BM
	----CREATE TABLE ABL_BM (CODE VARCHAR(5),BANKNAME VARCHAR(100))
	----	BULK INSERT ABL_BM
	----	FROM 'D:\VRIGHTS\BANKMASTER\BANK.csv' 
	----	WITH 
	----	(  
	----	FIRSTROW = 2,
	----	FIELDTERMINATOR = ',',  
	----	ROWTERMINATOR = '\n',  
	----	BATCHSIZE=50
	----	)
	ALTER TABLE BSEBIDAFC ADD exchg varchar(3)
	ALTER TABLE BSEBIDAFC ADD VBANK_NAME VARCHAR(100) 
	ALTER TABLE BSEBIDAFC ADD VBANK_CODE VARCHAR(4)
	ALTER TABLE BSEBIDAFC ADD DPIDCLID VARCHAR(16)
	UPDATE A SET a.EXCHG = 'BSE',a.VBANK_NAME = b.BANKNAME,a.VBANK_CODE  = b.CODE
		FROM  BSEBIDAFC a join MST_BM b 
		ON trim(a.usr_id) = trim(b.code)
--select * from BSEBIDAFC where Vbank_name is null
--EXECUTE ONCE ANY RECORDS DISPLAYED
select usr_id,substring(ifsccode,1,4) from BSEBIDAFC where Vbank_name is null group by usr_id,substring(IFSCCode,1,4)
update BSEBIDAFC set vbank_code = '5008', vbank_name = 'Axis Bank Ltd' where usr_id = 'LK447360'and substring(IFSCCode,1,4) = 'UTIB'
update BSEBIDAFC set vbank_code = '5054', vbank_name = 'Karnataka Bank Ltd' 	 where usr_id = 'COMSEC'and substring(IFSCCode,1,4) = 'KARB'
update BSEBIDAFC set vbank_code = '5032', vbank_name = 'Standard Chartered Bank' where usr_id = '1165498'and substring(IFSCCode,1,4) = 'SCBL'
update BSEBIDAFC set vbank_code = '5038', vbank_name = 'Tamilnad Mercantile Bank Ltd'	 where usr_id = '4849'	and substring(IFSCCode,1,4) = 'TMBL'
update BSEBIDAFC set vbank_code = '5060', vbank_name = 'The Jammu & Kashmir Bank Limited' where usr_id = '8663'	and substring(IFSCCode,1,4) = 'JAKA'
update BSEBIDAFC set vbank_code = '5069', vbank_name = 'Au Small Finance Bank ' where usr_id = 'API1'	and substring(IFSCCode,1,4) = 'AUBL'
update BSEBIDAFC set vbank_code = '5045', vbank_name = 'DBS Bank Ltd' where usr_id = 'ASHISH'and substring(IFSCCode,1,4) = 'DBSS' and vbank_code  is null
update BSEBIDAFC set vbank_code = '5042', vbank_name = 'The South Indian Bank Ltd' where usr_id = 'BR0024'and substring(IFSCCode,1,4) = 'SIBL'
update BSEBIDAFC set vbank_code = '5014', vbank_name = 'HSBC Ltd' where usr_id = 'IPOOPS16'and substring(IFSCCode,1,4) = 'HSBC'
update BSEBIDAFC set vbank_code = '5039', vbank_name = 'Nutan Nagarik Sahakari Bank Ltd'	 where usr_id = 'JINAL'	and substring(IFSCCode,1,4) = 'NNSB'
update BSEBIDAFC set vbank_code = '5051', vbank_name = 'The Surat Peoples Co-op Bank Ltd' where usr_id = 'MAA416'and substring(IFSCCode,1,4) = 'SPCB'
update BSEBIDAFC set vbank_code = '5057', vbank_name = 'Janta Sahakari Bank Ltd' where usr_id = 'MCV1365'and substring(IFSCCode,1,4) = 'JSBP'
update BSEBIDAFC set vbank_code = '5029', vbank_name = 'Canara Bank' where usr_id = 'NAPIUSER'and substring(IFSCCode,1,4) = 'CNRB'
update BSEBIDAFC set vbank_code = '5067', vbank_name = 'Bandhan Bank Ltd'	 where usr_id = 'SHUBHAM_D'and substring(IFSCCode,1,4) = 'BDBL'
update BSEBIDAFC set vbank_code = '5001', vbank_name = 'IDBI Bank Ltd' where usr_id = 'VIGNESH'and substring(IFSCCode,1,4) = 'IDIB'
update BSEBIDAFC set vbank_code = '5064', vbank_name = 'MEHSANA URBAN CO-OP BANK LTD'	where usr_id = 'WEBAPI'	and substring(IFSCCode,1,4) = '0001'
--select * from BSEBIDAFC where exchg is null
select usr_id,substring(ifsccode,1,4) from BSEBIDAFC where vbank_name is null group by usr_id,substring(IFSCCode,1,4)
	--if nil recods displays [ok] 
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	--summary of bids stock exchange wise & bank wise
	--select * from BSEBIDAFC WHERE DP_ID NOT LIKE 'I%' AND LEN(CLIENT_ID_BENEFICIARY_ID) = 16
	UPDATE BSEBIDAFC SET DPIDCLID = TRIM(DP_ID)+TRIM(CLIENT_ID_BENEFICIARY_ID) WHERE DP_ID LIKE 'IN%'
	UPDATE BSEBIDAFC SET DPIDCLID = TRIM(CLIENT_ID_BENEFICIARY_ID) WHERE DP_ID NOT LIKE 'I%' AND LEN(CLIENT_ID_BENEFICIARY_ID) = 16
	UPDATE BSEBIDAFC SET DPIDCLID = TRIM(CLIENT_ID_BENEFICIARY_ID) WHERE LEN(CLIENT_ID_BENEFICIARY_ID) = 16 and dpidclid is null
	IF OBJECT_ID ( 'CDSLNSDLBD', 'U' ) IS NOT NULL  DROP TABLE CDSLNSDLBD
	SELECT DPIDCLID INTO CDSLNSDLBD  FROM BSEBIDAFC GROUP BY DPIDCLID  
	SELECT SUBSTRING(DPIDCLID,1,8)+','+SUBSTRING(DPIDCLID,9,8)+',IN9737B01023' as 'NsdlBid_Dpid_Clid'  FROM CDSLNSDLBD  WHERE DPIDCLID LIKE 'I%' --280
	SELECT TRIM(DPIDCLID)  FROM CDSLNSDLBD  WHERE DPIDCLID LIKE 'I%'  ---FOR EXCEL--280
	--NSDL
	--exec VCCIPL.DBO.sp_NSDLBENDEMF --[INPUT FILE D:\BENDEM\NSDL\NCNVBD001.csv ] [OUTPUT D:\BENDEM\NSDL\IN200537_BENDEM????.TXT]
	--SELECT TRIM(DPIDCLID)+',IN9737B01023' FROM CDSLNSDLBD WHERE DPIDCLID LIKE '1%' GROUP BY DPIDCLID --490
	--SELECT TRIM(DPIDCLID) FROM CDSLNSDLBD WHERE DPIDCLID LIKE '1%' GROUP BY DPIDCLID --384
	----CDSL
	--EXEC VCCIPL.DBO.sp_genAnyCompanyBendemCDSL '1204','IN9737B01023'  --[INPUT:-D:\bendem\CDSLBENDEM.csv][OUTPUT:-D:\BENDEM\CDSL\999999.????.CVF]
	SELECT	exchg AS [STOCK EXCHANGE],COUNT(*) AS TOTAL_BIDS,SUM(CONVERT(INT,QUANTITY)) AS SHARES_APPLIED, 
			SUM(convert(numeric(18,2),AMOUNT)) AS APPLIED_AMOUNT 
			FROM BSEBIDAFC group by exchg
	IF OBJECT_ID ( 'BIDCONT02AFC', 'U' ) IS NOT NULL  DROP TABLE BIDCONT02AFC
	SELECT	Vbank_name,Vbank_code,COUNT(*) AS TOTAL_BIDS,SUM(CONVERT(INT,QUANTITY)) AS SHARES_APPLIED, 
			SUM(CAST(AMOUNT AS FLOAT)) AS APPLIED_AMOUNT into BIDCONT02AFC FROM 
			BSEBIDAFC A  group by Vbank_name,Vbank_code order by COUNT(*) DESC
	--IMPORTANT
	--SELECT AMOUNT,TRY_CONVERT(FLOAT,AMOUNT) AS [VARCHAR TO FLOAT] FROM BSEBIDAFC
	--SELECT AMOUNT,CAST(AMOUNT AS FLOAT) AS AMTFLOATCOLUMN FROM BSEBIDAFC;
	--IMPORTANT
	IF OBJECT_ID ( 'Jtemp1', 'U' ) IS NOT NULL  DROP TABLE Jtemp1
	select 'BSEBID-BIDAFC-FILE-[BIDCONT01AFC]' AS [DESCRIPTION],Noofrecords as [No.of.Records],totqtyapplied as [Applied_Shares],
	totamtrecd as [Appl_Amount_Received] from BIDCONT01AFC
	select 'BSEBID-BIDAFC-BANK-WISE-FILE-[BIDCONT02AFC]' as [Description],Vbank_name AS [Bank_Name],Vbank_code AS [Bank_Code],
	TOTAL_BIDS AS [Total_Bids_Count],SHARES_APPLIED AS [Total_Applied_Shares],APPLIED_AMOUNT AS [Total_Applied_Amount] 
	INTO Jtemp1 from BIDCONT02AFC order by VBANK_NAME
	IF OBJECT_ID ( 'BIDSUMMARY01', 'U' ) IS NOT NULL  DROP TABLE BIDSUMMARY01
	ALTER TABLE Jtemp1 ADD ID INT IDENTITY (1,1)
	select ID,BANK_NAME,BANK_CODE,Total_Bids_Count,Total_Applied_Shares,Total_Applied_Amount  INTO BIDSUMMARY01 From Jtemp1
	DECLARE @cmd varchar(500),@filename1 varchar(100)
	SELECT @filename1 ='BIDSUMMARY_'+FORMAT(GETDATE(),'yyyyMMdd')+FORMAT(GETDATE(),'HHmmss')+'.TXT'       
	SET @cmd = 'bcp "SELECT ID,BANK_NAME,BANK_CODE,Total_Bids_Count,Total_Applied_Shares,Total_Applied_Amount FROM IPORIGHTSBONUS.DBO.BIDSUMMARY01" '+ 'queryout D:\VRIGHTS\FIRSTCALL\'+ @filename1 + ' -c -UTF8 -T -Slocalhost -t,'
	EXEC master..xp_cmdshell @cmd
	IF OBJECT_ID ( 'tempbsebidnow', 'U' ) IS NOT NULL  DROP TABLE tempbsebidnow
	select * into tempbsebidnow from bsebidafc
	IF OBJECT_ID ( 'BSEBIDAFC', 'U' ) IS NOT NULL  DROP TABLE BSEBIDAFC
END
GO
/****** Object:  StoredProcedure [dbo].[vbidProGACMEQ]    Script Date: 26-10-2024 15:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--BSEBIDGACMEQ [COMPANYNAME]
--FIRSTCALL [FOLDERNAME]
-- bsebidsample
--BANK MASTER - D:\VRIGHTS\BANKMASTER\BANK.csv
--MST_BM
--BIDCONT02GACMEQ

--[INPUT FILE D:\BENDEM\NSDL\NCNVBD001.csv ] [OUTPUT D:\BENDEM\NSDL\IN200537_BENDEM????.TXT]
--[INPUT FILE D:\bendem\CDSLBENDEM.csv]      [OUTPUT:-D:\BENDEM\CDSL\999999.????.CVF]
--PROCEDURES
--VCCIPL.DBO.sp_NSDLBENDEMF
--VCCIPL.DBO.sp_genAnyCompanyBendemCDSL '1204','IN9737B01023'  
--SELECT NAME as 'List Of Tables' FROM SYSOBJECTS WHERE ID IN (SELECT SD.DEPID FROM SYSOBJECTS SO,SYSDEPENDS SD WHERE SO.NAME = 'vbidProcess01' AND SD.ID = SO.ID)
--EXEC VBIDPROCESS01
CREATE Procedure [dbo].[vbidProGACMEQ]
with 
RECOMPILE
as
begin
	IF OBJECT_ID ( 'BSEBIDGACMEQ', 'U' ) IS NOT NULL  DROP TABLE BSEBIDGACMEQ
	select * into BSEBIDGACMEQ from bsebidsample
	--SELECT * FROM BSEBIDGACMEQ where CLIENT_ID_BENEFICIARY_ID ='10132151'
	TRUNCATE TABLE BSEBIDGACMEQ
	BULK INSERT BSEBIDGACMEQ
		FROM 'D:\VRights\GACMEQ\bsebid.dat' 
		WITH 
		(  
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',  
			ROWTERMINATOR = '\n',  
			BATCHSIZE=1000
		)
	UPDATE BSEBIDGACMEQ	SET CLIENTNAME =''	WHERE CLIENTNAME IS NULL
	UPDATE BSEBIDGACMEQ	SET BANK_NAME = ''  WHERE BANK_NAME IS NULL
	UPDATE BSEBIDGACMEQ	SET	LOCATION  =''	WHERE LOCATION IS NULL
	UPDATE BSEBIDGACMEQ	SET Account_Number ='' WHERE Account_Number IS NULL
	UPDATE BSEBIDGACMEQ	SET SUBBROKERCODE_REF_NO ='' WHERE SUBBROKERCODE_REF_NO IS NULL
	IF OBJECT_ID ( 'BIDCONT01GACMEQ', 'U' ) IS NOT NULL  DROP TABLE BIDCONT01GACMEQ
	SELECT COUNT(*) AS NOOFRECORDS, SUM(CONVERT(INT,QUANTITY)) TOTQTYAPPLIED,SUM(CAST(AMOUNT AS NUMERIC)) AS TOTAMTRECD  INTO BIDCONT01GACMEQ FROM BSEBIDGACMEQ 	
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	--BANK MASTER DATA
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	----IF OBJECT_ID ( 'ABL_BM', 'U' ) IS NOT NULL  DROP TABLE ABL_BM
	----CREATE TABLE ABL_BM (CODE VARCHAR(5),BANKNAME VARCHAR(100))
	----	BULK INSERT ABL_BM
	----	FROM 'D:\VRIGHTS\BANKMASTER\BANK.csv' 
	----	WITH 
	----	(  
	----	FIRSTROW = 2,
	----	FIELDTERMINATOR = ',',  
	----	ROWTERMINATOR = '\n',  
	----	BATCHSIZE=50
	----	)
	ALTER TABLE BSEBIDGACMEQ ADD exchg varchar(3)
	ALTER TABLE BSEBIDGACMEQ ADD VBANK_NAME VARCHAR(100) 
	ALTER TABLE BSEBIDGACMEQ ADD VBANK_CODE VARCHAR(4)
	ALTER TABLE BSEBIDGACMEQ ADD DPIDCLID VARCHAR(16)
	UPDATE A SET a.EXCHG = 'BSE',a.VBANK_NAME = b.BANKNAME,a.VBANK_CODE  = b.CODE
		FROM  BSEBIDGACMEQ a join MST_BM b 
		ON trim(a.usr_id) = trim(b.code)
--select * from BSEBIDGACMEQ where Vbank_name is null
--EXECUTE ONCE ANY RECORDS DISPLAYED
select usr_id,substring(ifsccode,1,4) from BSEBIDGACMEQ where Vbank_name is null group by usr_id,substring(IFSCCode,1,4)
update BSEBIDGACMEQ set vbank_code = '5008', vbank_name = 'Axis Bank Ltd' where usr_id = 'LK447360'and substring(IFSCCode,1,4) = 'UTIB'
update BSEBIDGACMEQ set vbank_code = '5054', vbank_name = 'Karnataka Bank Ltd' 	 where usr_id = 'COMSEC'and substring(IFSCCode,1,4) = 'KARB'
update BSEBIDGACMEQ set vbank_code = '5032', vbank_name = 'Standard Chartered Bank' where usr_id = '1165498'and substring(IFSCCode,1,4) = 'SCBL'
update BSEBIDGACMEQ set vbank_code = '5038', vbank_name = 'Tamilnad Mercantile Bank Ltd'	 where usr_id = '4849'	and substring(IFSCCode,1,4) = 'TMBL'
update BSEBIDGACMEQ set vbank_code = '5060', vbank_name = 'The Jammu & Kashmir Bank Limited' where usr_id = '8663'	and substring(IFSCCode,1,4) = 'JAKA'
update BSEBIDGACMEQ set vbank_code = '5069', vbank_name = 'Au Small Finance Bank ' where usr_id = 'API1'	and substring(IFSCCode,1,4) = 'AUBL'
update BSEBIDGACMEQ set vbank_code = '5045', vbank_name = 'DBS Bank Ltd' where usr_id = 'ASHISH'and substring(IFSCCode,1,4) = 'DBSS' and vbank_code  is null
update BSEBIDGACMEQ set vbank_code = '5042', vbank_name = 'The South Indian Bank Ltd' where usr_id = 'BR0024'and substring(IFSCCode,1,4) = 'SIBL'
update BSEBIDGACMEQ set vbank_code = '5014', vbank_name = 'HSBC Ltd' where usr_id = 'IPOOPS16'and substring(IFSCCode,1,4) = 'HSBC'
update BSEBIDGACMEQ set vbank_code = '5039', vbank_name = 'Nutan Nagarik Sahakari Bank Ltd'	 where usr_id = 'JINAL'	and substring(IFSCCode,1,4) = 'NNSB'
update BSEBIDGACMEQ set vbank_code = '5051', vbank_name = 'The Surat Peoples Co-op Bank Ltd' where usr_id = 'MAA416'and substring(IFSCCode,1,4) = 'SPCB'
update BSEBIDGACMEQ set vbank_code = '5057', vbank_name = 'Janta Sahakari Bank Ltd' where usr_id = 'MCV1365'and substring(IFSCCode,1,4) = 'JSBP'
update BSEBIDGACMEQ set vbank_code = '5029', vbank_name = 'Canara Bank' where usr_id = 'NAPIUSER'and substring(IFSCCode,1,4) = 'CNRB'
update BSEBIDGACMEQ set vbank_code = '5067', vbank_name = 'Bandhan Bank Ltd'	 where usr_id = 'SHUBHAM_D'and substring(IFSCCode,1,4) = 'BDBL'
update BSEBIDGACMEQ set vbank_code = '5001', vbank_name = 'IDBI Bank Ltd' where usr_id = 'VIGNESH'and substring(IFSCCode,1,4) = 'IDIB'
update BSEBIDGACMEQ set vbank_code = '5064', vbank_name = 'MEHSANA URBAN CO-OP BANK LTD'	where usr_id = 'WEBAPI'	and substring(IFSCCode,1,4) = '0001'
--select * from BSEBIDGACMEQ where exchg is null
select usr_id,substring(ifsccode,1,4) from BSEBIDGACMEQ where vbank_name is null group by usr_id,substring(IFSCCode,1,4)
	--if nil recods displays [ok] 
	--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	--summary of bids stock exchange wise & bank wise
	--select * from BSEBIDGACMEQ WHERE DP_ID NOT LIKE 'I%' AND LEN(CLIENT_ID_BENEFICIARY_ID) = 16
	UPDATE BSEBIDGACMEQ SET DPIDCLID = TRIM(DP_ID)+TRIM(CLIENT_ID_BENEFICIARY_ID) WHERE DP_ID LIKE 'IN%'
	UPDATE BSEBIDGACMEQ SET DPIDCLID = TRIM(CLIENT_ID_BENEFICIARY_ID) WHERE DP_ID NOT LIKE 'I%' AND LEN(CLIENT_ID_BENEFICIARY_ID) = 16
	UPDATE BSEBIDGACMEQ SET DPIDCLID = TRIM(CLIENT_ID_BENEFICIARY_ID) WHERE LEN(CLIENT_ID_BENEFICIARY_ID) = 16 and dpidclid is null
	--IF OBJECT_ID ( 'CDSLNSDLBD', 'U' ) IS NOT NULL  DROP TABLE CDSLNSDLBD
	--SELECT DPIDCLID INTO CDSLNSDLBD  FROM BSEBIDGACMEQ GROUP BY DPIDCLID  
	--SELECT SUBSTRING(DPIDCLID,1,8)+','+SUBSTRING(DPIDCLID,9,8)+',IN9737B01023' as 'NsdlBid_Dpid_Clid'  FROM CDSLNSDLBD  WHERE DPIDCLID LIKE 'I%' --280
	--SELECT TRIM(DPIDCLID)  FROM CDSLNSDLBD  WHERE DPIDCLID LIKE 'I%'  ---FOR EXCEL--280
	--NSDL
	--exec VCCIPL.DBO.sp_NSDLBENDEMF --[INPUT FILE D:\BENDEM\NSDL\NCNVBD001.csv ] [OUTPUT D:\BENDEM\NSDL\IN200537_BENDEM????.TXT]
	--SELECT TRIM(DPIDCLID)+',IN9737B01023' FROM CDSLNSDLBD WHERE DPIDCLID LIKE '1%' GROUP BY DPIDCLID --490
	--SELECT TRIM(DPIDCLID) FROM CDSLNSDLBD WHERE DPIDCLID LIKE '1%' GROUP BY DPIDCLID --384
	----CDSL
	--EXEC VCCIPL.DBO.sp_genAnyCompanyBendemCDSL '1204','IN9737B01023'  --[INPUT:-D:\bendem\CDSLBENDEM.csv][OUTPUT:-D:\BENDEM\CDSL\999999.????.CVF]
	SELECT	exchg AS [STOCK EXCHANGE],COUNT(*) AS TOTAL_BIDS,SUM(CONVERT(INT,QUANTITY)) AS SHARES_APPLIED, 
			SUM(convert(numeric(18,2),AMOUNT)) AS APPLIED_AMOUNT 
			FROM BSEBIDGACMEQ group by exchg
	IF OBJECT_ID ( 'BIDCONT02GACMEQ', 'U' ) IS NOT NULL  DROP TABLE BIDCONT02GACMEQ
	SELECT	Vbank_name,Vbank_code,COUNT(*) AS TOTAL_BIDS,SUM(CONVERT(INT,QUANTITY)) AS SHARES_APPLIED, 
			SUM(CAST(AMOUNT AS FLOAT)) AS APPLIED_AMOUNT into BIDCONT02GACMEQ FROM 
			BSEBIDGACMEQ A  group by Vbank_name,Vbank_code order by COUNT(*) DESC
	--IMPORTANT
	--SELECT AMOUNT,TRY_CONVERT(FLOAT,AMOUNT) AS [VARCHAR TO FLOAT] FROM BSEBIDGACMEQ
	--SELECT AMOUNT,CAST(AMOUNT AS FLOAT) AS AMTFLOATCOLUMN FROM BSEBIDGACMEQ;
	--IMPORTANT
	IF OBJECT_ID ( 'Jtemp1', 'U' ) IS NOT NULL  DROP TABLE Jtemp1
	select 'BSEBID-BIDGACMEQ-FILE-[BIDCONT01GACMEQ]' AS [DESCRIPTION],Noofrecords as [No.of.Records],totqtyapplied as [Applied_Shares],
	totamtrecd as [Appl_Amount_Received] from BIDCONT01GACMEQ
	select 'BSEBID-BIDGACMEQ-BANK-WISE-FILE-[BIDCONT02GACMEQ]' as [Description],Vbank_name AS [Bank_Name],Vbank_code AS [Bank_Code],
	TOTAL_BIDS AS [Total_Bids_Count],SHARES_APPLIED AS [Total_Applied_Shares],APPLIED_AMOUNT AS [Total_Applied_Amount] 
	INTO Jtemp1 from BIDCONT02GACMEQ order by VBANK_NAME
	IF OBJECT_ID ( 'BIDSUMMARY01', 'U' ) IS NOT NULL  DROP TABLE BIDSUMMARY01
	ALTER TABLE Jtemp1 ADD ID INT IDENTITY (1,1)
	select ID,BANK_NAME,BANK_CODE,Total_Bids_Count,Total_Applied_Shares,Total_Applied_Amount  INTO BIDSUMMARY01 From Jtemp1
	DECLARE @cmd varchar(500),@filename1 varchar(100)
	SELECT @filename1 ='BIDSUMMARY_BSEBIDGACMEQ_'+FORMAT(GETDATE(),'yyyyMMdd')+FORMAT(GETDATE(),'HHmmss')+'.TXT'       
	SET @cmd = 'bcp "SELECT ID,BANK_NAME,BANK_CODE,Total_Bids_Count,Total_Applied_Shares,Total_Applied_Amount FROM IPORIGHTSBONUS.DBO.BIDSUMMARY01" '+ 'queryout D:\VRIGHTS\GACMEQ\'+ @filename1 + ' -c -UTF8 -T -Slocalhost -t,'
	EXEC master..xp_cmdshell @cmd
	IF OBJECT_ID ( 'tempbsebidGACMEQ', 'U' ) IS NOT NULL  DROP TABLE tempbsebidGACMEQ
	select * into tempbsebidGACMEQ from BSEBIDGACMEQ
--	IF OBJECT_ID ( 'BSEBIDGACMEQ', 'U' ) IS NOT NULL  DROP TABLE BSEBIDGACMEQ
END
GO
