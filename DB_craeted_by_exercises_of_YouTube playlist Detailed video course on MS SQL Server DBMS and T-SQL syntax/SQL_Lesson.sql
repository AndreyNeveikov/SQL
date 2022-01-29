USE [LessonTadCreate]
GO

/****** Object:  Table [dbo].[BlogUser]    Script Date: 18.01.2022 19:37:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BlogUser](
	[UserLogin] [varchar](50) NOT NULL,
	[UserPassword] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[RegistrationDate] [datetime] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BlogUser] ADD  CONSTRAINT [DF_BlogUser_RegistrationDate]  DEFAULT (getdate()) FOR [RegistrationDate]
GO

ALTER TABLE BlogUser
ADD CONSTRAINT DF_BlogUser_UserLogin_Unigue UNIQUE (UserLogin)
GO

