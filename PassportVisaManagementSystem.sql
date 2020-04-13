USE [master]
GO
/****** Object:  Database [PassportVisaManagementSystem]    Script Date: 13-04-2020 3.02.06 PM ******/
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
/****** Object:  Table [dbo].[City]    Script Date: 13-04-2020 3.02.06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[STATE_ID] [nvarchar](20) NOT NULL,
	[CITY_NAME] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OldPassportData]    Script Date: 13-04-2020 3.02.06 PM ******/
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
/****** Object:  Table [dbo].[PassportApplication]    Script Date: 13-04-2020 3.02.06 PM ******/
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
/****** Object:  Table [dbo].[State]    Script Date: 13-04-2020 3.02.06 PM ******/
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
/****** Object:  Table [dbo].[UserRegistration]    Script Date: 13-04-2020 3.02.06 PM ******/
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
/****** Object:  Table [dbo].[VisaApplication]    Script Date: 13-04-2020 3.02.06 PM ******/
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
GO
INSERT [dbo].[OldPassportData] ([PassportNumber], [UserID], [Country], [State], [City], [Pin], [TypeOfService], [BookletType], [IssueDate], [ExpiryDate], [Amount], [ReasonForReIssue]) VALUES (N'FPS-300001', N'PASS-0001', N'India', N'Andhra Pradesh', N'Hyderabad', N'112233', N'Tatkal', N'30 Pages', CAST(N'2020-04-01' AS Date), CAST(N'2030-04-01' AS Date), 5000, N'Exhaustion of Pages')
INSERT [dbo].[OldPassportData] ([PassportNumber], [UserID], [Country], [State], [City], [Pin], [TypeOfService], [BookletType], [IssueDate], [ExpiryDate], [Amount], [ReasonForReIssue]) VALUES (N'FPS-300009', N'PASS-0005', N'India', N'West Bengal', N'Kolkata', N'123412', N'Normal', N'30 Pages', CAST(N'2020-04-05' AS Date), CAST(N'2030-04-05' AS Date), 2500, N'Passport Damaged')
INSERT [dbo].[OldPassportData] ([PassportNumber], [UserID], [Country], [State], [City], [Pin], [TypeOfService], [BookletType], [IssueDate], [ExpiryDate], [Amount], [ReasonForReIssue]) VALUES (N'FPS-300011', N'PASS-0006', N'India', N'Andhra Pradesh', N'Hyderabad', N'963258', N'Tatkal', N'30 Pages', CAST(N'2020-04-11' AS Date), CAST(N'2030-04-11' AS Date), 5000, N'Passport Damaged')
INSERT [dbo].[OldPassportData] ([PassportNumber], [UserID], [Country], [State], [City], [Pin], [TypeOfService], [BookletType], [IssueDate], [ExpiryDate], [Amount], [ReasonForReIssue]) VALUES (N'FPS-600002', N'PASS-0002', N'India', N'Andhra Pradesh', N'Bellampalle', N'741963', N'Normal', N'60 Pages', CAST(N'2020-04-01' AS Date), CAST(N'2030-04-01' AS Date), 2500, N'Passport Damaged')
INSERT [dbo].[OldPassportData] ([PassportNumber], [UserID], [Country], [State], [City], [Pin], [TypeOfService], [BookletType], [IssueDate], [ExpiryDate], [Amount], [ReasonForReIssue]) VALUES (N'FPS-600005', N'PASS-0003', N'India', N'Andhra Pradesh', N'Bellampalle', N'784512', N'Normal', N'60 Pages', CAST(N'2020-04-04' AS Date), CAST(N'2030-04-04' AS Date), 2500, N'Validity Expired')
INSERT [dbo].[OldPassportData] ([PassportNumber], [UserID], [Country], [State], [City], [Pin], [TypeOfService], [BookletType], [IssueDate], [ExpiryDate], [Amount], [ReasonForReIssue]) VALUES (N'FPS-600007', N'PASS-0004', N'India', N'Kerala', N'Kochi', N'773366', N'Tatkal', N'60 Pages', CAST(N'2020-04-04' AS Date), CAST(N'2030-04-04' AS Date), 5000, N'Passport Lost')
GO
INSERT [dbo].[PassportApplication] ([PassportNumber], [UserID], [Country], [State], [City], [Pin], [TypeOfService], [BookletType], [IssueDate], [ExpiryDate], [Amount], [ReasonForReIssue]) VALUES (N'FPS-300003', N'PASS-0002', N'India', N'Andhra Pradesh', N'Bellampalle', N'852258', N'Normal', N'30 Pages', CAST(N'2020-04-01' AS Date), CAST(N'2030-04-01' AS Date), 1500, N'Passport Damaged')
INSERT [dbo].[PassportApplication] ([PassportNumber], [UserID], [Country], [State], [City], [Pin], [TypeOfService], [BookletType], [IssueDate], [ExpiryDate], [Amount], [ReasonForReIssue]) VALUES (N'FPS-300008', N'PASS-0004', N'India', N'Andhra Pradesh', N'Hyderabad', N'777777', N'Tatkal', N'30 Pages', CAST(N'2020-04-04' AS Date), CAST(N'2030-04-04' AS Date), 3000, N'Passport Lost')
INSERT [dbo].[PassportApplication] ([PassportNumber], [UserID], [Country], [State], [City], [Pin], [TypeOfService], [BookletType], [IssueDate], [ExpiryDate], [Amount], [ReasonForReIssue]) VALUES (N'FPS-600004', N'PASS-0001', N'India', N'West Bengal', N'Kolkata', N'741258', N'Normal', N'60 Pages', CAST(N'2020-04-01' AS Date), CAST(N'2030-04-01' AS Date), 1500, N'Exhaustion of Pages')
INSERT [dbo].[PassportApplication] ([PassportNumber], [UserID], [Country], [State], [City], [Pin], [TypeOfService], [BookletType], [IssueDate], [ExpiryDate], [Amount], [ReasonForReIssue]) VALUES (N'FPS-600006', N'PASS-0003', N'India', N'Andhra Pradesh', N'Hyderabad', N'789456', N'Normal', N'60 Pages', CAST(N'2020-04-04' AS Date), CAST(N'2030-04-04' AS Date), 1500, N'Validity Expired')
INSERT [dbo].[PassportApplication] ([PassportNumber], [UserID], [Country], [State], [City], [Pin], [TypeOfService], [BookletType], [IssueDate], [ExpiryDate], [Amount], [ReasonForReIssue]) VALUES (N'FPS-600010', N'PASS-0005', N'India', N'Andhra Pradesh', N'Hyderabad', N'556644', N'Tatkal', N'60 Pages', CAST(N'2020-04-05' AS Date), CAST(N'2030-04-05' AS Date), 3000, N'Passport Damaged')
INSERT [dbo].[PassportApplication] ([PassportNumber], [UserID], [Country], [State], [City], [Pin], [TypeOfService], [BookletType], [IssueDate], [ExpiryDate], [Amount], [ReasonForReIssue]) VALUES (N'FPS-600012', N'PASS-0006', N'India', N'Andhra Pradesh', N'Bellampalle', N'474152', N'Normal', N'60 Pages', CAST(N'2020-04-11' AS Date), CAST(N'2030-04-11' AS Date), 1500, N'Passport Damaged')
GO
INSERT [dbo].[State] ([STATE_ID], [STATE_NAME]) VALUES (N'S_A005', N'Andhra Pradesh')
INSERT [dbo].[State] ([STATE_ID], [STATE_NAME]) VALUES (N'S_B003', N'Bihar')
INSERT [dbo].[State] ([STATE_ID], [STATE_NAME]) VALUES (N'S_K004', N'Kerala')
INSERT [dbo].[State] ([STATE_ID], [STATE_NAME]) VALUES (N'S_O001', N'Orissa')
INSERT [dbo].[State] ([STATE_ID], [STATE_NAME]) VALUES (N'S_W002', N'West Bengal')
GO
INSERT [dbo].[UserRegistration] ([UserID], [FirstName], [SurName], [DateOfBirth], [Address], [ContactNumber], [EmailAddress], [Qualification], [Gender], [ApplyType], [HintQuestion], [HintAnswer], [Password], [CitizenType]) VALUES (N'PASS-0001', N'Vishal Reddy', N'Pachika', CAST(N'1997-12-04' AS Date), N'Telangana', N'7539517412', N'vishal@gmail.com', N'B.Tech', N'Male', N'Passport', N'What is your Favourite Movie ?', N'Avengers', N'01apr#112', N'Adult')
INSERT [dbo].[UserRegistration] ([UserID], [FirstName], [SurName], [DateOfBirth], [Address], [ContactNumber], [EmailAddress], [Qualification], [Gender], [ApplyType], [HintQuestion], [HintAnswer], [Password], [CitizenType]) VALUES (N'PASS-0002', N'Vineeth Reddy', N'Pachika', CAST(N'2004-06-09' AS Date), N'Telangana', N'8521479632', N'vineeth@gmail.com', N'S.S.C', N'Male', N'Passport', N'What is your Favourite Movie ?', N'Joker', N'01apr$465', N'Teen')
INSERT [dbo].[UserRegistration] ([UserID], [FirstName], [SurName], [DateOfBirth], [Address], [ContactNumber], [EmailAddress], [Qualification], [Gender], [ApplyType], [HintQuestion], [HintAnswer], [Password], [CitizenType]) VALUES (N'PASS-0003', N'Vishal Reddy', N'Pachika', CAST(N'1997-12-04' AS Date), N'Telangana', N'7539517412', N'abc@gmail.com', N'B.Tech', N'Male', N'Passport', N'What is your Favourite Movie ?', N'Avengers', N'04apr@320', N'Adult')
INSERT [dbo].[UserRegistration] ([UserID], [FirstName], [SurName], [DateOfBirth], [Address], [ContactNumber], [EmailAddress], [Qualification], [Gender], [ApplyType], [HintQuestion], [HintAnswer], [Password], [CitizenType]) VALUES (N'PASS-0004', N'Satish', N'Pachika', CAST(N'1966-06-06' AS Date), N'Telangana', N'9999999999', N'satish@gmail.com', N'ITI', N'Male', N'Passport', N'What is your Mother''s name ?', N'Sujatha', N'04apr@140', N'Senior Citizen')
INSERT [dbo].[UserRegistration] ([UserID], [FirstName], [SurName], [DateOfBirth], [Address], [ContactNumber], [EmailAddress], [Qualification], [Gender], [ApplyType], [HintQuestion], [HintAnswer], [Password], [CitizenType]) VALUES (N'PASS-0005', N'Madhuri', N'Pachiika', CAST(N'1977-09-06' AS Date), N'Telangana', N'8888888888', N'madhuri@gmail.com', N'S.S.C', N'Female', N'Passport', N'What is your Mother''s name ?', N'Thirumala', N'05apr$144', N'Adult')
INSERT [dbo].[UserRegistration] ([UserID], [FirstName], [SurName], [DateOfBirth], [Address], [ContactNumber], [EmailAddress], [Qualification], [Gender], [ApplyType], [HintQuestion], [HintAnswer], [Password], [CitizenType]) VALUES (N'PASS-0006', N'Vishal Reddy', N'Pachika', CAST(N'1997-12-04' AS Date), N'Telangana', N'7539517412', N'zxcvbnm@gmail.com', N'B.Tech', N'Male', N'Passport', N'What is your Mother''s name ?', N'Madhuri', N'11apr#336', N'Adult')
INSERT [dbo].[UserRegistration] ([UserID], [FirstName], [SurName], [DateOfBirth], [Address], [ContactNumber], [EmailAddress], [Qualification], [Gender], [ApplyType], [HintQuestion], [HintAnswer], [Password], [CitizenType]) VALUES (N'VISA-0001', N'Vishal Reddy', N'Pachika', CAST(N'1997-12-04' AS Date), N'Telangana', N'7539517412', N'vishal@gmail.com', N'B.Tech', N'Male', N'Visa', N'What is your Mother''s name ?', N'Madhuri', N'01apr#000', N'Adult')
INSERT [dbo].[UserRegistration] ([UserID], [FirstName], [SurName], [DateOfBirth], [Address], [ContactNumber], [EmailAddress], [Qualification], [Gender], [ApplyType], [HintQuestion], [HintAnswer], [Password], [CitizenType]) VALUES (N'VISA-0002', N'Vineeth Reddy', N'Pachika', CAST(N'2004-06-09' AS Date), N'Telangana', N'8521479632', N'vineeth@gmail.com', N'S.S.C', N'Male', N'Visa', N'What is your Mother''s name ?', N'Madhuri', N'01apr#210', N'Teen')
INSERT [dbo].[UserRegistration] ([UserID], [FirstName], [SurName], [DateOfBirth], [Address], [ContactNumber], [EmailAddress], [Qualification], [Gender], [ApplyType], [HintQuestion], [HintAnswer], [Password], [CitizenType]) VALUES (N'VISA-0003', N'Satish', N'Pachika', CAST(N'1966-06-06' AS Date), N'Telangana', N'9999999999', N'satish@gmail.com', N'ITI', N'Male', N'Visa', N'What is your Favourite Movie ?', N'Khaidi', N'04apr@720', N'Senior Citizen')
INSERT [dbo].[UserRegistration] ([UserID], [FirstName], [SurName], [DateOfBirth], [Address], [ContactNumber], [EmailAddress], [Qualification], [Gender], [ApplyType], [HintQuestion], [HintAnswer], [Password], [CitizenType]) VALUES (N'VISA-0004', N'Madhuri', N'Pachika', CAST(N'1977-09-06' AS Date), N'Telangana', N'8888888888', N'madhuri@gmail.com', N'S.S.C', N'Female', N'Visa', N'What is your Mother''s name ?', N'Thirumala', N'05apr$915', N'Adult')
INSERT [dbo].[UserRegistration] ([UserID], [FirstName], [SurName], [DateOfBirth], [Address], [ContactNumber], [EmailAddress], [Qualification], [Gender], [ApplyType], [HintQuestion], [HintAnswer], [Password], [CitizenType]) VALUES (N'VISA-0005', N'Vishal Reddy', N'Pachika', CAST(N'1997-12-04' AS Date), N'Telangana', N'7539517412', N'zxcvbnm@gmail.com', N'B.Tech', N'Male', N'Visa', N'What is your Mother''s name ?', N'Madhuri', N'11apr#495', N'Adult')
GO
INSERT [dbo].[VisaApplication] ([VisaID], [UserID], [PassportNumber], [Country], [Occupation], [DateOfApplication], [DateOfIssue], [DateOfExpiry], [RegistrationCost], [CancellationCharges], [Status]) VALUES (N'PE-0001', N'VISA-0001', N'FPS-600004', N'Japan', N'Private Employee', CAST(N'2020-04-01' AS Date), CAST(N'2020-04-11' AS Date), CAST(N'2023-04-11' AS Date), 4000, 0, N'Approved')
INSERT [dbo].[VisaApplication] ([VisaID], [UserID], [PassportNumber], [Country], [Occupation], [DateOfApplication], [DateOfIssue], [DateOfExpiry], [RegistrationCost], [CancellationCharges], [Status]) VALUES (N'PE-0002', N'VISA-0003', N'FPS-300008', N'USA', N'Private Employee', CAST(N'2020-04-04' AS Date), CAST(N'2020-04-14' AS Date), CAST(N'2023-04-14' AS Date), 4500, 900, N'Cancelled')
INSERT [dbo].[VisaApplication] ([VisaID], [UserID], [PassportNumber], [Country], [Occupation], [DateOfApplication], [DateOfIssue], [DateOfExpiry], [RegistrationCost], [CancellationCharges], [Status]) VALUES (N'PE-0003', N'VISA-0005', N'FPS-600012', N'USA', N'Private Employee', CAST(N'2020-04-11' AS Date), CAST(N'2020-04-21' AS Date), CAST(N'2023-04-21' AS Date), 4500, 900, N'Cancelled')
INSERT [dbo].[VisaApplication] ([VisaID], [UserID], [PassportNumber], [Country], [Occupation], [DateOfApplication], [DateOfIssue], [DateOfExpiry], [RegistrationCost], [CancellationCharges], [Status]) VALUES (N'SE-0001', N'VISA-0004', N'FPS-600010', N'USA', N'Self Employed', CAST(N'2020-04-05' AS Date), CAST(N'2020-04-15' AS Date), CAST(N'2021-04-15' AS Date), 6000, 1500, N'Cancelled')
INSERT [dbo].[VisaApplication] ([VisaID], [UserID], [PassportNumber], [Country], [Occupation], [DateOfApplication], [DateOfIssue], [DateOfExpiry], [RegistrationCost], [CancellationCharges], [Status]) VALUES (N'SE-0002', N'VISA-0001', N'FPS-600010', N'USA', N'Self Employed', CAST(N'2020-04-10' AS Date), CAST(N'2020-04-20' AS Date), CAST(N'2021-04-20' AS Date), 6000, 0, N'Approved')
INSERT [dbo].[VisaApplication] ([VisaID], [UserID], [PassportNumber], [Country], [Occupation], [DateOfApplication], [DateOfIssue], [DateOfExpiry], [RegistrationCost], [CancellationCharges], [Status]) VALUES (N'STU-0001', N'VISA-0001', N'FPS-600004', N'USA', N'Student', CAST(N'2020-04-01' AS Date), CAST(N'2020-04-11' AS Date), CAST(N'2022-04-11' AS Date), 3000, 750, N'Cancelled')
INSERT [dbo].[VisaApplication] ([VisaID], [UserID], [PassportNumber], [Country], [Occupation], [DateOfApplication], [DateOfIssue], [DateOfExpiry], [RegistrationCost], [CancellationCharges], [Status]) VALUES (N'STU-0002', N'VISA-0002', N'FPS-300003', N'USA', N'Student', CAST(N'2020-04-01' AS Date), CAST(N'2020-04-11' AS Date), CAST(N'2022-04-11' AS Date), 3000, 0, N'Approved')
INSERT [dbo].[VisaApplication] ([VisaID], [UserID], [PassportNumber], [Country], [Occupation], [DateOfApplication], [DateOfIssue], [DateOfExpiry], [RegistrationCost], [CancellationCharges], [Status]) VALUES (N'STU-0003', N'VISA-0001', N'FPS-600006', N'USA', N'Student', CAST(N'2020-04-04' AS Date), CAST(N'2020-04-14' AS Date), CAST(N'2022-04-14' AS Date), 3000, 0, N'Approved')
INSERT [dbo].[VisaApplication] ([VisaID], [UserID], [PassportNumber], [Country], [Occupation], [DateOfApplication], [DateOfIssue], [DateOfExpiry], [RegistrationCost], [CancellationCharges], [Status]) VALUES (N'STU-0004', N'VISA-0001', N'FPS-300008', N'China', N'Student', CAST(N'2020-04-10' AS Date), CAST(N'2020-04-20' AS Date), CAST(N'2022-04-20' AS Date), 1500, 0, N'Approved')
GO
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
/****** Object:  Trigger [dbo].[TRG_OLDPASSPORT]    Script Date: 13-04-2020 3.02.07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[TRG_OLDPASSPORT]
   ON  [dbo].[PassportApplication]
   AFTER DELETE
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    INSERT INTO OldPassportData Select * from deleted
END
GO
ALTER TABLE [dbo].[PassportApplication] ENABLE TRIGGER [TRG_OLDPASSPORT]
GO
USE [master]
GO
ALTER DATABASE [PassportVisaManagementSystem] SET  READ_WRITE 
GO
