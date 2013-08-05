USE [master]
GO
/****** Object:  Database [projectOfonlineshop]    Script Date: 08/05/2013 09:06:51 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'projectOfonlineshop')
BEGIN
CREATE DATABASE [projectOfonlineshop] ON  PRIMARY 
( NAME = N'nwindAssign5', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\nwindAssign5.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'nwindAssign5_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\nwindAssign5_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 COLLATE Chinese_PRC_CI_AS
END
GO
ALTER DATABASE [projectOfonlineshop] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [projectOfonlineshop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [projectOfonlineshop] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [projectOfonlineshop] SET ANSI_NULLS OFF
GO
ALTER DATABASE [projectOfonlineshop] SET ANSI_PADDING OFF
GO
ALTER DATABASE [projectOfonlineshop] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [projectOfonlineshop] SET ARITHABORT OFF
GO
ALTER DATABASE [projectOfonlineshop] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [projectOfonlineshop] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [projectOfonlineshop] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [projectOfonlineshop] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [projectOfonlineshop] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [projectOfonlineshop] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [projectOfonlineshop] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [projectOfonlineshop] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [projectOfonlineshop] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [projectOfonlineshop] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [projectOfonlineshop] SET  DISABLE_BROKER
GO
ALTER DATABASE [projectOfonlineshop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [projectOfonlineshop] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [projectOfonlineshop] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [projectOfonlineshop] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [projectOfonlineshop] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [projectOfonlineshop] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [projectOfonlineshop] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [projectOfonlineshop] SET  READ_WRITE
GO
ALTER DATABASE [projectOfonlineshop] SET RECOVERY FULL
GO
ALTER DATABASE [projectOfonlineshop] SET  MULTI_USER
GO
ALTER DATABASE [projectOfonlineshop] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [projectOfonlineshop] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'projectOfonlineshop', N'ON'
GO
/****** Object:  Login [Shiki-PC\Shiki]    Script Date: 08/05/2013 09:06:51 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'Shiki-PC\Shiki')
CREATE LOGIN [Shiki-PC\Shiki] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[简体中文]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 08/05/2013 09:06:51 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLSERVERAGENT')
CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[简体中文]
GO
/****** Object:  Login [NT SERVICE\MSSQLSERVER]    Script Date: 08/05/2013 09:06:51 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\MSSQLSERVER')
CREATE LOGIN [NT SERVICE\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[简体中文]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 08/05/2013 09:06:51 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[简体中文]
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 08/05/2013 09:06:51 ******/
/* For security reasons the login is created disabled and with a random password. */
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyTsqlExecutionLogin##')
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'-Èrá%ÌPTÛè½b)eÌü A¾ÀÄuì~¿', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 08/05/2013 09:06:51 ******/
/* For security reasons the login is created disabled and with a random password. */
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyEventProcessingLogin##')
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'BPLùUÜ)ç%úDõÞç½×ªk±½ÌéDuNõ', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
USE [projectOfonlineshop]
GO
/****** Object:  Table [dbo].[NavigationMenu]    Script Date: 08/05/2013 09:06:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NavigationMenu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NavigationMenu](
	[NavigationID] [int] IDENTITY(1,1) NOT NULL,
	[Item] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Link] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [aaaaaNavigationMenu_PK] PRIMARY KEY NONCLUSTERED 
(
	[NavigationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NavigationMenu]') AND name = N'NavigationID')
CREATE NONCLUSTERED INDEX [NavigationID] ON [dbo].[NavigationMenu] 
(
	[NavigationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'NavigationID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'NavigationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'NavigationID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'NavigationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'NavigationID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'NavigationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'NavigationID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'NavigationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'NavigationID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'NavigationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'NavigationID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'NavigationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'NavigationID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'NavigationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'NavigationID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'NavigationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'NavigationID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'NavigationID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'NavigationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'NavigationID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'NavigationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'NavigationID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'NavigationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'NavigationID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'NavigationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'NavigationID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'NavigationID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'NavigationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'NavigationID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'NavigationMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'NavigationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'NavigationID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'NavigationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1890' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Item' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Item' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'NavigationMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Item'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Item'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2250' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Link' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Link' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'NavigationMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', N'COLUMN',N'Link'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu', @level2type=N'COLUMN',@level2name=N'Link'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DateCreated' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'02/04/2005 1:54:58 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'LastUpdated' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'02/04/2005 1:54:59 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DefaultView' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_OrderByOn' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Orientation' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'NavigationMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'RecordCount' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Updatable' , N'SCHEMA',N'dbo', N'TABLE',N'NavigationMenu', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NavigationMenu'
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 08/05/2013 09:06:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](40) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[LastName] [nvarchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[Address] [nvarchar](60) COLLATE Chinese_PRC_CI_AS NULL,
	[City] [nvarchar](15) COLLATE Chinese_PRC_CI_AS NULL,
	[Region] [nvarchar](15) COLLATE Chinese_PRC_CI_AS NULL,
	[PostalCode] [nvarchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[Country] [nvarchar](15) COLLATE Chinese_PRC_CI_AS NULL,
	[Phone] [nvarchar](24) COLLATE Chinese_PRC_CI_AS NULL,
	[Email] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Fax] [nvarchar](24) COLLATE Chinese_PRC_CI_AS NULL,
	[UserID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Password] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [aaaaaCustomers_PK] PRIMARY KEY NONCLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'City')
CREATE NONCLUSTERED INDEX [City] ON [dbo].[Customers] 
(
	[City] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'CompanyName')
CREATE NONCLUSTERED INDEX [CompanyName] ON [dbo].[Customers] 
(
	[FirstName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'CustomerID')
CREATE NONCLUSTERED INDEX [CustomerID] ON [dbo].[Customers] 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'PostalCode')
CREATE NONCLUSTERED INDEX [PostalCode] ON [dbo].[Customers] 
(
	[PostalCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'Region')
CREATE NONCLUSTERED INDEX [Region] ON [dbo].[Customers] 
(
	[Region] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'UserID')
CREATE NONCLUSTERED INDEX [UserID] ON [dbo].[Customers] 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CustomerID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CustomerID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Customers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'3390' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'First Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'FirstName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'40' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'FirstName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Customers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2310' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Last  Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'LastName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'LastName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Customers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'4200' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Street or post-office box.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'60' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Customers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1380' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Customers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1410' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State or province.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Region' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Region' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Customers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1290' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Postal Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'PostalCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'PostalCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Customers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1155' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Customers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1455' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phone number includes country code or area code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Phone' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Phone' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Customers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Customers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1455' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phone number includes country code or area code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Fax' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Fax' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Customers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'UserID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'UserID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Customers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Customers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DatasheetGridlinesBehavior' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesBehavior', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DateCreated' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'04/10/2000 8:46:40 AM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterOn' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'FilterOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'LastUpdated' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'02/02/2001 1:53:15 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customers'' names, addresses, and phone numbers.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_OrderByOn' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Customers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrderOn' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'OrderOn', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'RecordCount' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Updatable' , N'SCHEMA',N'dbo', N'TABLE',N'Customers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers'
GO
SET IDENTITY_INSERT [dbo].[Customers] ON
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Email], [Fax], [UserID], [Password]) VALUES (1, N'Archer', N'Wang', N'150 Alton Towers', N'Toronto', N'ON', N'M1V 5X6', N'Canada', N'23333213', N'asdada@hotmail.com', N'11111', N'Archer', N'123')
SET IDENTITY_INSERT [dbo].[Customers] OFF
/****** Object:  Table [dbo].[Categories]    Script Date: 08/05/2013 09:06:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[Description] [nvarchar](75) COLLATE Chinese_PRC_CI_AS NULL,
	[IcoFiles] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [aaaaaCategories_PK] PRIMARY KEY NONCLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND name = N'CategoryID')
CREATE NONCLUSTERED INDEX [CategoryID] ON [dbo].[Categories] 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CategoryID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CategoryID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Categories' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryName'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryName'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryName'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryName'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'3705' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryName'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryName'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryName'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CategoryName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryName'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryName'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryName'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'40' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryName'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CategoryName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryName'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Categories' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryName'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'CategoryName'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'4800' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'75' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Categories' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DateCreated' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'16/01/2002 12:56:00 AM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'LastUpdated' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'16/01/2002 12:56:16 AM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_OrderByOn' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Orientation' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Categories' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'RecordCount' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Updatable' , N'SCHEMA',N'dbo', N'TABLE',N'Categories', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories'
GO
SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [IcoFiles]) VALUES (1, N'Computer', N'', N'')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [IcoFiles]) VALUES (2, N'Camera', N'', N'')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [IcoFiles]) VALUES (3, N'Celephone', N'', N'')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [IcoFiles]) VALUES (4, N'Tablets', N'', N'')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [IcoFiles]) VALUES (5, N'Pad', N'', N'')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [IcoFiles]) VALUES (6, N'TV', N'', N'')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [IcoFiles]) VALUES (7, N'Appliances', N'', N'')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [IcoFiles]) VALUES (8, N'Gaming Machine', N'', N'')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [IcoFiles]) VALUES (9, N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Categories] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 08/05/2013 09:06:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[UserID] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[FirstName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[LastName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Password] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ContactNo] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Eamil] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[SecurityQ] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[SecurityA] [varchar](500) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 08/05/2013 09:06:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Suppliers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[ContactName] [nvarchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[ContactTitle] [nvarchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[Address] [nvarchar](60) COLLATE Chinese_PRC_CI_AS NULL,
	[City] [nvarchar](15) COLLATE Chinese_PRC_CI_AS NULL,
	[Region] [nvarchar](15) COLLATE Chinese_PRC_CI_AS NULL,
	[PostalCode] [nvarchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[Country] [nvarchar](15) COLLATE Chinese_PRC_CI_AS NULL,
	[Phone] [nvarchar](24) COLLATE Chinese_PRC_CI_AS NULL,
	[Fax] [nvarchar](24) COLLATE Chinese_PRC_CI_AS NULL,
	[HomePage] [ntext] COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [aaaaaSuppliers_PK] PRIMARY KEY NONCLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Suppliers]') AND name = N'CompanyName')
CREATE NONCLUSTERED INDEX [CompanyName] ON [dbo].[Suppliers] 
(
	[CompanyName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Suppliers]') AND name = N'PostalCode')
CREATE NONCLUSTERED INDEX [PostalCode] ON [dbo].[Suppliers] 
(
	[PostalCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1215' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Supplier ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number automatically assigned to new supplier.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'SupplierID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'SupplierID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Suppliers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'3735' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Company Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CompanyName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'40' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CompanyName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Suppliers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2535' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Contact Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ContactName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ContactName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Suppliers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactName'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2610' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Contact Title' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ContactTitle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ContactTitle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Suppliers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'ContactTitle'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ContactTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2985' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Street or post-office box.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'60' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Suppliers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1380' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Suppliers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'City'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'City'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'870' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State or province.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Region' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Region' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Suppliers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Region'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Region'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1290' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Postal Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'PostalCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'PostalCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Suppliers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'PostalCode'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1185' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Suppliers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Country'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Country'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phone number includes country code or area code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Phone' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Phone' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Suppliers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Phone'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phone number includes country code or area code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Fax' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Fax' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Suppliers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'HomePage'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'HomePage'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'HomePage'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'32770' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'HomePage'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'HomePage'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'HomePage'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'HomePage'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'3405' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'HomePage'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'HomePage'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Home Page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'HomePage'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Supplier''s home page on World Wide Web.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Hyperlink' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'HomePage'))
EXEC sys.sp_addextendedproperty @name=N'MS_Hyperlink', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'HomePage'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HomePage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'HomePage'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'HomePage'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'HomePage'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'HomePage'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HomePage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'HomePage'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Suppliers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', N'COLUMN',N'HomePage'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DatasheetGridlinesBehavior' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesBehavior', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DateCreated' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'04/10/2000 8:46:41 AM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterOn' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'FilterOn', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'LastUpdated' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'16/01/2002 12:54:37 AM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Suppliers'' names, addresses, phone numbers, and hyperlinks to home pages.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_OrderByOn' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Suppliers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrderOn' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'OrderOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'RecordCount' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'29' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Updatable' , N'SCHEMA',N'dbo', N'TABLE',N'Suppliers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers'
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (1, N'Canon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (2, N'Apple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (3, N'Sharp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (4, N'Sony', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (5, N'Toshiba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (6, N'Panasonic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (7, N'Phillips', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (8, N'Sanio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (9, N'Blackberry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (10, N'Samsung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (11, N'Microsoft', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (12, N'Acer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
/****** Object:  Table [dbo].[Shipment]    Script Date: 08/05/2013 09:06:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Shipment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Shipment](
	[ShipmentID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[ShipmentOption] [nvarchar](24) COLLATE Chinese_PRC_CI_AS NULL,
	[ShipmentDuration] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ShipmentCost] [money] NULL,
 CONSTRAINT [aaaaaShipment_PK] PRIMARY KEY NONCLUSTERED 
(
	[ShipmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1155' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentID'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Shipper ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number automatically assigned to new shipper.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ShipmentID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ShipmentID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Shipment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1665' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Company Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of shipping company.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CompanyName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'40' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CompanyName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Shipment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'CompanyName'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentOption'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentOption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentOption'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentOption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentOption'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentOption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentOption'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentOption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentOption'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentOption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentOption'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentOption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentOption'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentOption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentOption'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentOption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentOption'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentOption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentOption'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Method of shipment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentOption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentOption'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentOption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentOption'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ShipmentOption' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentOption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentOption'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentOption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentOption'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentOption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentOption'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentOption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentOption'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ShipmentOption' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentOption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentOption'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Shipment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentOption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentOption'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentOption'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentDuration'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentDuration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentDuration'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentDuration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentDuration'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentDuration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentDuration'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentDuration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentDuration'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentDuration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentDuration'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentDuration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentDuration'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentDuration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentDuration'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentDuration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentDuration'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentDuration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentDuration'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ShipmentDuration' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentDuration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentDuration'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentDuration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentDuration'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentDuration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentDuration'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentDuration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentDuration'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ShipmentDuration' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentDuration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentDuration'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Shipment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentDuration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentDuration'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentDuration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentCost'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentCost'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentCost'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentCost'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentCost'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentCost'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentCost'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentCost'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentCost'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentCost'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Format' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentCost'))
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'$#,##0.00;($#,##0.00)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentCost'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ShipmentCost' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentCost'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentCost'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentCost'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentCost'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ShipmentCost' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentCost'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Shipment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', N'COLUMN',N'ShipmentCost'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment', @level2type=N'COLUMN',@level2name=N'ShipmentCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DatasheetGridlinesBehavior' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesBehavior', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DateCreated' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'04/10/2000 8:46:41 AM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterOn' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'FilterOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'LastUpdated' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'10/10/2000 8:09:05 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Shippers'' names and phone numbers.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_OrderByOn' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Shipment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrderOn' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'OrderOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'RecordCount' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Updatable' , N'SCHEMA',N'dbo', N'TABLE',N'Shipment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipment'
GO
/****** Object:  Table [dbo].[Products]    Script Date: 08/05/2013 09:06:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Products](
	[ItemID] [int] NOT NULL,
	[ItemName] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
	[SupplierID] [int] NULL,
	[CategoryID] [int] NULL,
	[Quantity] [int] NULL,
	[Cost] [money] NULL,
	[ImageFile] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
	[IcoFiles] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
	[Description] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [aaaaaProducts_PK] PRIMARY KEY NONCLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND name = N'CategoriesProducts')
CREATE NONCLUSTERED INDEX [CategoriesProducts] ON [dbo].[Products] 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND name = N'CategoryID')
CREATE NONCLUSTERED INDEX [CategoryID] ON [dbo].[Products] 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND name = N'PruductID')
CREATE NONCLUSTERED INDEX [PruductID] ON [dbo].[Products] 
(
	[ItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND name = N'SupplierID')
CREATE NONCLUSTERED INDEX [SupplierID] ON [dbo].[Products] 
(
	[SupplierID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND name = N'SuppliersProducts')
CREATE NONCLUSTERED INDEX [SuppliersProducts] ON [dbo].[Products] 
(
	[SupplierID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1080' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemID'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ItemID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ItemID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Products' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'5025' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ItemName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'60' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ItemName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Products' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ItemName'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1230' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'SupplierID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'SupplierID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Products' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SupplierID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1200' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CategoryID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CategoryID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Products' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'CategoryID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1770' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Products' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Cost'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Cost'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Cost'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Cost'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Cost'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Cost'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Cost'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1020' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Cost'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Cost'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Cost'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Format' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Cost'))
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Standard' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Cost'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Cost' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Cost'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Cost'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Cost'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Cost'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Cost' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Cost'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Products' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'Cost'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2730' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ImageURL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ImageURL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Products' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ImageFile'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ImageFile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Products', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DateCreated' , N'SCHEMA',N'dbo', N'TABLE',N'Products', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'16/01/2002 12:53:51 AM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'LastUpdated' , N'SCHEMA',N'dbo', N'TABLE',N'Products', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'02/04/2005 1:50:34 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DefaultView' , N'SCHEMA',N'dbo', N'TABLE',N'Products', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_OrderByOn' , N'SCHEMA',N'dbo', N'TABLE',N'Products', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Orientation' , N'SCHEMA',N'dbo', N'TABLE',N'Products', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Products', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Products' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'RecordCount' , N'SCHEMA',N'dbo', N'TABLE',N'Products', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'102' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Updatable' , N'SCHEMA',N'dbo', N'TABLE',N'Products', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products'
GO
INSERT [dbo].[Products] ([ItemID], [ItemName], [SupplierID], [CategoryID], [Quantity], [Cost], [ImageFile], [IcoFiles], [Description]) VALUES (1, N'Canon EOS Rebel T3 12.2MP DSLR Camera', 1, 2, 100, 599.0000, N'Canon EOS Rebel T3 12.2MP DSLR CameraBIG.jpg', N'Canon EOS Rebel T3 12.2MP DSLR Camera.jpg', N'Take amazing-looking photos you will be proud to post online with this Canon DLSR bundle. It includes a Canon EOS Rebel T3 12.2MP DSLR with lens kit and a Canon EF-S 55-250mm lens.')
INSERT [dbo].[Products] ([ItemID], [ItemName], [SupplierID], [CategoryID], [Quantity], [Cost], [ImageFile], [IcoFiles], [Description]) VALUES (2, N'Apple iPad with Retina Display (4th Generation) 16GB - Wi-Fi - White', 2, 4, 100, 499.0000, N'Apple iPad with Retina Display (4th Generation) 16GB - Wi-Fi - WhiteBIG.jpg', N'Apple iPad with Retina Display (4th Generation) 16GB - Wi-Fi - WhiteBIG.jpg', N'iPad features a stunning Retina display, iSight and FaceTime cameras, the all-new A6X chip, and ultrafast wireless. And with access to over 300,000 apps on the App Store, you can do more than ever')
INSERT [dbo].[Products] ([ItemID], [ItemName], [SupplierID], [CategoryID], [Quantity], [Cost], [ImageFile], [IcoFiles], [Description]) VALUES (3, N'Sharp Aquos', 3, 6, 100, 1099.9900, N'Sharp AquosBIG.jpg', N'Sharp Aquos.jpg', N'The Sharp Aquos LC-60LE600U delivers top of the range performance at an affordable price. This 60" display is HD 1080p ready with a 16:9 ratio and unrivalled colour purity. Designed to perform brilliantly in high demand situations like action movies and video gaming, the 120Hz Fine Motion Enhanced display virtually eliminates blur and motion artifacts.')
INSERT [dbo].[Products] ([ItemID], [ItemName], [SupplierID], [CategoryID], [Quantity], [Cost], [ImageFile], [IcoFiles], [Description]) VALUES (4, N'Xbox 360 4GB Console', 11, 8, 50, 199.9900, N'Xbox360BIG.jpg', N'Xbox360.jpg', N'The all new XBOX 360 has everything you love about the latest XBOX 360, but with a pared down 4GB hard drive. It comes complete with built-in 802.11n WiFi connectivity, HDMI connectivity, a cool black colour and whisper-quiet operation. It''s also ready for Microsoft''s new Kinect system.')
INSERT [dbo].[Products] ([ItemID], [ItemName], [SupplierID], [CategoryID], [Quantity], [Cost], [ImageFile], [IcoFiles], [Description]) VALUES (5, N'Acer Aspire', 12, 2, 75, 489.0000, N'Acer AspireBIG.jpg', N'Acer Aspire.jpg', N'The Aspire E Series 15.6" laptop is a fun, easy-to-use machine that gives you all the essential features you''re looking for in a laptop you''ll use every day. The AMD A4-5000 quad-core processor, 6GB of DDR3 RAM, and 750GB hard drive give you the speed and performance you need to handle all of your tasks, and AcerCloud makes it easy to share all of your files across your devices.')
INSERT [dbo].[Products] ([ItemID], [ItemName], [SupplierID], [CategoryID], [Quantity], [Cost], [ImageFile], [IcoFiles], [Description]) VALUES (8, N'Toshiba Satellite L40 14" Laptop', 5, 2, 34, 499.0000, N'ToshibaBIG.jpg', N'Toshiba.jpg', N'The Toshiba Satellite L40 laptop combines great power, tons of connectivity, and awesome features inside a 14-inch machine that''s ready to go where you go. It''s equipped with an Intel ULV Pentium 2117U processor, 8GB system memory, a 14-inch HD display, SuperSpeed USB 3.0 connectivity and so much more.')
INSERT [dbo].[Products] ([ItemID], [ItemName], [SupplierID], [CategoryID], [Quantity], [Cost], [ImageFile], [IcoFiles], [Description]) VALUES (9, N'Philips HDTV', 7, 6, 78, 249.0000, N'Philips HDTVBIG.jpg', N'Philips HDTV.jpg', N'The Philips 32PFL3506 LCD HDTV gives you an awesome HD 720p image resolution with crystal clear detail, a high contrast ratio, and all the connectivity you need. Connect your favourite HD devices with 3 HDMI inputs, and enjoy the latest HD games, movies, and broadcasting available.')
INSERT [dbo].[Products] ([ItemID], [ItemName], [SupplierID], [CategoryID], [Quantity], [Cost], [ImageFile], [IcoFiles], [Description]) VALUES (10, N'Panasonic 3D LED smartTV', 6, 6, 67, 1699.0000, N'PanasonicBIG.jpg', N'Panasonic.jpg', N'The Panasonic TCL55WT50 Smart TV represents the apex of home theatre technology. This active 3D display produces an impressive Full HD 1080p resolution that brings your high definition content to life. A 120Hz frame refresh rate smoothes-out fast-moving scenes, and active 3D technology takes it all to the next level. It also offers internet connectivity, giving you access to all sorts of content.')
INSERT [dbo].[Products] ([ItemID], [ItemName], [SupplierID], [CategoryID], [Quantity], [Cost], [ImageFile], [IcoFiles], [Description]) VALUES (11, N'Sony X900 3D Smart 4K UHD T', 4, 6, 45, 2244.0000, N'Sony TVBIG.jpg', N'Sony TV.jpg', N'The Sony X900 3D Smart 4K UHD TV is your chance to go bigger than ever before in your home theatre. With more resolution you’ll enjoy an astounding picture quality, even when you’re sitting only a short distance from the TV, so you can get an authentic movie theatre experience in the comfort of your own home. Check it out for yourself at your local Future Shop and see what the future of TV has in store for you.')
INSERT [dbo].[Products] ([ItemID], [ItemName], [SupplierID], [CategoryID], [Quantity], [Cost], [ImageFile], [IcoFiles], [Description]) VALUES (16, N'Samsung Galaxy Tab3', 10, 4, 113, 299.0000, N'Samsung Galaxy Tab3BIG.jpg', N'Samsung Galaxy Tab3.jpg', N'Communicate with the world in a whole new way with The Samsung GALAXY Tab 3. This eight-inch, lightweight tablet has a 1.5GHz processor for seamless streaming, browsing, viewing, and creating. Storing content is easy with 16GB of expandable storage space. This tablet is equipped with the Android Jelly Bean OS that evolves UI and optimizes your connection to the world.')
INSERT [dbo].[Products] ([ItemID], [ItemName], [SupplierID], [CategoryID], [Quantity], [Cost], [ImageFile], [IcoFiles], [Description]) VALUES (17, N'Sharp Hipstreet', 3, 4, 237, 125.0000, N'Sharp HipstreetBIG.jpg', N'Sharp Hipstreet.jpg', N'Take your enjoyment to extraordinary heights with this Hipstreet touch screen multimedia tablet. The high resolution, capacitive screen makes colour pop in HD. Wherever you are, you''ll surf continuously and without interruption thanks to the 1.6GHz processor and built-in WI-FI connectivity. With its 8GB expandable capacity, you''ll take your favourite movies, games, and e-books on the go.')
INSERT [dbo].[Products] ([ItemID], [ItemName], [SupplierID], [CategoryID], [Quantity], [Cost], [ImageFile], [IcoFiles], [Description]) VALUES (18, N'Case-Mate BlackBerry Playbook Case - White / Cool Grey', 9, 4, 10000, 21.0000, N'Case-Mate BlackBerry Playbook CaseBIG.jpg', N'Case-Mate BlackBerry Playbook Case - White / Cool Grey.jpg', NULL)
INSERT [dbo].[Products] ([ItemID], [ItemName], [SupplierID], [CategoryID], [Quantity], [Cost], [ImageFile], [IcoFiles], [Description]) VALUES (6, N'Sony VAIO', 4, 2, 68, 899.9500, N'Sony VAIOBIG.jpg', N'Sony VAIO.jpg', N'Packed with powerful features like an Intel Core i7 processor, 8GB system memory, dedicated AMD Radeon HD graphics, and a massive 17.3-inch LED high def display, this Sony VAIO was designed to do some serious digital heavy lifting. It''s built to run the latest games and demanding HD content without batting an eye. And that''s not where the features end, either.')
INSERT [dbo].[Products] ([ItemID], [ItemName], [SupplierID], [CategoryID], [Quantity], [Cost], [ImageFile], [IcoFiles], [Description]) VALUES (7, N'Samsung Chromebook', 10, 2, 50, 269.0000, N'Samsung ChromebookBIG.jpg', N'Samsung Chromebook.jpg', N'Sleek and ultraportable, the Samsung Chromebook is a great companion when you''re on the go. The Samsung Chromebook runs Chrome OS, which means it has Google apps built in, is easy to share and stays up-to-date automatically. Equipped with a 1.7GHz Samsung E5250 processor and 2GB of RAM, it boots up in less than 10 seconds and breezes through everyday tasks like web surfing, watching movies and more.')
INSERT [dbo].[Products] ([ItemID], [ItemName], [SupplierID], [CategoryID], [Quantity], [Cost], [ImageFile], [IcoFiles], [Description]) VALUES (12, N'Sony Alpha NEX-3N', 4, 2, 32, 429.0000, N'Sony Alpha NEX-3NBIG.jpg', N'Sony Alpha NEX-3N.jpg', N'Small in size but big on performance, the Sony Alpha NEX3N compact system camera takes DSLR-quality photos while maintaining a sleek, slim design you can easily fit in your pocket. It features a large 16.1 megapixel sensor, tiltable 3" LCD screen, and Full HD video recording, so you can capture detailed, vibrant images on the fly.')
INSERT [dbo].[Products] ([ItemID], [ItemName], [SupplierID], [CategoryID], [Quantity], [Cost], [ImageFile], [IcoFiles], [Description]) VALUES (13, N'Blackberry Q10', 9, 3, 233, 149.0000, N'BlackberryBIG.jpg', N'Blackberry.jpg', N'Mobile keyboard enthusiasts, the smartphone you''ve been waiting for has finally arrived. The BlackBerry Q10 is equipped with a precision-designed keyboard that''s easy and fast to type on. It''s loaded with the BlackBerry 10 operating system, which is filled with innovations that are designed to keep you moving through your busy life.')
INSERT [dbo].[Products] ([ItemID], [ItemName], [SupplierID], [CategoryID], [Quantity], [Cost], [ImageFile], [IcoFiles], [Description]) VALUES (14, N'Samsung GalaxyS3', 10, 3, 2334, 34.0000, N'Samsung GalaxyS3BIG.jpg', N'Samsung GalaxyS3.jpg', N'The latest member of the Samsung Galaxy S family is here, and it''s ready to provide an out-of-this-world experience. The Galaxy S III is designed for maximum power and performance, with an intuitive user interface and simplified approaches to sharing. Powered by Android 4.0 Ice Cream Sandwich, the Galaxy S III offers the ultimate in mobile technology.')
INSERT [dbo].[Products] ([ItemID], [ItemName], [SupplierID], [CategoryID], [Quantity], [Cost], [ImageFile], [IcoFiles], [Description]) VALUES (15, N'iPhone4S 32GB', 2, 3, 190, 599.0000, N'iPhone4S 32GBBIg.jpg', N'iPhone4S 32GB.jpg', N'The iPhone 4S 32GB takes everything you loved about the iPhone 4 and improved upon it. Sporting a lightning-quick A5 dual-core processor and a stunning 8MP camera for amazing shots, this iPhone stands out from its competitors. Compatible with iOS 6, this phone is a perfect budget alternative to iPhone 5.')
/****** Object:  Table [dbo].[Cart]    Script Date: 08/05/2013 09:06:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cart]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cart](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[DateTimeCreated] [datetime] NULL,
	[NrOfItems] [int] NULL,
	[OrderPlaced] [bit] NOT NULL,
 CONSTRAINT [aaaaaCart_PK] PRIMARY KEY NONCLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Cart]') AND name = N'CartID')
CREATE NONCLUSTERED INDEX [CartID] ON [dbo].[Cart] 
(
	[CartID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Cart]') AND name = N'CustomerID')
CREATE NONCLUSTERED INDEX [CustomerID] ON [dbo].[Cart] 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Cart]') AND name = N'CustomersCart')
CREATE NONCLUSTERED INDEX [CustomersCart] ON [dbo].[Cart] 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CartID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CartID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cart' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CustomerID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CustomerID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cart' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1965' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'DateTimeCreated' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'DateTimeCreated' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cart' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'DateTimeCreated'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'DateTimeCreated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of different items in the cart' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'NrOfItems' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'NrOfItems' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cart' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'NrOfItems'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'NrOfItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'OrderPlaced'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'OrderPlaced'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'OrderPlaced'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'OrderPlaced'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'OrderPlaced'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'OrderPlaced'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'OrderPlaced'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'OrderPlaced'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'OrderPlaced'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'OrderPlaced'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'OrderPlaced'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'OrderPlaced'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'OrderPlaced'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'OrderPlaced'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'OrderPlaced'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'OrderPlaced'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'OrderPlaced'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'OrderPlaced'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Format' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'OrderPlaced'))
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'OrderPlaced'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'OrderPlaced'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'OrderPlaced' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'OrderPlaced'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'OrderPlaced'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'OrderPlaced'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'OrderPlaced'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'OrderPlaced'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'OrderPlaced'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'OrderPlaced'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'OrderPlaced'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'OrderPlaced' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'OrderPlaced'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'OrderPlaced'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cart' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'OrderPlaced'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'COLUMN',N'OrderPlaced'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'OrderPlaced'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DateCreated' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'04/10/2000 8:51:52 AM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'LastUpdated' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'10/10/2000 9:51:23 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_OrderByOn' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Cart' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'RecordCount' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Updatable' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart'
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 08/05/2013 09:06:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[CartID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,
	[ShipVia] [int] NULL,
	[TotalCost] [money] NULL,
	[ShipName] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ShipAddress] [nvarchar](60) COLLATE Chinese_PRC_CI_AS NULL,
	[ShipCity] [nvarchar](15) COLLATE Chinese_PRC_CI_AS NULL,
	[ShipRegion] [nvarchar](15) COLLATE Chinese_PRC_CI_AS NULL,
	[ShipPostalCode] [nvarchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[ShipCountry] [nvarchar](15) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [aaaaaOrders_PK] PRIMARY KEY NONCLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND name = N'{2480DD49-99F4-11D4-9324-0008C7084E17}')
CREATE NONCLUSTERED INDEX [{2480DD49-99F4-11D4-9324-0008C7084E17}] ON [dbo].[Orders] 
(
	[ShipVia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND name = N'CartID')
CREATE NONCLUSTERED INDEX [CartID] ON [dbo].[Orders] 
(
	[CartID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND name = N'CartOrders')
CREATE NONCLUSTERED INDEX [CartOrders] ON [dbo].[Orders] 
(
	[CartID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND name = N'CustomerID')
CREATE NONCLUSTERED INDEX [CustomerID] ON [dbo].[Orders] 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND name = N'CustomersOrders')
CREATE NONCLUSTERED INDEX [CustomersOrders] ON [dbo].[Orders] 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND name = N'OrderDate')
CREATE NONCLUSTERED INDEX [OrderDate] ON [dbo].[Orders] 
(
	[OrderDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND name = N'ShippedDate')
CREATE NONCLUSTERED INDEX [ShippedDate] ON [dbo].[Orders] 
(
	[ShippedDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND name = N'ShipPostalCode')
CREATE NONCLUSTERED INDEX [ShipPostalCode] ON [dbo].[Orders] 
(
	[ShipPostalCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'945' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Order ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique order number.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'OrderID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'OrderID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Orders' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'3090' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_BoundColumn' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Customer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_ColumnCount' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_ColumnHeads' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_ColumnWidths' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Same entry as in Customers table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_LimitToList' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_ListRows' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_ListWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'0twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_RowSourceType' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CustomerID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CustomerID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Orders' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CartID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CartID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Orders' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderDate'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderDate'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderDate'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderDate'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderDate'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderDate'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderDate'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1185' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderDate'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderDate'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Order Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Format' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Medium Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderDate'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'OrderDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderDate'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderDate'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderDate'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderDate'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'OrderDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderDate'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Orders' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'OrderDate'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShippedDate'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShippedDate'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShippedDate'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShippedDate'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShippedDate'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShippedDate'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShippedDate'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShippedDate'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShippedDate'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShippedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Shipped Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Format' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShippedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Medium Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShippedDate'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ShippedDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShippedDate'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShippedDate'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShippedDate'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShippedDate'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ShippedDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShippedDate'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Orders' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShippedDate'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1800' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_BoundColumn' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Ship Via' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_ColumnCount' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_ColumnHeads' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_ColumnWidths' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Same as Shipper ID in Shippers table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_LimitToList' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_ListRows' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_ListWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'0twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_RowSource' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT DISTINCTROW [ShipperID],[CompanyName] FROM Shippers ORDER BY [CompanyName];' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_RowSourceType' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ShipVia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ShipVia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Orders' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipVia'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipVia'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total cost including freight and taxes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Format' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'$#,##0.00;($#,##0.00)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TotalCost' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TotalCost' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Orders' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipName'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipName'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipName'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipName'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipName'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipName'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipName'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipName'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ShipName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipName'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipName'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipName'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipName'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ShipName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipName'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Orders' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipName'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2475' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Ship Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Street address only -- no post-office box allowed.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ShipAddress' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'60' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ShipAddress' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Orders' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipAddress'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCity'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCity'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCity'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCity'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCity'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCity'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCity'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1395' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCity'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCity'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCity'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Ship City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCity'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCity'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ShipCity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCity'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCity'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCity'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCity'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ShipCity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCity'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Orders' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCity'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1410' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Ship Region' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State or province.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ShipRegion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ShipRegion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Orders' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipRegion'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipRegion'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipPostalCode'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipPostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipPostalCode'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipPostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipPostalCode'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipPostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipPostalCode'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipPostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipPostalCode'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipPostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipPostalCode'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipPostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipPostalCode'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1785' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipPostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipPostalCode'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipPostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipPostalCode'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipPostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipPostalCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Ship Postal Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipPostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipPostalCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipPostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipPostalCode'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ShipPostalCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipPostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipPostalCode'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipPostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipPostalCode'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipPostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipPostalCode'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipPostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipPostalCode'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ShipPostalCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipPostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipPostalCode'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Orders' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipPostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipPostalCode'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipPostalCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCountry'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCountry'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCountry'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCountry'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCountry'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCountry'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCountry'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1380' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCountry'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterLookup' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCountry'))
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Caption' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCountry'))
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Ship Country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCountry'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCountry'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ShipCountry' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCountry'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCountry'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCountry'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCountry'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ShipCountry' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCountry'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Orders' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'COLUMN',N'ShipCountry'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountry'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DatasheetGridlinesBehavior' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesBehavior', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DateCreated' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'04/10/2000 8:46:41 AM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'FilterOn' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'FilterOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'LastUpdated' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'18/10/2000 1:44:43 AM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customer name, order date, and freight charge for each order.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_OrderByOn' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Orders' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrderOn' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'OrderOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'RecordCount' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Updatable' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders'
GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 08/05/2013 09:06:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CartItem]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CartItem](
	[CartItemID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[CurrentPrice] [money] NULL,
	[Quantity] [int] NULL,
	[CartID] [int] NULL,
 CONSTRAINT [aaaaaCartItem_PK] PRIMARY KEY NONCLUSTERED 
(
	[CartItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CartItem]') AND name = N'CartCartItem')
CREATE NONCLUSTERED INDEX [CartCartItem] ON [dbo].[CartItem] 
(
	[CartID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CartItem]') AND name = N'CartID')
CREATE NONCLUSTERED INDEX [CartID] ON [dbo].[CartItem] 
(
	[CartID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CartItem]') AND name = N'ProductID')
CREATE NONCLUSTERED INDEX [ProductID] ON [dbo].[CartItem] 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CartItem]') AND name = N'ProductsCartItem')
CREATE NONCLUSTERED INDEX [ProductsCartItem] ON [dbo].[CartItem] 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartItemID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartItemID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartItemID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartItemID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartItemID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartItemID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartItemID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartItemID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartItemID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CartItemID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartItemID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartItemID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartItemID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartItemID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CartItemID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartItemID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'CartItem' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartItemID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartItemID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'ProductID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'ProductID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'ProductID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'ProductID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'ProductID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'ProductID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'ProductID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'ProductID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'ProductID'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'ProductID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'ProductID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'ProductID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ProductID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'ProductID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'ProductID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'ProductID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'ProductID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ProductID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'ProductID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'CartItem' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'ProductID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CurrentPrice'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CurrentPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CurrentPrice'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CurrentPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CurrentPrice'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CurrentPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CurrentPrice'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CurrentPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CurrentPrice'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CurrentPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CurrentPrice'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CurrentPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CurrentPrice'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CurrentPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CurrentPrice'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CurrentPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CurrentPrice'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CurrentPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CurrentPrice'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CurrentPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Format' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CurrentPrice'))
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'$#,##0.00;($#,##0.00)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CurrentPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CurrentPrice'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CurrentPrice' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CurrentPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CurrentPrice'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CurrentPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CurrentPrice'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CurrentPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CurrentPrice'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CurrentPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CurrentPrice'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CurrentPrice' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CurrentPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CurrentPrice'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'CartItem' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CurrentPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CurrentPrice'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CurrentPrice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'CartItem' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CartID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CartID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'CartItem' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'COLUMN',N'CartID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'COLUMN',@level2name=N'CartID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DateCreated' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'04/10/2000 8:53:45 AM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'LastUpdated' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'16/01/2002 12:56:32 AM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_OrderByOn' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CartItem' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'RecordCount' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'33' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Updatable' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem'
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 08/05/2013 09:06:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Payment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Payment](
	[OrderID] [int] NOT NULL,
	[CardType] [nvarchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[CardNumber] [nvarchar](25) COLLATE Chinese_PRC_CI_AS NULL,
	[CardOwner] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ExpiryDate] [nvarchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [aaaaaPayment_PK] PRIMARY KEY NONCLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Payment]') AND name = N'OrderID')
CREATE NONCLUSTERED INDEX [OrderID] ON [dbo].[Payment] 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Payment]') AND name = N'OrdersPayment')
CREATE UNIQUE NONCLUSTERED INDEX [OrdersPayment] ON [dbo].[Payment] 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'OrderID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'OrderID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Payment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'OrderID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardType'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardType'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardType'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardType'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardType'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardType'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardType'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardType'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardType'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardType'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CardType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardType'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardType'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardType'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardType'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CardType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardType'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Payment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardType'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardNumber'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardNumber'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardNumber'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardNumber'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardNumber'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardNumber'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardNumber'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardNumber'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardNumber'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardNumber'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CardNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardNumber'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardNumber'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardNumber'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'25' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardNumber'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CardNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardNumber'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Payment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardNumber'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardNumber'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardOwner'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardOwner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardOwner'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardOwner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardOwner'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardOwner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardOwner'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardOwner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardOwner'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardOwner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardOwner'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardOwner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardOwner'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardOwner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardOwner'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardOwner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardOwner'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardOwner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardOwner'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CardOwner' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardOwner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardOwner'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardOwner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardOwner'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardOwner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardOwner'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardOwner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardOwner'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CardOwner' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardOwner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardOwner'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Payment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardOwner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'CardOwner'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'CardOwner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'ExpiryDate'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'ExpiryDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'ExpiryDate'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'ExpiryDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'ExpiryDate'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'ExpiryDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'ExpiryDate'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'ExpiryDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'ExpiryDate'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'ExpiryDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'ExpiryDate'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'ExpiryDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'ExpiryDate'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'ExpiryDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'ExpiryDate'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'ExpiryDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'ExpiryDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'ExpiryDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'ExpiryDate'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ExpiryDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'ExpiryDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'ExpiryDate'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'ExpiryDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'ExpiryDate'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'ExpiryDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'ExpiryDate'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'ExpiryDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'ExpiryDate'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ExpiryDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'ExpiryDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'ExpiryDate'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Payment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'ExpiryDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'COLUMN',N'ExpiryDate'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'ExpiryDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DateCreated' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'10/10/2000 8:11:36 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'LastUpdated' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'10/10/2000 8:13:51 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_OrderByOn' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Payment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'RecordCount' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Updatable' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment'
GO
/****** Object:  Default [DF__Shipment__Shipme__108B795B]    Script Date: 08/05/2013 09:06:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Shipment__Shipme__108B795B]') AND parent_object_id = OBJECT_ID(N'[dbo].[Shipment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Shipment__Shipme__108B795B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Shipment] ADD  CONSTRAINT [DF__Shipment__Shipme__108B795B]  DEFAULT ((0)) FOR [ShipmentCost]
END


End
GO
/****** Object:  Default [DF__Products__ItemID__117F9D94]    Script Date: 08/05/2013 09:06:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Products__ItemID__117F9D94]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Products__ItemID__117F9D94]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__ItemID__117F9D94]  DEFAULT ((0)) FOR [ItemID]
END


End
GO
/****** Object:  Default [DF__Products__Suppli__1273C1CD]    Script Date: 08/05/2013 09:06:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Products__Suppli__1273C1CD]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Products__Suppli__1273C1CD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Suppli__1273C1CD]  DEFAULT ((0)) FOR [SupplierID]
END


End
GO
/****** Object:  Default [DF__Products__Catego__1367E606]    Script Date: 08/05/2013 09:06:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Products__Catego__1367E606]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Products__Catego__1367E606]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Catego__1367E606]  DEFAULT ((0)) FOR [CategoryID]
END


End
GO
/****** Object:  Default [DF__Products__Quanti__145C0A3F]    Script Date: 08/05/2013 09:06:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Products__Quanti__145C0A3F]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Products__Quanti__145C0A3F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Quanti__145C0A3F]  DEFAULT ((0)) FOR [Quantity]
END


End
GO
/****** Object:  Default [DF__Products__Cost__15502E78]    Script Date: 08/05/2013 09:06:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Products__Cost__15502E78]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Products__Cost__15502E78]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Cost__15502E78]  DEFAULT ((0)) FOR [Cost]
END


End
GO
/****** Object:  Default [DF__Cart__CustomerID__164452B1]    Script Date: 08/05/2013 09:06:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Cart__CustomerID__164452B1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cart]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Cart__CustomerID__164452B1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Cart] ADD  CONSTRAINT [DF__Cart__CustomerID__164452B1]  DEFAULT ((0)) FOR [CustomerID]
END


End
GO
/****** Object:  Default [DF__Cart__NrOfItems__173876EA]    Script Date: 08/05/2013 09:06:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Cart__NrOfItems__173876EA]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cart]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Cart__NrOfItems__173876EA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Cart] ADD  CONSTRAINT [DF__Cart__NrOfItems__173876EA]  DEFAULT ((0)) FOR [NrOfItems]
END


End
GO
/****** Object:  Default [DF__Cart__OrderPlace__182C9B23]    Script Date: 08/05/2013 09:06:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Cart__OrderPlace__182C9B23]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cart]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Cart__OrderPlace__182C9B23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Cart] ADD  CONSTRAINT [DF__Cart__OrderPlace__182C9B23]  DEFAULT ((0)) FOR [OrderPlaced]
END


End
GO
/****** Object:  Default [DF__Orders__Customer__1920BF5C]    Script Date: 08/05/2013 09:06:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Orders__Customer__1920BF5C]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Orders__Customer__1920BF5C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__Customer__1920BF5C]  DEFAULT ((0)) FOR [CustomerID]
END


End
GO
/****** Object:  Default [DF__Orders__CartID__1A14E395]    Script Date: 08/05/2013 09:06:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Orders__CartID__1A14E395]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Orders__CartID__1A14E395]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__CartID__1A14E395]  DEFAULT ((0)) FOR [CartID]
END


End
GO
/****** Object:  Default [DF__Orders__TotalCos__1B0907CE]    Script Date: 08/05/2013 09:06:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Orders__TotalCos__1B0907CE]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Orders__TotalCos__1B0907CE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__TotalCos__1B0907CE]  DEFAULT ((0)) FOR [TotalCost]
END


End
GO
/****** Object:  Default [DF__CartItem__Produc__1BFD2C07]    Script Date: 08/05/2013 09:06:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__CartItem__Produc__1BFD2C07]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartItem]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__CartItem__Produc__1BFD2C07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CartItem] ADD  CONSTRAINT [DF__CartItem__Produc__1BFD2C07]  DEFAULT ((0)) FOR [ProductID]
END


End
GO
/****** Object:  Default [DF__CartItem__Curren__1CF15040]    Script Date: 08/05/2013 09:06:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__CartItem__Curren__1CF15040]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartItem]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__CartItem__Curren__1CF15040]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CartItem] ADD  CONSTRAINT [DF__CartItem__Curren__1CF15040]  DEFAULT ((0)) FOR [CurrentPrice]
END


End
GO
/****** Object:  Default [DF__CartItem__Quanti__1DE57479]    Script Date: 08/05/2013 09:06:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__CartItem__Quanti__1DE57479]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartItem]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__CartItem__Quanti__1DE57479]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CartItem] ADD  CONSTRAINT [DF__CartItem__Quanti__1DE57479]  DEFAULT ((0)) FOR [Quantity]
END


End
GO
/****** Object:  Default [DF__CartItem__CartID__1ED998B2]    Script Date: 08/05/2013 09:06:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__CartItem__CartID__1ED998B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartItem]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__CartItem__CartID__1ED998B2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CartItem] ADD  CONSTRAINT [DF__CartItem__CartID__1ED998B2]  DEFAULT ((0)) FOR [CartID]
END


End
GO
/****** Object:  Default [DF__Payment__OrderID__1FCDBCEB]    Script Date: 08/05/2013 09:06:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Payment__OrderID__1FCDBCEB]') AND parent_object_id = OBJECT_ID(N'[dbo].[Payment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Payment__OrderID__1FCDBCEB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF__Payment__OrderID__1FCDBCEB]  DEFAULT ((0)) FOR [OrderID]
END


End
GO
/****** Object:  ForeignKey [Products_FK00]    Script Date: 08/05/2013 09:06:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Products_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [Products_FK00] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Products_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [Products_FK00]
GO
/****** Object:  ForeignKey [Products_FK01]    Script Date: 08/05/2013 09:06:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Products_FK01]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [Products_FK01] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Products_FK01]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [Products_FK01]
GO
/****** Object:  ForeignKey [Cart_FK00]    Script Date: 08/05/2013 09:06:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Cart_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cart]'))
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [Cart_FK00] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Cart_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cart]'))
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [Cart_FK00]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_ConstraintText' , N'SCHEMA',N'dbo', N'TABLE',N'Cart', N'CONSTRAINT',N'Cart_FK00'))
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'You cannot add, change, or delete this record because of the relationship restriction between the tables ''Customers'' and ''Cart''.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'CONSTRAINT',@level2name=N'Cart_FK00'
GO
/****** Object:  ForeignKey [Orders_FK00]    Script Date: 08/05/2013 09:06:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Orders_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [Orders_FK00] FOREIGN KEY([ShipVia])
REFERENCES [dbo].[Shipment] ([ShipmentID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Orders_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [Orders_FK00]
GO
/****** Object:  ForeignKey [Orders_FK01]    Script Date: 08/05/2013 09:06:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Orders_FK01]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [Orders_FK01] FOREIGN KEY([CartID])
REFERENCES [dbo].[Cart] ([CartID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Orders_FK01]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [Orders_FK01]
GO
/****** Object:  ForeignKey [Orders_FK02]    Script Date: 08/05/2013 09:06:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Orders_FK02]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [Orders_FK02] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Orders_FK02]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [Orders_FK02]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_ConstraintText' , N'SCHEMA',N'dbo', N'TABLE',N'Orders', N'CONSTRAINT',N'Orders_FK02'))
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'You cannot add, change, or delete this record because of the relationship restriction between the tables ''Customers'' and ''Orders''.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'CONSTRAINT',@level2name=N'Orders_FK02'
GO
/****** Object:  ForeignKey [CartItem_FK00]    Script Date: 08/05/2013 09:06:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CartItem_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartItem]'))
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [CartItem_FK00] FOREIGN KEY([CartID])
REFERENCES [dbo].[Cart] ([CartID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CartItem_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartItem]'))
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [CartItem_FK00]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_ConstraintText' , N'SCHEMA',N'dbo', N'TABLE',N'CartItem', N'CONSTRAINT',N'CartItem_FK00'))
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'You cannot add, change, or delete this record because of the relationship restriction between the tables ''Cart'' and ''CartItem''.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CartItem', @level2type=N'CONSTRAINT',@level2name=N'CartItem_FK00'
GO
/****** Object:  ForeignKey [CartItem_FK01]    Script Date: 08/05/2013 09:06:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CartItem_FK01]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartItem]'))
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [CartItem_FK01] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ItemID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CartItem_FK01]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartItem]'))
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [CartItem_FK01]
GO
/****** Object:  ForeignKey [Payment_FK00]    Script Date: 08/05/2013 09:06:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Payment_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[Payment]'))
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [Payment_FK00] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Payment_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[Payment]'))
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [Payment_FK00]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_ConstraintText' , N'SCHEMA',N'dbo', N'TABLE',N'Payment', N'CONSTRAINT',N'Payment_FK00'))
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'You cannot add, change, or delete this record because of the relationship restriction between the tables ''Orders'' and ''Payment''.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'CONSTRAINT',@level2name=N'Payment_FK00'
GO
