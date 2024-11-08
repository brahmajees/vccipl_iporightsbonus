USE [EVoting]
GO
/****** Object:  UserDefinedFunction [dbo].[Remove_SpecialCharacters]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Remove_SpecialCharacters]( @str VARCHAR(MAX))
RETURNS VARCHAR(MAX) AS
BEGIN
DECLARE @expres  VARCHAR(50) = '%[~,@,#,$,%,&,*,(,),.,!]%'

WHILE PATINDEX( @expres, @str ) > 0
SET @str = Replace(REPLACE( @str, SUBSTRING( @str, PATINDEX( @expres, @str ), 1 ),''),'-',' ')
RETURN @str
END
GO
/****** Object:  UserDefinedFunction [dbo].[RemoveSpecialChars]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[RemoveSpecialChars] (@s varchar(256)) returns varchar(256)
       with schemabinding
    begin
       if @s is null
          return null
       declare @s2 varchar(256)
       set @s2 = ''
       declare @l int
       set @l = len(@s)
       declare @p int
       set @p = 1
       while @p <= @l begin
          declare @c int
          set @c = ascii(substring(@s, @p, 1))
          if @c between 48 and 57 or @c between 65 and 90 or @c between 97 and 122
             set @s2 = ' ' + @s2 + char(@c)
          set @p = @p + 1
          end
       if len(@s2) = 0
          return null
       return @s2
       end

GO
/****** Object:  Table [dbo].[cctemp1]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cctemp1](
	[vtmp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cctemp2]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cctemp2](
	[vtmp2] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evApprshruplAnnexD01]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[evApprshruplAnnexD02]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[evcustvotuplAnnexF01]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[evcustvotuplAnnexF02]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[evDisappruplAnnexC01]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[evDisappruplAnnexC02]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[Evndetail002]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evndetail002](
	[Batch_NoDT] [varchar](7) NULL,
	[Rec_Type] [varchar](2) NULL,
	[Dep_Type] [char](1) NULL,
	[DPID] [varchar](16) NULL,
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
	[Category] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evndetail002F]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evndetail002F](
	[Batch_NoDT] [varchar](7) NULL,
	[Rec_Type] [varchar](2) NULL,
	[Dep_Type] [char](1) NULL,
	[DPID_CLID] [varchar](16) NULL,
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
	[Category] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evndetail002F_HIL]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evndetail002F_HIL](
	[Batch_NoDT] [varchar](7) NULL,
	[Rec_Type] [varchar](2) NULL,
	[Dep_Type] [char](1) NULL,
	[DPID_CLID] [varchar](16) NULL,
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
	[Category] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evndetail002F_LIH]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evndetail002F_LIH](
	[Batch_NoDT] [varchar](7) NULL,
	[Rec_Type] [varchar](2) NULL,
	[Dep_Type] [char](1) NULL,
	[DPID_CLID] [varchar](16) NULL,
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
	[Category] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evndetail002X]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evndetail002X](
	[Batch_NoDT] [varchar](7) NULL,
	[Rec_Type] [varchar](2) NULL,
	[Dep_Type] [char](1) NULL,
	[DPID] [varchar](8) NULL,
	[CLID] [varchar](8) NULL,
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
	[Category] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evndetail002xx]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evndetail002xx](
	[Batch_NoDT] [varchar](7) NULL,
	[Rec_Type] [varchar](2) NULL,
	[Dep_Type] [char](1) NULL,
	[DPID] [varchar](8) NULL,
	[CLID] [varchar](8) NULL,
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
	[Category] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evndetailbkp]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[evngpl01]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[evngpl01ss]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[Evnheader001]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[EvNsdlDT02]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[EvNsdlHD01]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[evromuplAnnexA01]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[evromuplAnnexA02]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[evrtavotinguplAnnexB01]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[evrtavotinguplAnnexB02]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[evshrmappoaAnnexE01]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[evshrmappoaAnnexE02]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[EVSUMMARY01]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EVSUMMARY01](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BANK_NAME] [varchar](100) NULL,
	[BANK_CODE] [varchar](4) NULL,
	[Total_Bids_Count] [int] NULL,
	[Total_Applied_Shares] [int] NULL,
	[Total_Applied_Amount] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Final_HIL01]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Final_HIL01](
	[category_shareholder] [varchar](40) NULL,
	[Resolution] [int] NULL,
	[Favour] [int] NULL,
	[Against] [int] NULL,
	[Ascent Records] [int] NULL,
	[Descent Records] [int] NULL,
	[VotesPolledinFavour] [int] NULL,
	[VotesPolledAgainst] [int] NULL,
	[TOTALBPSHARES] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Final_LIH01]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Final_LIH01](
	[category_shareholder] [varchar](40) NULL,
	[Resolution] [int] NULL,
	[Favour] [int] NULL,
	[Against] [int] NULL,
	[Ascent Records] [int] NULL,
	[Descent Records] [int] NULL,
	[VotesPolledinFavour] [int] NULL,
	[VotesPolledAgainst] [int] NULL,
	[TOTALBPSHARES] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gpl_SrcFile]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[n_BPControldata]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[n_BPControldata](
	[category] [varchar](2) NULL,
	[BPholings_shares] [int] NULL,
	[Category_Shareholder] [varchar](40) NULL,
	[resolution_id] [int] NULL,
	[option_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[n_bpcontroldata_HIL]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[n_bpcontroldata_HIL](
	[category] [varchar](2) NULL,
	[BPholings_shares] [int] NULL,
	[Category_Shareholder] [varchar](40) NULL,
	[resolution_id] [int] NULL,
	[option_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[n_bpcontroldata_LIH]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[n_bpcontroldata_LIH](
	[category] [varchar](2) NULL,
	[BPholings_shares] [int] NULL,
	[Category_Shareholder] [varchar](40) NULL,
	[resolution_id] [int] NULL,
	[option_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[n_evotecontroldata]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[n_evotecontroldata](
	[category_shareholder] [varchar](40) NULL,
	[resolution_id] [varchar](9) NULL,
	[option_id] [varchar](9) NULL,
	[RecordCount] [int] NULL,
	[holding_shares] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[n_evotecontroldata_HIL]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[n_evotecontroldata_HIL](
	[category_shareholder] [varchar](40) NULL,
	[resolution_id] [varchar](9) NULL,
	[option_id] [varchar](9) NULL,
	[RecordCount] [int] NULL,
	[holding_shares] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[n_evotecontroldata_LIH]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[n_evotecontroldata_LIH](
	[category_shareholder] [varchar](40) NULL,
	[resolution_id] [varchar](9) NULL,
	[option_id] [varchar](9) NULL,
	[RecordCount] [int] NULL,
	[holding_shares] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[N_evotf1]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[N_evotf2]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[N_EVOTF2A]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[N_EVOTF2A](
	[RESOLUTION_ID] [varchar](9) NULL,
	[OPTION_ID] [varchar](9) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[N_evotf3]    Script Date: 21-09-2024 14:41:31 ******/
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
	[CAST_VOTE_DATE] [datetime] NULL,
	[CATEGORY] [varchar](20) NULL,
	[CATEGORY1] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[N_HIL1]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[N_HIL1](
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
/****** Object:  Table [dbo].[N_HIL2]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[N_HIL2](
	[EVEN] [varchar](9) NULL,
	[RESOLUTION_ID] [varchar](9) NULL,
	[OPTION_ID] [varchar](9) NULL,
	[OPTION_NAME] [varchar](75) NULL,
	[VOTER_COUNTS] [varchar](18) NULL,
	[VOTE_COUNTS] [varchar](18) NULL,
	[Rem1] [varchar](10) NULL,
	[rem2] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[N_HIL3]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[N_HIL3](
	[EVEN] [varchar](9) NULL,
	[USERID] [varchar](20) NULL,
	[USERNAME] [varchar](255) NULL,
	[RESOLUTION_ID] [varchar](9) NULL,
	[OPTION_ID] [varchar](9) NULL,
	[HOLDINGS] [varchar](18) NULL,
	[VOTES] [varchar](18) NULL,
	[CAST_VOTE_DATE] [datetime] NULL,
	[BPholdings_shr] [int] NULL,
	[category] [varchar](5) NULL,
	[Category_Shareholder] [varchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[N_LIH1]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[N_LIH1](
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
/****** Object:  Table [dbo].[N_LIH2]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[N_LIH2](
	[EVEN] [varchar](9) NULL,
	[RESOLUTION_ID] [varchar](9) NULL,
	[OPTION_ID] [varchar](9) NULL,
	[OPTION_NAME] [varchar](75) NULL,
	[VOTER_COUNTS] [varchar](18) NULL,
	[VOTE_COUNTS] [varchar](18) NULL,
	[Rem1] [varchar](10) NULL,
	[rem2] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[N_LIH3]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[N_LIH3](
	[EVEN] [varchar](9) NULL,
	[USERID] [varchar](20) NULL,
	[USERNAME] [varchar](255) NULL,
	[RESOLUTION_ID] [varchar](9) NULL,
	[OPTION_ID] [varchar](9) NULL,
	[HOLDINGS] [varchar](18) NULL,
	[VOTES] [varchar](18) NULL,
	[CAST_VOTE_DATE] [datetime] NULL,
	[BPholdings_shr] [int] NULL,
	[category] [varchar](5) NULL,
	[Category_Shareholder] [varchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nh_sourcedata]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[nsdlstat_master]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[Query1]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[Query2]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[Result_out01]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result_out01](
	[category] [varchar](20) NULL,
	[category1] [varchar](50) NULL,
	[resolution_id] [varchar](9) NULL,
	[option_id] [varchar](9) NULL,
	[Result1] [varchar](3) NOT NULL,
	[Records1] [int] NULL,
	[Polled_Shares] [float] NULL,
	[Polled_Votes] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sampleannexa02]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[temp1]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[temp101]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp101](
	[vtmp1] [varchar](65) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp102]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp102](
	[vtmp1] [varchar](529) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp201]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp201](
	[vtmp1] [varchar](25) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp202]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp202](
	[vtmp1] [varchar](73) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp301]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp301](
	[vtmp2] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp302]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp302](
	[vtmp2] [varchar](1043) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp401]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp401](
	[vtmp4] [varchar](35) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temphash]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temphash](
	[vtmp1] [varchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vtemp1]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vtemp1](
	[vtmp1] [varchar](61) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vvtemp1]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vvtemp1](
	[vtmp1] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xaa]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[xab]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  Table [dbo].[xxxx]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  StoredProcedure [dbo].[convevote01]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[convevote01] 
with recompile
as
begin 
IF OBJECT_ID ( 'N_evotf1', 'U' ) IS NOT NULL DROP TABLE N_evotf1
create table N_evotf1 (		EVEN			varchar(12),		ISIN			varchar(15),		ISIN_NAME		varchar(255),		START_DATE		datetime,		END_DATE		datetime,		RESULT_DATE		datetime,		STATUS			varchar(10),		EVEN_RATIO		varchar(10)	)
IF OBJECT_ID ( 'N_evotf2', 'U' ) IS NOT NULL DROP TABLE N_evotf2
create table N_evotf2 	(		EVEN			varchar(9),		RESOLUTION_ID	varchar(9),  		OPTION_ID	  	varchar(9),		OPTION_NAME	  	varchar(75),		VOTER_COUNTS	varchar(18),  		VOTE_COUNTS		varchar(18),Rem1 varchar(10),rem2 varchar(10)	)
IF OBJECT_ID ( 'N_evotf3', 'U' ) IS NOT NULL DROP TABLE N_evotf3
create table N_evotf3 	(			EVEN	        VARCHAR(9),			USERID	        VARCHAR(20),			USERNAME	  	VARCHAR(255),			RESOLUTION_ID	VARCHAR(9),  			OPTION_ID	  	VARCHAR(9),			HOLDINGS	  	VARCHAR(18),			VOTES	  		VARCHAR(18),			CAST_VOTE_DATE	DATETIME		)
truncate table n_evotf1
--ALTER TABLE N_EVOTF1 DROP COLUMN ID
BULK INSERT N_evotf1 
	FROM 'D:\eVote\PresentVote\128994a.csv' 
	WITH 
	(  
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=50000
	)

truncate table n_evotf2
--ALTER TABLE N_EVOTF2 DROP COLUMN ID
BULK INSERT N_evotf2 
	FROM 'D:\eVote\PresentVote\128994b.csv' 
	WITH 
	(  
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=50000
	)
truncate TABLE N_evotf3
--alter table N_EVOTF3 drop column category,category1
BULK INSERT N_evotf3 
	FROM 'D:\eVote\PresentVote\128994c.csv' 
	WITH 
	(  
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=50000
	)
select * from n_evotf1
select * from n_evotf2
select * from n_evotf3
end

GO
/****** Object:  StoredProcedure [dbo].[convevoteforanycompany01]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--evoting
-- MAKE 3 FILES 999999A.csv  999999b.csv   999999c.csv from the source file recd from nse
-- Source file vot24.txt ( Uploaded for PB to CDSL) --D:\eVote\PresentVote\vot24.txt
-- output file is EVFINAL_YYYYMMDDHHMMSS.txt

CREATE procedure [dbo].[convevoteforanycompany01] 
with recompile
as
begin 
IF OBJECT_ID ( 'N_HIL1', 'U' ) IS NOT NULL DROP TABLE N_HIL1
create table N_HIL1 (EVEN varchar(12),ISIN varchar(15),ISIN_NAME varchar(255),START_DATE datetime,END_DATE datetime,RESULT_DATE	datetime,STATUS	varchar(10),EVEN_RATIO varchar(10))
IF OBJECT_ID ( 'N_HIL2', 'U' ) IS NOT NULL DROP TABLE N_HIL2 
create table N_HIL2 (EVEN varchar(9),RESOLUTION_ID	varchar(9),OPTION_ID varchar(9),OPTION_NAME varchar(75),VOTER_COUNTS varchar(18),VOTE_COUNTS varchar(18),Rem1 varchar(10),rem2 varchar(10))
IF OBJECT_ID ( 'N_HIL3', 'U' ) IS NOT NULL DROP TABLE N_HIL3
create table N_HIL3 (EVEN VARCHAR(9),USERID	VARCHAR(20),USERNAME VARCHAR(255),RESOLUTION_ID	VARCHAR(9),OPTION_ID VARCHAR(9),HOLDINGS VARCHAR(18),VOTES VARCHAR(18),CAST_VOTE_DATE DATETIME)
truncate table n_HIL1
--ALTER TABLE N_HIL1 DROP COLUMN ID
BULK INSERT N_HIL1 
	FROM 'D:\eVote\PresentVote\128994a.csv' 
	WITH 
	(  
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=5,
		LASTROW = 3
	)

truncate table n_HIL2
--ALTER TABLE N_HIL2 DROP COLUMN ID
BULK INSERT N_HIL2 
	FROM 'D:\eVote\PresentVote\128994b.csv' 
	WITH 
	(  
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=50000
	)
--SELECT * FROM N_HIL3
truncate TABLE N_HIL3
--alter table N_HIL3 drop column category,category1
BULK INSERT N_HIL3 
	FROM 'D:\eVote\PresentVote\128994c.csv' 
	WITH 
	(  
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=50000
	)
--select * from n_HIL1
--select * from n_HIL2
--select * from n_HIL3

IF OBJECT_ID ( 'Evndetail002F_HIL', 'U' ) IS NOT NULL DROP TABLE Evndetail002F_HIL
CREATE TABLE Evndetail002F_HIL (Batch_NoDT varchar(7),Rec_Type varchar(2),Dep_Type char(1),DPID_CLID varchar(16),Name1 varchar(135),	Pan1 varchar(10),Name2 varchar(45),	Pan2 varchar(10),Name3 varchar(45),	Pan3 varchar(10),Add1 varchar(36),Add2 varchar(36),Add3 varchar(36),Add4 varchar(36),Pincode varchar(6),Mobile_No varchar(10),Email_Id varchar(50),Holdings_Shr varchar(18),Category varchar(2))
--select * from Evndetail002F_HIL
TRUNCATE TABLE Evndetail002F_HIL
BULK INSERT Evndetail002F_HIL
	FROM 'D:\eVote\PresentVote\vot24.txt' 
	WITH 
	(  
		FIRSTROW = 1,
		FIELDTERMINATOR = '^',  
		ROWTERMINATOR = '\n',  
		BATCHSIZE=50000
	)
	--SELECT CATEGORY,COUNT(*) FROM Evndetail002F_HIL GROUP BY CATEGORY
	--alter table n_HIL3 drop column bpholdings_shr
	alter table N_HIL3 add BPholdings_shr int
	alter table N_HIL3 add category varchar(5),Category_Shareholder varchar(40)
	update a set a.BPholdings_shr = convert(int,b.holdings_shr)/1000 from N_HIL3 a join 
	Evndetail002F_HIL b 
	on substring(a.userid,3,16) = b.dpid_clid
	--select * from N_HIL3 where bpholdings_shr is null
	--select * from Evndetail002F_HIL
	update a set a.category = b.category from N_HIL3 a join 
	Evndetail002F_HIL b 
	on substring(a.userid,3,16) = b.dpid_clid
	update N_HIL3 set Category_Shareholder = '2. Public- Institutional Holders'		where category = 'PI' 
	update N_HIL3 set Category_Shareholder = '1. Promoter and Promoter Group'		where category = 'P ' 
	update N_HIL3 set Category_Shareholder = '3. Public - Others'					where category = 'PN' 
	IF OBJECT_ID ( 'n_evotecontroldata_HIL', 'U' ) IS NOT NULL DROP TABLE n_evotecontroldata_HIL
	--select category_shareholder,resolution_id,option_id,count(*) as RecordCount,sum(convert(int,holdings)) as holding_shares from n_HIL3 group by resolution_id,option_id,category_shareholder order by resolution_id
	select category_shareholder,resolution_id,option_id,count(*) as RecordCount,sum(convert(int,holdings)) as holding_shares into n_evotecontroldata_HIL  from n_HIL3 group by resolution_id,option_id,category_shareholder order by resolution_id
	IF OBJECT_ID ( 'n_bpcontroldata_HIL', 'U' ) IS NOT NULL DROP TABLE n_bpcontroldata_HIL
	select category,sum(convert(int,holdings_shr/1000)) as BPholings_shares into n_bpcontroldata_HIL from Evndetail002F_HIL group by category
	alter table n_bpcontroldata_HIL add Category_Shareholder varchar(40)
	update n_bpcontroldata_HIL set Category_Shareholder = '2. Public- Institutional Holders'	where category = 'PI' 
	update n_bpcontroldata_HIL set Category_Shareholder = '1. Promoter and Promoter Group'		where category = 'P ' 
	update n_bpcontroldata_HIL set Category_Shareholder = '3. Public - Others'					where category = 'PN' 
	--select * from n_HIL3
	--select * from n_bpcontroldata_HIL
	alter table n_bpcontroldata_HIL add resolution_id int, option_id int
	IF OBJECT_ID ( 'Final_HIL01 ', 'U' ) IS NOT NULL DROP TABLE Final_HIL01 
	select category_shareholder, resolution_id as 'Resolution', 0 as 'Favour', 0 as 'Against',0 as 'Ascent Records',0 as 'Descent Records', 0 as 'VotesPolledinFavour','0' as 'VotesPolledAgainst',bpholings_shares AS 'TOTALBPSHARES'  into Final_HIL01 from n_bpcontroldata_HIL
	union all
	select category_shareholder, Resolution_id as 'Resolution', option_id as 'Favour','0' as 'Against',recordCount as 'Ascent Records',holding_shares as 'VotesPolledinFavour','0' as 'Descent Records', '0' as 'VotesPolledAgainst',0 AS 'TOTALBPSHARES' from n_evotecontroldata_HIL where option_id = '1' 
	union all
	select category_shareholder, resolution_id as 'Resolution', '0' as 'Favour', option_id as 'Against', '0' as 'Ascent Records',0 as 'VotesPolledinFavour', recordCount as 'Descent Records', holding_shares as 'VotesPolledAgainst',0 AS 'TOTALBPSHARES' from n_evotecontroldata_HIL where option_id = '2'
	order by resolution_id, CATEGORY_SHAREHOLDER
	
	--SELECT * FROM FINAL_HIL01
	DECLARE @cmd8 varchar(500),@filename8 varchar(100)
	SELECT @filename8 ='EVFINAL_'+FORMAT(GETDATE(),'yyyyMMdd')+FORMAT(GETDATE(),'HHmmss')+'.TXT'       
	SET @cmd8 = 'bcp "SELECT * FROM evoting.dbo.Final_HIL01 ORDER BY RESOLUTION,AGAINST,CATEGORY_SHAREHOLDER" '+ 'queryout D:\eVote\PresentVote\'+ @filename8 + ' -c -UTF8 -T -Slocalhost -t,'
	EXEC master..xp_cmdshell @cmd8
end
GO
/****** Object:  StoredProcedure [dbo].[evcgenAxA01f]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  StoredProcedure [dbo].[evcgenAxB01f]    Script Date: 21-09-2024 14:41:31 ******/
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
/****** Object:  StoredProcedure [dbo].[evngenfile01f]    Script Date: 21-09-2024 14:41:31 ******/
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
		+isin  +'^'
		+cut_off_dt  +'^'
		+no_records  +'^'
		+even
		as vtmp1 into temp101     
		from evnheader001)
