USE [master]
GO
/****** Object:  Database [PassportVisaManagementSystem]    Script Date: 01-04-2020 12.26.30 PM ******/
CREATE DATABASE [PassportVisaManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PassportVisaManagementSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.PVRSQLEXPRESS\MSSQL\DATA\PassportVisaManagementSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PassportVisaManagementSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.PVRSQLEXPRESS\MSSQL\DATA\PassportVisaManagementSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PassportVisaManagementSystem] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PassportVisaManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PassportVisaManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PassportVisaManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PassportVisaManagementSystem] SET QUERY_STORE = OFF
GO
USE [PassportVisaManagementSystem]
GO
/****** Object:  Table [dbo].[City]    Script Date: 01-04-2020 12.26.31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[STATE_ID] [nvarchar](20) NOT NULL,
	[CITY_NAME] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OldPassportData]    Script Date: 01-04-2020 12.26.31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OldPassportData](
	[PassportNumber] [nvarchar](20) NOT NULL,
	[UserID] [nvarchar](20) NOT NULL,
	[Country] [nvarchar](20) NOT NULL,
	[State] [nvarchar](20) NOT NULL,
	[City] [nvarchar](20) NOT NULL,
	[Pin] [nvarchar](10) NOT NULL,
	[TypeOfService] [nvarchar](10) NOT NULL,
	[BookletType] [nvarchar](10) NOT NULL,
	[IssueDate] [date] NOT NULL,
	[ExpiryDate] [date] NOT NULL,
	[Amount] [int] NOT NULL,
	[ReasonForReIssue] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_OldPassportData] PRIMARY KEY CLUSTERED 
(
	[PassportNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PassportApplication]    Script Date: 01-04-2020 12.26.31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PassportApplication](
	[PassportNumber] [nvarchar](20) NOT NULL,
	[UserID] [nvarchar](20) NOT NULL,
	[Country] [nvarchar](20) NOT NULL,
	[State] [nvarchar](20) NOT NULL,
	[City] [nvarchar](20) NOT NULL,
	[Pin] [nvarchar](10) NOT NULL,
	[TypeOfService] [nvarchar](10) NOT NULL,
	[BookletType] [nvarchar](10) NOT NULL,
	[IssueDate] [date] NOT NULL,
	[ExpiryDate] [date] NOT NULL,
	[Amount] [int] NOT NULL,
	[ReasonForReIssue] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_PassportApplication] PRIMARY KEY CLUSTERED 
(
	[PassportNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 01-04-2020 12.26.31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[STATE_ID] [nvarchar](20) NOT NULL,
	[STATE_NAME] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[STATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRegistration]    Script Date: 01-04-2020 12.26.31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRegistration](
	[UserID] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[SurName] [nvarchar](30) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[ContactNumber] [nvarchar](15) NOT NULL,
	[EmailAddress] [nvarchar](50) NOT NULL,
	[Qualification] [nvarchar](20) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[ApplyType] [nvarchar](10) NOT NULL,
	[HintQuestion] [nvarchar](100) NOT NULL,
	[HintAnswer] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[CitizenType] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_UserRegistration] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisaApplication]    Script Date: 01-04-2020 12.26.31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisaApplication](
	[VisaID] [nvarchar](20) NOT NULL,
	[UserID] [nvarchar](20) NOT NULL,
	[PassportNumber] [nvarchar](20) NOT NULL,
	[Country] [nvarchar](20) NOT NULL,
	[Occupation] [nvarchar](30) NOT NULL,
	[DateOfApplication] [date] NOT NULL,
	[DateOfIssue] [date] NOT NULL,
	[DateOfExpiry] [date] NOT NULL,
	[RegistrationCost] [int] NOT NULL,
	[CancellationCharges] [int] NOT NULL,
	[Status] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_VisaApplication_1] PRIMARY KEY CLUSTERED 
(
	[VisaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[City] ([STATE_ID], [CITY_NAME]) VALUES (N'S_O001', N'Bhubaneswar')
INSERT [dbo].[City] ([STATE_ID], [CITY_NAME]) VALUES (N'S_O001', N'Cuttack')
INSERT [dbo].[City] ([STATE_ID], [CITY_NAME]) VALUES (N'S_O001', N'Jajpur')
INSERT [dbo].[City] ([STATE_ID], [CITY_NAME]) VALUES (N'S_W002', N'Kolkata')
INSERT [dbo].[City] ([STATE_ID], [CITY_NAME]) VALUES (N'S_W002', N'Howrah')
INSERT [dbo].[City] ([STATE_ID], [CITY_NAME]) VALUES (N'S_B003', N'Patna')
INSERT [dbo].[City] ([STATE_ID], [CITY_NAME]) VALUES (N'S_B003', N'Gaya')
INSERT [dbo].[City] ([STATE_ID], [CITY_NAME]) VALUES (N'S_K004', N'Kochi')
INSERT [dbo].[City] ([STATE_ID], [CITY_NAME]) VALUES (N'S_K004', N'Kayamkulam')
INSERT [dbo].[City] ([STATE_ID], [CITY_NAME]) VALUES (N'S_A005', N'Hyderabad')
INSERT [dbo].[City] ([STATE_ID], [CITY_NAME]) VALUES (N'S_A005', N'Bellampalle')
INSERT [dbo].[State] ([STATE_ID], [STATE_NAME]) VALUES (N'S_A005', N'Andhra Pradesh')
INSERT [dbo].[State] ([STATE_ID], [STATE_NAME]) VALUES (N'S_B003', N'Bihar')
INSERT [dbo].[State] ([STATE_ID], [STATE_NAME]) VALUES (N'S_K004', N'Kerala')
INSERT [dbo].[State] ([STATE_ID], [STATE_NAME]) VALUES (N'S_O001', N'Orissa')
INSERT [dbo].[State] ([STATE_ID], [STATE_NAME]) VALUES (N'S_W002', N'West Bengal')
ALTER TABLE [dbo].[PassportApplication] ADD  CONSTRAINT [DF_PassportApplication_ReasonForReIssue]  DEFAULT (N'NA') FOR [ReasonForReIssue]
GO
ALTER TABLE [dbo].[VisaApplication] ADD  CONSTRAINT [DF_VisaApplication_CancellationCharges]  DEFAULT ((0)) FOR [CancellationCharges]
GO
ALTER TABLE [dbo].[VisaApplication] ADD  CONSTRAINT [DF_VisaApplication_Status]  DEFAULT (N'Approved') FOR [Status]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_STATEID] FOREIGN KEY([STATE_ID])
REFERENCES [dbo].[State] ([STATE_ID])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_STATEID]
GO
ALTER TABLE [dbo].[PassportApplication]  WITH CHECK ADD  CONSTRAINT [FK_PassportUserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[PassportApplication] CHECK CONSTRAINT [FK_PassportUserID]
GO
ALTER TABLE [dbo].[VisaApplication]  WITH CHECK ADD  CONSTRAINT [FK_VisaUserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserRegistration] ([UserID])
GO
ALTER TABLE [dbo].[VisaApplication] CHECK CONSTRAINT [FK_VisaUserID]
GO
ALTER TABLE [dbo].[UserRegistration]  WITH CHECK ADD  CONSTRAINT [CK_ApplyType] CHECK  (([ApplyType]='Passport' OR [ApplyType]='Visa'))
GO
ALTER TABLE [dbo].[UserRegistration] CHECK CONSTRAINT [CK_ApplyType]
GO
USE [master]
GO
ALTER DATABASE [PassportVisaManagementSystem] SET  READ_WRITE 
GO
