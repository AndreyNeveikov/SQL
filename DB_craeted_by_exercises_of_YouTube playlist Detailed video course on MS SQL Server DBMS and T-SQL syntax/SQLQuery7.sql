CREATE TABLE Blog (
	BlogId int IDENTITY(1,1),
	Name nvarchar(50) NOT NULL,
	[Description] nvarchar (250) NULL,
	CreatedDate datetime NOT NULL
)
GO

ALTER TABLE Blog
ADD CONSTRAINT PK_Blog_BlogId PRIMARY KEY CLUSTERED (BlogId)
GO

ALTER TABLE Blog
ADD CONSTRAINT DF_Blog_CreatedDate_Default DEFAULT (getdate()) FOR CreatedDate
GO

ALTER TABLE Blog
ALTER COLUMN UserId int NOT NULL
GO

ALTER TABLE Blog
WITh CHECK ADD CONSTRAINT FK_Blog_BlogUser FOREIGN KEY(UserId)
REFERENCES BlogUser (UserId)
ON UPDATE CASCADE
ON DELETE CASCADE
GO

SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([BlogId], [Name], [Description], [CreatedDate], [UserId]) VALUES (1, N'Code', N'About Code', CAST(N'2020-06-07T01:21:59.240' AS DateTime), 1)
INSERT [dbo].[Blog] ([BlogId], [Name], [Description], [CreatedDate], [UserId]) VALUES (2, N'Tests', N'About Tests', CAST(N'2020-06-07T02:35:36.573' AS DateTime), 2)
INSERT [dbo].[Blog] ([BlogId], [Name], [Description], [CreatedDate], [UserId]) VALUES (3, N'SQL', N'About SQL', CAST(N'2020-06-07T03:33:48.137' AS DateTime), 3)
INSERT [dbo].[Blog] ([BlogId], [Name], [Description], [CreatedDate], [UserId]) VALUES (4, N'ML', N'About ML', CAST(N'2020-06-07T03:36:08.227' AS DateTime), 4)
INSERT [dbo].[Blog] ([BlogId], [Name], [Description], [CreatedDate], [UserId]) VALUES (5, N'DS', N'About DS', CAST(N'2020-06-07T03:36:22.227' AS DateTime), 5)
INSERT [dbo].[Blog] ([BlogId], [Name], [Description], [CreatedDate], [UserId]) VALUES (6, N'BM', N'About BM', CAST(N'2020-06-07T03:36:34.340' AS DateTime), 6)
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
