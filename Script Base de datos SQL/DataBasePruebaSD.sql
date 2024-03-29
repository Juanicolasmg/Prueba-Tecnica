USE [PruebaSD]
GO
/****** Object:  User [Nicolas]    Script Date: 15/03/2024 6:40:35 p. m. ******/
CREATE USER [Nicolas] FOR LOGIN [Nicolas] WITH DEFAULT_SCHEMA=[dbo]
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'Nicolas'
GO
sys.sp_addrolemember @rolename = N'db_accessadmin', @membername = N'Nicolas'
GO
sys.sp_addrolemember @rolename = N'db_securityadmin', @membername = N'Nicolas'
GO
sys.sp_addrolemember @rolename = N'db_ddladmin', @membername = N'Nicolas'
GO
sys.sp_addrolemember @rolename = N'db_backupoperator', @membername = N'Nicolas'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'Nicolas'
GO
sys.sp_addrolemember @rolename = N'db_datawriter', @membername = N'Nicolas'
GO
sys.sp_addrolemember @rolename = N'db_denydatareader', @membername = N'Nicolas'
GO
sys.sp_addrolemember @rolename = N'db_denydatawriter', @membername = N'Nicolas'
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 15/03/2024 6:40:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[usuID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[apellido] [varchar](100) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[usuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([usuID], [nombre], [apellido]) VALUES (CAST(1 AS Numeric(18, 0)), N'Jorge', N'Rodriguez')
INSERT [dbo].[Usuario] ([usuID], [nombre], [apellido]) VALUES (CAST(2 AS Numeric(18, 0)), N'Pablo', N'Casas')
INSERT [dbo].[Usuario] ([usuID], [nombre], [apellido]) VALUES (CAST(3 AS Numeric(18, 0)), N'Lorenzo', N'Quintero')
INSERT [dbo].[Usuario] ([usuID], [nombre], [apellido]) VALUES (CAST(4 AS Numeric(18, 0)), N'Lorena', N'Moreno')
INSERT [dbo].[Usuario] ([usuID], [nombre], [apellido]) VALUES (CAST(5 AS Numeric(18, 0)), N'Paula', N'Ramirez')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