(
SELECT 
		+'0700355'+'^'
		+'12'+'^'
		+Dep_Type	+'^'
		+trim(dpid)+trim(clid)+'^'	
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
		+Pincode	+'^'
		+Mobile_No	+'^'	
		+Email_Id	+'^'
		+Holdings_Shr +'^'	
		+Category
		as vtmp1 into temp102     
		from Evndetail002xx
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
/****** Object:  StoredProcedure [dbo].[sp_evotingprocess01]    Script Date: 21-09-2024 14:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX POSTAL BALLOT PROCESS  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
---------------REQUIRED FILES PB OUT FILE AND CSV FILE(DATA FILE) A.CA.
--phase I
CREATE procedure [dbo].[sp_evotingprocess01]
with
recompile
as 
begin
		IF OBJECT_ID ( 'N_EVOTF1', 'U' ) IS NOT NULL  DROP TABLE N_EVOTF1
		IF OBJECT_ID ( 'N_EVOTF2', 'U' ) IS NOT NULL  DROP TABLE N_EVOTF2
		IF OBJECT_ID ( 'N_EVOTF3', 'U' ) IS NOT NULL  DROP TABLE N_EVOTF3
		create table N_evotf1 (EVEN varchar(12),ISIN varchar(15),ISIN_NAME varchar(255),START_DATE datetime,END_DATE datetime,RESULT_DATE datetime,STATUS varchar(10),EVEN_RATIO varchar(10)	)
		create table N_evotf2 (EVEN varchar(9),RESOLUTION_ID varchar(9),OPTION_ID varchar(9),OPTION_NAME varchar(75),VOTER_COUNTS varchar(18),VOTE_COUNTS	varchar(18))
		create table N_evotf3 (EVEN VARCHAR(9),USERID VARCHAR(20),USERNAME VARCHAR(255),RESOLUTION_ID VARCHAR(9),OPTION_ID VARCHAR(9),HOLDINGS VARCHAR(18),VOTES VARCHAR(18),CAST_VOTE_DATE DATETIME)
		BULK INSERT N_evotf1 
			FROM 'D:\eVote\PresentVote\128448a.csv' 
			WITH 
			(  
				FIRSTROW = 2,
				FIELDTERMINATOR = ',',  
				ROWTERMINATOR = '\n',  
				BATCHSIZE=50000
			)
		BULK INSERT N_evotf2 
			FROM 'D:\eVote\PresentVote\128448b.csv' 
			WITH 
			(  
				FIRSTROW = 2,
				FIELDTERMINATOR = ',',  
				ROWTERMINATOR = '\n',  
				BATCHSIZE=50000
			)
		BULK INSERT N_evotf3 
			FROM 'D:\eVote\PresentVote\128448c.csv' 
			WITH 
			(  
				FIRSTROW = 2,
				FIELDTERMINATOR = ',',  
				ROWTERMINATOR = '\n',  
				BATCHSIZE=50000
			)
		--SELECT * FROM N_EVOTF1
		--SELECT * FROM N_EVOTF2
		--SELECT * FROM N_EVOTF3
		--Phase II
		IF OBJECT_ID ( 'nsdlstat_master', 'U' ) IS NOT NULL  DROP TABLE nsdlstat_master
		create table nsdlstat_master (status varchar(3),cltype varchar(60),btype varchar(3),cldesc varchar(60),status_btype varchar(10),cltype_desc varchar(60))
		BULK INSERT nsdlstat_master 
			FROM 'D:\eVote\statnsdl.csv' 
			WITH 
			(  
				FIRSTROW = 2,
				FIELDTERMINATOR = ',',  
				ROWTERMINATOR = '\n',  
				BATCHSIZE=50
			)
		--select * from nsdlstat_master
		--Phase III
		IF OBJECT_ID ( 'Evndetail002', 'U' ) IS NOT NULL  DROP TABLE Evndetail002
		create table Evndetail002 (Batch_NoDT varchar(7),Rec_Type Varchar(2),Dep_Type Char(1),DPID Varchar(8),CLID Varchar(8),Name1	Varchar(135),Pan1 Varchar(10),Name2 Varchar(45),Pan2 Varchar(10),Name3 Varchar(45),Pan3	Varchar(10),Add1 Varchar(36),Add2 Varchar(36),Add3 Varchar(36),Add4 Varchar(36),Pincode	Varchar(6),Mobile_No Varchar(10),Email_Id Varchar(50),Holdings_Shr Varchar(18),Category Varchar(2))
		BULK INSERT Evndetail002
			FROM 'D:\eVote\PRESENTVOTE\PBsrc.CSV' 
			WITH 
			(  
				FIRSTROW = 2,
				FIELDTERMINATOR = ',',  
				ROWTERMINATOR = '\n',  
				BATCHSIZE=50000
			)
		ALTER TABLE N_EVOTF3 ADD CATEGORY VARCHAR(20), CATEGORY1 VARCHAR(50)
		UPDATE A set a.category = trim(b.category) from N_evotf3 a join evndetail002 b on substring(a.userid,3,16) = trim(b.dpid)+trim(b.clid)
		update N_evotf3 set category1 = 'Public- Institutional Holders'		where category = 'PI' 
		update N_evotf3 set category1 = 'Promoter and Promoter Group'		where category = 'P ' 
		update N_evotf3 set category1 = 'Public - Others'					where category = 'PN' 
		UPDATE A set a.category = trim(b.category) from N_evotf3 a join evndetail002 b on substring(a.userid,3,16) = trim(b.dpid)+trim(b.clid)
		--Phase IV
		IF OBJECT_ID ( 'Result_out01', 'U' ) IS NOT NULL  DROP TABLE Result_out01
		select category,category1,resolution_id,option_id,'YES' as Result1,count(RESOLUTION_ID) as Records1,sum(convert(float,holdings)) as Polled_Shares,sum(convert(float,votes)) as Polled_Votes INTO Result_out01 from n_evotf3 WHERE TRIM(OPTION_ID) = '1' group by category,category1,RESOLUTION_ID,OPTION_ID
		UNION ALL
		select category,category1,resolution_id,option_id,'NO' as Result1,count(RESOLUTION_ID) as Records1,sum(convert(float,holdings)) as Polled_Shares,sum(convert(float,votes)) as Polled_Votes from n_evotf3 WHERE TRIM(option_id) ='2' group by category,category1,RESOLUTION_ID,OPTION_ID
		select * from Result_out01 order by RESOLUTION_ID,category1,OPTION_ID
end
--D:\vccipl_projects\Inprogress_Projects\evotesummaryoutfromsqltable\evotesummaryoutfromsqltable\obj\Development\Package.dtsx
--Phase V
--summary in Excel
GO
