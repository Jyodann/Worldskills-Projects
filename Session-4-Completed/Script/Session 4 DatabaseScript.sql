USE [master]
GO
/****** Object:  Database [Session4]    Script Date: 10/1/2020 5:27:57 PM ******/
CREATE DATABASE [Session4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Session4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS2017\MSSQL\DATA\Session4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Session4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS2017\MSSQL\DATA\Session4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Session4] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Session4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Session4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Session4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Session4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Session4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Session4] SET ARITHABORT OFF 
GO
ALTER DATABASE [Session4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Session4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Session4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Session4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Session4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Session4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Session4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Session4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Session4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Session4] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Session4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Session4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Session4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Session4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Session4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Session4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Session4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Session4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Session4] SET  MULTI_USER 
GO
ALTER DATABASE [Session4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Session4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Session4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Session4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Session4] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Session4] SET QUERY_STORE = OFF
GO
USE [Session4]
GO
/****** Object:  Table [dbo].[Assign_Training]    Script Date: 10/1/2020 5:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assign_Training](
	[trainingId] [int] IDENTITY(1,1) NOT NULL,
	[moduleIdFK] [int] NOT NULL,
	[userIdFK] [varchar](50) NOT NULL,
	[startDate] [date] NOT NULL,
	[progress] [int] NOT NULL,
 CONSTRAINT [PK_Assign_Training] PRIMARY KEY CLUSTERED 
(
	[trainingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 10/1/2020 5:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[skillId] [int] IDENTITY(1,1) NOT NULL,
	[skillName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[skillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Training_Module]    Script Date: 10/1/2020 5:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Training_Module](
	[moduleId] [int] IDENTITY(1,1) NOT NULL,
	[userTypeIdFK] [int] NOT NULL,
	[skillIdFK] [int] NOT NULL,
	[moduleName] [varchar](50) NOT NULL,
	[durationDays] [int] NOT NULL,
 CONSTRAINT [PK_Training_Module] PRIMARY KEY CLUSTERED 
(
	[moduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/1/2020 5:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userId] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[passwd] [varchar](50) NOT NULL,
	[skillIdFK] [int] NOT NULL,
	[userTypeIdFK] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Type]    Script Date: 10/1/2020 5:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Type](
	[userTypeId] [int] IDENTITY(1,1) NOT NULL,
	[userTypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User_Type] PRIMARY KEY CLUSTERED 
(
	[userTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Assign_Training] ON 

INSERT [dbo].[Assign_Training] ([trainingId], [moduleIdFK], [userIdFK], [startDate], [progress]) VALUES (2, 1, N'JordyJord', CAST(N'2019-01-01' AS Date), 50)
INSERT [dbo].[Assign_Training] ([trainingId], [moduleIdFK], [userIdFK], [startDate], [progress]) VALUES (3, 5, N'JordyJord', CAST(N'2019-01-01' AS Date), 100)
INSERT [dbo].[Assign_Training] ([trainingId], [moduleIdFK], [userIdFK], [startDate], [progress]) VALUES (4, 9, N'JordyJord', CAST(N'2019-01-01' AS Date), 0)
INSERT [dbo].[Assign_Training] ([trainingId], [moduleIdFK], [userIdFK], [startDate], [progress]) VALUES (5, 17, N'testtest', CAST(N'2019-01-01' AS Date), 0)
INSERT [dbo].[Assign_Training] ([trainingId], [moduleIdFK], [userIdFK], [startDate], [progress]) VALUES (6, 18, N'zxcv3456', CAST(N'2019-01-01' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Assign_Training] OFF
SET IDENTITY_INSERT [dbo].[Skill] ON 

INSERT [dbo].[Skill] ([skillId], [skillName]) VALUES (1, N'Software Solutions')
INSERT [dbo].[Skill] ([skillId], [skillName]) VALUES (2, N'Web Tech')
INSERT [dbo].[Skill] ([skillId], [skillName]) VALUES (3, N'Network')
INSERT [dbo].[Skill] ([skillId], [skillName]) VALUES (4, N'Cyber Security')
INSERT [dbo].[Skill] ([skillId], [skillName]) VALUES (5, N'Admin')
SET IDENTITY_INSERT [dbo].[Skill] OFF
SET IDENTITY_INSERT [dbo].[Training_Module] ON 

INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (1, 2, 1, N'WSS Rules', 2)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (2, 2, 2, N'WSS Rules', 2)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (3, 2, 3, N'WSS Rules', 2)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (4, 2, 4, N'WSS Rules', 2)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (5, 2, 1, N'Software Masterclass', 6)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (6, 2, 2, N'Web Masterclass', 7)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (7, 2, 3, N'Network Masterclass', 8)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (8, 2, 4, N'Cyber Masterclass', 9)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (9, 2, 1, N'Software Invigilation', 3)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (10, 2, 2, N'Web Invigilation', 3)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (11, 2, 3, N'Network Invigilation', 3)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (12, 2, 3, N'Cyber Invigilation', 3)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (13, 3, 1, N'WSS Handbook', 3)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (14, 3, 2, N'WSS Handbook', 3)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (15, 3, 3, N'WSS Handbook', 3)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (16, 3, 4, N'WSS Handbook', 3)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (17, 3, 1, N'Basic Programming', 14)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (18, 3, 2, N'Basic Web', 12)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (19, 3, 3, N'Basic Networking', 16)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (20, 3, 4, N'Basic Security', 19)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (21, 3, 1, N'Programming Pro', 32)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (22, 3, 2, N'Web Pro', 33)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (23, 3, 3, N'Networking Pro', 34)
INSERT [dbo].[Training_Module] ([moduleId], [userTypeIdFK], [skillIdFK], [moduleName], [durationDays]) VALUES (24, 3, 4, N'Cyber Pro', 40)
SET IDENTITY_INSERT [dbo].[Training_Module] OFF
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'aaaa1111', N'Leon', N'leo1', 1, 2)
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'aaaa2222', N'George', N'geo2', 1, 3)
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'aaaa3333', N'Lacy', N'lac2', 1, 3)
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'asdf2345', N'Peter', N'pete23', 1, 2)
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'bbbb1111', N'Brian', N'bri1', 2, 2)
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'bbbb2222', N'Flark', N'fla2', 2, 3)
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'bbbb2sdsad222', N'Flark', N'fla2', 2, 3)
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'bbbb3333', N'Ringo', N'ring2', 2, 3)
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'cccc1111', N'Jane', N'jae1', 3, 2)
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'cccc2222', N'Harvey', N'harv2', 3, 3)
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'cccc3333', N'Sarah', N'sar2', 3, 3)
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'dddd1111', N'Marcus', N'marcu1', 4, 2)
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'dddd2222', N'Evans', N'eva2', 4, 3)
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'dddd3333', N'Clark', N'cla2', 4, 3)
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'dsadasdsa2132132', N'Clady', N'lac2', 1, 3)
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'JordyJord', N'Jordy', N'123', 1, 2)
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'qwer1234', N'Steven', N'stev12', 5, 1)
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'testtest', N'Marco', N'123', 1, 3)
INSERT [dbo].[User] ([userId], [name], [passwd], [skillIdFK], [userTypeIdFK]) VALUES (N'zxcv3456', N'Maxo', N'max34', 2, 3)
SET IDENTITY_INSERT [dbo].[User_Type] ON 

INSERT [dbo].[User_Type] ([userTypeId], [userTypeName]) VALUES (1, N'Admin')
INSERT [dbo].[User_Type] ([userTypeId], [userTypeName]) VALUES (2, N'Expert')
INSERT [dbo].[User_Type] ([userTypeId], [userTypeName]) VALUES (3, N'Competitor')
SET IDENTITY_INSERT [dbo].[User_Type] OFF
ALTER TABLE [dbo].[Assign_Training]  WITH CHECK ADD  CONSTRAINT [FK_Assign_Training_Training_Module] FOREIGN KEY([moduleIdFK])
REFERENCES [dbo].[Training_Module] ([moduleId])
GO
ALTER TABLE [dbo].[Assign_Training] CHECK CONSTRAINT [FK_Assign_Training_Training_Module]
GO
ALTER TABLE [dbo].[Assign_Training]  WITH CHECK ADD  CONSTRAINT [FK_Assign_Training_User1] FOREIGN KEY([userIdFK])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Assign_Training] CHECK CONSTRAINT [FK_Assign_Training_User1]
GO
ALTER TABLE [dbo].[Training_Module]  WITH CHECK ADD  CONSTRAINT [FK_Training_Module_Skill] FOREIGN KEY([skillIdFK])
REFERENCES [dbo].[Skill] ([skillId])
GO
ALTER TABLE [dbo].[Training_Module] CHECK CONSTRAINT [FK_Training_Module_Skill]
GO
ALTER TABLE [dbo].[Training_Module]  WITH CHECK ADD  CONSTRAINT [FK_Training_Module_User_Type] FOREIGN KEY([userTypeIdFK])
REFERENCES [dbo].[User_Type] ([userTypeId])
GO
ALTER TABLE [dbo].[Training_Module] CHECK CONSTRAINT [FK_Training_Module_User_Type]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Skill] FOREIGN KEY([skillIdFK])
REFERENCES [dbo].[Skill] ([skillId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Skill]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_User_Type] FOREIGN KEY([userTypeIdFK])
REFERENCES [dbo].[User_Type] ([userTypeId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_User_Type]
GO
USE [master]
GO
ALTER DATABASE [Session4] SET  READ_WRITE 
GO
