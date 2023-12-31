/****** Object:  Database [datasynth]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE DATABASE [datasynth]  (EDITION = 'Standard', SERVICE_OBJECTIVE = 'S0', MAXSIZE = 20 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS, LEDGER = OFF;
GO
ALTER DATABASE [datasynth] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [datasynth] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [datasynth] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [datasynth] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [datasynth] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [datasynth] SET ARITHABORT OFF 
GO
ALTER DATABASE [datasynth] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [datasynth] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [datasynth] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [datasynth] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [datasynth] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [datasynth] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [datasynth] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [datasynth] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [datasynth] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [datasynth] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [datasynth] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [datasynth] SET  MULTI_USER 
GO
ALTER DATABASE [datasynth] SET ENCRYPTION ON
GO
ALTER DATABASE [datasynth] SET QUERY_STORE = ON
GO
ALTER DATABASE [datasynth] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/*** The scripts of database scoped configurations in Azure should be executed inside the target database connection. ***/
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 8;
GO
/****** Object:  Table [dbo].[dataexisting_ababanking]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dataexisting_ababanking](
	[ababankingid] [int] IDENTITY(1,1) NOT NULL,
	[routingnumber] [varchar](9) NULL,
	[telegraphicname] [varchar](20) NULL,
	[customername] [varchar](36) NULL,
	[city] [varchar](20) NULL,
	[statecode] [varchar](2) NULL,
	[zipcode] [varchar](5) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[ababankingid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dataexisting_areacode]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dataexisting_areacode](
	[areacodeid] [int] IDENTITY(1,1) NOT NULL,
	[areacodevalue] [varchar](3) NOT NULL,
	[timezone] [varchar](3) NULL,
	[statecode] [varchar](2) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[areacodeid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dataexisting_areacodeintl]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dataexisting_areacodeintl](
	[iddcode] [varchar](5) NOT NULL,
	[countryid] [int] NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[iddcode] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dataexisting_companies]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dataexisting_companies](
	[companiesid] [int] IDENTITY(1,1) NOT NULL,
	[companyname] [varchar](79) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[companiesid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dataexisting_namefirst]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dataexisting_namefirst](
	[firstnameid] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](39) NULL,
	[gender] [varchar](1) NULL,
	[statusid] [int] NULL,
	[createddate] [datetime] NULL,
	[createduser] [varchar](20) NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[firstnameid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dataexisting_namelast]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dataexisting_namelast](
	[lastnameid] [int] IDENTITY(1,1) NOT NULL,
	[lastname] [varchar](69) NULL,
	[statusid] [int] NOT NULL,
	[createddate] [datetime] NULL,
	[createduser] [varchar](20) NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[lastnameid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dataexisting_upccodes]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dataexisting_upccodes](
	[upccodeid] [int] IDENTITY(1,1) NOT NULL,
	[upccodename] [varchar](15) NULL,
	[upcproductname] [varchar](150) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[upccodeid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dataexisting_zipcodeintl]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dataexisting_zipcodeintl](
	[zipcodeintnlid] [int] IDENTITY(1,1) NOT NULL,
	[zipcode] [char](10) NOT NULL,
	[zipcodetype] [varchar](15) NULL,
	[city] [varchar](75) NULL,
	[country] [int] NULL,
	[lattitude] [varchar](10) NULL,
	[longitude] [varchar](10) NULL,
	[Location] [varchar](99) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[zipcodeintnlid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dataexisting_zipcodeus]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dataexisting_zipcodeus](
	[zipcodeid] [int] IDENTITY(1,1) NOT NULL,
	[zipcode] [char](5) NOT NULL,
	[zipcodetype] [varchar](15) NULL,
	[city] [varchar](75) NULL,
	[statecode] [varchar](2) NULL,
	[lattitude] [varchar](10) NULL,
	[longitude] [varchar](10) NULL,
	[lctn] [varchar](99) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[zipcodeid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datagenerated_accountnumbers]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datagenerated_accountnumbers](
	[accountnumbersid] [int] IDENTITY(1,1) NOT NULL,
	[accountnumbervalue] [varchar](20) NULL,
	[createddate] [datetime] NULL,
	[createduser] [varchar](20) NULL,
	[statusid] [int] NULL,
	[registeredapp] [char](38) NULL,
	[datagentypeid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[accountnumbersid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datagenerated_addresses]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datagenerated_addresses](
	[addressid] [int] IDENTITY(1,1) NOT NULL,
	[addressstreet] [varchar](99) NULL,
	[addressstreet2] [varchar](59) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[registeredapp] [char](38) NULL,
	[datagentypeid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[addressid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datagenerated_bankaccount]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datagenerated_bankaccount](
	[bankaccountsid] [int] IDENTITY(1,1) NOT NULL,
	[bankaccountvalue] [varchar](17) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[registeredapp] [char](38) NULL,
	[datagentypeid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[bankaccountsid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datagenerated_creditcard]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datagenerated_creditcard](
	[creditcardid] [int] IDENTITY(1,1) NOT NULL,
	[creditcardnumber] [varchar](20) NULL,
	[creditcardname] [varchar](20) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[registeredapp] [char](38) NULL,
	[datagentypeid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[creditcardid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datagenerated_custom]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datagenerated_custom](
	[datagencustomdid] [int] IDENTITY(1,1) NOT NULL,
	[customidentifier] [varchar](40) NULL,
	[customidentifierdesc] [varchar](29) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[registeredapp] [char](38) NULL,
	[datagentypeid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[datagencustomdid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datagenerated_dateofbirth]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datagenerated_dateofbirth](
	[dateofbirthsid] [int] IDENTITY(1,1) NOT NULL,
	[dateofbirth] [varchar](12) NULL,
	[dateofbirthdate] [date] NULL,
	[age] [int] NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[dateofbirthsid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datagenerated_devices]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datagenerated_devices](
	[devicesid] [int] IDENTITY(1,1) NOT NULL,
	[devicename] [varchar](40) NULL,
	[devicetypeid] [int] NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[application] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[devicesid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datagenerated_driverslicenses]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datagenerated_driverslicenses](
	[driverslicensesid] [int] IDENTITY(1,1) NOT NULL,
	[dln] [varchar](25) NULL,
	[statecode] [varchar](2) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[datagentypeid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[driverslicensesid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datagenerated_ein]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datagenerated_ein](
	[einid] [int] IDENTITY(1,1) NOT NULL,
	[einvalue] [varchar](10) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[einid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datagenerated_phonenumber]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datagenerated_phonenumber](
	[phonenumberid] [int] IDENTITY(1,1) NOT NULL,
	[phonenumbervalue] [varchar](8) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[phonenumberid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datagenerated_phonenumbersintl]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datagenerated_phonenumbersintl](
	[phonenumberintlid] [int] IDENTITY(1,1) NOT NULL,
	[phonenumbervalue] [varchar](12) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[countryid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[phonenumberintlid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datagenerated_serialnumbers]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datagenerated_serialnumbers](
	[serialnumberid] [int] IDENTITY(1,1) NOT NULL,
	[serialnumbervalue] [varchar](25) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[serialnumberid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datagenerated_socialsecuritynumber]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datagenerated_socialsecuritynumber](
	[socialsecuritynumberid] [int] IDENTITY(1,1) NOT NULL,
	[socialsecuritynumbervalue] [varchar](11) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[socialsecuritynumberid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datagenerated_useridentities]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datagenerated_useridentities](
	[useridentitiesid] [int] IDENTITY(1,1) NOT NULL,
	[useridentityvalue] [varchar](20) NULL,
	[userdomain] [varchar](20) NULL,
	[additionalattributes] [varchar](40) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[registeredapp] [char](38) NULL,
	[datagentypeid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[useridentitiesid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datamodel_apis]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datamodel_apis](
	[datamodelapiid] [int] IDENTITY(1,1) NOT NULL,
	[technology] [varchar](30) NULL,
	[baseurllocation] [varchar](99) NULL,
	[apiname] [varchar](79) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[details] [varchar](249) NULL,
	[datmodel_tablename] [varchar](99) NULL,
	[apiparams] [varchar](59) NULL,
	[apiexample] [varchar](149) NULL,
	[dataattributeid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[datamodelapiid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datamodel_datatables]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datamodel_datatables](
	[tablename] [varchar](64) NOT NULL,
	[tableinformation] [varchar](249) NULL,
	[statusid] [int] NULL,
	[createddate] [datetime] NULL,
	[domain] [varchar](64) NULL,
PRIMARY KEY CLUSTERED 
(
	[tablename] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datamodel_domain]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datamodel_domain](
	[domainname] [varchar](64) NOT NULL,
	[domaininformation] [varchar](249) NULL,
	[statusid] [int] NULL,
	[createddate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[domainname] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datastructure_core]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datastructure_core](
	[datastructurecoreid] [int] IDENTITY(1,1) NOT NULL,
	[datastructurename] [varchar](29) NULL,
	[datastructuredetails] [text] NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[datastructurecoreid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[impl_application]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[impl_application](
	[appguid] [char](38) NOT NULL,
	[applicationcustomcode] [varchar](15) NULL,
	[applicationdesc] [varchar](50) NULL,
	[createduser] [varchar](20) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[vendorid] [int] NULL,
	[industry_oid] [varchar](49) NULL,
	[organization_uid] [varchar](49) NULL,
PRIMARY KEY CLUSTERED 
(
	[appguid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[impl_codesets]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[impl_codesets](
	[implcodesetid] [int] IDENTITY(1,1) NOT NULL,
	[codesetsid] [int] NOT NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[organizationid] [char](38) NULL,
	[applicationid] [char](38) NULL,
	[industrystd] [varchar](6) NULL,
	[externaltableid] [varchar](20) NULL,
	[externalnotes] [varchar](149) NULL,
	[externallink] [varchar](99) NULL,
	[codesetdesc] [varchar](69) NULL,
PRIMARY KEY CLUSTERED 
(
	[implcodesetid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[impl_codesets_crossmaps]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[impl_codesets_crossmaps](
	[codesetcrossmapid] [int] IDENTITY(1,1) NOT NULL,
	[implcodesetsid] [int] NOT NULL,
	[codesettoapplicationid] [bigint] NULL,
	[terminologystdto] [int] NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[transformcodevalue] [varchar](40) NULL,
	[transformcodedesc] [varchar](129) NULL,
	[originalcodevalue] [varchar](40) NULL,
	[originalcodedesc] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[codesetcrossmapid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[impl_legalentities]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[impl_legalentities](
	[legalentityguid] [char](38) NOT NULL,
	[locationname] [varchar](50) NULL,
	[address] [varchar](75) NULL,
	[city] [varchar](60) NULL,
	[stateid] [varchar](2) NULL,
	[zipcode] [varchar](12) NULL,
	[createduser] [varchar](20) NULL,
	[statusid] [int] NULL,
	[createddate] [datetime] NOT NULL,
	[locationurl] [varchar](99) NULL,
	[locationphone] [varchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[legalentityguid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[impl_organization]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[impl_organization](
	[organizationguid] [char](38) NOT NULL,
	[organizationinternalcode] [varchar](10) NULL,
	[organizationinternalid] [varchar](10) NULL,
	[organizationname] [varchar](50) NULL,
	[address] [varchar](75) NULL,
	[city] [varchar](60) NULL,
	[stateid] [varchar](2) NULL,
	[zipcode] [varchar](12) NULL,
	[createduser] [varchar](20) NULL,
	[statusid] [int] NULL,
	[createddate] [datetime] NOT NULL,
	[legalentityguid] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[organizationguid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[impl_rulesets]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[impl_rulesets](
	[ruleid] [int] IDENTITY(1,1) NOT NULL,
	[rulename] [varchar](65) NULL,
	[createduser] [varchar](20) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[expirationdate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ruleid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[impl_rulesetsdefinitions]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[impl_rulesetsdefinitions](
	[rulesetdefinitionsid] [int] IDENTITY(1,1) NOT NULL,
	[rulesetdefinitionname] [varchar](50) NULL,
	[rulesetid] [int] NULL,
	[steporderid] [int] NULL,
	[operationtypeid] [varchar](7) NULL,
	[rulesetdefvalue] [char](40) NULL,
	[statusid] [int] NULL,
	[createddate] [datetime] NULL,
	[effectivedate] [datetime] NULL,
	[applicationid] [char](38) NULL,
	[termdate] [datetime] NULL,
	[dataattributeid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[rulesetdefinitionsid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[platform_appsettings_general]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[platform_appsettings_general](
	[appsettingsid] [int] IDENTITY(1,1) NOT NULL,
	[appsettingname] [varchar](50) NULL,
	[appsettingvalue] [varchar](199) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[registeredapp] [char](38) NULL,
	[defaultdatagenerationapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[appsettingsid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[platform_config_dataattributes]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[platform_config_dataattributes](
	[datagenconfigid] [int] IDENTITY(1,1) NOT NULL,
	[datatypegenconfigname] [varchar](25) NULL,
	[dataattributeid] [int] NULL,
	[runquantity] [int] NULL,
	[datagentypeid] [int] NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[applicationid] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[datagenconfigid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[platform_config_datastructures]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[platform_config_datastructures](
	[platformdatastructuresid] [int] IDENTITY(1,1) NOT NULL,
	[datastructurename] [varchar](50) NULL,
	[sensitivityflagid] [int] NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[platformdatastructuresguid] [char](38) NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[platformdatastructuresid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[platform_config_datastructures_dtl]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[platform_config_datastructures_dtl](
	[platformdatastructurestodataattributesid] [int] IDENTITY(1,1) NOT NULL,
	[platformdatastructuresid] [int] NULL,
	[compositedatastructurename] [varchar](50) NULL,
	[sensitivityflagid] [int] NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[platformdatastructurestodataattributesguid] [char](38) NULL,
	[registeredapp] [char](38) NULL,
	[platformdataattributesid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[platformdatastructurestodataattributesid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[platform_dataattributes]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[platform_dataattributes](
	[platformdataattributesid] [int] NOT NULL,
	[dataattributename] [varchar](50) NULL,
	[sensitivityflagid] [int] NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[platformdataattributeguid] [char](38) NULL,
	[registeredapp] [char](38) NULL,
	[platformtablename] [varchar](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[platformdataattributesid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refdata_codeset]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refdata_codeset](
	[codesetsid] [int] IDENTITY(1,1) NOT NULL,
	[codesetname] [varchar](50) NULL,
	[industrystd] [varchar](6) NULL,
	[statusid] [int] NULL,
	[createddate] [datetime] NULL,
	[createduser] [varchar](20) NULL,
	[codesetguid] [char](38) NULL,
	[fieldmapping] [varchar](40) NULL,
	[sensitivityflagid] [int] NULL,
	[externaltableid] [varchar](20) NULL,
	[externalnotes] [varchar](149) NULL,
	[externallink] [varchar](99) NULL,
PRIMARY KEY CLUSTERED 
(
	[codesetsid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refdata_countries]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refdata_countries](
	[countryid] [int] IDENTITY(1,1) NOT NULL,
	[idd] [varchar](5) NULL,
	[countryname] [varchar](59) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[countryid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refdata_datagentypes]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refdata_datagentypes](
	[datagentypeid] [int] IDENTITY(1,1) NOT NULL,
	[datagentypedescription] [varchar](65) NULL,
	[definition] [varchar](255) NULL,
	[dataattributeid] [int] NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[datagentypeid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refdata_devicetypes]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refdata_devicetypes](
	[devicetypeid] [int] IDENTITY(1,1) NOT NULL,
	[devicetype] [varchar](30) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[devicetypeid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refdata_industries]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refdata_industries](
	[industryid] [int] IDENTITY(1,1) NOT NULL,
	[industryname] [varchar](45) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[industryid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refdata_industriestobusiness]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refdata_industriestobusiness](
	[industrytobusinessid] [int] IDENTITY(1,1) NOT NULL,
	[industryid] [int] NULL,
	[businessarea] [varchar](50) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[industrytobusinessid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refdata_industrystd]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refdata_industrystd](
	[industrystd] [varchar](6) NOT NULL,
	[industrystddesc] [varchar](30) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[industrystd] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refdata_operationtype]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refdata_operationtype](
	[operationtypeid] [varchar](7) NOT NULL,
	[operationtypename] [varchar](60) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[operationtypeid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refdata_platformparams]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refdata_platformparams](
	[platformparamsid] [int] NOT NULL,
	[platformparamvalues] [varchar](35) NULL,
	[platformparamdesc] [varchar](70) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[platformparamsid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refdata_platformparamstodataattributes]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refdata_platformparamstodataattributes](
	[platformparamstodataattributeid] [int] NOT NULL,
	[platformparamsid] [int] NULL,
	[dataattributeid] [int] NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[registeredapp] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[platformparamstodataattributeid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refdata_sensitivityflag]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refdata_sensitivityflag](
	[sensitiveflagid] [int] IDENTITY(1,1) NOT NULL,
	[sensitiveflagdesc] [varchar](30) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sensitiveflagid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refdata_status]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refdata_status](
	[statusid] [int] IDENTITY(3,1) NOT NULL,
	[statusdescription] [varchar](45) NOT NULL,
	[createddate] [datetime] NULL,
	[createduser] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[statusid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refdata_terminologystd]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refdata_terminologystd](
	[terminologystdid] [int] IDENTITY(1,1) NOT NULL,
	[terminologystd] [varchar](25) NOT NULL,
	[terminologystdversion] [varchar](10) NOT NULL,
	[terminologystddesc] [varchar](129) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[terminologystdid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refdata_timezones]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refdata_timezones](
	[timezonevalue] [varchar](3) NOT NULL,
	[timezonedesc] [varchar](25) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[timezonevalue] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refdata_usstates]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refdata_usstates](
	[stateid] [varchar](2) NOT NULL,
	[statedescription] [varchar](65) NULL,
	[lattitude] [varchar](12) NULL,
	[longitude] [varchar](12) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[stateid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refdata_vendor]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refdata_vendor](
	[vendorid] [int] IDENTITY(1,1) NOT NULL,
	[vendorname] [varchar](50) NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[createduser] [varchar](20) NULL,
	[vendorguid] [char](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[vendorid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[terms_codeset_industrystd]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[terms_codeset_industrystd](
	[termcodesetid] [int] IDENTITY(1,1) NOT NULL,
	[codesetsid] [int] NOT NULL,
	[createddate] [datetime] NULL,
	[statusid] [int] NULL,
	[codevalue] [varchar](20) NULL,
	[codedesc] [varchar](129) NULL,
	[industrystd] [varchar](6) NULL,
	[terminologystdid] [int] NULL,
 CONSTRAINT [PK__terms_co__FA0255941931DB78] PRIMARY KEY CLUSTERED 
(
	[termcodesetid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[terms_umls_mrconoso]    Script Date: 1/27/2023 12:19:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[terms_umls_mrconoso](
	[cui] [char](8) NOT NULL,
	[lat] [char](3) NOT NULL,
	[ts] [char](1) NOT NULL,
	[lui] [varchar](10) NOT NULL,
	[stt] [varchar](3) NOT NULL,
	[sui] [varchar](10) NOT NULL,
	[ispref] [char](1) NOT NULL,
	[aui] [varchar](9) NOT NULL,
	[saui] [varchar](50) NULL,
	[scui] [varchar](100) NULL,
	[sdui] [varchar](100) NULL,
	[sab] [varchar](20) NOT NULL,
	[tty] [varchar](20) NOT NULL,
	[code] [varchar](100) NOT NULL,
	[str] [varchar](3000) NOT NULL,
	[srl] [varchar](25) NOT NULL,
	[suppress] [char](1) NOT NULL,
	[cvf] [varchar](25) NULL,
 CONSTRAINT [PK_terms_umls_mrconoso] PRIMARY KEY CLUSTERED 
(
	[cui] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [dataexisting_namefirst_idx]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE NONCLUSTERED INDEX [dataexisting_namefirst_idx] ON [dbo].[dataexisting_namefirst]
(
	[firstnameid] ASC,
	[firstname] ASC,
	[gender] ASC,
	[statusid] ASC,
	[createddate] ASC,
	[createduser] ASC,
	[registeredapp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [dataexisting_namefirst_uindex]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [dataexisting_namefirst_uindex] ON [dbo].[dataexisting_namefirst]
(
	[firstname] ASC,
	[gender] ASC,
	[registeredapp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [dataexisting_namelast_index]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE NONCLUSTERED INDEX [dataexisting_namelast_index] ON [dbo].[dataexisting_namelast]
(
	[lastnameid] ASC,
	[lastname] ASC,
	[statusid] ASC,
	[createddate] ASC,
	[createduser] ASC,
	[registeredapp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [dataexisting_namelast_uindex]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [dataexisting_namelast_uindex] ON [dbo].[dataexisting_namelast]
(
	[lastname] ASC,
	[registeredapp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_accountnumbers_index]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE NONCLUSTERED INDEX [datagenerated_accountnumbers_index] ON [dbo].[datagenerated_accountnumbers]
(
	[accountnumbersid] ASC,
	[accountnumbervalue] ASC,
	[createddate] ASC,
	[createduser] ASC,
	[statusid] ASC,
	[registeredapp] ASC,
	[datagentypeid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_accountnumbers_uindex]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [datagenerated_accountnumbers_uindex] ON [dbo].[datagenerated_accountnumbers]
(
	[accountnumbervalue] ASC,
	[registeredapp] ASC,
	[datagentypeid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_addresses_index]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE NONCLUSTERED INDEX [datagenerated_addresses_index] ON [dbo].[datagenerated_addresses]
(
	[addressid] ASC,
	[addressstreet] ASC,
	[addressstreet2] ASC,
	[createddate] ASC,
	[createduser] ASC,
	[statusid] ASC,
	[registeredapp] ASC,
	[datagentypeid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [datagenerated_addresses_pkey]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [datagenerated_addresses_pkey] ON [dbo].[datagenerated_addresses]
(
	[addressid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_addresses_uindex]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [datagenerated_addresses_uindex] ON [dbo].[datagenerated_addresses]
(
	[addressstreet] ASC,
	[addressstreet2] ASC,
	[registeredapp] ASC,
	[datagentypeid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_bankaccount_index]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE NONCLUSTERED INDEX [datagenerated_bankaccount_index] ON [dbo].[datagenerated_bankaccount]
(
	[bankaccountsid] ASC,
	[bankaccountvalue] ASC,
	[createddate] ASC,
	[statusid] ASC,
	[createduser] ASC,
	[registeredapp] ASC,
	[datagentypeid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [datagenerated_bankaccount_pkey]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [datagenerated_bankaccount_pkey] ON [dbo].[datagenerated_bankaccount]
(
	[bankaccountsid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_bankaccount_uindex]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [datagenerated_bankaccount_uindex] ON [dbo].[datagenerated_bankaccount]
(
	[bankaccountvalue] ASC,
	[registeredapp] ASC,
	[datagentypeid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_creditcard_index]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE NONCLUSTERED INDEX [datagenerated_creditcard_index] ON [dbo].[datagenerated_creditcard]
(
	[creditcardid] ASC,
	[creditcardnumber] ASC,
	[creditcardname] ASC,
	[createddate] ASC,
	[statusid] ASC,
	[createduser] ASC,
	[registeredapp] ASC,
	[datagentypeid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_creditcard_uindex]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [datagenerated_creditcard_uindex] ON [dbo].[datagenerated_creditcard]
(
	[creditcardnumber] ASC,
	[creditcardname] ASC,
	[registeredapp] ASC,
	[datagentypeid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_custom_index]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE NONCLUSTERED INDEX [datagenerated_custom_index] ON [dbo].[datagenerated_custom]
(
	[customidentifier] ASC,
	[customidentifierdesc] ASC,
	[createddate] ASC,
	[statusid] ASC,
	[createduser] ASC,
	[registeredapp] ASC,
	[datagentypeid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_custom_uindex]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [datagenerated_custom_uindex] ON [dbo].[datagenerated_custom]
(
	[customidentifier] ASC,
	[customidentifierdesc] ASC,
	[registeredapp] ASC,
	[datagentypeid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_dateofbirth_index]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE NONCLUSTERED INDEX [datagenerated_dateofbirth_index] ON [dbo].[datagenerated_dateofbirth]
(
	[dateofbirthsid] ASC,
	[dateofbirth] ASC,
	[age] ASC,
	[dateofbirthdate] ASC,
	[createddate] ASC,
	[statusid] ASC,
	[createduser] ASC,
	[registeredapp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_dateofbirth_uindex]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [datagenerated_dateofbirth_uindex] ON [dbo].[datagenerated_dateofbirth]
(
	[dateofbirthdate] ASC,
	[dateofbirth] ASC,
	[registeredapp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [refdata_devices_devicesid_uindex]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [refdata_devices_devicesid_uindex] ON [dbo].[datagenerated_devices]
(
	[devicesid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_driverslicenses_index]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE NONCLUSTERED INDEX [datagenerated_driverslicenses_index] ON [dbo].[datagenerated_driverslicenses]
(
	[driverslicensesid] ASC,
	[dln] ASC,
	[statecode] ASC,
	[createddate] ASC,
	[statusid] ASC,
	[datagentypeid] ASC,
	[createduser] ASC,
	[registeredapp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_driverslicenses_uindex]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [datagenerated_driverslicenses_uindex] ON [dbo].[datagenerated_driverslicenses]
(
	[dln] ASC,
	[statecode] ASC,
	[datagentypeid] ASC,
	[registeredapp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_ein_index]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE NONCLUSTERED INDEX [datagenerated_ein_index] ON [dbo].[datagenerated_ein]
(
	[einid] ASC,
	[einvalue] ASC,
	[createddate] ASC,
	[statusid] ASC,
	[createduser] ASC,
	[registeredapp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_ein_uindex]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [datagenerated_ein_uindex] ON [dbo].[datagenerated_ein]
(
	[einvalue] ASC,
	[registeredapp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_phonenumber_index]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE NONCLUSTERED INDEX [datagenerated_phonenumber_index] ON [dbo].[datagenerated_phonenumber]
(
	[phonenumberid] ASC,
	[phonenumbervalue] ASC,
	[createddate] ASC,
	[statusid] ASC,
	[createduser] ASC,
	[registeredapp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_phonenumber_uindex]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [datagenerated_phonenumber_uindex] ON [dbo].[datagenerated_phonenumber]
(
	[phonenumbervalue] ASC,
	[registeredapp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_phonenumbersintl_index]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE NONCLUSTERED INDEX [datagenerated_phonenumbersintl_index] ON [dbo].[datagenerated_phonenumbersintl]
(
	[phonenumberintlid] ASC,
	[phonenumbervalue] ASC,
	[createddate] ASC,
	[statusid] ASC,
	[countryid] ASC,
	[createduser] ASC,
	[registeredapp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_phonenumbersintl_uindex]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [datagenerated_phonenumbersintl_uindex] ON [dbo].[datagenerated_phonenumbersintl]
(
	[phonenumbervalue] ASC,
	[countryid] ASC,
	[registeredapp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_socialsecuritynumber_index]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE NONCLUSTERED INDEX [datagenerated_socialsecuritynumber_index] ON [dbo].[datagenerated_socialsecuritynumber]
(
	[socialsecuritynumberid] ASC,
	[socialsecuritynumbervalue] ASC,
	[createddate] ASC,
	[statusid] ASC,
	[createduser] ASC,
	[registeredapp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_socialsecuritynumber_uindex]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [datagenerated_socialsecuritynumber_uindex] ON [dbo].[datagenerated_socialsecuritynumber]
(
	[socialsecuritynumbervalue] ASC,
	[registeredapp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_useridentities_index]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE NONCLUSTERED INDEX [datagenerated_useridentities_index] ON [dbo].[datagenerated_useridentities]
(
	[useridentitiesid] ASC,
	[useridentityvalue] ASC,
	[userdomain] ASC,
	[additionalattributes] ASC,
	[createddate] ASC,
	[statusid] ASC,
	[registeredapp] ASC,
	[datagentypeid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [datagenerated_useridentities_uindex]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [datagenerated_useridentities_uindex] ON [dbo].[datagenerated_useridentities]
(
	[useridentityvalue] ASC,
	[userdomain] ASC,
	[additionalattributes] ASC,
	[registeredapp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [refdata_industriestobusiness_industrytobusinessid_uindex]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [refdata_industriestobusiness_industrytobusinessid_uindex] ON [dbo].[refdata_industriestobusiness]
(
	[industrytobusinessid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [terms_codeset_industrystd_index]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE NONCLUSTERED INDEX [terms_codeset_industrystd_index] ON [dbo].[terms_codeset_industrystd]
(
	[termcodesetid] ASC,
	[codesetsid] ASC,
	[createddate] ASC,
	[statusid] ASC,
	[codevalue] ASC,
	[codedesc] ASC,
	[industrystd] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [terms_codeset_industrystd_uindex]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [terms_codeset_industrystd_uindex] ON [dbo].[terms_codeset_industrystd]
(
	[codesetsid] ASC,
	[codevalue] ASC,
	[codedesc] ASC,
	[industrystd] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [terms_umls_mrconoso_index]    Script Date: 1/27/2023 12:19:54 AM ******/
