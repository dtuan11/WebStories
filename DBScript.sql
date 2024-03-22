﻿USE [SWP391_G2_Project]
GO
/****** Object:  Table [dbo].[BanComment]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanComment](
	[userID] [int] NOT NULL,
	[problem] [int] NOT NULL,
	[detail] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BanCommentType]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanCommentType](
	[banId] [int] NOT NULL,
	[banType] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_BanCommentType] PRIMARY KEY CLUSTERED 
(
	[banId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[bookID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NULL,
	[authorName] [nvarchar](max) NULL,
	[title] [nvarchar](50) NOT NULL,
	[views] [int] NULL,
	[detail] [nvarchar](max) NULL,
	[img] [nvarchar](max) NULL,
	[publishDate] [date] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[bookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CateID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[describe] [nvarchar](500) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_in_book]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_in_book](
	[id] [int] NOT NULL,
	[BookID] [int] NOT NULL,
	[CateID] [int] NOT NULL,
 CONSTRAINT [PK_Category_in_book] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chapter]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chapter](
	[ChapterID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[NumberChapter] [int] NULL,
	[ChapterName] [nvarchar](50) NULL,
	[Contents_1] [nvarchar](max) NULL,
	[Contents_2] [nvarchar](max) NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Chapter] PRIMARY KEY CLUSTERED 
(
	[ChapterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[cmtID] [int] IDENTITY(1,1) NOT NULL,
	[bookID] [int] NOT NULL,
	[userID] [int] NOT NULL,
	[cmt] [nvarchar](500) NOT NULL,
	[publishDate] [date] NOT NULL,
	[like] [int] NULL,
	[reply] [int] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[cmtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeletedUser]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeletedUser](
	[userID] [int] NOT NULL,
	[fromDate] [datetime] NOT NULL,
	[toDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackId] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NULL,
	[problem] [int] NOT NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[FeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PayChapter]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayChapter](
	[payId] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[chapterId] [int] NOT NULL,
	[payDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PayChapter] PRIMARY KEY CLUSTERED 
(
	[payId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rate]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate](
	[rateID] [int] IDENTITY(1,1) NOT NULL,
	[bookID] [int] NOT NULL,
	[userID] [int] NOT NULL,
	[point] [int] NOT NULL,
 CONSTRAINT [PK_Rate_1] PRIMARY KEY CLUSTERED 
(
	[rateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reading]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reading](
	[userID] [int] NOT NULL,
	[bookid] [int] NOT NULL,
	[chapterid] [int] NOT NULL,
	[readingDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[ReportId] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[bookId] [int] NOT NULL,
	[problem] [int] NOT NULL,
	[chapter] [nvarchar](50) NULL,
	[detail] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportType]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportType](
	[reportId] [int] NOT NULL,
	[reportType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ReportType] PRIMARY KEY CLUSTERED 
(
	[reportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Response]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Response](
	[responseId] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[detail] [nvarchar](max) NOT NULL,
	[responseTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Response] PRIMARY KEY CLUSTERED 
(
	[responseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleID] [int] NOT NULL,
	[roleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SavedBook]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SavedBook](
	[userID] [int] NOT NULL,
	[bookID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[TagID] [int] NOT NULL,
	[Tagname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag_in_book]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag_in_book](
	[id] [int] NOT NULL,
	[TagID] [int] NOT NULL,
	[BookID] [int] NOT NULL,
 CONSTRAINT [PK_Tag_in_book] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[address] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[transaction] [int] NULL,
	[avatar] [nvarchar](max) NULL,
	[roleID] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VipTime]    Script Date: 11/03/2024 9:25:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VipTime](
	[userID] [int] NOT NULL,
	[startDate] [datetime] NOT NULL,
	[endDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[BanCommentType] ([banId], [banType]) VALUES (1, N'Xúc phạm nhân phẩm')
INSERT [dbo].[BanCommentType] ([banId], [banType]) VALUES (2, N'Phân biệt vùng miền')
INSERT [dbo].[BanCommentType] ([banId], [banType]) VALUES (3, N'Lời nói thô tục, vi phạm thuần phong mỹ tục')
INSERT [dbo].[BanCommentType] ([banId], [banType]) VALUES (4, N'Spam nhiều lần')
INSERT [dbo].[BanCommentType] ([banId], [banType]) VALUES (5, N'Khác')
GO
ALTER TABLE [dbo].[BanComment]  WITH CHECK ADD  CONSTRAINT [FK_BanComment_BanCommentType] FOREIGN KEY([problem])
REFERENCES [dbo].[BanCommentType] ([banId])
GO
ALTER TABLE [dbo].[BanComment] CHECK CONSTRAINT [FK_BanComment_BanCommentType]
GO
ALTER TABLE [dbo].[BanComment]  WITH CHECK ADD  CONSTRAINT [FK_BanComment_Response] FOREIGN KEY([userID])
REFERENCES [dbo].[Response] ([responseId])
GO
ALTER TABLE [dbo].[BanComment] CHECK CONSTRAINT [FK_BanComment_Response]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_User]
GO
ALTER TABLE [dbo].[Category_in_book]  WITH CHECK ADD  CONSTRAINT [FK_Category_in_book_Book] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([bookID])
GO
ALTER TABLE [dbo].[Category_in_book] CHECK CONSTRAINT [FK_Category_in_book_Book]
GO
ALTER TABLE [dbo].[Category_in_book]  WITH CHECK ADD  CONSTRAINT [FK_Category_in_book_Category] FOREIGN KEY([CateID])
REFERENCES [dbo].[Category] ([CateID])
GO
ALTER TABLE [dbo].[Category_in_book] CHECK CONSTRAINT [FK_Category_in_book_Category]
GO
ALTER TABLE [dbo].[Chapter]  WITH CHECK ADD  CONSTRAINT [FK_Chapter_Book] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([bookID])
GO
ALTER TABLE [dbo].[Chapter] CHECK CONSTRAINT [FK_Chapter_Book]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Book] FOREIGN KEY([bookID])
REFERENCES [dbo].[Book] ([bookID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Book]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_User1] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_User1]
GO
ALTER TABLE [dbo].[DeletedUser]  WITH CHECK ADD  CONSTRAINT [FK_DeletedUser_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[DeletedUser] CHECK CONSTRAINT [FK_DeletedUser_User]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_ReportType] FOREIGN KEY([problem])
REFERENCES [dbo].[ReportType] ([reportId])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_ReportType]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_User]
GO
ALTER TABLE [dbo].[PayChapter]  WITH CHECK ADD  CONSTRAINT [FK_PayChapter_Chapter] FOREIGN KEY([chapterId])
REFERENCES [dbo].[Chapter] ([ChapterID])
GO
ALTER TABLE [dbo].[PayChapter] CHECK CONSTRAINT [FK_PayChapter_Chapter]
GO
ALTER TABLE [dbo].[PayChapter]  WITH CHECK ADD  CONSTRAINT [FK_PayChapter_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[PayChapter] CHECK CONSTRAINT [FK_PayChapter_User]
GO
ALTER TABLE [dbo].[Reading]  WITH CHECK ADD  CONSTRAINT [FK_Reading_Book] FOREIGN KEY([bookid])
REFERENCES [dbo].[Book] ([bookID])
GO
ALTER TABLE [dbo].[Reading] CHECK CONSTRAINT [FK_Reading_Book]
GO
ALTER TABLE [dbo].[Reading]  WITH CHECK ADD  CONSTRAINT [FK_Reading_Chapter] FOREIGN KEY([chapterid])
REFERENCES [dbo].[Chapter] ([ChapterID])
GO
ALTER TABLE [dbo].[Reading] CHECK CONSTRAINT [FK_Reading_Chapter]
GO
ALTER TABLE [dbo].[Reading]  WITH CHECK ADD  CONSTRAINT [FK_Reading_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Reading] CHECK CONSTRAINT [FK_Reading_User]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_Book] FOREIGN KEY([bookId])
REFERENCES [dbo].[Book] ([bookID])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_Book]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_ReportType] FOREIGN KEY([problem])
REFERENCES [dbo].[ReportType] ([reportId])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_ReportType]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_User]
GO
ALTER TABLE [dbo].[Response]  WITH CHECK ADD  CONSTRAINT [FK_Response_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Response] CHECK CONSTRAINT [FK_Response_User]
GO
ALTER TABLE [dbo].[SavedBook]  WITH CHECK ADD  CONSTRAINT [FK_SavedBook_Book] FOREIGN KEY([bookID])
REFERENCES [dbo].[Book] ([bookID])
GO
ALTER TABLE [dbo].[SavedBook] CHECK CONSTRAINT [FK_SavedBook_Book]
GO
ALTER TABLE [dbo].[SavedBook]  WITH CHECK ADD  CONSTRAINT [FK_SavedBook_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[SavedBook] CHECK CONSTRAINT [FK_SavedBook_User]
GO
ALTER TABLE [dbo].[Tag_in_book]  WITH CHECK ADD  CONSTRAINT [FK_Tag_in_book_Book] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([bookID])
GO
ALTER TABLE [dbo].[Tag_in_book] CHECK CONSTRAINT [FK_Tag_in_book_Book]
GO
ALTER TABLE [dbo].[Tag_in_book]  WITH CHECK ADD  CONSTRAINT [FK_Tag_in_book_Tag] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tag] ([TagID])
GO
ALTER TABLE [dbo].[Tag_in_book] CHECK CONSTRAINT [FK_Tag_in_book_Tag]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([roleID])
REFERENCES [dbo].[Role] ([roleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
ALTER TABLE [dbo].[VipTime]  WITH CHECK ADD  CONSTRAINT [FK_VipTime_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[VipTime] CHECK CONSTRAINT [FK_VipTime_User]
GO
