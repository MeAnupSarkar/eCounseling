USE [master]
GO
/****** Object:  Database [counselling]    Script Date: 12/10/2017 12:41:14 AM ******/
CREATE DATABASE [counselling]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'counselling', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\counselling.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'counselling_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\counselling_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [counselling] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [counselling].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [counselling] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [counselling] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [counselling] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [counselling] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [counselling] SET ARITHABORT OFF 
GO
ALTER DATABASE [counselling] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [counselling] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [counselling] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [counselling] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [counselling] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [counselling] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [counselling] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [counselling] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [counselling] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [counselling] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [counselling] SET  DISABLE_BROKER 
GO
ALTER DATABASE [counselling] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [counselling] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [counselling] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [counselling] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [counselling] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [counselling] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [counselling] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [counselling] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [counselling] SET  MULTI_USER 
GO
ALTER DATABASE [counselling] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [counselling] SET DB_CHAINING OFF 
GO
ALTER DATABASE [counselling] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [counselling] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [counselling]
GO
/****** Object:  Table [dbo].[appintment]    Script Date: 12/10/2017 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[appintment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[date] [date] NULL,
	[status] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[assigned_Workshop]    Script Date: 12/10/2017 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[assigned_Workshop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[workshop_id] [int] NULL,
	[code] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 12/10/2017 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[feedback](
	[id] [int] NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[mobile] [varchar](50) NULL,
	[message] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[newsletter]    Script Date: 12/10/2017 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[newsletter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[problems]    Script Date: 12/10/2017 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[problems](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[problem_name] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_QA]    Script Date: 12/10/2017 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_QA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question_id] [int] NULL,
	[answer_id] [int] NULL,
	[admin_id] [int] NULL,
	[time] [datetime] NULL,
	[user_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_query]    Script Date: 12/10/2017 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_query](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[query] [varchar](2000) NULL,
	[user_name] [varchar](50) NULL,
	[user_email] [varchar](50) NULL,
	[answer] [varchar](2000) NULL,
	[user_id] [varchar](50) NULL,
	[category] [varchar](50) NULL,
	[time] [datetime] NULL,
	[updated_by] [int] NULL,
	[subject] [varchar](1000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_users]    Script Date: 12/10/2017 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
	[reg] [int] NULL,
	[type] [varchar](50) NULL,
	[date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[workshops]    Script Date: 12/10/2017 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[workshops](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[date] [date] NULL,
	[user_id] [int] NULL,
	[code] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[appintment] ADD  CONSTRAINT [DF_appintment_status]  DEFAULT ('open') FOR [status]
GO
ALTER TABLE [dbo].[tbl_QA] ADD  CONSTRAINT [DF_tbl_QA_time]  DEFAULT (getutcdate()) FOR [time]
GO
ALTER TABLE [dbo].[tbl_query] ADD  CONSTRAINT [DF_tbl_query_answer]  DEFAULT ('Yet Not Answered !') FOR [answer]
GO
ALTER TABLE [dbo].[tbl_query] ADD  CONSTRAINT [DF_tbl_query_time]  DEFAULT (getutcdate()) FOR [time]
GO
ALTER TABLE [dbo].[tbl_users] ADD  CONSTRAINT [DF_tbl_users_type]  DEFAULT ('normal') FOR [type]
GO
ALTER TABLE [dbo].[tbl_users] ADD  CONSTRAINT [DF_tbl_users_date]  DEFAULT (getutcdate()) FOR [date]
GO
USE [master]
GO
ALTER DATABASE [counselling] SET  READ_WRITE 
GO