CREATE NONCLUSTERED INDEX [terms_umls_mrconoso_index] ON [dbo].[terms_umls_mrconoso]
(
	[cui] ASC,
	[lat] ASC,
	[ts] ASC,
	[lui] ASC,
	[stt] ASC,
	[sui] ASC,
	[ispref] ASC,
	[aui] ASC,
	[saui] ASC,
	[scui] ASC,
	[sdui] ASC,
	[sab] ASC,
	[tty] ASC,
	[code] ASC,
	[str] ASC,
	[srl] ASC,
	[suppress] ASC,
	[cvf] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[dataexisting_ababanking] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[dataexisting_ababanking] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[dataexisting_areacode] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[dataexisting_areacode] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[dataexisting_areacodeintl] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[dataexisting_areacodeintl] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[dataexisting_companies] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[dataexisting_companies] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[dataexisting_namefirst] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[dataexisting_namefirst] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[dataexisting_namelast] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[dataexisting_namelast] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[dataexisting_upccodes] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[dataexisting_upccodes] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[dataexisting_zipcodeintl] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[dataexisting_zipcodeintl] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[dataexisting_zipcodeus] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[dataexisting_zipcodeus] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[datagenerated_accountnumbers] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[datagenerated_accountnumbers] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[datagenerated_addresses] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[datagenerated_addresses] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[datagenerated_bankaccount] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[datagenerated_bankaccount] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[datagenerated_creditcard] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[datagenerated_creditcard] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[datagenerated_custom] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[datagenerated_custom] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[datagenerated_dateofbirth] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[datagenerated_dateofbirth] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[datagenerated_devices] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[datagenerated_devices] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[datagenerated_driverslicenses] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[datagenerated_driverslicenses] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[datagenerated_ein] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[datagenerated_ein] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[datagenerated_phonenumber] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[datagenerated_phonenumber] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[datagenerated_phonenumbersintl] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[datagenerated_phonenumbersintl] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[datagenerated_serialnumbers] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[datagenerated_serialnumbers] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[datagenerated_socialsecuritynumber] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[datagenerated_socialsecuritynumber] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[datagenerated_useridentities] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[datagenerated_useridentities] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[datamodel_apis] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[datamodel_apis] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[datamodel_datatables] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[datamodel_datatables] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[datamodel_domain] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[datamodel_domain] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[datastructure_core] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[datastructure_core] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[impl_application] ADD  DEFAULT (newid()) FOR [appguid]
GO
ALTER TABLE [dbo].[impl_application] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[impl_application] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[impl_codesets] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[impl_codesets] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[impl_codesets_crossmaps] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[impl_codesets_crossmaps] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[impl_legalentities] ADD  CONSTRAINT [DEFAULT_impl_legalentities_legalentityguid]  DEFAULT (newid()) FOR [legalentityguid]
GO
ALTER TABLE [dbo].[impl_legalentities] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[impl_legalentities] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[impl_organization] ADD  CONSTRAINT [DEFAULT_impl_organization_organizationguid]  DEFAULT (newid()) FOR [organizationguid]
GO
ALTER TABLE [dbo].[impl_organization] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[impl_organization] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[impl_rulesets] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[impl_rulesets] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[impl_rulesetsdefinitions] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[impl_rulesetsdefinitions] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[platform_appsettings_general] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[platform_appsettings_general] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[platform_config_dataattributes] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[platform_config_dataattributes] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[platform_config_datastructures] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[platform_config_datastructures] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[platform_config_datastructures_dtl] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[platform_config_datastructures_dtl] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[platform_dataattributes] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[platform_dataattributes] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[refdata_codeset] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[refdata_codeset] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[refdata_countries] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[refdata_countries] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[refdata_datagentypes] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[refdata_datagentypes] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[refdata_devicetypes] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[refdata_devicetypes] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[refdata_industries] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[refdata_industries] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[refdata_industriestobusiness] ADD  CONSTRAINT [DEFAULT_refdata_industriestobusiness_createddate]  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[refdata_industriestobusiness] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[refdata_industrystd] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[refdata_industrystd] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[refdata_operationtype] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[refdata_operationtype] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[refdata_sensitivityflag] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[refdata_sensitivityflag] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[refdata_status] ADD  CONSTRAINT [DEFAULT_refdata_status_createddate]  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[refdata_terminologystd] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[refdata_terminologystd] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[refdata_timezones] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[refdata_timezones] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[refdata_usstates] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[refdata_usstates] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[refdata_vendor] ADD  CONSTRAINT [DEFAULT_refdata_vendor_createddate]  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[refdata_vendor] ADD  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[terms_codeset_industrystd] ADD  CONSTRAINT [DF_terms_codeset_industrystd_createddate]  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[terms_codeset_industrystd] ADD  CONSTRAINT [DF_terms_codeset_industrystd_statusid]  DEFAULT ((1)) FOR [statusid]
GO
ALTER TABLE [dbo].[dataexisting_ababanking]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[dataexisting_ababanking]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[dataexisting_areacode]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[dataexisting_areacode]  WITH CHECK ADD FOREIGN KEY([statecode])
REFERENCES [dbo].[refdata_usstates] ([stateid])
GO
ALTER TABLE [dbo].[dataexisting_areacode]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[dataexisting_areacode]  WITH CHECK ADD FOREIGN KEY([timezone])
REFERENCES [dbo].[refdata_timezones] ([timezonevalue])
GO
ALTER TABLE [dbo].[dataexisting_areacodeintl]  WITH CHECK ADD FOREIGN KEY([countryid])
REFERENCES [dbo].[refdata_countries] ([countryid])
GO
ALTER TABLE [dbo].[dataexisting_areacodeintl]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[dataexisting_areacodeintl]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[dataexisting_companies]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[dataexisting_companies]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[dataexisting_namefirst]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[dataexisting_namefirst]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[dataexisting_namelast]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[dataexisting_namelast]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[dataexisting_upccodes]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[dataexisting_upccodes]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[dataexisting_zipcodeintl]  WITH CHECK ADD FOREIGN KEY([country])
REFERENCES [dbo].[refdata_countries] ([countryid])
GO
ALTER TABLE [dbo].[dataexisting_zipcodeintl]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[dataexisting_zipcodeintl]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[dataexisting_zipcodeus]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[dataexisting_zipcodeus]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[datagenerated_accountnumbers]  WITH CHECK ADD FOREIGN KEY([datagentypeid])
REFERENCES [dbo].[refdata_datagentypes] ([datagentypeid])
GO
ALTER TABLE [dbo].[datagenerated_accountnumbers]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[datagenerated_accountnumbers]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[datagenerated_addresses]  WITH CHECK ADD FOREIGN KEY([datagentypeid])
REFERENCES [dbo].[refdata_datagentypes] ([datagentypeid])
GO
ALTER TABLE [dbo].[datagenerated_addresses]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[datagenerated_addresses]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[datagenerated_bankaccount]  WITH CHECK ADD FOREIGN KEY([datagentypeid])
REFERENCES [dbo].[refdata_datagentypes] ([datagentypeid])
GO
ALTER TABLE [dbo].[datagenerated_bankaccount]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[datagenerated_bankaccount]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[datagenerated_creditcard]  WITH CHECK ADD FOREIGN KEY([datagentypeid])
REFERENCES [dbo].[refdata_datagentypes] ([datagentypeid])
GO
ALTER TABLE [dbo].[datagenerated_creditcard]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[datagenerated_creditcard]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[datagenerated_custom]  WITH CHECK ADD FOREIGN KEY([datagentypeid])
REFERENCES [dbo].[refdata_datagentypes] ([datagentypeid])
GO
ALTER TABLE [dbo].[datagenerated_custom]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[datagenerated_custom]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[datagenerated_dateofbirth]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[datagenerated_dateofbirth]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[datagenerated_devices]  WITH CHECK ADD FOREIGN KEY([application])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[datagenerated_devices]  WITH CHECK ADD FOREIGN KEY([devicetypeid])
REFERENCES [dbo].[refdata_devicetypes] ([devicetypeid])
GO
ALTER TABLE [dbo].[datagenerated_devices]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[datagenerated_driverslicenses]  WITH CHECK ADD FOREIGN KEY([datagentypeid])
REFERENCES [dbo].[refdata_datagentypes] ([datagentypeid])
GO
ALTER TABLE [dbo].[datagenerated_driverslicenses]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[datagenerated_driverslicenses]  WITH CHECK ADD FOREIGN KEY([statecode])
REFERENCES [dbo].[refdata_usstates] ([stateid])
GO
ALTER TABLE [dbo].[datagenerated_driverslicenses]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[datagenerated_ein]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[datagenerated_ein]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[datagenerated_phonenumber]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[datagenerated_phonenumber]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[datagenerated_phonenumbersintl]  WITH CHECK ADD FOREIGN KEY([countryid])
REFERENCES [dbo].[refdata_countries] ([countryid])
GO
ALTER TABLE [dbo].[datagenerated_phonenumbersintl]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[datagenerated_phonenumbersintl]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[datagenerated_serialnumbers]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[datagenerated_serialnumbers]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[datagenerated_socialsecuritynumber]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[datagenerated_socialsecuritynumber]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[datagenerated_useridentities]  WITH CHECK ADD FOREIGN KEY([datagentypeid])
REFERENCES [dbo].[refdata_datagentypes] ([datagentypeid])
GO
ALTER TABLE [dbo].[datagenerated_useridentities]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[datagenerated_useridentities]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[datamodel_apis]  WITH CHECK ADD FOREIGN KEY([dataattributeid])
REFERENCES [dbo].[platform_dataattributes] ([platformdataattributesid])
GO
ALTER TABLE [dbo].[datamodel_apis]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[datamodel_datatables]  WITH CHECK ADD FOREIGN KEY([domain])
REFERENCES [dbo].[datamodel_domain] ([domainname])
GO
ALTER TABLE [dbo].[datamodel_datatables]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[datastructure_core]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[datastructure_core]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[impl_application]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[impl_application]  WITH CHECK ADD FOREIGN KEY([vendorid])
REFERENCES [dbo].[refdata_vendor] ([vendorid])
GO
ALTER TABLE [dbo].[impl_codesets]  WITH CHECK ADD FOREIGN KEY([applicationid])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[impl_codesets]  WITH CHECK ADD FOREIGN KEY([codesetsid])
REFERENCES [dbo].[refdata_codeset] ([codesetsid])
GO
ALTER TABLE [dbo].[impl_codesets]  WITH CHECK ADD FOREIGN KEY([industrystd])
REFERENCES [dbo].[refdata_industrystd] ([industrystd])
GO
ALTER TABLE [dbo].[impl_codesets]  WITH CHECK ADD FOREIGN KEY([organizationid])
REFERENCES [dbo].[impl_organization] ([organizationguid])
GO
ALTER TABLE [dbo].[impl_codesets]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[impl_codesets_crossmaps]  WITH CHECK ADD FOREIGN KEY([implcodesetsid])
REFERENCES [dbo].[impl_codesets] ([implcodesetid])
GO
ALTER TABLE [dbo].[impl_codesets_crossmaps]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[impl_codesets_crossmaps]  WITH CHECK ADD FOREIGN KEY([terminologystdto])
REFERENCES [dbo].[refdata_terminologystd] ([terminologystdid])
GO
ALTER TABLE [dbo].[impl_legalentities]  WITH CHECK ADD FOREIGN KEY([stateid])
REFERENCES [dbo].[refdata_usstates] ([stateid])
GO
ALTER TABLE [dbo].[impl_legalentities]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[impl_organization]  WITH CHECK ADD FOREIGN KEY([legalentityguid])
REFERENCES [dbo].[impl_legalentities] ([legalentityguid])
GO
ALTER TABLE [dbo].[impl_organization]  WITH CHECK ADD FOREIGN KEY([stateid])
REFERENCES [dbo].[refdata_usstates] ([stateid])
GO
ALTER TABLE [dbo].[impl_organization]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[impl_rulesets]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[impl_rulesetsdefinitions]  WITH CHECK ADD FOREIGN KEY([applicationid])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[impl_rulesetsdefinitions]  WITH CHECK ADD FOREIGN KEY([dataattributeid])
REFERENCES [dbo].[platform_dataattributes] ([platformdataattributesid])
GO
ALTER TABLE [dbo].[impl_rulesetsdefinitions]  WITH CHECK ADD FOREIGN KEY([operationtypeid])
REFERENCES [dbo].[refdata_operationtype] ([operationtypeid])
GO
ALTER TABLE [dbo].[impl_rulesetsdefinitions]  WITH CHECK ADD FOREIGN KEY([rulesetid])
REFERENCES [dbo].[impl_rulesets] ([ruleid])
GO
ALTER TABLE [dbo].[impl_rulesetsdefinitions]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[platform_appsettings_general]  WITH CHECK ADD FOREIGN KEY([defaultdatagenerationapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[platform_appsettings_general]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[platform_appsettings_general]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[platform_config_dataattributes]  WITH CHECK ADD FOREIGN KEY([applicationid])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[platform_config_dataattributes]  WITH CHECK ADD FOREIGN KEY([dataattributeid])
REFERENCES [dbo].[platform_dataattributes] ([platformdataattributesid])
GO
ALTER TABLE [dbo].[platform_config_dataattributes]  WITH CHECK ADD FOREIGN KEY([datagentypeid])
REFERENCES [dbo].[refdata_datagentypes] ([datagentypeid])
GO
ALTER TABLE [dbo].[platform_config_dataattributes]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[platform_config_datastructures]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[platform_config_datastructures]  WITH CHECK ADD FOREIGN KEY([sensitivityflagid])
REFERENCES [dbo].[refdata_sensitivityflag] ([sensitiveflagid])
GO
ALTER TABLE [dbo].[platform_config_datastructures]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[platform_config_datastructures_dtl]  WITH CHECK ADD FOREIGN KEY([platformdataattributesid])
REFERENCES [dbo].[platform_dataattributes] ([platformdataattributesid])
GO
ALTER TABLE [dbo].[platform_config_datastructures_dtl]  WITH CHECK ADD FOREIGN KEY([platformdatastructuresid])
REFERENCES [dbo].[platform_config_datastructures] ([platformdatastructuresid])
GO
ALTER TABLE [dbo].[platform_config_datastructures_dtl]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[platform_config_datastructures_dtl]  WITH CHECK ADD FOREIGN KEY([sensitivityflagid])
REFERENCES [dbo].[refdata_sensitivityflag] ([sensitiveflagid])
GO
ALTER TABLE [dbo].[platform_config_datastructures_dtl]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[platform_dataattributes]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[platform_dataattributes]  WITH CHECK ADD FOREIGN KEY([sensitivityflagid])
REFERENCES [dbo].[refdata_sensitivityflag] ([sensitiveflagid])
GO
ALTER TABLE [dbo].[platform_dataattributes]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[refdata_codeset]  WITH CHECK ADD FOREIGN KEY([industrystd])
REFERENCES [dbo].[refdata_industrystd] ([industrystd])
GO
ALTER TABLE [dbo].[refdata_codeset]  WITH CHECK ADD FOREIGN KEY([sensitivityflagid])
REFERENCES [dbo].[refdata_sensitivityflag] ([sensitiveflagid])
GO
ALTER TABLE [dbo].[refdata_codeset]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[refdata_countries]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[refdata_datagentypes]  WITH CHECK ADD FOREIGN KEY([dataattributeid])
REFERENCES [dbo].[platform_dataattributes] ([platformdataattributesid])
GO
ALTER TABLE [dbo].[refdata_datagentypes]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[refdata_devicetypes]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[refdata_industries]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[refdata_industriestobusiness]  WITH CHECK ADD FOREIGN KEY([industryid])
REFERENCES [dbo].[refdata_industries] ([industryid])
GO
ALTER TABLE [dbo].[refdata_industriestobusiness]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[refdata_industrystd]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[refdata_operationtype]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[refdata_platformparams]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[refdata_platformparamstodataattributes]  WITH CHECK ADD FOREIGN KEY([dataattributeid])
REFERENCES [dbo].[platform_dataattributes] ([platformdataattributesid])
GO
ALTER TABLE [dbo].[refdata_platformparamstodataattributes]  WITH CHECK ADD FOREIGN KEY([platformparamsid])
REFERENCES [dbo].[refdata_platformparams] ([platformparamsid])
GO
ALTER TABLE [dbo].[refdata_platformparamstodataattributes]  WITH CHECK ADD FOREIGN KEY([registeredapp])
REFERENCES [dbo].[impl_application] ([appguid])
GO
ALTER TABLE [dbo].[refdata_platformparamstodataattributes]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[refdata_sensitivityflag]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[refdata_terminologystd]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[refdata_timezones]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[refdata_usstates]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[refdata_vendor]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[terms_codeset_industrystd]  WITH CHECK ADD  CONSTRAINT [FK__terms_cod__codes__10E07F16] FOREIGN KEY([codesetsid])
REFERENCES [dbo].[refdata_codeset] ([codesetsid])
GO
ALTER TABLE [dbo].[terms_codeset_industrystd] CHECK CONSTRAINT [FK__terms_cod__codes__10E07F16]
GO
ALTER TABLE [dbo].[terms_codeset_industrystd]  WITH CHECK ADD  CONSTRAINT [FK__terms_cod__indus__40C49C62] FOREIGN KEY([industrystd])
REFERENCES [dbo].[refdata_industrystd] ([industrystd])
GO
ALTER TABLE [dbo].[terms_codeset_industrystd] CHECK CONSTRAINT [FK__terms_cod__indus__40C49C62]
GO
ALTER TABLE [dbo].[terms_codeset_industrystd]  WITH CHECK ADD  CONSTRAINT [FK__terms_cod__statu__6225902D] FOREIGN KEY([statusid])
REFERENCES [dbo].[refdata_status] ([statusid])
GO
ALTER TABLE [dbo].[terms_codeset_industrystd] CHECK CONSTRAINT [FK__terms_cod__statu__6225902D]
GO
ALTER TABLE [dbo].[terms_codeset_industrystd]  WITH CHECK ADD  CONSTRAINT [FK__terms_cod__termi__595B4002] FOREIGN KEY([terminologystdid])
REFERENCES [dbo].[refdata_terminologystd] ([terminologystdid])
GO
ALTER TABLE [dbo].[terms_codeset_industrystd] CHECK CONSTRAINT [FK__terms_cod__termi__595B4002]
GO
ALTER DATABASE [datasynth] SET  READ_WRITE 
GO
