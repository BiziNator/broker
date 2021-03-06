USE [BrokerDB]
GO
/****** Object:  Table [dbo].[Broker]    Script Date: 19.05.2021 9:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Broker](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NULL,
	[RoleBroker] [int] NULL,
	[Login] [nchar](20) NULL,
	[Password] [nchar](10) NULL,
 CONSTRAINT [PK_Broker] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 19.05.2021 9:11:30 ******/
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
/****** Object:  Table [dbo].[Contract]    Script Date: 19.05.2021 9:11:30 ******/
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
/****** Object:  Table [dbo].[Deal]    Script Date: 19.05.2021 9:11:30 ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 19.05.2021 9:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id_role] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Broker] ON 

INSERT [dbo].[Broker] ([ID], [Surname], [RoleBroker], [Login], [Password]) VALUES (1, N'Ирисова', 1, N'1                   ', N'1         ')
INSERT [dbo].[Broker] ([ID], [Surname], [RoleBroker], [Login], [Password]) VALUES (2, N'Андропов', 2, N'fdfds               ', N'dr4343    ')
INSERT [dbo].[Broker] ([ID], [Surname], [RoleBroker], [Login], [Password]) VALUES (3, N'Мокрушин', 2, N'kghjur              ', N'fgu482    ')
INSERT [dbo].[Broker] ([ID], [Surname], [RoleBroker], [Login], [Password]) VALUES (4, N'Арапова', 2, N'fhfd                ', N'fd23      ')
INSERT [dbo].[Broker] ([ID], [Surname], [RoleBroker], [Login], [Password]) VALUES (5, N'Салина', 2, N'gfdghhjj            ', N'fgr234525 ')
INSERT [dbo].[Broker] ([ID], [Surname], [RoleBroker], [Login], [Password]) VALUES (6, N'Гоголев', 3, N'nvlkul              ', N'bfggd45   ')
INSERT [dbo].[Broker] ([ID], [Surname], [RoleBroker], [Login], [Password]) VALUES (7, N'Зарипова', 3, N'hrfhne              ', N'hfgfg466  ')
INSERT [dbo].[Broker] ([ID], [Surname], [RoleBroker], [Login], [Password]) VALUES (8, N'Ахметов', 4, N'jjgffwe             ', N'nhjhht34  ')
INSERT [dbo].[Broker] ([ID], [Surname], [RoleBroker], [Login], [Password]) VALUES (9, N'Сабирова', 4, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Broker] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [IdBroker]) VALUES (1, N'Агапов', N'Павел', N'Валерьянович', NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [IdBroker]) VALUES (2, N'Ирдов', N'Максим', N'Айратович', NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [IdBroker]) VALUES (3, N'Лешина ', N'Алина', N'Эдуардовна', NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [IdBroker]) VALUES (4, N'Павлова', N'Алиса', N'Алексеевна', NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [IdBroker]) VALUES (5, N'Хамдеева', N'Дина', N'Ибрагимовна', NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [IdBroker]) VALUES (6, N'Лукина', N'Дарья', N'Дмитриевна', NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [IdBroker]) VALUES (7, N'Патрисов', N'Дмитрий', N'Леонидович', NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [IdBroker]) VALUES (8, N'dsd', N'sddd', N'dfdf', NULL)
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Contract] ON 

INSERT [dbo].[Contract] ([Number], [IdClient], [IdBroker]) VALUES (1, 1, 1)
INSERT [dbo].[Contract] ([Number], [IdClient], [IdBroker]) VALUES (2, 2, 2)
INSERT [dbo].[Contract] ([Number], [IdClient], [IdBroker]) VALUES (3, 3, 3)
INSERT [dbo].[Contract] ([Number], [IdClient], [IdBroker]) VALUES (4, 4, 4)
INSERT [dbo].[Contract] ([Number], [IdClient], [IdBroker]) VALUES (5, 5, 5)
SET IDENTITY_INSERT [dbo].[Contract] OFF
GO
SET IDENTITY_INSERT [dbo].[Deal] ON 

INSERT [dbo].[Deal] ([ID], [Date], [NumberContract]) VALUES (1, CAST(N'2020-09-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Deal] ([ID], [Date], [NumberContract]) VALUES (2, CAST(N'2020-09-10T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Deal] ([ID], [Date], [NumberContract]) VALUES (3, CAST(N'2020-09-11T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Deal] ([ID], [Date], [NumberContract]) VALUES (4, CAST(N'2020-09-12T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Deal] ([ID], [Date], [NumberContract]) VALUES (5, CAST(N'2020-09-13T00:00:00.000' AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[Deal] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id_role], [Name]) VALUES (1, N'Директор  ')
INSERT [dbo].[Role] ([Id_role], [Name]) VALUES (2, N'Менежджер ')
INSERT [dbo].[Role] ([Id_role], [Name]) VALUES (3, N'ГлМенеджер')
INSERT [dbo].[Role] ([Id_role], [Name]) VALUES (4, N'Оператор  ')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
ALTER TABLE [dbo].[Broker]  WITH CHECK ADD  CONSTRAINT [FK_Broker_Role] FOREIGN KEY([RoleBroker])
REFERENCES [dbo].[Role] ([Id_role])
GO
ALTER TABLE [dbo].[Broker] CHECK CONSTRAINT [FK_Broker_Role]
GO
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
