USE [master]
GO
/****** Object:  Database [BrokerCompanyDB]    Script Date: 27.04.2021 0:40:31 ******/
CREATE DATABASE [BrokerCompanyDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BrokerCompanyDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BrokerCompanyDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BrokerCompanyDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BrokerCompanyDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BrokerCompanyDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BrokerCompanyDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BrokerCompanyDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BrokerCompanyDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BrokerCompanyDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BrokerCompanyDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BrokerCompanyDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BrokerCompanyDB] SET  MULTI_USER 
GO
ALTER DATABASE [BrokerCompanyDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BrokerCompanyDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BrokerCompanyDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BrokerCompanyDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BrokerCompanyDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BrokerCompanyDB] SET QUERY_STORE = OFF
GO
USE [BrokerCompanyDB]
GO
/****** Object:  Table [dbo].[Broker]    Script Date: 27.04.2021 0:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Broker](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NULL,
	[Login] [nchar](20) NULL,
	[Password] [nchar](10) NULL,
 CONSTRAINT [PK_Broker] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 27.04.2021 0:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[IdBroker] [int] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 27.04.2021 0:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[Number] [int] IDENTITY(1,1) NOT NULL,
	[IdClient] [int] NULL,
	[IdBroker] [int] NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deal]    Script Date: 27.04.2021 0:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deal](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[NumberContract] [int] NULL,
 CONSTRAINT [PK_Deal] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Broker] ON 

INSERT [dbo].[Broker] ([ID], [Surname], [Login], [Password]) VALUES (1, N'Ирисова', N'qwerty              ', N'1234      ')
INSERT [dbo].[Broker] ([ID], [Surname], [Login], [Password]) VALUES (2, N'Андропов', N'abs                 ', N'123       ')
INSERT [dbo].[Broker] ([ID], [Surname], [Login], [Password]) VALUES (3, N'Мокрушин', N'123                 ', N'123       ')
INSERT [dbo].[Broker] ([ID], [Surname], [Login], [Password]) VALUES (4, N'Арапова', N'321                 ', N'321       ')
INSERT [dbo].[Broker] ([ID], [Surname], [Login], [Password]) VALUES (5, N'Салина', N'111                 ', N'222       ')
INSERT [dbo].[Broker] ([ID], [Surname], [Login], [Password]) VALUES (6, N'Гоголев', NULL, NULL)
INSERT [dbo].[Broker] ([ID], [Surname], [Login], [Password]) VALUES (7, N'Зарипова', NULL, NULL)
INSERT [dbo].[Broker] ([ID], [Surname], [Login], [Password]) VALUES (8, N'Ахметов', NULL, NULL)
INSERT [dbo].[Broker] ([ID], [Surname], [Login], [Password]) VALUES (9, N'Сабирова', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Broker] OFF
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [IdBroker]) VALUES (1, N'Агапов', N'Павел', N'Валерьянович', 1)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [IdBroker]) VALUES (2, N'Ирдов', N'Максим', N'Айратович', 2)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [IdBroker]) VALUES (3, N'Лешина ', N'Алина', N'Эдуардовна', 3)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [IdBroker]) VALUES (4, N'Павлова', N'Алиса', N'Алексеевна', 4)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [IdBroker]) VALUES (5, N'Хамдеева', N'Дина', N'Ибрагимовна', 5)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [IdBroker]) VALUES (6, N'Лукина', N'Дарья', N'Дмитриевна', 6)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [IdBroker]) VALUES (7, N'Патрисов', N'Дмитрий', N'Леонидович', 7)
SET IDENTITY_INSERT [dbo].[Client] OFF
SET IDENTITY_INSERT [dbo].[Contract] ON 

INSERT [dbo].[Contract] ([Number], [IdClient], [IdBroker]) VALUES (938, 5, 5)
INSERT [dbo].[Contract] ([Number], [IdClient], [IdBroker]) VALUES (947, 4, 4)
INSERT [dbo].[Contract] ([Number], [IdClient], [IdBroker]) VALUES (976, 3, 3)
INSERT [dbo].[Contract] ([Number], [IdClient], [IdBroker]) VALUES (983, 1, 1)
INSERT [dbo].[Contract] ([Number], [IdClient], [IdBroker]) VALUES (984, 2, 2)
SET IDENTITY_INSERT [dbo].[Contract] OFF
SET IDENTITY_INSERT [dbo].[Deal] ON 

INSERT [dbo].[Deal] ([ID], [Date], [NumberContract]) VALUES (1, CAST(N'2020-09-09T00:00:00.000' AS DateTime), 983)
INSERT [dbo].[Deal] ([ID], [Date], [NumberContract]) VALUES (2, CAST(N'2020-09-10T00:00:00.000' AS DateTime), 984)
INSERT [dbo].[Deal] ([ID], [Date], [NumberContract]) VALUES (3, CAST(N'2020-09-11T00:00:00.000' AS DateTime), 976)
INSERT [dbo].[Deal] ([ID], [Date], [NumberContract]) VALUES (4, CAST(N'2020-09-12T00:00:00.000' AS DateTime), 947)
INSERT [dbo].[Deal] ([ID], [Date], [NumberContract]) VALUES (5, CAST(N'2020-09-13T00:00:00.000' AS DateTime), 938)
SET IDENTITY_INSERT [dbo].[Deal] OFF
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Broker] FOREIGN KEY([IdBroker])
REFERENCES [dbo].[Broker] ([ID])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Broker]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Broker] FOREIGN KEY([IdBroker])
REFERENCES [dbo].[Broker] ([ID])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Broker]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Client] FOREIGN KEY([IdClient])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Client]
GO
ALTER TABLE [dbo].[Deal]  WITH CHECK ADD  CONSTRAINT [FK_Deal_Contract] FOREIGN KEY([NumberContract])
REFERENCES [dbo].[Contract] ([Number])
GO
ALTER TABLE [dbo].[Deal] CHECK CONSTRAINT [FK_Deal_Contract]
GO
USE [master]
GO
ALTER DATABASE [BrokerCompanyDB] SET  READ_WRITE 
GO
