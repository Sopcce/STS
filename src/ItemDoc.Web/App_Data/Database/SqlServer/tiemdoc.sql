USE [qds177007681_db]
GO
/****** Object:  Table [dbo].[FunctionAll_Group]    Script Date: 2018/5/8 15:16:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FunctionAll_Group](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[user_Group_ID] [int] NULL,
	[Account_ID] [int] NULL,
	[int_type] [int] NULL,
	[Function_Name] [varchar](32) NULL,
	[Function_Desc] [nvarchar](max) NULL,
	[op_url] [nvarchar](128) NULL,
	[int_state] [int] NULL,
	[bit_del] [bit] NULL,
	[icon] [varchar](256) NULL,
	[Remark] [nvarchar](max) NULL,
	[Amount] [money] NULL,
	[int_OrderID] [int] NULL,
	[FunctionAll_ID] [int] NULL,
	[FunctionAll_arr] [nvarchar](max) NULL,
	[type] [int] NULL,
 CONSTRAINT [PK_Function] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_BlogsCategories]    Script Date: 2018/5/8 15:16:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_BlogsCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](64) NOT NULL,
	[Description] [nvarchar](256) NOT NULL,
	[ParentId] [int] NOT NULL,
	[ParentIdList] [varchar](256) NULL,
	[ChildCount] [tinyint] NOT NULL,
	[Depth] [tinyint] NOT NULL,
	[Enabled] [bit] NOT NULL,
	[ContentCount] [int] NOT NULL,
	[ViewCountType] [tinyint] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK__Item_Blog__3214EC07A18A9289] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_BlogsComment]    Script Date: 2018/5/8 15:16:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_BlogsComment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OwnerId] [int] NULL,
	[UserId] [nvarchar](64) NULL,
	[ParentId] [int] NOT NULL,
	[ParentIdList] [nvarchar](255) NULL,
	[Depth] [tinyint] NULL,
	[Body] [nvarchar](512) NULL,
	[CreatedIP] [nvarchar](32) NULL,
	[DateCreated] [datetime] NULL,
	[OwnerType] [tinyint] NULL,
	[ChildCount] [int] NULL,
 CONSTRAINT [PK__Item_Blog__3214EC078184C69C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_BlogsPosts]    Script Date: 2018/5/8 15:16:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_BlogsPosts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[UserId] [nvarchar](64) NOT NULL,
	[Title] [nvarchar](128) NOT NULL,
	[TitleImg] [nvarchar](256) NULL,
	[Summary] [nvarchar](512) NULL,
	[Body] [nvarchar](max) NULL,
	[ViewCount] [int] NOT NULL,
	[CreatedIP] [nvarchar](32) NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK__Item_Blog__3214EC07CAAED36E] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_Catalog]    Script Date: 2018/5/8 15:16:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_Catalog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NULL,
	[Name] [nvarchar](64) NULL,
	[Description] [nvarchar](256) NULL,
	[ParentId] [int] NULL,
	[ParentIdList] [varchar](256) NULL,
	[ChildCount] [tinyint] NULL,
	[Depth] [tinyint] NULL,
	[Enabled] [bit] NULL,
	[ContentCount] [int] NULL,
	[ViewCountType] [tinyint] NULL,
	[DisplayOrder] [int] NULL,
	[DateCreated] [datetime] NULL,
	[Tags] [nvarchar](256) NULL,
	[BackColor] [nvarchar](32) NULL,
	[Color] [nvarchar](32) NULL,
	[Url] [nvarchar](256) NULL,
	[Icon] [nvarchar](64) NULL,
	[UserId] [nvarchar](64) NULL,
 CONSTRAINT [PK__Item_Blog__3214EC07A18A9289_copy1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_ChangeLog]    Script Date: 2018/5/8 15:16:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_ChangeLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataDate] [datetime] NOT NULL,
	[Title] [nvarchar](128) NOT NULL,
	[Summary] [nvarchar](512) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Selected] [bit] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK__Item_Chan__3214EC07020ADF84] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_EmailQueue]    Script Date: 2018/5/8 15:16:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_EmailQueue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Priority] [int] NOT NULL,
	[IsBodyHtml] [bit] NULL,
	[MailTo] [varchar](512) NULL,
	[MailCc] [varchar](512) NULL,
	[MailBcc] [varchar](512) NULL,
	[MailFrom] [varchar](256) NULL,
	[Subject] [varchar](256) NULL,
	[Body] [varchar](max) NULL,
	[NextTryTime] [datetime] NOT NULL,
	[NumberOfTries] [int] NOT NULL,
	[IsFailed] [bit] NOT NULL,
	[DateCreate] [datetime] NULL,
 CONSTRAINT [PK_Item_EmailQueue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_EmailQueued]    Script Date: 2018/5/8 15:16:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_EmailQueued](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PriorityId] [int] NOT NULL,
	[From] [nvarchar](500) NOT NULL,
	[FromName] [nvarchar](500) NULL,
	[To] [nvarchar](500) NOT NULL,
	[ToName] [nvarchar](500) NULL,
	[ReplyTo] [nvarchar](500) NULL,
	[ReplyToName] [nvarchar](500) NULL,
	[CC] [nvarchar](500) NULL,
	[Bcc] [nvarchar](500) NULL,
	[Subject] [nvarchar](1000) NULL,
	[Body] [nvarchar](max) NULL,
	[AttachmentFilePath] [nvarchar](max) NULL,
	[AttachmentFileName] [nvarchar](max) NULL,
	[AttachedDownloadId] [int] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[DontSendBeforeDateUtc] [datetime] NULL,
	[SentTries] [int] NOT NULL,
	[SentOnUtc] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_Items]    Script Date: 2018/5/8 15:16:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_Items](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](64) NULL,
	[Description] [varchar](256) NULL,
	[UserId] [varchar](256) NULL,
	[Password] [varchar](256) NULL,
	[LastUpdateTime] [datetime] NULL,
	[DateCreated] [datetime] NULL,
	[DisplayOrder] [int] NULL,
	[ParentId] [int] NULL,
	[ParentIdList] [varchar](1024) NULL,
	[ChildCount] [int] NULL,
	[Depth] [int] NULL,
	[Enabled] [bit] NULL,
 CONSTRAINT [PK__item_Ariticle_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_Language]    Script Date: 2018/5/8 15:16:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_Language](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[LanguageCulture] [nvarchar](20) NOT NULL,
	[UniqueSeoCode] [nvarchar](2) NULL,
	[FlagImageFileName] [nvarchar](50) NULL,
	[Rtl] [bit] NOT NULL,
	[LimitedToStores] [bit] NOT NULL,
	[DefaultCurrencyId] [int] NOT NULL,
	[Published] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_Links]    Script Date: 2018/5/8 15:16:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_Links](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OwnerId] [nvarchar](128) NOT NULL,
	[LinkName] [nvarchar](128) NOT NULL,
	[LinkUrl] [nvarchar](512) NOT NULL,
	[Title] [nvarchar](128) NOT NULL,
	[Target] [tinyint] NOT NULL,
	[ImageAttachmentId] [int] NOT NULL,
	[ImageUrl] [nvarchar](512) NULL,
	[Description] [nvarchar](512) NULL,
	[IsEnabled] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[LastModified] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_LocaleStringResource]    Script Date: 2018/5/8 15:16:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_LocaleStringResource](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageId] [int] NOT NULL,
	[ResourceName] [nvarchar](200) NOT NULL,
	[ResourceValue] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_Posts]    Script Date: 2018/5/8 15:16:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatalogId] [int] NOT NULL,
	[UserId] [nvarchar](64) NOT NULL,
	[Title] [nvarchar](128) NOT NULL,
	[HtmlContentPath] [nvarchar](256) NULL,
	[Content] [nvarchar](max) NULL,
	[ViewCount] [int] NOT NULL,
	[CreatedIP] [nvarchar](32) NULL,
	[DateCreated] [datetime] NOT NULL,
	[DisplayOrder] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_SystemParameter]    Script Date: 2018/5/8 15:16:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_SystemParameter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [tinyint] NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_TaskDetails]    Script Date: 2018/5/8 15:16:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_TaskDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[TaskRule] [varchar](64) NOT NULL,
	[ClassType] [varchar](255) NOT NULL,
	[Enabled] [tinyint] NOT NULL,
	[RunAtRestart] [tinyint] NOT NULL,
	[IsRunning] [tinyint] NOT NULL,
	[LastStart] [datetime] NULL,
	[LastEnd] [datetime] NULL,
	[LastIsSuccess] [tinyint] NULL,
	[NextStart] [datetime] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[RunAtServer] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_TestInfo]    Script Date: 2018/5/8 15:16:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_TestInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [tinyint] NOT NULL,
	[IsDel] [bit] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[LongValue] [bigint] NOT NULL,
	[FloatValue] [float] NOT NULL,
	[DecimalValue] [decimal](18, 2) NOT NULL,
	[Body] [varchar](500) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_UserProfiles ]    Script Date: 2018/5/8 15:16:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_UserProfiles ](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](64) NOT NULL,
	[Gender] [tinyint] NOT NULL,
	[BirthdayType] [tinyint] NOT NULL,
	[Birthday] [datetime] NOT NULL,
	[LunarBirthday] [datetime] NOT NULL,
	[NowAreaCode] [varchar](8) NOT NULL,
	[QQ] [nvarchar](16) NULL,
	[CardType] [tinyint] NULL,
	[CardID] [nvarchar](32) NULL,
	[Industry] [nvarchar](32) NULL,
	[Autograph] [nvarchar](64) NULL,
	[Introduction] [nvarchar](512) NULL,
	[Integrity] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NowAreaCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_UsersEducation]    Script Date: 2018/5/8 15:16:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_UsersEducation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](64) NOT NULL,
	[Degree] [tinyint] NULL,
	[School] [nvarchar](128) NULL,
	[StartYear] [int] SPARSE  NULL,
	[StartTime] [datetime] NULL,
	[Department] [nvarchar](128) NULL,
	[DateCreated] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_UsersGroup]    Script Date: 2018/5/8 15:16:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_UsersGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [nvarchar](64) NOT NULL,
	[EnName] [nvarchar](64) NOT NULL,
	[CnName] [nvarchar](64) NULL,
	[FriendlyName] [nvarchar](64) NULL,
	[ParentId] [int] NOT NULL,
	[ParentIdList] [nvarchar](256) NULL,
	[ChildCount] [tinyint] NOT NULL,
	[Depth] [tinyint] NOT NULL,
	[GroupImage] [nvarchar](256) NULL,
	[IconClass] [nvarchar](64) NULL,
	[IsPublic] [bit] NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[Description] [nvarchar](256) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_Item_UsersGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_UsersLogin]    Script Date: 2018/5/8 15:16:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_UsersLogin](
	[Id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserId] [nvarchar](64) NOT NULL,
	[UserName] [nvarchar](64) NOT NULL,
	[AccountName] [nvarchar](64) NULL,
	[AccountEmail] [nvarchar](64) NULL,
	[AccountMobile] [nvarchar](16) NULL,
	[AccountIDcard] [nvarchar](32) NULL,
	[IsVerifiedEmail] [bit] NULL,
	[IsVerifiedMobile] [bit] NULL,
	[PassWord] [nvarchar](512) NOT NULL,
	[PassWordEncryption] [tinyint] NULL,
	[TrueName] [nvarchar](64) NULL,
	[NickName] [nvarchar](64) NULL,
	[Status] [tinyint] NULL,
	[StatusNotes] [nvarchar](512) NULL,
	[CreatedIP] [nvarchar](16) NULL,
	[ActivityTime] [datetime] NULL,
	[LastActivityTime] [datetime] NULL,
	[ActivityIP] [nvarchar](16) NULL,
	[LastActivityIP] [nvarchar](16) NULL,
	[DateCreated] [datetime] NULL,
	[DisplayOrder] [int] NULL,
 CONSTRAINT [PK_Item_UsersLogin_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_UsersOnline]    Script Date: 2018/5/8 15:16:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_UsersOnline](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](64) NOT NULL,
	[UserName] [nvarchar](64) NOT NULL,
	[DisplayName] [nvarchar](64) NOT NULL,
	[LastActivityTime] [datetime] NOT NULL,
	[LastAction] [nvarchar](512) NOT NULL,
	[Ip] [varchar](32) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK__Item_User__3214EC0715625013] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_UsersRelation]    Script Date: 2018/5/8 15:16:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_UsersRelation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [tinyint] NOT NULL,
	[UserId] [nvarchar](64) NOT NULL,
	[RoleId] [nvarchar](64) NOT NULL,
	[GroupId] [nvarchar](64) NOT NULL,
	[RightId] [nvarchar](64) NOT NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_Item_UsersRelation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_UsersRight]    Script Date: 2018/5/8 15:16:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_UsersRight](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RightId] [nvarchar](64) NOT NULL,
	[EnName] [nvarchar](64) NOT NULL,
	[CnName] [nvarchar](64) NULL,
	[FriendlyName] [nvarchar](64) NULL,
	[ParentId] [int] NOT NULL,
	[ParentIdList] [nvarchar](256) NULL,
	[ChildCount] [tinyint] NOT NULL,
	[Depth] [tinyint] NOT NULL,
	[RightImage] [nvarchar](256) NULL,
	[IconClass] [nvarchar](64) NULL,
	[IsPublic] [bit] NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[Description] [nvarchar](256) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_Item_UsersRight] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_UsersRoles]    Script Date: 2018/5/8 15:16:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_UsersRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](64) NOT NULL,
	[EnName] [nvarchar](64) NOT NULL,
	[CnName] [nvarchar](64) NULL,
	[FriendlyName] [nvarchar](64) NULL,
	[ParentId] [int] NOT NULL,
	[ParentIdList] [nvarchar](256) NULL,
	[ChildCount] [tinyint] NOT NULL,
	[Depth] [tinyint] NOT NULL,
	[RoleImage] [nvarchar](256) NULL,
	[IconClass] [nvarchar](64) NULL,
	[IsPublic] [bit] NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[Description] [nvarchar](256) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_Item_UsersRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_UsersWork]    Script Date: 2018/5/8 15:16:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_UsersWork](
	[Id] [int] NULL,
	[UserId] [nvarchar](64) NOT NULL,
	[CompanyName] [nvarchar](128) NULL,
	[CompanyAreaCode] [varchar](16) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[JobDescription] [nvarchar](128) NULL,
	[DateCreated] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FunctionAll_Group] ON 
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (1, 337, 6666, 2, N'文章', N'', N'/user/Article_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433125195_7.png', N'', 0.0000, 8, 673, NULL, 1)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (2, 337, 6666, 2, N'视频', N'', N'/user/Video_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433120584_4.png', N'', 0.0000, 7, 674, NULL, 2)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (3, 337, 6666, 2, N'活动', N'', N'/user/Activity_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433110444_2.png', N'', 0.0000, 6, 675, NULL, 5)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (4, 337, 6666, 2, N'投票', N'6', N'/user/Vote_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433121904_5.png', N'', 0.0000, 5, 676, NULL, 6)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (5, 337, 6666, 2, N'图集', N'7', N'/user/Picture_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433123484_6.png', N'', 0.0000, 4, 677, NULL, 7)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (6, 337, 6666, 2, N'招聘', N'8', N'/user/Position_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433129875_8.png', N'', 0.0000, 3, 678, NULL, 8)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (7, 337, 6666, 3, N'企业号', N'通过企业资质信息认证的认证, 就是企业认证。只有认证了企业号才能开能新零售店铺。', N'', 10, 0, N'', N'', 0.0100, 1, 366, N'1,2,3,4,5,6,154,167,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (8, 337, 6666, 3, N'创客号', N'通过创客信息实名认证的的认证, 就是创客认证。', N'', 10, 0, N'', N'0', 0.0200, 0, 367, N'1,2,3,4,5,6,154,167,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (9, 337, 6666, 3, N'个人号', N'通过个人信息实名认证的的认证, 就是个人认证。', N'', 10, 0, N'', N'0', 0.0100, 0, 607, N'1,2,3,4,5,6,154,167,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (10, 337, 6666, 3, N'未认证', N'尚未认证(该部分只做授权，不能申请)', N'', 10, 0, N'', N'0', 0.0000, 0, 608, N'1,2,3,4,5,6,154,167,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (11, 327, 1970, 2, N'文章', N'', N'/user/Article_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433125195_7.png', N'', NULL, 8, 673, NULL, 1)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (12, 327, 1970, 2, N'视频', N'', N'/user/Video_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433120584_4.png', N'', NULL, 7, 674, NULL, 2)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (13, 327, 1970, 2, N'活动', N'', N'/user/Activity_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433110444_2.png', N'', NULL, 6, 675, NULL, 5)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (14, 327, 1970, 2, N'投票', N'6', N'/user/Vote_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433121904_5.png', N'', NULL, 5, 676, NULL, 6)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (15, 327, 1970, 2, N'图集', N'7', N'/user/Picture_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433123484_6.png', N'', NULL, 4, 677, NULL, 7)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (16, 327, 1970, 2, N'招聘', N'8', N'/user/Position_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433129875_8.png', N'', NULL, 1, 678, NULL, 8)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (17, 327, 1970, 3, N'企业号', N'通过企业资质信息认证的认证, 就是企业认证。', N'', 10, 0, N'', N'烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫', 0.0300, 0, 366, N'11,12,13,14,15,16,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (18, 327, 1970, 3, N'创客号', N'通过创客信息实名认证的的认证, 就是创客认证。', N'', 10, 0, N'', N'屯屯屯屯屯屯屯屯屯屯屯屯屯屯屯', 0.0100, 0, 367, N'11,12,13,14,15,16,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (19, 327, 1970, 3, N'智酷号', N'通过个人信息实名认证的的认证, 就是个人认证。', N'', 10, 0, N'', N'烫', 0.0200, 0, 607, N'11,12,13,14,15,16,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (20, 327, 1970, 3, N'未认证', N'尚未认证(该部分只做授权，不能申请)', N'', 10, 0, N'', N'屯', NULL, 0, 608, N'11,12,13,14,15,16,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (21, 328, 6431, 2, N'文章', N'', N'/user/Article_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433125195_7.png', NULL, NULL, 8, 673, NULL, 1)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (22, 328, 6431, 2, N'视频', N'', N'/user/Video_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433120584_4.png', NULL, NULL, 0, 674, NULL, 2)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (23, 328, 6431, 2, N'活动', N'', N'/user/Activity_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433110444_2.png', NULL, NULL, 0, 675, NULL, 5)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (24, 328, 6431, 2, N'投票', N'6', N'/user/Vote_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433121904_5.png', NULL, NULL, 0, 676, NULL, 6)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (25, 328, 6431, 2, N'图集', N'7', N'/user/Picture_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433123484_6.png', NULL, NULL, 0, 677, NULL, 7)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (26, 328, 6431, 2, N'招聘', N'8', N'/user/Position_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433129875_8.png', NULL, NULL, 0, 678, NULL, 8)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (27, 329, 6566, 2, N'文章', N'', N'/user/Article_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433125195_7.png', NULL, NULL, 8, 673, NULL, 1)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (28, 329, 6566, 2, N'视频', N'', N'/user/Video_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433120584_4.png', NULL, NULL, 0, 674, NULL, 2)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (29, 329, 6566, 2, N'活动', N'', N'/user/Activity_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433110444_2.png', NULL, NULL, 0, 675, NULL, 5)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (30, 329, 6566, 2, N'投票', N'6', N'/user/Vote_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433121904_5.png', NULL, NULL, 0, 676, NULL, 6)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (31, 329, 6566, 2, N'图集', N'7', N'/user/Picture_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433123484_6.png', NULL, NULL, 0, 677, NULL, 7)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (32, 329, 6566, 2, N'招聘', N'8', N'/user/Position_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433129875_8.png', NULL, NULL, 0, 678, NULL, 8)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (33, 329, 6566, 2, N'发布电视', N'', N'/user/Dianshi_Edit.aspx', 0, 1, N'http://pic.taiyasaifu.com/UF/201708/WX/6667/201708111030363597.png', NULL, NULL, 0, 682, NULL, 8)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (34, 329, 6566, 3, N'企业号', N'通过企业资质信息认证的认证, 就是企业认证。', NULL, 10, 0, NULL, NULL, NULL, 0, 366, NULL, 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (35, 329, 6566, 3, N'创客号', N'通过创客信息实名认证的的认证, 就是创客认证。', NULL, 10, 0, NULL, NULL, NULL, 0, 367, NULL, 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (36, 329, 6566, 3, N'个人号', N'通过个人信息实名认证的的认证, 就是个人认证。', NULL, 10, 0, NULL, NULL, NULL, 0, 607, NULL, 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (37, 329, 6566, 3, N'未认证', N'尚未认证(该部分只做授权，不能申请)', NULL, 10, 0, NULL, NULL, NULL, 0, 608, NULL, 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (38, 328, 6431, 3, N'企业号', N'通过企业资质信息认证的认证, 就是企业认证。', N'', 10, 0, N'', N'0', NULL, 0, 366, N'21,22,23,24,25,26,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (39, 328, 6431, 3, N'创客号', N'通过创客信息实名认证的的认证, 就是创客认证。', N'', 10, 0, N'', N'1', NULL, 0, 367, N'21,22,23,24,25,26,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (40, 328, 6431, 3, N'个人号', N'通过个人信息实名认证的的认证, 就是个人认证。', N'', 10, 0, N'', N'1', NULL, 0, 607, N'21,22,23,24,25,26,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (41, 328, 6431, 3, N'未认证', N'尚未认证(该部分只做授权，不能申请)', N'', 10, 0, N'', N'1', NULL, 0, 608, N'21,22,23,24,25,26,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (42, 335, 6650, 2, N'文章', N'', N'/user/Article_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433125195_7.png', NULL, NULL, 8, 673, NULL, 1)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (43, 335, 6650, 2, N'视频', N'', N'/user/Video_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433120584_4.png', NULL, NULL, 0, 674, NULL, 2)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (44, 335, 6650, 2, N'活动', N'', N'/user/Activity_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433110444_2.png', NULL, NULL, 0, 675, NULL, 5)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (45, 335, 6650, 2, N'投票', N'6', N'/user/Vote_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433121904_5.png', NULL, NULL, 0, 676, NULL, 6)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (46, 335, 6650, 2, N'图集', N'7', N'/user/Picture_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433123484_6.png', NULL, NULL, 0, 677, NULL, 7)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (47, 335, 6650, 2, N'招聘', N'8', N'/user/Position_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433129875_8.png', NULL, NULL, 0, 678, NULL, 8)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (49, 335, 6650, 3, N'企业号', N'通过企业资质信息认证的认证, 就是企业认证。', N'', 10, 0, N'', N'0', 0.0000, 0, 366, N'42,43,44,45,46,47,157,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (50, 335, 6650, 3, N'创客号', N'通过创客信息实名认证的的认证, 就是创客认证。', N'', 10, 0, N'', N'0', 0.0000, 0, 367, N'42,43,44,45,46,47,157,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (51, 335, 6650, 3, N'个人号', N'通过个人信息实名认证的的认证, 就是个人认证。', N'', 10, 0, N'', N'0', 0.0000, 0, 607, N'42,43,44,45,46,47,157,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (52, 335, 6650, 3, N'未认证', N'尚未认证(该部分只做授权，不能申请)', N'', 10, 0, N'', N'0', 0.0000, 0, 608, N'42,43,44,45,46,47,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (66, 331, 6636, 2, N'文章', N'', N'/user/Article_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433125195_7.png', NULL, NULL, 8, 673, NULL, 1)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (67, 331, 6636, 2, N'视频', N'', N'/user/Video_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433120584_4.png', N'', 0.0000, 7, 674, NULL, 2)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (68, 331, 6636, 2, N'活动', N'', N'/user/Activity_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433110444_2.png', N'', 0.0000, 6, 675, NULL, 5)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (69, 331, 6636, 2, N'投票', N'6', N'/user/Vote_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433121904_5.png', N'', 0.0000, 5, 676, NULL, 6)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (70, 331, 6636, 2, N'图集', N'7', N'/user/Picture_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433123484_6.png', N'', 0.0000, 4, 677, NULL, 7)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (71, 331, 6636, 2, N'招聘', N'8', N'/user/Position_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433129875_8.png', N'', 0.0000, 3, 678, NULL, 8)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (73, 331, 6636, 3, N'企业号', N'通过企业资质信息认证的认证, 就是企业认证。', N'', 10, 0, N'', N'', 0.0000, 0, 366, N'66,67,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (74, 331, 6636, 3, N'创客号', N'通过创客信息实名认证的的认证, 就是创客认证。', NULL, 10, 0, NULL, NULL, NULL, 0, 367, NULL, 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (75, 331, 6636, 3, N'个人号', N'通过个人信息实名认证的的认证, 就是个人认证。', N'', 10, 0, N'', N'', 0.0100, 0, 607, N'66,67,68,69,70,71,163,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (76, 331, 6636, 3, N'未认证', N'尚未认证(该部分只做授权，不能申请)', N'', 10, 0, N'', N'', 0.0000, 0, 608, N'66,67,68,69,70,71,163,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (77, 332, 6637, 2, N'文章', N'', N'/user/Article_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433125195_7.png', NULL, NULL, 8, 673, NULL, 1)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (78, 332, 6637, 2, N'视频', N'', N'/user/Video_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433120584_4.png', NULL, NULL, 0, 674, NULL, 2)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (79, 332, 6637, 2, N'活动', N'', N'/user/Activity_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433110444_2.png', NULL, NULL, 0, 675, NULL, 5)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (80, 332, 6637, 2, N'投票', N'6', N'/user/Vote_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433121904_5.png', NULL, NULL, 0, 676, NULL, 6)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (81, 332, 6637, 2, N'图集', N'7', N'/user/Picture_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433123484_6.png', NULL, NULL, 0, 677, NULL, 7)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (82, 332, 6637, 2, N'招聘', N'8', N'/user/Position_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433129875_8.png', NULL, NULL, 0, 678, NULL, 8)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (84, 332, 6637, 3, N'企业号', N'通过企业资质信息认证的认证, 就是企业认证。', N'', 10, 0, N'', N'0', NULL, 0, 366, N'77,78,79,80,81,82,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (85, 332, 6637, 3, N'创客号', N'通过创客信息实名认证的的认证, 就是创客认证。', N'', 10, 0, N'', N'0', NULL, 0, 367, N'77,78,79,80,81,82,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (86, 332, 6637, 3, N'个人号', N'通过个人信息实名认证的的认证, 就是个人认证。', N'', 10, 0, N'', N'0', NULL, 0, 607, N'77,78,79,80,81,82,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (87, 332, 6637, 3, N'未认证', N'尚未认证(该部分只做授权，不能申请)', N'', 10, 0, N'', N'0', NULL, 0, 608, N'77,78,79,80,81,82,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (88, 333, 6640, 2, N'文章', N'', N'/user/Article_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433125195_7.png', NULL, NULL, 8, 673, NULL, 1)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (89, 333, 6640, 2, N'视频', N'', N'/user/Video_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433120584_4.png', NULL, NULL, 0, 674, NULL, 2)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (90, 333, 6640, 2, N'活动', N'', N'/user/Activity_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433110444_2.png', NULL, NULL, 0, 675, NULL, 5)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (91, 333, 6640, 2, N'投票', N'6', N'/user/Vote_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433121904_5.png', NULL, NULL, 0, 676, NULL, 6)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (92, 333, 6640, 2, N'图集', N'7', N'/user/Picture_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433123484_6.png', NULL, NULL, 0, 677, NULL, 7)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (93, 333, 6640, 2, N'招聘', N'8', N'/user/Position_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433129875_8.png', NULL, NULL, 0, 678, NULL, 8)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (95, 333, 6640, 3, N'企业号', N'通过企业资质信息认证的认证, 就是企业认证。', N'', 10, 0, N'', N'', 0.0000, 0, 366, N'88,89,90,91,92,93,161,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (96, 333, 6640, 3, N'创客号', N'通过创客信息实名认证的的认证, 就是创客认证。', N'', 10, 0, N'', N'', 0.0000, 0, 367, N'88,89,90,91,92,93,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (97, 333, 6640, 3, N'个人号', N'通过个人信息实名认证的的认证, 就是个人认证。', NULL, 10, 0, NULL, NULL, NULL, 0, 607, NULL, 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (98, 333, 6640, 3, N'未认证', N'尚未认证(该部分只做授权，不能申请)', N'', 10, 0, N'', N'', 0.0000, 0, 608, N'88,89,90,91,92,93,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (99, 334, 6648, 2, N'文章', N'', N'/user/Article_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433125195_7.png', NULL, NULL, 8, 673, NULL, 1)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (100, 334, 6648, 2, N'视频', N'', N'/user/Video_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433120584_4.png', NULL, NULL, 0, 674, NULL, 2)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (101, 334, 6648, 2, N'活动', N'', N'/user/Activity_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433110444_2.png', NULL, NULL, 0, 675, NULL, 5)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (102, 334, 6648, 2, N'投票', N'6', N'/user/Vote_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433121904_5.png', NULL, NULL, 0, 676, NULL, 6)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (103, 334, 6648, 2, N'图集', N'7', N'/user/Picture_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433123484_6.png', NULL, NULL, 0, 677, NULL, 7)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (104, 334, 6648, 2, N'招聘', N'8', N'/user/Position_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433129875_8.png', NULL, NULL, 0, 678, NULL, 8)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (105, 334, 6648, 2, N'发布电视', N'', N'/user/Dianshi_Edit.aspx', 0, 1, N'http://pic.taiyasaifu.com/UF/201708/WX/6667/201708111030363597.png', NULL, NULL, 0, 682, NULL, 8)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (106, 334, 6648, 3, N'企业号', N'通过企业资质信息认证的认证, 就是企业认证。', NULL, 10, 0, NULL, NULL, NULL, 0, 366, NULL, 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (107, 334, 6648, 3, N'创客号', N'通过创客信息实名认证的的认证, 就是创客认证。', NULL, 10, 0, NULL, NULL, NULL, 0, 367, NULL, 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (108, 334, 6648, 3, N'个人号', N'通过个人信息实名认证的的认证, 就是个人认证。', NULL, 10, 0, NULL, NULL, NULL, 0, 607, NULL, 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (109, 334, 6648, 3, N'未认证', N'尚未认证(该部分只做授权，不能申请)', NULL, 10, 0, NULL, NULL, NULL, 0, 608, NULL, 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (110, 336, 6664, 2, N'文章', N'', N'/user/Article_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433125195_7.png', NULL, NULL, 8, 673, NULL, 1)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (111, 336, 6664, 2, N'视频', N'', N'/user/Video_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433120584_4.png', N'', 0.0000, 7, 674, NULL, 2)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (112, 336, 6664, 2, N'活动', N'', N'/user/Activity_Edit.aspx', 0, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433110444_2.png', N'', 0.0000, 2, 675, NULL, 5)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (113, 336, 6664, 2, N'投票', N'6', N'/user/Vote_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433121904_5.png', N'', 0.0000, 6, 676, NULL, 6)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (114, 336, 6664, 2, N'图集', N'7', N'/user/Picture_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433123484_6.png', N'', 0.0000, 4, 677, NULL, 7)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (115, 336, 6664, 2, N'招聘', N'8', N'/user/Position_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433129875_8.png', N'', 0.0000, 3, 678, NULL, 8)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (117, 336, 6664, 3, N'企业号', N'认证之后可开通直播，发表免审核，提醒粉丝等功能。', N'', 10, 0, N'', N'0', 0.0000, 0, 366, N'110,111,113,114,115,160,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (118, 336, 6664, 3, N'创客号', N'通过创客信息实名认证的的认证, 就是创客认证。', N'', 0, 0, N'', N'0', 0.0000, 0, 367, N'110,111,113,114,115,160,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (119, 336, 6664, 3, N'个人号', N'认证之后可开通直播，发表免审核，提醒粉丝等功能。', N'', 10, 0, N'', N'0', 0.0100, 0, 607, N'110,111,113,114,115,160,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (120, 336, 6664, 3, N'未认证', N'尚未认证(该部分只做授权，不能申请)', N'', 10, 0, N'', N'0', NULL, 0, 608, N'110,111,112,113,114,115,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (121, 340, 6670, 2, N'文章', N'', N'/user/Article_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433125195_7.png', NULL, NULL, 8, 673, NULL, 1)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (123, 340, 6670, 2, N'活动', N'', N'/user/Activity_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433110444_2.png', NULL, NULL, 0, 675, NULL, 5)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (124, 340, 6670, 2, N'投票', N'6', N'/user/Vote_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433121904_5.png', NULL, NULL, 0, 676, NULL, 6)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (125, 340, 6670, 2, N'图集', N'7', N'/user/Picture_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433123484_6.png', NULL, NULL, 0, 677, NULL, 7)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (126, 340, 6670, 2, N'招聘', N'8', N'/user/Position_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433129875_8.png', NULL, NULL, 0, 678, NULL, 8)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (128, 340, 6670, 3, N'企业号', N'通过企业资质信息认证的认证, 就是企业认证。', N'', 10, 0, N'', N'0', 0.0000, 0, 366, N'121,122,123,124,125,126,158,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (129, 340, 6670, 3, N'创客号', N'通过创客信息实名认证的的认证, 就是创客认证。', N'', 10, 0, N'', N'0', 0.0000, 0, 367, N'121,122,123,124,125,126,158,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (130, 340, 6670, 3, N'个人号', N'通过个人信息实名认证的的认证, 就是个人认证。', N'', 10, 0, N'', N'0', 0.0000, 0, 607, N'121,122,123,124,125,126,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (131, 340, 6670, 3, N'未认证', N'尚未认证(该部分只做授权，不能申请)', N'', 10, 0, N'', N'0', 0.0000, 0, 608, N'121,122,123,124,125,126,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (132, 339, 6667, 2, N'文章', N'', N'/user/Article_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433125195_7.png', NULL, NULL, 8, 673, NULL, 1)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (134, 339, 6667, 2, N'活动', N'', N'/user/Activity_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433110444_2.png', NULL, NULL, 0, 675, NULL, 5)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (135, 339, 6667, 2, N'投票', N'6', N'/user/Vote_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433121904_5.png', NULL, NULL, 0, 676, NULL, 6)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (136, 339, 6667, 2, N'图集', N'7', N'/user/Picture_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433123484_6.png', NULL, NULL, 0, 677, NULL, 7)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (137, 339, 6667, 2, N'招聘', N'8', N'/user/Position_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433129875_8.png', NULL, NULL, 0, 678, NULL, 8)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (139, 339, 6667, 3, N'企业号', N'通过企业资质信息认证的认证, 就是企业认证。', N'', 10, 0, N'', N'0', 288.0000, 0, 366, N'132,133,134,135,136,137,159,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (140, 339, 6667, 3, N'创客号', N'通过创客信息实名认证的的认证, 就是创客认证。', N'', 10, 0, N'', N'0', 188.0000, 0, 367, N'132,133,134,135,136,137,159,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (141, 339, 6667, 3, N'个人号', N'通过个人信息实名认证的的认证, 就是个人认证。', N'', 10, 0, N'', N'0', 88.0000, 0, 607, N'132,133,134,135,136,137,159,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (142, 339, 6667, 3, N'未认证', N'尚未认证(该部分只做授权，不能申请)', N'', 10, 0, N'', N'0', 0.0000, 0, 608, N'132,133,134,135,136,137,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (144, 341, 6676, 2, N'文章', N'', N'/user/Article_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433125195_7.png', NULL, 0.0000, 0, 673, NULL, 1)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (145, 341, 6676, 2, N'视频', N'', N'/user/Video_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433120584_4.png', NULL, 0.0000, 0, 674, NULL, 2)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (146, 341, 6676, 2, N'活动', N'', N'/user/Activity_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433110444_2.png', NULL, 0.0000, 0, 675, NULL, 5)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (147, 341, 6676, 2, N'投票', N'6', N'/user/Vote_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433121904_5.png', NULL, 0.0000, 0, 676, NULL, 6)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (148, 341, 6676, 2, N'图集', N'7', N'/user/Picture_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433123484_6.png', NULL, 0.0000, 0, 677, NULL, 7)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (149, 341, 6676, 2, N'招聘', N'8', N'/user/Position_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433129875_8.png', NULL, 0.0000, 0, 678, NULL, 8)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (150, 341, 6676, 3, N'企业号', N'通过企业资质信息认证的认证, 就是企业认证。', N'', 10, 0, N'', N'', 0.0000, 0, 366, N'144,145,146,147,148,149,155,156,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (151, 341, 6676, 3, N'创客号', N'通过创客信息实名认证的的认证, 就是创客认证。', N'', 10, 0, N'', N'', 0.0000, 0, 367, N'144,145,146,147,148,149,155,156,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (152, 341, 6676, 3, N'个人号', N'通过个人信息实名认证的的认证, 就是个人认证。', N'', 10, 0, N'', N'', 0.0000, 0, 607, N'144,145,146,147,148,149,155,156,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (153, 341, 6676, 3, N'未认证', N'尚未认证(该部分只做授权，不能申请)', N'', 10, 0, N'', N'', 0.0000, 0, 608, N'144,145,146,147,148,149,155,156,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (154, 337, 6666, 2, N'直播', N'10', N'', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433133875_9.png', N'', 0.0000, 0, 690, NULL, 10)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (156, 341, 6676, 2, N'直播', N'10', N'', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433133875_9.png', N'', 0.0000, 0, 690, NULL, 10)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (157, 335, 6650, 2, N'直播', N'10', N'', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433133875_9.png', N'', 0.0000, 0, 690, NULL, 10)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (160, 336, 6664, 2, N'直播', N'10', N'', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433133875_9.png', N'', 0.0000, 5, 690, NULL, 10)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (161, 333, 6640, 2, N'直播', N'10', N'', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433133875_9.png', N'', 0.0000, 0, 690, NULL, 10)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (162, 332, 6637, 2, N'直播', N'10', N'', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433133875_9.png', N'', 0.0000, 0, 690, NULL, 10)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (163, 331, 6636, 2, N'直播', N'10', N'', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433133875_9.png', N'', 0.0000, 0, 690, NULL, 10)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (164, 328, 6431, 2, N'直播', N'10', N'', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433133875_9.png', N'', 0.0000, 0, 690, NULL, 10)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (167, 337, 6666, 2, N'拼车', N'11', N'', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433119294_3.png', N'11', 0.0000, 3, 698, NULL, 11)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (168, 343, 6688, 2, N'文章', N'', N'/user/Article_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433125195_7.png', NULL, 0.0000, 0, 673, NULL, 1)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (169, 343, 6688, 2, N'视频', N'', N'/user/Video_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433120584_4.png', NULL, 0.0000, 0, 674, NULL, 2)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (170, 343, 6688, 2, N'活动', N'', N'/user/Activity_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433110444_2.png', NULL, 0.0000, 0, 675, NULL, 5)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (171, 343, 6688, 2, N'投票', N'6', N'/user/Vote_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433121904_5.png', NULL, 0.0000, 0, 676, NULL, 6)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (172, 343, 6688, 2, N'图集', N'7', N'/user/Picture_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433123484_6.png', NULL, 0.0000, 0, 677, NULL, 7)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (177, 343, 6688, 3, N'企业号', N'通过企业资质信息认证的认证, 就是企业认证。', N'', 10, 0, N'', N'', 0.0000, 0, 366, N'168,169,170,171,172,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (178, 343, 6688, 3, N'创客号', N'通过创客信息实名认证的的认证, 就是创客认证。', N'', 10, 0, N'', N'', 0.0000, 0, 367, N'168,169,170,171,172,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (179, 343, 6688, 3, N'个人号', N'通过个人信息实名认证的的认证, 就是个人认证。', N'', 10, 0, N'', N'', 0.0000, 0, 607, N'168,169,170,171,172,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (180, 343, 6688, 3, N'未认证', N'尚未认证(该部分只做授权，不能申请)', N'', 10, 0, N'', N'', 0.0000, 0, 608, N'168,169,170,171,172,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (181, 348, 6694, 2, N'文章', N'', N'/user/Article_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433125195_7.png', NULL, 0.0000, 0, 673, NULL, 1)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (182, 348, 6694, 2, N'视频', N'', N'/user/Video_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433120584_4.png', NULL, 0.0000, 0, 674, NULL, 2)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (183, 348, 6694, 2, N'活动', N'', N'/user/Activity_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433110444_2.png', NULL, 0.0000, 0, 675, NULL, 5)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (184, 348, 6694, 2, N'投票', N'6', N'/user/Vote_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433121904_5.png', NULL, 0.0000, 0, 676, NULL, 6)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (185, 348, 6694, 2, N'图集', N'7', N'/user/Picture_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433123484_6.png', NULL, 0.0000, 0, 677, NULL, 7)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (186, 348, 6694, 2, N'招聘', N'8', N'/user/Position_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433129875_8.png', NULL, 0.0000, 0, 678, NULL, 8)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (188, 348, 6694, 2, N'直播', N'10', N'', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433133875_9.png', NULL, 0.0000, 0, 690, NULL, 10)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (189, 348, 6694, 2, N'拼车', N'11', N'', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433119294_3.png', NULL, 0.0000, 0, 698, NULL, 11)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (190, 348, 6694, 3, N'企业号', N'通过企业资质信息认证的认证, 就是企业认证。', N'', 10, 0, N'', N'&nbsp;', 3.0000, 0, 366, N'181,183,184,185,186,188,189,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (191, 348, 6694, 3, N'创客号', N'通过创客信息实名认证的的认证, 就是创客认证。', N'', 10, 0, N'', N'', 2.0000, 0, 367, N'181,182,183,184,185,186,188,189,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (192, 348, 6694, 3, N'个人号', N'通过个人信息实名认证的的认证, 就是个人认证。', N'', 10, 0, N'', N'', 1.0000, 0, 607, N'181,182,183,184,185,186,188,189,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (193, 348, 6694, 3, N'未认证', N'尚未认证(该部分只做授权，不能申请)', N'', 10, 0, N'', N'', 0.0000, 0, 608, N'181,182,183,184,185,186,188,189,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (194, 347, 6692, 2, N'文章', N'', N'/user/Article_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433125195_7.png', NULL, 0.0000, 0, 673, NULL, 1)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (195, 347, 6692, 2, N'视频', N'', N'/user/Video_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433120584_4.png', NULL, 0.0000, 0, 674, NULL, 2)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (196, 347, 6692, 2, N'活动', N'', N'/user/Activity_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433110444_2.png', NULL, 0.0000, 0, 675, NULL, 5)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (197, 347, 6692, 2, N'投票', N'6', N'/user/Vote_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433121904_5.png', NULL, 0.0000, 0, 676, NULL, 6)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (198, 347, 6692, 2, N'图集', N'7', N'/user/Picture_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433123484_6.png', NULL, 0.0000, 0, 677, NULL, 7)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (199, 347, 6692, 3, N'企业号', N'通过企业资质信息认证的认证, 就是企业认证。', N'', 10, 0, N'', N'', 0.0000, 0, 366, N'194,195,196,197,198,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (200, 347, 6692, 3, N'创客号', N'通过创客信息实名认证的的认证, 就是创客认证。', N'', 10, 0, N'', N'', 0.0000, 0, 367, N'194,195,196,197,198,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (201, 347, 6692, 3, N'个人号', N'通过个人信息实名认证的的认证, 就是个人认证。', N'', 10, 0, N'', N'', 0.0000, 0, 607, N'194,195,196,197,198,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (202, 347, 6692, 3, N'未认证', N'尚未认证(该部分只做授权，不能申请)', N'', 10, 0, N'', N'', 0.0000, 0, 608, N'194,195,196,197,198,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (203, 706, 7053, 2, N'文章', N'', N'/user/Article_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433125195_7.png', NULL, 0.0000, 0, 673, NULL, 1)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (204, 706, 7053, 2, N'投票', N'6', N'/user/Vote_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433121904_5.png', NULL, 0.0000, 0, 676, NULL, 6)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (205, 706, 7053, 2, N'图集', N'7', N'/user/Picture_Edit.aspx', 10, 0, N'http://pic.taiyasaifu.com/UF/Article/201709/327/1970/136937/pc/201709111433123484_6.png', NULL, 0.0000, 0, 677, NULL, 7)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (206, 706, 7053, 3, N'企业号', N'通过企业资质信息认证的认证, 就是企业认证。', N'', 10, 0, N'', N'', 100.0000, 0, 366, N'203,204,205,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (207, 706, 7053, 3, N'创客号', N'通过创客信息实名认证的的认证, 就是创客认证。', NULL, 10, 0, NULL, NULL, 0.0000, 0, 367, NULL, 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (208, 706, 7053, 3, N'个人号', N'通过个人信息实名认证的的认证, 就是个人认证。', N'', 10, 0, N'', N'', 0.0100, 0, 607, N'203,204,205,', 0)
GO
INSERT [dbo].[FunctionAll_Group] ([ID], [user_Group_ID], [Account_ID], [int_type], [Function_Name], [Function_Desc], [op_url], [int_state], [bit_del], [icon], [Remark], [Amount], [int_OrderID], [FunctionAll_ID], [FunctionAll_arr], [type]) VALUES (209, 706, 7053, 3, N'未认证', N'尚未认证(该部分只做授权，不能申请)', N'', 10, 0, N'', N'', 0.0000, 0, 608, N'203,204,205,', 0)
GO
SET IDENTITY_INSERT [dbo].[FunctionAll_Group] OFF
GO
SET IDENTITY_INSERT [dbo].[Item_Catalog] ON 
GO
INSERT [dbo].[Item_Catalog] ([Id], [ItemId], [Name], [Description], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled], [ContentCount], [ViewCountType], [DisplayOrder], [DateCreated], [Tags], [BackColor], [Color], [Url], [Icon], [UserId]) VALUES (42, 2, N'动物', N'动物', 0, N'', 2, 0, 1, 0, 0, 42, CAST(N'2018-03-14T17:33:00.597' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'd540d508-e2ff-4f26-96c8-370176a2b44d')
GO
INSERT [dbo].[Item_Catalog] ([Id], [ItemId], [Name], [Description], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled], [ContentCount], [ViewCountType], [DisplayOrder], [DateCreated], [Tags], [BackColor], [Color], [Url], [Icon], [UserId]) VALUES (43, 2, N'植物1', N'植物1', 0, N'0', 2, 0, 1, 0, 0, 43, CAST(N'2018-04-27T17:54:24.927' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'd540d508-e2ff-4f26-96c8-370176a2b44d')
GO
INSERT [dbo].[Item_Catalog] ([Id], [ItemId], [Name], [Description], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled], [ContentCount], [ViewCountType], [DisplayOrder], [DateCreated], [Tags], [BackColor], [Color], [Url], [Icon], [UserId]) VALUES (79, 2, N'猫', N'11', 42, N',42', 1, 1, 1, 0, 0, 79, CAST(N'2018-04-27T15:57:47.987' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'd540d508-e2ff-4f26-96c8-370176a2b44d')
GO
INSERT [dbo].[Item_Catalog] ([Id], [ItemId], [Name], [Description], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled], [ContentCount], [ViewCountType], [DisplayOrder], [DateCreated], [Tags], [BackColor], [Color], [Url], [Icon], [UserId]) VALUES (80, 2, N'狗', N'狗', 42, N',42', 1, 1, 1, 0, 0, 80, CAST(N'2018-04-27T15:58:49.677' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'd540d508-e2ff-4f26-96c8-370176a2b44d')
GO
INSERT [dbo].[Item_Catalog] ([Id], [ItemId], [Name], [Description], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled], [ContentCount], [ViewCountType], [DisplayOrder], [DateCreated], [Tags], [BackColor], [Color], [Url], [Icon], [UserId]) VALUES (81, 2, N'小狗', N'下详细', 80, N',42,80', 1, 2, 1, 0, 0, 81, CAST(N'2018-04-27T15:59:38.157' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'd540d508-e2ff-4f26-96c8-370176a2b44d')
GO
INSERT [dbo].[Item_Catalog] ([Id], [ItemId], [Name], [Description], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled], [ContentCount], [ViewCountType], [DisplayOrder], [DateCreated], [Tags], [BackColor], [Color], [Url], [Icon], [UserId]) VALUES (82, 2, N'嘻嘻嘻', N'asd', 81, N',42,80,81', 0, 3, 1, 0, 0, 82, CAST(N'2018-04-27T17:39:31.043' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'd540d508-e2ff-4f26-96c8-370176a2b44d')
GO
INSERT [dbo].[Item_Catalog] ([Id], [ItemId], [Name], [Description], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled], [ContentCount], [ViewCountType], [DisplayOrder], [DateCreated], [Tags], [BackColor], [Color], [Url], [Icon], [UserId]) VALUES (90, 2, N'XIAOMA', N'AA', 79, N',42,79', 0, 2, 1, 0, 0, 90, CAST(N'2018-04-28T10:13:02.473' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'd540d508-e2ff-4f26-96c8-370176a2b44d')
GO
INSERT [dbo].[Item_Catalog] ([Id], [ItemId], [Name], [Description], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled], [ContentCount], [ViewCountType], [DisplayOrder], [DateCreated], [Tags], [BackColor], [Color], [Url], [Icon], [UserId]) VALUES (92, 2, N'321', N'321', 43, N'0,43', 0, 1, 1, 0, 0, 92, CAST(N'2018-04-28T10:19:37.360' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'd540d508-e2ff-4f26-96c8-370176a2b44d')
GO
INSERT [dbo].[Item_Catalog] ([Id], [ItemId], [Name], [Description], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled], [ContentCount], [ViewCountType], [DisplayOrder], [DateCreated], [Tags], [BackColor], [Color], [Url], [Icon], [UserId]) VALUES (93, 2, N'123', N'123', 43, N'0,43', 1, 1, 1, 0, 0, 93, CAST(N'2018-04-28T10:19:44.757' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'd540d508-e2ff-4f26-96c8-370176a2b44d')
GO
INSERT [dbo].[Item_Catalog] ([Id], [ItemId], [Name], [Description], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled], [ContentCount], [ViewCountType], [DisplayOrder], [DateCreated], [Tags], [BackColor], [Color], [Url], [Icon], [UserId]) VALUES (95, 2, N'22', N'22', 93, N'0,43,93', 0, 2, 1, 0, 0, 95, CAST(N'2018-04-28T10:20:05.233' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'd540d508-e2ff-4f26-96c8-370176a2b44d')
GO
INSERT [dbo].[Item_Catalog] ([Id], [ItemId], [Name], [Description], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled], [ContentCount], [ViewCountType], [DisplayOrder], [DateCreated], [Tags], [BackColor], [Color], [Url], [Icon], [UserId]) VALUES (96, 3, N'3-1', N'13', 0, NULL, 0, 0, 1, 0, 0, 96, CAST(N'2018-05-02T14:41:35.010' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'd540d508-e2ff-4f26-96c8-370176a2b44d')
GO
INSERT [dbo].[Item_Catalog] ([Id], [ItemId], [Name], [Description], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled], [ContentCount], [ViewCountType], [DisplayOrder], [DateCreated], [Tags], [BackColor], [Color], [Url], [Icon], [UserId]) VALUES (97, 3, N'3-2', N'31', 0, N'', 1, 0, 1, 0, 0, 97, CAST(N'2018-05-02T14:41:52.537' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'd540d508-e2ff-4f26-96c8-370176a2b44d')
GO
INSERT [dbo].[Item_Catalog] ([Id], [ItemId], [Name], [Description], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled], [ContentCount], [ViewCountType], [DisplayOrder], [DateCreated], [Tags], [BackColor], [Color], [Url], [Icon], [UserId]) VALUES (98, 3, N'3-2-1', N'321', 97, N',97', 0, 1, 1, 0, 0, 98, CAST(N'2018-05-02T14:42:06.317' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'd540d508-e2ff-4f26-96c8-370176a2b44d')
GO
SET IDENTITY_INSERT [dbo].[Item_Catalog] OFF
GO
SET IDENTITY_INSERT [dbo].[Item_Items] ON 
GO
INSERT [dbo].[Item_Items] ([Id], [Name], [Description], [UserId], [Password], [LastUpdateTime], [DateCreated], [DisplayOrder], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled]) VALUES (2, N'1', N'1', NULL, NULL, CAST(N'2018-03-11T13:14:12.490' AS DateTime), CAST(N'2018-03-11T13:14:12.490' AS DateTime), 0, 0, NULL, 0, 0, 1)
GO
INSERT [dbo].[Item_Items] ([Id], [Name], [Description], [UserId], [Password], [LastUpdateTime], [DateCreated], [DisplayOrder], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled]) VALUES (3, N'21', N'4

1





33', NULL, NULL, CAST(N'2018-04-19T13:57:01.953' AS DateTime), CAST(N'2018-04-19T13:57:01.953' AS DateTime), 0, 0, NULL, 0, 0, 1)
GO
INSERT [dbo].[Item_Items] ([Id], [Name], [Description], [UserId], [Password], [LastUpdateTime], [DateCreated], [DisplayOrder], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled]) VALUES (4, N'3', N'33333333333', NULL, NULL, CAST(N'2018-03-12T22:32:35.317' AS DateTime), CAST(N'2018-03-12T22:32:35.317' AS DateTime), 0, 0, NULL, 0, 0, 1)
GO
INSERT [dbo].[Item_Items] ([Id], [Name], [Description], [UserId], [Password], [LastUpdateTime], [DateCreated], [DisplayOrder], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled]) VALUES (5, N'4', N'我是项目描述：4', NULL, NULL, CAST(N'2018-03-12T22:32:39.370' AS DateTime), CAST(N'2018-03-12T22:32:39.370' AS DateTime), 0, 0, NULL, 0, 0, 1)
GO
INSERT [dbo].[Item_Items] ([Id], [Name], [Description], [UserId], [Password], [LastUpdateTime], [DateCreated], [DisplayOrder], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled]) VALUES (6, N'5', N'我是项目描述：5', NULL, NULL, CAST(N'2018-03-12T22:32:43.420' AS DateTime), CAST(N'2018-03-12T22:32:43.420' AS DateTime), 0, 0, NULL, 0, 0, 1)
GO
INSERT [dbo].[Item_Items] ([Id], [Name], [Description], [UserId], [Password], [LastUpdateTime], [DateCreated], [DisplayOrder], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled]) VALUES (18, N'6', N'5', NULL, NULL, CAST(N'2018-03-12T22:32:48.457' AS DateTime), CAST(N'2018-03-12T22:32:48.457' AS DateTime), 0, 0, NULL, 0, 0, 1)
GO
INSERT [dbo].[Item_Items] ([Id], [Name], [Description], [UserId], [Password], [LastUpdateTime], [DateCreated], [DisplayOrder], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled]) VALUES (19, N'7', N'7', NULL, NULL, CAST(N'2018-03-12T22:32:55.493' AS DateTime), CAST(N'2018-03-12T22:32:55.493' AS DateTime), 19, 0, NULL, 0, 0, 1)
GO
INSERT [dbo].[Item_Items] ([Id], [Name], [Description], [UserId], [Password], [LastUpdateTime], [DateCreated], [DisplayOrder], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled]) VALUES (20, N'2', N'2', NULL, NULL, CAST(N'2018-04-19T13:57:50.597' AS DateTime), CAST(N'2018-04-19T13:57:50.597' AS DateTime), 20, 0, NULL, 0, 0, 1)
GO
INSERT [dbo].[Item_Items] ([Id], [Name], [Description], [UserId], [Password], [LastUpdateTime], [DateCreated], [DisplayOrder], [ParentId], [ParentIdList], [ChildCount], [Depth], [Enabled]) VALUES (21, N'11', N'11', NULL, NULL, CAST(N'2018-04-19T13:58:30.940' AS DateTime), CAST(N'2018-04-19T13:58:30.940' AS DateTime), 21, 0, NULL, 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Item_Items] OFF
GO
SET IDENTITY_INSERT [dbo].[Item_Posts] ON 
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (2, 43, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-43', N'', N'测试内容啊啊啊啊43', 0, NULL, CAST(N'2018-05-04T18:06:56.480' AS DateTime), 2)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (3, 43, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-43', N'', N'测试内容啊啊啊啊43', 0, NULL, CAST(N'2018-05-04T18:07:01.250' AS DateTime), 3)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (4, 43, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-43', N'', N'测试内容啊啊啊啊43', 0, NULL, CAST(N'2018-05-04T18:07:02.333' AS DateTime), 4)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (5, 43, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-43', N'', N'测试内容啊啊啊啊43', 0, NULL, CAST(N'2018-05-04T18:07:03.273' AS DateTime), 5)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (6, 43, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-43', N'', N'测试内容啊啊啊啊43', 0, NULL, CAST(N'2018-05-04T18:07:03.923' AS DateTime), 6)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (7, 43, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-43', N'', N'测试内容啊啊啊啊43', 0, NULL, CAST(N'2018-05-04T18:07:04.770' AS DateTime), 7)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (8, 43, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-43', N'', N'测试内容啊啊啊啊43', 0, NULL, CAST(N'2018-05-04T18:07:05.287' AS DateTime), 8)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (9, 43, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-43', N'', N'测试内容啊啊啊啊43', 0, NULL, CAST(N'2018-05-04T18:07:05.360' AS DateTime), 9)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (10, 43, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-43', N'', N'测试内容啊啊啊啊43', 0, NULL, CAST(N'2018-05-04T18:07:05.683' AS DateTime), 10)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (11, 43, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-43', N'', N'测试内容啊啊啊啊43', 0, NULL, CAST(N'2018-05-04T18:07:06.000' AS DateTime), 11)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (12, 43, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-43', N'', N'测试内容啊啊啊啊43', 0, NULL, CAST(N'2018-05-04T18:07:06.350' AS DateTime), 12)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (13, 43, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-43', N'', N'测试内容啊啊啊啊43', 0, NULL, CAST(N'2018-05-04T18:08:48.007' AS DateTime), 13)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (14, 43, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-43', N'', N'测试内容啊啊啊啊43', 0, NULL, CAST(N'2018-05-04T18:08:57.583' AS DateTime), 14)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (15, 43, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-43', N'', N'测试内容啊啊啊啊43', 0, NULL, CAST(N'2018-05-04T18:08:59.590' AS DateTime), 15)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (16, 43, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-43', N'', N'测试内容啊啊啊啊43', 0, NULL, CAST(N'2018-05-04T18:09:31.017' AS DateTime), 16)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (17, 43, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-43', N'', N'测试内容啊啊啊啊43', 0, NULL, CAST(N'2018-05-04T18:11:08.917' AS DateTime), 17)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (18, 43, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-43', N'', N'测试内容啊啊啊啊43', 0, NULL, CAST(N'2018-05-04T18:11:25.320' AS DateTime), 18)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (19, 43, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-43', N'', N'测试内容啊啊啊啊43', 0, NULL, CAST(N'2018-05-04T18:11:37.433' AS DateTime), 19)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (20, 81, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-81', N'', N'测试内容啊啊啊啊81', 0, NULL, CAST(N'2019-01-13T10:36:40.913' AS DateTime), 20)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (21, 81, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-81', N'', N'测试内容啊啊啊啊81', 0, NULL, CAST(N'2019-07-07T10:36:47.633' AS DateTime), 21)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (22, 81, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-81', N'', N'测试内容啊啊啊啊81', 0, NULL, CAST(N'2020-08-05T10:40:42.577' AS DateTime), 22)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (23, 81, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-81', N'', N'测试内容啊啊啊啊81', 0, NULL, CAST(N'2018-12-12T10:43:19.103' AS DateTime), 23)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (24, 81, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-81', N'', N'测试内容啊啊啊啊81', 0, NULL, CAST(N'2020-01-10T10:43:20.050' AS DateTime), 24)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (25, 81, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-81', N'', N'测试内容啊啊啊啊81', 0, NULL, CAST(N'2019-09-29T10:48:47.793' AS DateTime), 25)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (26, 81, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-81', N'', N'测试内容啊啊啊啊81', 0, NULL, CAST(N'2019-11-04T10:48:51.977' AS DateTime), 26)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (27, 81, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-81', N'', N'测试内容啊啊啊啊81', 0, NULL, CAST(N'2018-06-20T10:48:53.330' AS DateTime), 27)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (28, 81, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-81', N'', N'测试内容啊啊啊啊81', 0, NULL, CAST(N'2019-06-25T10:48:54.447' AS DateTime), 28)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (29, 81, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-81', N'', N'测试内容啊啊啊啊81', 0, NULL, CAST(N'2019-10-25T10:48:55.323' AS DateTime), 29)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (30, 81, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-81', N'', N'测试内容啊啊啊啊81', 0, NULL, CAST(N'2020-01-20T10:48:56.457' AS DateTime), 30)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (31, 81, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-81', N'', N'测试内容啊啊啊啊81', 0, NULL, CAST(N'2019-01-09T10:48:57.170' AS DateTime), 31)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (32, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2020-08-14T16:18:55.673' AS DateTime), 32)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (33, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2018-09-29T16:22:20.043' AS DateTime), 33)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (34, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2020-09-13T16:27:15.273' AS DateTime), 34)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (35, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2020-09-22T16:28:56.477' AS DateTime), 35)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (36, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2020-06-02T16:29:09.493' AS DateTime), 36)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (37, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2019-12-07T16:29:09.927' AS DateTime), 37)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (38, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2019-12-30T16:29:46.580' AS DateTime), 38)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (39, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2019-07-23T16:32:08.540' AS DateTime), 39)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (40, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2021-01-26T16:36:25.767' AS DateTime), 40)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (41, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2019-03-02T16:36:43.130' AS DateTime), 41)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (42, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2018-06-07T16:36:58.773' AS DateTime), 42)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (43, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2018-07-08T16:37:00.020' AS DateTime), 43)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (44, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2019-01-02T16:37:00.780' AS DateTime), 44)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (45, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2019-04-17T16:37:01.197' AS DateTime), 45)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (46, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2020-01-27T16:37:28.473' AS DateTime), 46)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (47, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2018-07-18T16:37:41.530' AS DateTime), 47)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (48, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2019-04-07T16:38:21.463' AS DateTime), 48)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (49, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2019-08-20T16:56:40.800' AS DateTime), 49)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (50, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2019-04-07T16:56:43.583' AS DateTime), 50)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (51, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2020-07-12T17:05:35.620' AS DateTime), 51)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (52, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2020-02-17T17:05:37.300' AS DateTime), 52)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (53, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2018-08-05T17:05:39.083' AS DateTime), 53)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (54, 42, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-42', N'', N'测试内容啊啊啊啊42', 0, NULL, CAST(N'2020-02-09T18:14:49.243' AS DateTime), 54)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (55, 0, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-0', N'', N'测试内容啊啊啊啊0', 0, NULL, CAST(N'2018-06-27T12:04:15.117' AS DateTime), 55)
GO
INSERT [dbo].[Item_Posts] ([Id], [CatalogId], [UserId], [Title], [HtmlContentPath], [Content], [ViewCount], [CreatedIP], [DateCreated], [DisplayOrder]) VALUES (56, 0, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'测试-0', N'', N'测试内容啊啊啊啊0', 0, NULL, CAST(N'2019-11-17T12:13:42.440' AS DateTime), 56)
GO
SET IDENTITY_INSERT [dbo].[Item_Posts] OFF
GO
SET IDENTITY_INSERT [dbo].[Item_UsersLogin] ON 
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (1, N'd540d508-e2ff-4f26-96c8-370176a2b44d', N'0', NULL, N'', N'', NULL, 0, 0, N'k3a74RgaAYSn0VQ4WaZokXtA/TXSEySdZrFim9Ihbmg=', 2, N'测试账号_0', N'测试账号_0', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:53:59.397' AS DateTime), CAST(N'2018-02-19T22:53:59.680' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:53:59.680' AS DateTime), 1)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (2, N'040110a9-3c69-48cf-89c5-cafb43aec353', N'1', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_1', N'测试账号_1', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:53:59.510' AS DateTime), CAST(N'2018-02-19T22:53:59.807' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:53:59.807' AS DateTime), 2)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (3, N'dd046908-e818-467e-9bca-05d13c48f167', N'2', NULL, N'', N'', NULL, 0, 0, N'OYLBB/m3Rn706hc9ZupQ9r0xFYuhcRDdpVqXus26vMo=', 2, N'测试账号_2', N'测试账号_2', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:53:59.610' AS DateTime), CAST(N'2018-02-19T22:53:59.910' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:53:59.910' AS DateTime), 3)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (4, N'13ac52f8-f476-481b-b582-db8a2f65651f', N'3', NULL, N'', N'', NULL, 0, 0, N'e27uWclROYdfNI/8HE+S7n8iLT8ZhzOvoS3Svf1gXKI=', 2, N'测试账号_3', N'测试账号_3', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:53:59.720' AS DateTime), CAST(N'2018-02-19T22:54:00.020' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.020' AS DateTime), 4)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (5, N'e80f31fc-11e9-41a8-9036-42308c9b87a4', N'4', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_4', N'测试账号_4', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:53:59.820' AS DateTime), CAST(N'2018-02-19T22:54:00.120' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.120' AS DateTime), 5)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (6, N'4692b984-9865-45f4-a159-08cc4d5f7790', N'5', NULL, N'', N'', NULL, 0, 0, N'LkqFtY/sUGSsTMWsGzc6TJ3NcVPQdsVHT043kg6Vctw=', 2, N'测试账号_5', N'测试账号_5', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:53:59.930' AS DateTime), CAST(N'2018-02-19T22:54:00.223' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.223' AS DateTime), 6)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (7, N'd2069807-0a0e-468d-8168-38fb1ddd3f7a', N'6', NULL, N'', N'', NULL, 0, 0, N'ACFCB8B5DA67301D4F08E413CEA0D572', 1, N'测试账号_6', N'测试账号_6', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.033' AS DateTime), CAST(N'2018-02-19T22:54:00.333' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.333' AS DateTime), 7)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (8, N'5584e74c-e1e6-4c13-8403-5dcfa142dffc', N'7', NULL, N'', N'', NULL, 0, 0, N'C6BAFD35A867FE66A2D3EF8428FFDB8F', 1, N'测试账号_7', N'测试账号_7', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.137' AS DateTime), CAST(N'2018-02-19T22:54:00.437' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.437' AS DateTime), 8)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (9, N'f7758ecc-62c5-48bf-a827-f2435df46f9e', N'8', NULL, N'', N'', NULL, 0, 0, N'2101FC13BFA65B73BD4F5887A680820F', 1, N'测试账号_8', N'测试账号_8', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.240' AS DateTime), CAST(N'2018-02-19T22:54:00.540' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.540' AS DateTime), 9)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (10, N'7c23f6d9-6634-4880-af4c-5eefd2ea1f60', N'9', NULL, N'', N'', NULL, 0, 0, N'4B89F6E6C84D0A041E31A89B6E5DAF8E', 1, N'测试账号_9', N'测试账号_9', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.343' AS DateTime), CAST(N'2018-02-19T22:54:00.643' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.643' AS DateTime), 10)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (11, N'30d4171b-9729-438e-8d97-6c11114edcbd', N'10', NULL, N'', N'', NULL, 0, 0, N'FBFC1DCF08113228CCD947BC4D6D3097', 1, N'测试账号_10', N'测试账号_10', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.450' AS DateTime), CAST(N'2018-02-19T22:54:00.750' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.750' AS DateTime), 11)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (12, N'a1c03eef-4e3d-46be-833f-21904912a629', N'11', NULL, N'', N'', NULL, 0, 0, N'DB6A69899C158385BFF5A29FF28DA475', 1, N'测试账号_11', N'测试账号_11', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.553' AS DateTime), CAST(N'2018-02-19T22:54:00.853' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.853' AS DateTime), 12)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (13, N'6896d100-d611-45e2-83ec-b5416b511de1', N'12', NULL, N'', N'', NULL, 0, 0, N'J7mVuPZZ1OzUWmf73gIoDLfZ+IzdnlgY4d4nEifAb34=', 2, N'测试账号_12', N'测试账号_12', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.657' AS DateTime), CAST(N'2018-02-19T22:54:00.953' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.953' AS DateTime), 13)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (14, N'2fe3dbb0-ba60-4543-8fa8-4e4400479c4b', N'13', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_13', N'测试账号_13', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.760' AS DateTime), CAST(N'2018-02-19T22:54:01.060' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:01.060' AS DateTime), 14)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (15, N'22479aed-5beb-44da-a4bb-9b23d44ac144', N'14', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_14', N'测试账号_14', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.867' AS DateTime), CAST(N'2018-02-19T22:54:01.167' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:01.167' AS DateTime), 15)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (16, N'27d9b5ac-ded0-45a1-b73c-542a5b971d80', N'15', NULL, N'', N'', NULL, 0, 0, N'89saEpGBjDMoQT6OrVzY34AiFE8RAwmBWo1+74l5kpU=', 2, N'测试账号_15', N'测试账号_15', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:00.973' AS DateTime), CAST(N'2018-02-19T22:54:01.273' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:01.273' AS DateTime), 16)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (17, N'a8850450-edd8-4eb9-904b-b306c8402487', N'16', NULL, N'', N'', NULL, 0, 0, N'C8A1FF4890B83C48349D42AB46314B7E', 1, N'测试账号_16', N'测试账号_16', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:01.080' AS DateTime), CAST(N'2018-02-19T22:54:01.377' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:01.377' AS DateTime), 17)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (18, N'8d648e49-0f56-4440-b154-e2d3a67e9ae0', N'17', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_17', N'测试账号_17', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:01.187' AS DateTime), CAST(N'2018-02-19T22:54:01.483' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:01.483' AS DateTime), 18)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (19, N'ebb23069-643d-4af6-aa4e-6f6f6fb9e725', N'18', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_18', N'测试账号_18', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:01.297' AS DateTime), CAST(N'2018-02-19T22:54:01.593' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:01.593' AS DateTime), 19)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (20, N'7cc83bbc-8120-4b20-8c95-7e35921b5c96', N'19', NULL, N'', N'', NULL, 0, 0, N'668B24D6C47B6C831B9BB8CE484C72FC', 1, N'测试账号_19', N'测试账号_19', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:01.400' AS DateTime), CAST(N'2018-02-19T22:54:01.700' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:01.700' AS DateTime), 20)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (21, N'1411699a-963c-47c2-9715-d49f0c9bdc0e', N'20', NULL, N'', N'', NULL, 0, 0, N'rRr6QmxQRG5DU/abm1ozh4FjXtmxepTUXRvyovRNhRE=', 2, N'测试账号_20', N'测试账号_20', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:01.510' AS DateTime), CAST(N'2018-02-19T22:54:01.807' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:01.807' AS DateTime), 21)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (22, N'cae44368-4cae-4e53-8c95-7c91de60e7c3', N'21', NULL, N'', N'', NULL, 0, 0, N'9FSgSOxPG6tpL8FYbzh/3qCO2Wk8qoRBq7b7V65Tzxo=', 2, N'测试账号_21', N'测试账号_21', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:01.620' AS DateTime), CAST(N'2018-02-19T22:54:01.920' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:01.920' AS DateTime), 22)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (23, N'8507085a-1a1e-4bd2-999b-9de638109255', N'22', NULL, N'', N'', NULL, 0, 0, N'nmOkfrBx/wr46AobA34N6H9azgGeeQGbBUuatFLu+Z0=', 2, N'测试账号_22', N'测试账号_22', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:01.723' AS DateTime), CAST(N'2018-02-19T22:54:02.020' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.020' AS DateTime), 23)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (24, N'1870ecdd-bcd3-4385-8776-95922622f66f', N'23', NULL, N'', N'', NULL, 0, 0, N'UJpF0cnEufwqVv+J6w260cN5JM9OTiChG42z8CSVpEw=', 2, N'测试账号_23', N'测试账号_23', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:01.823' AS DateTime), CAST(N'2018-02-19T22:54:02.123' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.123' AS DateTime), 24)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (25, N'a16a47d0-70cf-4217-a643-5ebb184e5771', N'24', NULL, N'', N'', NULL, 0, 0, N'yFCMMueR2PB4xOf049QtANiM14aP80/qgWUlOsA8bbM=', 2, N'测试账号_24', N'测试账号_24', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:01.930' AS DateTime), CAST(N'2018-02-19T22:54:02.227' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.227' AS DateTime), 25)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (26, N'9902b37e-b8e8-4d9f-a399-ff5474d2554c', N'25', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_25', N'测试账号_25', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.033' AS DateTime), CAST(N'2018-02-19T22:54:02.333' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.333' AS DateTime), 26)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (27, N'28d5d808-a11c-447c-a3b5-42fceadd0c85', N'26', NULL, N'', N'', NULL, 0, 0, N'7AE69B02C6D996B9A54DAC5ECB9C34E8', 1, N'测试账号_26', N'测试账号_26', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.170' AS DateTime), CAST(N'2018-02-19T22:54:02.467' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.467' AS DateTime), 27)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (28, N'cb263466-97c5-4d32-a567-d2e79c2e4b73', N'27', NULL, N'', N'', NULL, 0, 0, N'1E04BF6BE9652069A988130AA8B1B415', 1, N'测试账号_27', N'测试账号_27', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.273' AS DateTime), CAST(N'2018-02-19T22:54:02.573' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.573' AS DateTime), 28)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (29, N'027f4533-728f-46f6-b226-2d42af57e835', N'28', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_28', N'测试账号_28', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.373' AS DateTime), CAST(N'2018-02-19T22:54:02.673' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.673' AS DateTime), 29)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (30, N'1c763404-d547-4d5b-94ef-c8fbf3c54e80', N'29', NULL, N'', N'', NULL, 0, 0, N'66FB1C8E28FF9D7FDB8FA3028CDDF6D0', 1, N'测试账号_29', N'测试账号_29', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.480' AS DateTime), CAST(N'2018-02-19T22:54:02.777' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.777' AS DateTime), 30)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (31, N'3dcdcc35-7d3c-4fd2-a563-aade02eee4b0', N'30', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_30', N'测试账号_30', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.580' AS DateTime), CAST(N'2018-02-19T22:54:02.880' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.880' AS DateTime), 31)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (32, N'32621a0c-b0f1-4cc4-9ee2-f87eb3574970', N'31', NULL, N'', N'', NULL, 0, 0, N'D929F31C5CA6227B3BE891A5CDBA0D1B', 1, N'测试账号_31', N'测试账号_31', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.683' AS DateTime), CAST(N'2018-02-19T22:54:02.983' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.983' AS DateTime), 32)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (33, N'76ede5f3-93c7-4a42-8adf-7346d469210d', N'32', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_32', N'测试账号_32', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.793' AS DateTime), CAST(N'2018-02-19T22:54:03.090' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.090' AS DateTime), 33)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (34, N'6e924ddb-1273-4f33-b968-ae72ad1ddeb9', N'33', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_33', N'测试账号_33', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:02.897' AS DateTime), CAST(N'2018-02-19T22:54:03.193' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.193' AS DateTime), 34)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (35, N'194c1b5f-2d9f-42d1-865f-645f6d370584', N'34', NULL, N'', N'', NULL, 0, 0, N'DFAB225FAB75A237CAB0935B3309DA15', 1, N'测试账号_34', N'测试账号_34', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.003' AS DateTime), CAST(N'2018-02-19T22:54:03.300' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.300' AS DateTime), 35)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (36, N'c7f609ff-5e65-4be3-94a5-581d60a5baea', N'35', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_35', N'测试账号_35', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.110' AS DateTime), CAST(N'2018-02-19T22:54:03.407' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.407' AS DateTime), 36)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (37, N'49de8b44-9af9-428e-a54a-7c04dd6a03bd', N'36', NULL, N'', N'', NULL, 0, 0, N'E3B4BC3B0EF64BF87457E9D3AB2796BA', 1, N'测试账号_36', N'测试账号_36', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.213' AS DateTime), CAST(N'2018-02-19T22:54:03.513' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.513' AS DateTime), 37)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (38, N'ae0828e3-3365-44b0-bdcf-44fd59a810cd', N'37', NULL, N'', N'', NULL, 0, 0, N'B57F0C975DB0AA08A7126705081C7444', 1, N'测试账号_37', N'测试账号_37', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.320' AS DateTime), CAST(N'2018-02-19T22:54:03.613' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.613' AS DateTime), 38)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (39, N'0e6b8418-fed7-4366-9746-0b88cb9a8472', N'38', NULL, N'', N'', NULL, 0, 0, N'E528EA96CE0DD9C674022F78E2088880', 1, N'测试账号_38', N'测试账号_38', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.420' AS DateTime), CAST(N'2018-02-19T22:54:03.717' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.717' AS DateTime), 39)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (40, N'737a1604-bf71-45c5-97a5-e0019e9b7b00', N'39', NULL, N'', N'', NULL, 0, 0, N'543EDE6445D26FFF08DB4561A9302CE3', 1, N'测试账号_39', N'测试账号_39', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.520' AS DateTime), CAST(N'2018-02-19T22:54:03.820' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.820' AS DateTime), 40)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (41, N'c2299619-4f34-4883-86b7-cb8c80e30d0b', N'40', NULL, N'', N'', NULL, 0, 0, N'j2pY/0quWBWFCRUBdpkIbw0WGxD8PjGxCeWv6EqAwCM=', 2, N'测试账号_40', N'测试账号_40', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.623' AS DateTime), CAST(N'2018-02-19T22:54:03.920' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.920' AS DateTime), 41)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (42, N'8a1c1e51-6521-49f5-b53f-fb948f0241f0', N'41', NULL, N'', N'', NULL, 0, 0, N'AD87F1A76A1F05BAEE91B7F895291FA5', 1, N'测试账号_41', N'测试账号_41', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.723' AS DateTime), CAST(N'2018-02-19T22:54:04.023' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.023' AS DateTime), 42)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (43, N'35a85fc9-c73f-41bb-a3a9-bfe73e94f9c8', N'42', NULL, N'', N'', NULL, 0, 0, N'SQzEglgbobgUnRin09wiw8cq6srcbSm+Sd7h11dqpSY=', 2, N'测试账号_42', N'测试账号_42', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.827' AS DateTime), CAST(N'2018-02-19T22:54:04.123' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.123' AS DateTime), 43)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (44, N'24baac00-1eee-4036-996b-9fc425b6e3e9', N'43', NULL, N'', N'', NULL, 0, 0, N's+8HoVpgr2IBLP/G8J5dGY4px4ole/YLOscyaXelbUI=', 2, N'测试账号_43', N'测试账号_43', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:03.930' AS DateTime), CAST(N'2018-02-19T22:54:04.230' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.230' AS DateTime), 44)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (45, N'0f475a32-09e8-45d7-8dc6-54901ce17cd9', N'44', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_44', N'测试账号_44', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.033' AS DateTime), CAST(N'2018-02-19T22:54:04.333' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.333' AS DateTime), 45)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (46, N'f56dba85-ecdd-4255-83cd-369704398c95', N'45', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_45', N'测试账号_45', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.137' AS DateTime), CAST(N'2018-02-19T22:54:04.433' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.433' AS DateTime), 46)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (47, N'2035ac76-f856-4c3b-bb9b-91b3abaf7a24', N'46', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_46', N'测试账号_46', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.243' AS DateTime), CAST(N'2018-02-19T22:54:04.540' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.540' AS DateTime), 47)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (48, N'b4e8ecf2-81e0-4edc-a6b6-9c2791302940', N'47', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_47', N'测试账号_47', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.347' AS DateTime), CAST(N'2018-02-19T22:54:04.643' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.643' AS DateTime), 48)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (49, N'd33bbc0b-255c-4924-a642-7f3c1ca4ad67', N'48', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_48', N'测试账号_48', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.450' AS DateTime), CAST(N'2018-02-19T22:54:04.747' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.747' AS DateTime), 49)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (50, N'24ba1172-9e62-4f34-a464-4be2a701f2e7', N'49', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_49', N'测试账号_49', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.557' AS DateTime), CAST(N'2018-02-19T22:54:04.853' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.853' AS DateTime), 50)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (51, N'0137e459-581b-42fd-b785-eb7e1f20ddcc', N'50', NULL, N'', N'', NULL, 0, 0, N'067D5A9837947976E22E378479369442', 1, N'测试账号_50', N'测试账号_50', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.657' AS DateTime), CAST(N'2018-02-19T22:54:04.953' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.953' AS DateTime), 51)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (52, N'535c1bdb-baa0-4e6e-9af8-5a7d5812af06', N'51', NULL, N'', N'', NULL, 0, 0, N'Jybu5AsjSWMLY17BeE0EutqBmWcbhsQ1dmw+czey8cc=', 2, N'测试账号_51', N'测试账号_51', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.760' AS DateTime), CAST(N'2018-02-19T22:54:05.057' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.057' AS DateTime), 52)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (53, N'0d73138f-0662-41db-936d-5f9ddcd9b6fa', N'52', NULL, N'', N'', NULL, 0, 0, N'lQVoM7q9/a3MOzATgiy0lXi1SD3FNISy18i1lXxprw0=', 2, N'测试账号_52', N'测试账号_52', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.860' AS DateTime), CAST(N'2018-02-19T22:54:05.160' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.160' AS DateTime), 53)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (54, N'0248175b-ca27-49c6-ab1a-128789efd352', N'53', NULL, N'', N'', NULL, 0, 0, N'TZm20rjqYlY2nBhu/rXQQrisCM/60infoghWa1B6QzE=', 2, N'测试账号_53', N'测试账号_53', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:04.963' AS DateTime), CAST(N'2018-02-19T22:54:05.260' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.260' AS DateTime), 54)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (55, N'3d720be4-b5bf-482c-b4fe-a84b54dce4d5', N'54', NULL, N'', N'', NULL, 0, 0, N'vwJeZrJc4cwDMUvbHDEw/AVTSIAFiHMA0lYtgP/2NLE=', 2, N'测试账号_54', N'测试账号_54', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.067' AS DateTime), CAST(N'2018-02-19T22:54:05.367' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.367' AS DateTime), 55)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (56, N'600645cc-e6b7-430c-bbae-55c4f952c928', N'55', NULL, N'', N'', NULL, 0, 0, N'UyH8ba21Bjj6H663e3fHgI+okGZMtdVjrHt1q/I8g3I=', 2, N'测试账号_55', N'测试账号_55', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.170' AS DateTime), CAST(N'2018-02-19T22:54:05.467' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.467' AS DateTime), 56)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (57, N'64be3b0a-06ba-48b2-81e5-590856f7b18b', N'56', NULL, N'', N'', NULL, 0, 0, N'GvRjyQyDPQbJnKfHn6gUqFJVZVVJMIAK/Sv7sUfo8o8=', 2, N'测试账号_56', N'测试账号_56', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.270' AS DateTime), CAST(N'2018-02-19T22:54:05.570' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.570' AS DateTime), 57)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (58, N'ddd36ef3-35c8-4a29-8216-5f2056fcd327', N'57', NULL, N'', N'', NULL, 0, 0, N'JXhaBrWKdOLTf4OhpRTvEGiduNDne1mD7JWOvfy+vRM=', 2, N'测试账号_57', N'测试账号_57', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.370' AS DateTime), CAST(N'2018-02-19T22:54:05.670' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.670' AS DateTime), 58)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (59, N'2b0672e4-f02c-4049-af78-bcb3ea59d286', N'58', NULL, N'', N'', NULL, 0, 0, N'rx8V/EulUrw+buef3NOnQk+ABFrDgkcon0WEq5TCM2U=', 2, N'测试账号_58', N'测试账号_58', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.477' AS DateTime), CAST(N'2018-02-19T22:54:05.777' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.777' AS DateTime), 59)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (60, N'8b1a13e0-59eb-4ecb-ab48-420f67797d48', N'59', NULL, N'', N'', NULL, 0, 0, N'C7B3A5FB8BC98F9A174A2F54A46E645E', 1, N'测试账号_59', N'测试账号_59', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.587' AS DateTime), CAST(N'2018-02-19T22:54:05.887' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.887' AS DateTime), 60)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (61, N'197a5c62-3aff-4161-8408-9c29d01b81ae', N'60', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_60', N'测试账号_60', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.690' AS DateTime), CAST(N'2018-02-19T22:54:05.990' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.990' AS DateTime), 61)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (62, N'43257f49-9ab5-49b4-a139-ec991c051b30', N'61', NULL, N'', N'', NULL, 0, 0, N'FBE7E316EBD5804548A3F366A9F3BD8B', 1, N'测试账号_61', N'测试账号_61', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.793' AS DateTime), CAST(N'2018-02-19T22:54:06.093' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.093' AS DateTime), 62)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (63, N'ba9786fa-98a6-4496-a784-fae516614bbb', N'62', NULL, N'', N'', NULL, 0, 0, N'D3E003BD89D8C6C6C3731713DE22FC6B', 1, N'测试账号_62', N'测试账号_62', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:05.900' AS DateTime), CAST(N'2018-02-19T22:54:06.200' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.200' AS DateTime), 63)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (64, N'eac5f996-dbf6-46e3-99cc-25757513e04c', N'63', NULL, N'', N'', NULL, 0, 0, N'juEBjqqvwUUEKnO3c6pjq9WHsJSH2ZqpfQiVzn025vY=', 2, N'测试账号_63', N'测试账号_63', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.003' AS DateTime), CAST(N'2018-02-19T22:54:06.303' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.303' AS DateTime), 64)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (65, N'5846762e-0d2a-4c6b-ab91-4af3c975b2f9', N'64', NULL, N'', N'', NULL, 0, 0, N'4B25B63DAAC9AB2EEAC6C30D62C06386', 1, N'测试账号_64', N'测试账号_64', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.107' AS DateTime), CAST(N'2018-02-19T22:54:06.407' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.407' AS DateTime), 65)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (66, N'a8f40376-02ce-4371-9c1f-9a6cab5adcb6', N'65', NULL, N'', N'', NULL, 0, 0, N'4UXmjKggcWNvW3lYB0xj6Pm6m+k2bR93Z/9KCa8z76U=', 2, N'测试账号_65', N'测试账号_65', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.210' AS DateTime), CAST(N'2018-02-19T22:54:06.510' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.510' AS DateTime), 66)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (67, N'1a4f7163-61b5-4bcd-b974-e912351e4daf', N'66', NULL, N'', N'', NULL, 0, 0, N'+nicWKoNlKwCPuMIS7aOqJoUgFYWraWJoGFswhTZGEI=', 2, N'测试账号_66', N'测试账号_66', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.327' AS DateTime), CAST(N'2018-02-19T22:54:06.613' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.613' AS DateTime), 67)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (68, N'b5f90ff4-8997-4732-8c37-7ac5fec61c15', N'67', NULL, N'', N'', NULL, 0, 0, N'NeViSXc+qA+JQYqIlp28OL3ONzl8yBHjyZAV1GhqDhc=', 2, N'测试账号_67', N'测试账号_67', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.437' AS DateTime), CAST(N'2018-02-19T22:54:06.733' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.733' AS DateTime), 68)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (69, N'a9517f27-bdb9-4ccb-87d6-a615f2f2c44d', N'68', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_68', N'测试账号_68', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.537' AS DateTime), CAST(N'2018-02-19T22:54:06.833' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.833' AS DateTime), 69)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (70, N'a5830bfa-2871-4c4f-bd47-37b8329dba2a', N'69', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_69', N'测试账号_69', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.640' AS DateTime), CAST(N'2018-02-19T22:54:06.940' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.940' AS DateTime), 70)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (71, N'7d86af6e-8bd5-43e2-96d1-cf327b9387fb', N'70', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_70', N'测试账号_70', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.747' AS DateTime), CAST(N'2018-02-19T22:54:07.043' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.043' AS DateTime), 71)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (72, N'b34a2918-1dcc-4119-bf5a-a669dc1b180f', N'71', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_71', N'测试账号_71', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.850' AS DateTime), CAST(N'2018-02-19T22:54:07.147' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.147' AS DateTime), 72)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (73, N'518c6416-8c22-4531-8493-e6f07685c053', N'72', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_72', N'测试账号_72', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:06.950' AS DateTime), CAST(N'2018-02-19T22:54:07.250' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.250' AS DateTime), 73)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (74, N'ab22835f-6d82-42d1-9a0c-07d0bac216ce', N'73', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_73', N'测试账号_73', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.057' AS DateTime), CAST(N'2018-02-19T22:54:07.353' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.353' AS DateTime), 74)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (75, N'5df96911-b2cf-4543-8585-8c6d0e7dc6f9', N'74', NULL, N'', N'', NULL, 0, 0, N'cIKE/cMh2rVXlK/hMOp3h2dHunL/rh5+aVDqqKcBZ+Q=', 2, N'测试账号_74', N'测试账号_74', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.160' AS DateTime), CAST(N'2018-02-19T22:54:07.460' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.460' AS DateTime), 75)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (76, N'9c348642-a665-44fa-aac1-34ee49f93e0a', N'75', NULL, N'', N'', NULL, 0, 0, N'cKTeOoO6O67t+kq6ITrf92sSTV6CNI02JHFXByyEwNY=', 2, N'测试账号_75', N'测试账号_75', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.260' AS DateTime), CAST(N'2018-02-19T22:54:07.560' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.560' AS DateTime), 76)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (77, N'8eda019a-81c0-42ab-8cf8-ce120f23c23b', N'76', NULL, N'', N'', NULL, 0, 0, N'w0riayTJnqD5ZSQlaKlfs6nHYe0glnL0itZYA2L0s34=', 2, N'测试账号_76', N'测试账号_76', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.363' AS DateTime), CAST(N'2018-02-19T22:54:07.660' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.660' AS DateTime), 77)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (78, N'1fd09956-8f72-42e8-b39f-0af02a364aab', N'77', NULL, N'', N'', NULL, 0, 0, N'y+EhLLW8KiEKjE4CdIhlCp7KiqijdZLxucSrQkdl2vs=', 2, N'测试账号_77', N'测试账号_77', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.467' AS DateTime), CAST(N'2018-02-19T22:54:07.767' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.767' AS DateTime), 78)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (79, N'55f8506c-04c7-4a9c-aaf5-cd390484a2ae', N'78', NULL, N'', N'', NULL, 0, 0, N'I6SJwlOPhOcrbys0p36d/ihI5Ynnh+/l9hcI6EMKjbs=', 2, N'测试账号_78', N'测试账号_78', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.570' AS DateTime), CAST(N'2018-02-19T22:54:07.867' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.867' AS DateTime), 79)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (80, N'c9ce9a5c-2ad3-4ad8-ad55-3065334191eb', N'79', NULL, N'', N'', NULL, 0, 0, N'G5LCeN4AehaSESMAOtY+G6Qq5hoi9cKI68UWGoQn6rc=', 2, N'测试账号_79', N'测试账号_79', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.670' AS DateTime), CAST(N'2018-02-19T22:54:07.970' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.970' AS DateTime), 80)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (81, N'4ac3598c-7a9d-48c9-b6bb-75b7c373beb8', N'80', NULL, N'', N'', NULL, 0, 0, N'BQuGETevgTglYMc7hjek07PqqgGsGYKpjdEqeLdLcnU=', 2, N'测试账号_80', N'测试账号_80', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.773' AS DateTime), CAST(N'2018-02-19T22:54:08.073' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:08.073' AS DateTime), 81)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (82, N'9364543c-68dd-4216-a73e-ecc65a88de5d', N'81', NULL, N'', N'', NULL, 0, 0, N'6C259E212810EAFC0BBD784F5EB76040', 1, N'测试账号_81', N'测试账号_81', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.883' AS DateTime), CAST(N'2018-02-19T22:54:08.180' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:08.180' AS DateTime), 82)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (83, N'585449c3-dd58-4cf0-86c8-3985364e7f26', N'82', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_82', N'测试账号_82', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:07.987' AS DateTime), CAST(N'2018-02-19T22:54:08.283' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:08.283' AS DateTime), 83)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (84, N'e2b88322-5201-4815-a32d-04a9992d2e28', N'83', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_83', N'测试账号_83', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:08.097' AS DateTime), CAST(N'2018-02-19T22:54:08.393' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:08.393' AS DateTime), 84)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (85, N'354371f5-e06a-4017-ba6d-e8d78a1b3793', N'84', NULL, N'', N'', NULL, 0, 0, N'85DC81B01C7D29717897E1E43910A48B', 1, N'测试账号_84', N'测试账号_84', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:08.203' AS DateTime), CAST(N'2018-02-19T22:54:08.500' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:08.500' AS DateTime), 85)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (86, N'22123432-121e-4503-b388-e7d7f06959c9', N'85', NULL, N'', N'', NULL, 0, 0, N'99B6A9912064B569ACD8ECF335233A8C', 1, N'测试账号_85', N'测试账号_85', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:08.323' AS DateTime), CAST(N'2018-02-19T22:54:08.623' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:08.623' AS DateTime), 86)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (87, N'82a0f81d-91f3-47e0-87ec-a997a5c55464', N'86', NULL, N'', N'', NULL, 0, 0, N'0E7CA9C2405DCA18AF0D31A58F8DACDF', 1, N'测试账号_86', N'测试账号_86', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:08.427' AS DateTime), CAST(N'2018-02-19T22:54:08.723' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:08.723' AS DateTime), 87)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (88, N'440dbd3f-2ae6-44da-9cd0-d935f59d8018', N'87', NULL, N'', N'', NULL, 0, 0, N'DnZTma85PYiUSqBmx44b3gp6nxjxJtnUmn6fXhoKDSM=', 2, N'测试账号_87', N'测试账号_87', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:08.530' AS DateTime), CAST(N'2018-02-19T22:54:08.827' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:08.827' AS DateTime), 88)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (89, N'6887499b-c3d8-486d-a2c0-2069b2868c47', N'88', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_88', N'测试账号_88', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:08.637' AS DateTime), CAST(N'2018-02-19T22:54:08.933' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:08.933' AS DateTime), 89)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (90, N'39ca172d-843f-44b4-8617-f7ee0f89e066', N'89', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_89', N'测试账号_89', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:08.740' AS DateTime), CAST(N'2018-02-19T22:54:09.040' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:09.040' AS DateTime), 90)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (91, N'e98cc02b-704b-4b52-8226-565b9b772dbe', N'90', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_90', N'测试账号_90', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:08.843' AS DateTime), CAST(N'2018-02-19T22:54:09.140' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:09.140' AS DateTime), 91)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (92, N'e41b7727-4253-46ff-a39f-5d8d46e362e3', N'91', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_91', N'测试账号_91', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:08.950' AS DateTime), CAST(N'2018-02-19T22:54:09.247' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:09.247' AS DateTime), 92)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (93, N'69e45e42-06f7-4887-9014-c8846d93426a', N'92', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_92', N'测试账号_92', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:09.053' AS DateTime), CAST(N'2018-02-19T22:54:09.353' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:09.353' AS DateTime), 93)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (94, N'b1c7fdd3-fff6-4b0e-aac7-be2ad45967ad', N'93', NULL, N'', N'', NULL, 0, 0, N'0E14CBD444E1D07331AAE4A2662A5426', 1, N'测试账号_93', N'测试账号_93', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:09.160' AS DateTime), CAST(N'2018-02-19T22:54:09.457' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:09.457' AS DateTime), 94)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (95, N'720b044e-8a12-4581-9fc1-235566da2756', N'94', NULL, N'', N'', NULL, 0, 0, N'cC+vI984YUR42M2BoU2DfeykQ4d6ZLFXzy2m8RZ9Uc8=', 2, N'测试账号_94', N'测试账号_94', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:09.260' AS DateTime), CAST(N'2018-02-19T22:54:09.560' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:09.560' AS DateTime), 95)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (96, N'a0b93433-f7ee-4bb2-835e-3c5ea9af3621', N'95', NULL, N'', N'', NULL, 0, 0, N'0E8323CE58735BB5ACF23819EA4D9D4D', 1, N'测试账号_95', N'测试账号_95', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:09.367' AS DateTime), CAST(N'2018-02-19T22:54:09.663' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:09.663' AS DateTime), 96)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (97, N'f0004b92-0713-4a6c-b8c4-f915a59a0924', N'96', NULL, N'', N'', NULL, 0, 0, N'5A256C2E36282CC09A4692B42D040A23', 1, N'测试账号_96', N'测试账号_96', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:09.470' AS DateTime), CAST(N'2018-02-19T22:54:09.767' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:09.767' AS DateTime), 97)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (98, N'882f0169-f289-44da-b430-f2ec16292736', N'97', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_97', N'测试账号_97', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:09.580' AS DateTime), CAST(N'2018-02-19T22:54:09.877' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:09.877' AS DateTime), 98)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (99, N'5cdaa20c-cda4-4c7a-a8cc-ec5d8531c45e', N'98', NULL, N'', N'', NULL, 0, 0, N'0181C59887FA99474850A127999B3369', 1, N'测试账号_98', N'测试账号_98', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:09.683' AS DateTime), CAST(N'2018-02-19T22:54:09.980' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:09.980' AS DateTime), 99)
GO
INSERT [dbo].[Item_UsersLogin] ([Id], [UserId], [UserName], [AccountName], [AccountEmail], [AccountMobile], [AccountIDcard], [IsVerifiedEmail], [IsVerifiedMobile], [PassWord], [PassWordEncryption], [TrueName], [NickName], [Status], [StatusNotes], [CreatedIP], [ActivityTime], [LastActivityTime], [ActivityIP], [LastActivityIP], [DateCreated], [DisplayOrder]) VALUES (100, N'0819fe79-4eea-4515-8290-69353015ceca', N'99', NULL, N'', N'', NULL, 0, 0, N'123456', 0, N'测试账号_99', N'测试账号_99', 0, NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:09.790' AS DateTime), CAST(N'2018-02-19T22:54:10.087' AS DateTime), NULL, N'0.0.0.0', CAST(N'2018-02-19T22:54:10.087' AS DateTime), 100)
GO
SET IDENTITY_INSERT [dbo].[Item_UsersLogin] OFF
GO
/****** Object:  Index [IX_QueuedEmail_CreatedOnUtc]    Script Date: 2018/5/8 15:16:51 ******/
CREATE NONCLUSTERED INDEX [IX_QueuedEmail_CreatedOnUtc] ON [dbo].[Item_EmailQueued]
(
	[CreatedOnUtc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Language_DisplayOrder]    Script Date: 2018/5/8 15:16:51 ******/
CREATE NONCLUSTERED INDEX [IX_Language_DisplayOrder] ON [dbo].[Item_Language]
(
	[DisplayOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LocaleStringResource]    Script Date: 2018/5/8 15:16:51 ******/
CREATE NONCLUSTERED INDEX [IX_LocaleStringResource] ON [dbo].[Item_LocaleStringResource]
(
	[ResourceName] ASC,
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Item_UsersLogin_UserId]    Script Date: 2018/5/8 15:16:51 ******/
CREATE NONCLUSTERED INDEX [IX_Item_UsersLogin_UserId] ON [dbo].[Item_UsersLogin]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Item_UsersLogin_UserName]    Script Date: 2018/5/8 15:16:51 ******/
CREATE NONCLUSTERED INDEX [IX_Item_UsersLogin_UserName] ON [dbo].[Item_UsersLogin]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Item_BlogsPosts] ADD  CONSTRAINT [DF__Item_Blogs__ViewC__3E52440B]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[Item_BlogsPosts] ADD  CONSTRAINT [DF__Item_Blogs__DateC__3F466844]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Item_ChangeLog] ADD  CONSTRAINT [DF__Item_Chang__DataD__412EB0B6]  DEFAULT (getdate()) FOR [DataDate]
GO
ALTER TABLE [dbo].[Item_ChangeLog] ADD  CONSTRAINT [DF__Item_Chang__IsEna__4222D4EF]  DEFAULT ((1)) FOR [Enabled]
GO
ALTER TABLE [dbo].[Item_ChangeLog] ADD  CONSTRAINT [DF__Item_Chang__IsSel__4316F928]  DEFAULT ((0)) FOR [Selected]
GO
ALTER TABLE [dbo].[Item_ChangeLog] ADD  CONSTRAINT [DF__Item_Chang__DateC__440B1D61]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Item_EmailQueue] ADD  CONSTRAINT [DF_Item_EmailQueue_IsBodyHtml]  DEFAULT ((1)) FOR [IsBodyHtml]
GO
ALTER TABLE [dbo].[Item_EmailQueue] ADD  CONSTRAINT [DF_Item_EmailQueue_NextTryTime]  DEFAULT (getdate()) FOR [NextTryTime]
GO
ALTER TABLE [dbo].[Item_EmailQueue] ADD  CONSTRAINT [DF_Item_EmailQueue_NumberOfTries]  DEFAULT ((0)) FOR [NumberOfTries]
GO
ALTER TABLE [dbo].[Item_EmailQueue] ADD  CONSTRAINT [DF_Item_EmailQueue_IsFailed]  DEFAULT ((1)) FOR [IsFailed]
GO
ALTER TABLE [dbo].[Item_Links] ADD  CONSTRAINT [DF_Item_Links_Target]  DEFAULT ((1)) FOR [Target]
GO
ALTER TABLE [dbo].[Item_Links] ADD  CONSTRAINT [DF__Item_Links__IsEna__45F365D3]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[Item_Links] ADD  CONSTRAINT [DF__Item_Links__DateC__46E78A0C]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Item_Links] ADD  CONSTRAINT [DF__Item_Links__LastM__47DBAE45]  DEFAULT (getdate()) FOR [LastModified]
GO
ALTER TABLE [dbo].[Item_Posts] ADD  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[Item_Posts] ADD  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Item_SystemParameter] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[Item_SystemParameter] ADD  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Item_UserProfiles ] ADD  CONSTRAINT [DF_Item_UserProfiles _Integrity]  DEFAULT ((0)) FOR [Integrity]
GO
ALTER TABLE [dbo].[Item_UsersEducation] ADD  CONSTRAINT [DF_Item_UsersEducationExperiences_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Item_UsersGroup] ADD  CONSTRAINT [DF_Item_UsersGroup_ParentId]  DEFAULT ((0)) FOR [ParentId]
GO
ALTER TABLE [dbo].[Item_UsersGroup] ADD  CONSTRAINT [DF_Item_UsersGroup_ChildCount]  DEFAULT ((0)) FOR [ChildCount]
GO
ALTER TABLE [dbo].[Item_UsersGroup] ADD  CONSTRAINT [DF_Item_UsersGroup_Depth]  DEFAULT ((0)) FOR [Depth]
GO
ALTER TABLE [dbo].[Item_UsersGroup] ADD  CONSTRAINT [DF_Item_UsersGroup_IsPublic]  DEFAULT ((1)) FOR [IsPublic]
GO
ALTER TABLE [dbo].[Item_UsersGroup] ADD  CONSTRAINT [DF_Item_UsersGroup_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[Item_UsersGroup] ADD  CONSTRAINT [DF_Item_UsersGroup_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Item_UsersLogin] ADD  CONSTRAINT [DF__Item_User__IsVer__5AEE82B9]  DEFAULT ((0)) FOR [IsVerifiedEmail]
GO
ALTER TABLE [dbo].[Item_UsersLogin] ADD  CONSTRAINT [DF__Item_User__IsVer__5BE2A6F2]  DEFAULT ((0)) FOR [IsVerifiedMobile]
GO
ALTER TABLE [dbo].[Item_UsersLogin] ADD  CONSTRAINT [DF__Item_User__PassW__5CD6CB2B]  DEFAULT (N'0') FOR [PassWordEncryption]
GO
ALTER TABLE [dbo].[Item_UsersLogin] ADD  CONSTRAINT [DF__Item_User__TrueN__5DCAEF64]  DEFAULT (N' ') FOR [TrueName]
GO
ALTER TABLE [dbo].[Item_UsersLogin] ADD  CONSTRAINT [DF__Item_User__NickN__5EBF139D]  DEFAULT (N' ') FOR [NickName]
GO
ALTER TABLE [dbo].[Item_UsersLogin] ADD  CONSTRAINT [DF__Item_User__Statu__5FB337D6]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Item_UsersLogin] ADD  CONSTRAINT [DF__Item_User__Creat__60A75C0F]  DEFAULT (N'127.0.0.1') FOR [CreatedIP]
GO
ALTER TABLE [dbo].[Item_UsersLogin] ADD  CONSTRAINT [DF__Item_User__Activ__619B8048]  DEFAULT (getdate()) FOR [ActivityTime]
GO
ALTER TABLE [dbo].[Item_UsersLogin] ADD  CONSTRAINT [DF__Item_User__LastA__628FA481]  DEFAULT (getdate()) FOR [LastActivityTime]
GO
ALTER TABLE [dbo].[Item_UsersLogin] ADD  CONSTRAINT [DF__Item_User__DateC__6383C8BA]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Item_UsersLogin] ADD  CONSTRAINT [DF_Item_UsersLogin_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Item_UsersRelation] ADD  CONSTRAINT [DF_Item_UsersRelation_Type]  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[Item_UsersRight] ADD  CONSTRAINT [DF_Item_UsersRight_ParentId]  DEFAULT ((0)) FOR [ParentId]
GO
ALTER TABLE [dbo].[Item_UsersRight] ADD  CONSTRAINT [DF_Item_UsersRight_ChildCount]  DEFAULT ((0)) FOR [ChildCount]
GO
ALTER TABLE [dbo].[Item_UsersRight] ADD  CONSTRAINT [DF_Item_UsersRight_Depth]  DEFAULT ((0)) FOR [Depth]
GO
ALTER TABLE [dbo].[Item_UsersRight] ADD  CONSTRAINT [DF_Item_UsersRight_IsPublic]  DEFAULT ((1)) FOR [IsPublic]
GO
ALTER TABLE [dbo].[Item_UsersRight] ADD  CONSTRAINT [DF_Item_UsersRight_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[Item_UsersRight] ADD  CONSTRAINT [DF_Item_UsersRight_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Item_UsersRoles] ADD  CONSTRAINT [DF_Item_UsersRoles_ParentId]  DEFAULT ((0)) FOR [ParentId]
GO
ALTER TABLE [dbo].[Item_UsersRoles] ADD  CONSTRAINT [DF_Item_UsersRoles_ChildCount]  DEFAULT ((0)) FOR [ChildCount]
GO
ALTER TABLE [dbo].[Item_UsersRoles] ADD  CONSTRAINT [DF_Item_UsersRoles_Depth]  DEFAULT ((0)) FOR [Depth]
GO
ALTER TABLE [dbo].[Item_UsersRoles] ADD  CONSTRAINT [DF_Item_UsersRoles_IsPublic]  DEFAULT ((1)) FOR [IsPublic]
GO
ALTER TABLE [dbo].[Item_UsersRoles] ADD  CONSTRAINT [DF_Item_UsersRoles_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[Item_UsersRoles] ADD  CONSTRAINT [DF_Item_UsersRoles_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Item_UsersWork] ADD  CONSTRAINT [DF_Item_UsersWork_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Item_LocaleStringResource]  WITH CHECK ADD FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Item_Language] ([Id])
ON DELETE CASCADE
GO
/****** Object:  StoredProcedure [dbo].[FunctionAll_Group_Delete]    Script Date: 2018/5/8 15:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FunctionAll_Group_Delete]
 @ID int=0,
 @where_sql nvarchar(max)=null,
 @type  int=1
 
AS 
IF(@type=1) ---zheshi
BEGIN
	delete [FunctionAll_Group] Where [ID]=@ID
	SELECT @@rowcount 
END
if ( @type =2 )
begin
	declare @sqlTem nvarchar(max)
	set @sqlTem = '	delete  from FunctionAll_Group '
	if(@where_sql is not null)
		begin
			set @sqlTem = @sqlTem + ' where '+ @where_sql
		end
	exec(@sqltem)
end
GO
/****** Object:  StoredProcedure [dbo].[FunctionAll_Group_Insert]    Script Date: 2018/5/8 15:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[FunctionAll_Group_Insert]
 @ID int output,
 @user_Group_ID int=null,
 @Account_ID int=null,
 @int_type int=null,
 @Function_Name varchar(32)=null,
 @Function_Desc nvarchar(max)=null,
 @op_url nvarchar(128)=null,
 @int_state int=10,
 @bit_del bit=false,
 @icon varchar(256)=null,
 @Remark varchar(max)=null,
 @int_OrderID int=null,
 @FunctionAll_ID int=null,
 @Amount int=0,
 @FunctionAll_arr nvarchar(max)=null,
 @type		int = null,
 
 @thetype tinyint = 1
  AS 
   if(@thetype=1)
 begin
if(not exists(select ID from dbo.FunctionAll_Group where user_Group_ID = @user_Group_ID and Account_ID = @Account_ID and FunctionAll_ID=@FunctionAll_ID))
	begin
 	INSERT INTO [FunctionAll_Group](
     [user_Group_ID],
     [Account_ID],
     [int_type],
     [Function_Name],
     [Function_Desc],
     [op_url],
     [int_state],
     [bit_del],
     [icon],
     [Remark],
     [int_OrderID],
     [FunctionAll_ID],
     [FunctionAll_arr],[type],Amount
 	)VALUES(
 
@user_Group_ID,
@Account_ID,
@int_type,
@Function_Name,
@Function_Desc,
@op_url,
@int_state,
@bit_del,
@icon,
@Remark,
@int_OrderID,
@FunctionAll_ID,
@FunctionAll_arr,@type,@Amount
 	)
	SET @ID = @@IDENTITY
end
else	
begin

--如果存在 启用数据
update dbo.FunctionAll_Group set bit_del=0
where user_Group_ID = @user_Group_ID and Account_ID = @Account_ID and FunctionAll_ID=@FunctionAll_ID
end


end
GO
/****** Object:  StoredProcedure [dbo].[FunctionAll_Group_Select]    Script Date: 2018/5/8 15:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[FunctionAll_Group_Select]
@type int = 1,
@where_sql nvarchar(max)=null,
@order_by nvarchar(max) =null,
@columns  nvarchar(max) =null, 
@sql  nvarchar(max) =null, 
@ID int  =0
 AS 
 if(@type = 1)
 begin
	SELECT *
	 FROM FunctionAll_Group
	 WHERE ID=@ID 
end
if ( @type =2 )
begin
declare @sqlTem nvarchar(max)
set @sqlTem = '	select '+@columns+' from FunctionAll_Group '
if(@where_sql is not null)
	begin
		set @sqlTem = @sqlTem + ' where '+ @where_sql
	end
if(@order_by is not null) 
	begin
		set @sqlTem= @sqlTem+ ' Order By '+ @order_by
	end
	--print(@sqltem)
exec(@sqltem)
end
  IF(@type=3)
    BEGIN
    declare @sql1 nvarchar(max)
   if(@sql is not null) 
	begin
		  set @sql1 = @sql
	end
  
 	 exec(@sql1)
 	SELECT @@rowcount
  END
 
GO
/****** Object:  StoredProcedure [dbo].[FunctionAll_Group_Update]    Script Date: 2018/5/8 15:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[FunctionAll_Group_Update]
 @ID int ,
 @user_Group_ID int=null,
 @Account_ID int=null,
 @int_type int=null,
 @Function_Name varchar(32)=null,
 @Function_Desc nvarchar(max)=null,
 @op_url nvarchar(128)=null,
 @int_state int=10,
 @bit_del bit=false,
 @icon varchar(256)=null,
 @Remark varchar(max)=null,
 @int_OrderID int=null,
 @FunctionAll_ID int=null,
 @FunctionAll_arr nvarchar(max)=null,

 @thistype		tinyint = 1,
 @Amount money=0
  AS 
  IF(@thistype=1)
  BEGIN
  if(@ID is not null) 
  BEGIN
 	Update [FunctionAll_Group] set
     [user_Group_ID]=@user_Group_ID,
     [Account_ID]=@Account_ID,
     [int_type]=@int_type,
     [Function_Name]=@Function_Name,
     [Function_Desc]=@Function_Desc,
     [op_url]=@op_url,
     [int_state]=@int_state,
     [bit_del]=@bit_del,
     [icon]=@icon,
     [Remark]=@Remark,
     [int_OrderID]=@int_OrderID,
     [FunctionAll_ID]=@FunctionAll_ID,
     [FunctionAll_arr]=@FunctionAll_arr,
     Amount=@Amount
     Where [ID]=@ID
      END
 	SELECT @@rowcount
  END
    IF(@thistype=2)
  BEGIN
 	Update [FunctionAll_Group] set 
     [bit_del]=@bit_del 
     Where [ID]=@ID
 	SELECT @@rowcount
  END

GO
/****** Object:  StoredProcedure [dbo].[Select_Table_Page]    Script Date: 2018/5/8 15:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
 



CREATE PROCEDURE [dbo].[Select_Table_Page]
@tablename			nvarchar(128)='',				--当前页
@joins				nvarchar(max)=null,			--当前页
@PageIndex			int=1,				--当前页
@PageSize			int=10,					--当前页显示个数
@whereCause			nvarchar(max)=null,	--查询字段以及条件

@OrderBy			 nvarchar(max) = null,	--排序
@whereCause_two		 nvarchar(max)=null,	--查询第二个条件
@GroupBy		   	 nvarchar(max)=null,	--分组
@Column			     nvarchar(max)=' * '
AS

declare  @RecordCount int
declare  @PageCount int 
declare  @TempSql  nvarchar(max)

set @PageIndex = @PageIndex-1
begin
	--创建临时表
	CREATE  TABLE #TempTable
	(	 
		 Counts	 int 	 
	)
	SET @TempSql =''
	SET  @TempSql = 'INSERT INTO #TempTable(Counts) select COUNT(*) as counts from (	select '+@Column+' from '+@tablename+''
	

	IF @joins IS NOT NULL
		begin
		  SET @TempSql = @TempSql +' '+  @joins+ '  '
		END
	IF @whereCause IS NOT NULL
		begin
		  SET @TempSql = @TempSql + '  WHERE '  + @whereCause
		END
	
	IF @GroupBy is not null
		begin
		  SET @TempSql = @TempSql + '  Group By '  + @GroupBy
		END
 
	SET @TempSql = @TempSql + '   ) as b  '  
	
	IF (@whereCause_two IS NOT NULL)
		begin		 
		  SET @TempSql = @TempSql + '  WHERE '  + @whereCause_two
		END
	--print(@TempSql)
	exec(@TempSql)

	SELECT @RecordCount =Counts  from #TempTable  /*计算页面数据*/
	SET @PageCount = CEILING(@RecordCount * 1.0 / @PageSize)/* 基于SQL SERVER 2005 */

	set @TempSql='
	SELECT * FROM(
		select * ,ROW_NUMBER() OVER (ORDER BY '+@OrderBy+') AS SN ,
		'+str(@RecordCount)+' as RecordCount,
		'+str(@PageCount)+' as PageCount from (
		SELECT  '+@Column+'
		FROM '+@tablename
		IF @joins IS NOT NULL
		BEGIN
		  SET @TempSql = @TempSql +' '+  @joins
		END
		IF @whereCause is not null
		BEGIN
		  SET @TempSql = @TempSql + '  where '  + @whereCause
		END
		
		IF @GroupBy is not null
		BEGIN
		  SET @TempSql = @TempSql + '  Group By '  + @GroupBy
		END
		
        SET @TempSql = @TempSql + '   ) as b  '    
	    IF (@whereCause_two IS NOT NULL)
		BEGIN			 
			SET @TempSql = @TempSql + '  WHERE '  + @whereCause_two
		END
		set @TempSql = @TempSql +' ) AS T WHERE T.SN > ('+str(@PageIndex)+' * '+str(@PageSize)+') and T.SN <= (('+str(@PageIndex)+'+1) * '+str(@PageSize)+') '
	 
	 --print @TempSql
	exec (@TempSql)
end






GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'平台功能权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FunctionAll_Group', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1：左侧菜单；2：发布；3：赛福号；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FunctionAll_Group', @level2type=N'COLUMN',@level2name=N'int_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FunctionAll_Group', @level2type=N'COLUMN',@level2name=N'Function_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FunctionAll_Group', @level2type=N'COLUMN',@level2name=N'Function_Desc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FunctionAll_Group', @level2type=N'COLUMN',@level2name=N'op_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态，0：已关闭；10：已开启' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FunctionAll_Group', @level2type=N'COLUMN',@level2name=N'int_state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除，0：未删除；1：已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FunctionAll_Group', @level2type=N'COLUMN',@level2name=N'bit_del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FunctionAll_Group', @level2type=N'COLUMN',@level2name=N'icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注；int_type=3时，记录认证条款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FunctionAll_Group', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'认证金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FunctionAll_Group', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FunctionAll_Group', @level2type=N'COLUMN',@level2name=N'int_OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FunctionAll对应ID；int_type=3时记录的是System_Class的ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FunctionAll_Group', @level2type=N'COLUMN',@level2name=N'FunctionAll_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能集合' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FunctionAll_Group', @level2type=N'COLUMN',@level2name=N'FunctionAll_arr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'int_type=2时，和发布类型对应' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FunctionAll_Group', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsCategories', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsCategories', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsCategories', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsCategories', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所有父级CategoriyId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsCategories', @level2type=N'COLUMN',@level2name=N'ParentIdList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子栏目数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsCategories', @level2type=N'COLUMN',@level2name=N'ChildCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'深度(从0开始)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsCategories', @level2type=N'COLUMN',@level2name=N'Depth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsCategories', @level2type=N'COLUMN',@level2name=N'Enabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容计数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsCategories', @level2type=N'COLUMN',@level2name=N'ContentCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帖子计数类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsCategories', @level2type=N'COLUMN',@level2name=N'ViewCountType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsCategories', @level2type=N'COLUMN',@level2name=N'DisplayOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsCategories', @level2type=N'COLUMN',@level2name=N'DateCreated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsComment', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拥有者Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsComment', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论人UserId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsComment', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsComment', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所有父级id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsComment', @level2type=N'COLUMN',@level2name=N'ParentIdList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'深度(从0开始)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsComment', @level2type=N'COLUMN',@level2name=N'Depth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsComment', @level2type=N'COLUMN',@level2name=N'Body'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsComment', @level2type=N'COLUMN',@level2name=N'CreatedIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsComment', @level2type=N'COLUMN',@level2name=N'DateCreated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拥有者类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsComment', @level2type=N'COLUMN',@level2name=N'OwnerType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子栏目数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsComment', @level2type=N'COLUMN',@level2name=N'ChildCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsPosts', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目分类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsPosts', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsPosts', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帖子标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsPosts', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsPosts', @level2type=N'COLUMN',@level2name=N'TitleImg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帖子内容摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsPosts', @level2type=N'COLUMN',@level2name=N'Summary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帖子内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsPosts', @level2type=N'COLUMN',@level2name=N'Body'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsPosts', @level2type=N'COLUMN',@level2name=N'ViewCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建ip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsPosts', @level2type=N'COLUMN',@level2name=N'CreatedIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发表时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_BlogsPosts', @level2type=N'COLUMN',@level2name=N'DateCreated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Catalog', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Catalog', @level2type=N'COLUMN',@level2name=N'ItemId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Catalog', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Catalog', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Catalog', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所有父级CategoriyId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Catalog', @level2type=N'COLUMN',@level2name=N'ParentIdList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子栏目数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Catalog', @level2type=N'COLUMN',@level2name=N'ChildCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'深度(从0开始)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Catalog', @level2type=N'COLUMN',@level2name=N'Depth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Catalog', @level2type=N'COLUMN',@level2name=N'Enabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容计数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Catalog', @level2type=N'COLUMN',@level2name=N'ContentCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帖子计数类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Catalog', @level2type=N'COLUMN',@level2name=N'ViewCountType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Catalog', @level2type=N'COLUMN',@level2name=N'DisplayOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Catalog', @level2type=N'COLUMN',@level2name=N'DateCreated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件优先级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_EmailQueue', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Links', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拥有者Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Links', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Links', @level2type=N'COLUMN',@level2name=N'LinkName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Links', @level2type=N'COLUMN',@level2name=N'LinkUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Links', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接属性:0=在新窗口中打开；1=默认、在相同的框架中打开；2=在父框架集中打开；3=在整个窗口中打开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Links', @level2type=N'COLUMN',@level2name=N'Target'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片附件Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Links', @level2type=N'COLUMN',@level2name=N'ImageAttachmentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Links', @level2type=N'COLUMN',@level2name=N'ImageUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Links', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Links', @level2type=N'COLUMN',@level2name=N'IsEnabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序ID，默认与主键相同' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Links', @level2type=N'COLUMN',@level2name=N'DisplayOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Links', @level2type=N'COLUMN',@level2name=N'DateCreated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后一次修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Links', @level2type=N'COLUMN',@level2name=N'LastModified'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Posts', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目分类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Posts', @level2type=N'COLUMN',@level2name=N'CatalogId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Posts', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帖子标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Posts', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Posts', @level2type=N'COLUMN',@level2name=N'HtmlContentPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帖子内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Posts', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Posts', @level2type=N'COLUMN',@level2name=N'ViewCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建ip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Posts', @level2type=N'COLUMN',@level2name=N'CreatedIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发表时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_Posts', @level2type=N'COLUMN',@level2name=N'DateCreated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统参数ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_SystemParameter', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统参数类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_SystemParameter', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统参数类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_SystemParameter', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统参数内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_SystemParameter', @level2type=N'COLUMN',@level2name=N'Body'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_SystemParameter', @level2type=N'COLUMN',@level2name=N'DateCreated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UserProfiles ', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别1=男,2=女,0=未设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UserProfiles ', @level2type=N'COLUMN',@level2name=N'Gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日类型1=公历,2=阴历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UserProfiles ', @level2type=N'COLUMN',@level2name=N'BirthdayType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公历生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UserProfiles ', @level2type=N'COLUMN',@level2name=N'Birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阴历生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UserProfiles ', @level2type=N'COLUMN',@level2name=N'LunarBirthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UserProfiles ', @level2type=N'COLUMN',@level2name=N'NowAreaCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UserProfiles ', @level2type=N'COLUMN',@level2name=N'QQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UserProfiles ', @level2type=N'COLUMN',@level2name=N'CardType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证件号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UserProfiles ', @level2type=N'COLUMN',@level2name=N'CardID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行业' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UserProfiles ', @level2type=N'COLUMN',@level2name=N'Industry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个性签名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UserProfiles ', @level2type=N'COLUMN',@level2name=N'Autograph'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自我介绍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UserProfiles ', @level2type=N'COLUMN',@level2name=N'Introduction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资料完整度（0至100）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UserProfiles ', @level2type=N'COLUMN',@level2name=N'Integrity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户基本信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UserProfiles '
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersEducation', @level2type=N'COLUMN',@level2name=N'Degree'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersEducation', @level2type=N'COLUMN',@level2name=N'School'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入学年份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersEducation', @level2type=N'COLUMN',@level2name=N'StartYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入学时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersEducation', @level2type=N'COLUMN',@level2name=N'StartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'院系/班级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersEducation', @level2type=N'COLUMN',@level2name=N'Department'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色英文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersGroup', @level2type=N'COLUMN',@level2name=N'EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersGroup', @level2type=N'COLUMN',@level2name=N'CnName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersGroup', @level2type=N'COLUMN',@level2name=N'FriendlyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersGroup', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所有父级Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersGroup', @level2type=N'COLUMN',@level2name=N'ParentIdList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子栏目数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersGroup', @level2type=N'COLUMN',@level2name=N'ChildCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'深度(从0开始)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersGroup', @level2type=N'COLUMN',@level2name=N'Depth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色标识图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersGroup', @level2type=N'COLUMN',@level2name=N'GroupImage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'iocn图片样式class' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersGroup', @level2type=N'COLUMN',@level2name=N'IconClass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否对外显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersGroup', @level2type=N'COLUMN',@level2name=N'IsPublic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersGroup', @level2type=N'COLUMN',@level2name=N'IsEnabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersGroup', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersGroup', @level2type=N'COLUMN',@level2name=N'DateCreated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'AccountName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'AccountEmail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'AccountMobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户身份证账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'AccountIDcard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱是否认证' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'IsVerifiedEmail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号是否认证' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'IsVerifiedMobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'PassWord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'加密方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'PassWordEncryption'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户真实姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'TrueName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'NickName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'StatusNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'CreatedIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活跃时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'ActivityTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后活跃时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'LastActivityTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活跃IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'ActivityIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后活跃IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'LastActivityIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin', @level2type=N'COLUMN',@level2name=N'DateCreated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户登陆信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersLogin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersOnline', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersOnline', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersOnline', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对外显示的名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersOnline', @level2type=N'COLUMN',@level2name=N'DisplayName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次活动时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersOnline', @level2type=N'COLUMN',@level2name=N'LastActivityTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次操作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersOnline', @level2type=N'COLUMN',@level2name=N'LastAction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersOnline', @level2type=N'COLUMN',@level2name=N'Ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersOnline', @level2type=N'COLUMN',@level2name=N'DateCreated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理类型：0无效关联、1用户角色、2用户权限、3用户组织、4组权限、5组角色、6角色权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRelation', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRelation', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRelation', @level2type=N'COLUMN',@level2name=N'RightId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRelation', @level2type=N'COLUMN',@level2name=N'DateCreated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色英文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRight', @level2type=N'COLUMN',@level2name=N'EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRight', @level2type=N'COLUMN',@level2name=N'CnName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRight', @level2type=N'COLUMN',@level2name=N'FriendlyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRight', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所有父级Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRight', @level2type=N'COLUMN',@level2name=N'ParentIdList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子栏目数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRight', @level2type=N'COLUMN',@level2name=N'ChildCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'深度(从0开始)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRight', @level2type=N'COLUMN',@level2name=N'Depth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色标识图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRight', @level2type=N'COLUMN',@level2name=N'RightImage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'iocn图片样式class' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRight', @level2type=N'COLUMN',@level2name=N'IconClass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否对外显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRight', @level2type=N'COLUMN',@level2name=N'IsPublic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRight', @level2type=N'COLUMN',@level2name=N'IsEnabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRight', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRight', @level2type=N'COLUMN',@level2name=N'DateCreated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色英文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRoles', @level2type=N'COLUMN',@level2name=N'EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRoles', @level2type=N'COLUMN',@level2name=N'CnName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRoles', @level2type=N'COLUMN',@level2name=N'FriendlyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRoles', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所有父级Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRoles', @level2type=N'COLUMN',@level2name=N'ParentIdList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子栏目数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRoles', @level2type=N'COLUMN',@level2name=N'ChildCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'深度(从0开始)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRoles', @level2type=N'COLUMN',@level2name=N'Depth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色标识图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRoles', @level2type=N'COLUMN',@level2name=N'RoleImage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'iocn图片样式class' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRoles', @level2type=N'COLUMN',@level2name=N'IconClass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否对外显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRoles', @level2type=N'COLUMN',@level2name=N'IsPublic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRoles', @level2type=N'COLUMN',@level2name=N'IsEnabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRoles', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Item_UsersRoles', @level2type=N'COLUMN',@level2name=N'DateCreated'
GO
