USE [Ad_Service]
GO
/****** Object:  Table [dbo].[tblCity]    Script Date: 10/23/2019 17:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCity](
	[Cty_Id] [int] IDENTITY(1,1) NOT NULL,
	[City] [varchar](50) NULL,
 CONSTRAINT [PK_tblCity] PRIMARY KEY CLUSTERED 
(
	[Cty_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 10/23/2019 17:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAdmin](
	[Admin_Id] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_tblAdmin] PRIMARY KEY CLUSTERED 
(
	[Admin_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblArea]    Script Date: 10/23/2019 17:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblArea](
	[Ar_Id] [int] IDENTITY(1,1) NOT NULL,
	[Area] [varchar](100) NULL,
	[Cty_Id] [int] NULL,
 CONSTRAINT [PK_tblArea] PRIMARY KEY CLUSTERED 
(
	[Ar_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 10/23/2019 17:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser](
	[Usr_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Ar_Id] [int] NULL,
	[Mobile] [varchar](50) NULL,
	[Email_Id] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Image] [varchar](100) NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[Usr_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRetailer]    Script Date: 10/23/2019 17:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRetailer](
	[Ret_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Last_Name] [varchar](50) NULL,
	[Ar_Id] [int] NULL,
	[Mobile] [varchar](50) NULL,
	[Email_Id] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_tblRetailer] PRIMARY KEY CLUSTERED 
(
	[Ret_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAccount_User]    Script Date: 10/23/2019 17:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAccount_User](
	[Usr_Ac_Id] [int] IDENTITY(1,1) NOT NULL,
	[Usr_Id] [int] NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_tblAccount_User] PRIMARY KEY CLUSTERED 
(
	[Usr_Ac_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAccount_Retailer]    Script Date: 10/23/2019 17:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAccount_Retailer](
	[Ret_Ac_Id] [int] IDENTITY(1,1) NOT NULL,
	[Ret_Id] [int] NULL,
	[Amount] [int] NULL,
	[Deduction] [int] NULL,
 CONSTRAINT [PK_tblAccount_Retailer] PRIMARY KEY CLUSTERED 
(
	[Ret_Ac_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVideo_Ad]    Script Date: 10/23/2019 17:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblVideo_Ad](
	[Ad_v_Id] [int] IDENTITY(1,1) NOT NULL,
	[Ret_Id] [int] NULL,
	[V_Url] [varchar](200) NULL,
	[Description] [varchar](200) NULL,
	[Posted_Date] [varchar](50) NULL,
 CONSTRAINT [PK_tblVideo_Ad] PRIMARY KEY CLUSTERED 
(
	[Ad_v_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBs_Pst_Video]    Script Date: 10/23/2019 17:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBs_Pst_Video](
	[Uv_Id] [int] IDENTITY(1,1) NOT NULL,
	[Ret_Id] [int] NULL,
	[Usr_Id] [int] NULL,
	[Ad_v_Id] [int] NULL,
	[V_Url] [varchar](250) NULL,
	[Description] [varchar](250) NULL,
	[Date] [varchar](50) NULL,
 CONSTRAINT [PK_tblBs_Pst_Video] PRIMARY KEY CLUSTERED 
(
	[Uv_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblShare]    Script Date: 10/23/2019 17:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblShare](
	[Shr_Id] [int] IDENTITY(1,1) NOT NULL,
	[Usr_Id] [int] NULL,
	[Ad_v_Id] [int] NULL,
	[Email_Id] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
 CONSTRAINT [PK_tblShare] PRIMARY KEY CLUSTERED 
(
	[Shr_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblComment_Parent]    Script Date: 10/23/2019 17:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblComment_Parent](
	[Cmt_Pr_Id] [int] IDENTITY(1,1) NOT NULL,
	[Usr_Id] [int] NULL,
	[Ad_v_Id] [int] NULL,
	[Comment] [varchar](200) NULL,
	[Date] [varchar](50) NULL,
 CONSTRAINT [PK_tblComment_Parent] PRIMARY KEY CLUSTERED 
(
	[Cmt_Pr_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblComment_Child]    Script Date: 10/23/2019 17:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblComment_Child](
	[Cmt_Ch_Id] [int] IDENTITY(1,1) NOT NULL,
	[Usr_Id] [int] NULL,
	[Ad_v_Id] [int] NULL,
	[Cmt_Pr_Id] [int] NULL,
	[Comment] [varchar](200) NULL,
	[Date] [varchar](50) NULL,
 CONSTRAINT [PK_tblComment_Child] PRIMARY KEY CLUSTERED 
(
	[Cmt_Ch_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_tblAccount_Retailer_tblRetailer]    Script Date: 10/23/2019 17:28:15 ******/
ALTER TABLE [dbo].[tblAccount_Retailer]  WITH CHECK ADD  CONSTRAINT [FK_tblAccount_Retailer_tblRetailer] FOREIGN KEY([Ret_Id])
REFERENCES [dbo].[tblRetailer] ([Ret_Id])
GO
ALTER TABLE [dbo].[tblAccount_Retailer] CHECK CONSTRAINT [FK_tblAccount_Retailer_tblRetailer]
GO
/****** Object:  ForeignKey [FK_tblAccount_User_tblUser]    Script Date: 10/23/2019 17:28:15 ******/
ALTER TABLE [dbo].[tblAccount_User]  WITH CHECK ADD  CONSTRAINT [FK_tblAccount_User_tblUser] FOREIGN KEY([Usr_Id])
REFERENCES [dbo].[tblUser] ([Usr_Id])
GO
ALTER TABLE [dbo].[tblAccount_User] CHECK CONSTRAINT [FK_tblAccount_User_tblUser]
GO
/****** Object:  ForeignKey [FK_tblArea_tblCity]    Script Date: 10/23/2019 17:28:15 ******/
ALTER TABLE [dbo].[tblArea]  WITH CHECK ADD  CONSTRAINT [FK_tblArea_tblCity] FOREIGN KEY([Cty_Id])
REFERENCES [dbo].[tblCity] ([Cty_Id])
GO
ALTER TABLE [dbo].[tblArea] CHECK CONSTRAINT [FK_tblArea_tblCity]
GO
/****** Object:  ForeignKey [FK_tblBs_Pst_Video_tblRetailer]    Script Date: 10/23/2019 17:28:15 ******/
ALTER TABLE [dbo].[tblBs_Pst_Video]  WITH CHECK ADD  CONSTRAINT [FK_tblBs_Pst_Video_tblRetailer] FOREIGN KEY([Ret_Id])
REFERENCES [dbo].[tblRetailer] ([Ret_Id])
GO
ALTER TABLE [dbo].[tblBs_Pst_Video] CHECK CONSTRAINT [FK_tblBs_Pst_Video_tblRetailer]
GO
/****** Object:  ForeignKey [FK_tblBs_Pst_Video_tblUser]    Script Date: 10/23/2019 17:28:15 ******/
ALTER TABLE [dbo].[tblBs_Pst_Video]  WITH CHECK ADD  CONSTRAINT [FK_tblBs_Pst_Video_tblUser] FOREIGN KEY([Usr_Id])
REFERENCES [dbo].[tblUser] ([Usr_Id])
GO
ALTER TABLE [dbo].[tblBs_Pst_Video] CHECK CONSTRAINT [FK_tblBs_Pst_Video_tblUser]
GO
/****** Object:  ForeignKey [FK_tblBs_Pst_Video_tblVideo_Ad]    Script Date: 10/23/2019 17:28:15 ******/
ALTER TABLE [dbo].[tblBs_Pst_Video]  WITH CHECK ADD  CONSTRAINT [FK_tblBs_Pst_Video_tblVideo_Ad] FOREIGN KEY([Ad_v_Id])
REFERENCES [dbo].[tblVideo_Ad] ([Ad_v_Id])
GO
ALTER TABLE [dbo].[tblBs_Pst_Video] CHECK CONSTRAINT [FK_tblBs_Pst_Video_tblVideo_Ad]
GO
/****** Object:  ForeignKey [FK_tblComment_Child_tblComment_Parent]    Script Date: 10/23/2019 17:28:15 ******/
ALTER TABLE [dbo].[tblComment_Child]  WITH CHECK ADD  CONSTRAINT [FK_tblComment_Child_tblComment_Parent] FOREIGN KEY([Cmt_Pr_Id])
REFERENCES [dbo].[tblComment_Parent] ([Cmt_Pr_Id])
GO
ALTER TABLE [dbo].[tblComment_Child] CHECK CONSTRAINT [FK_tblComment_Child_tblComment_Parent]
GO
/****** Object:  ForeignKey [FK_tblComment_Child_tblUser]    Script Date: 10/23/2019 17:28:15 ******/
ALTER TABLE [dbo].[tblComment_Child]  WITH CHECK ADD  CONSTRAINT [FK_tblComment_Child_tblUser] FOREIGN KEY([Usr_Id])
REFERENCES [dbo].[tblUser] ([Usr_Id])
GO
ALTER TABLE [dbo].[tblComment_Child] CHECK CONSTRAINT [FK_tblComment_Child_tblUser]
GO
/****** Object:  ForeignKey [FK_tblComment_Child_tblVideo_Ad]    Script Date: 10/23/2019 17:28:15 ******/
ALTER TABLE [dbo].[tblComment_Child]  WITH CHECK ADD  CONSTRAINT [FK_tblComment_Child_tblVideo_Ad] FOREIGN KEY([Ad_v_Id])
REFERENCES [dbo].[tblVideo_Ad] ([Ad_v_Id])
GO
ALTER TABLE [dbo].[tblComment_Child] CHECK CONSTRAINT [FK_tblComment_Child_tblVideo_Ad]
GO
/****** Object:  ForeignKey [FK_tblComment_Parent_tblUser]    Script Date: 10/23/2019 17:28:15 ******/
ALTER TABLE [dbo].[tblComment_Parent]  WITH CHECK ADD  CONSTRAINT [FK_tblComment_Parent_tblUser] FOREIGN KEY([Usr_Id])
REFERENCES [dbo].[tblUser] ([Usr_Id])
GO
ALTER TABLE [dbo].[tblComment_Parent] CHECK CONSTRAINT [FK_tblComment_Parent_tblUser]
GO
/****** Object:  ForeignKey [FK_tblComment_Parent_tblVideo_Ad]    Script Date: 10/23/2019 17:28:15 ******/
ALTER TABLE [dbo].[tblComment_Parent]  WITH CHECK ADD  CONSTRAINT [FK_tblComment_Parent_tblVideo_Ad] FOREIGN KEY([Ad_v_Id])
REFERENCES [dbo].[tblVideo_Ad] ([Ad_v_Id])
GO
ALTER TABLE [dbo].[tblComment_Parent] CHECK CONSTRAINT [FK_tblComment_Parent_tblVideo_Ad]
GO
/****** Object:  ForeignKey [FK_tblRetailer_tblArea]    Script Date: 10/23/2019 17:28:15 ******/
ALTER TABLE [dbo].[tblRetailer]  WITH CHECK ADD  CONSTRAINT [FK_tblRetailer_tblArea] FOREIGN KEY([Ar_Id])
REFERENCES [dbo].[tblArea] ([Ar_Id])
GO
ALTER TABLE [dbo].[tblRetailer] CHECK CONSTRAINT [FK_tblRetailer_tblArea]
GO
/****** Object:  ForeignKey [FK_tblShare_tblUser]    Script Date: 10/23/2019 17:28:15 ******/
ALTER TABLE [dbo].[tblShare]  WITH CHECK ADD  CONSTRAINT [FK_tblShare_tblUser] FOREIGN KEY([Usr_Id])
REFERENCES [dbo].[tblUser] ([Usr_Id])
GO
ALTER TABLE [dbo].[tblShare] CHECK CONSTRAINT [FK_tblShare_tblUser]
GO
/****** Object:  ForeignKey [FK_tblShare_tblVideo_Ad]    Script Date: 10/23/2019 17:28:15 ******/
ALTER TABLE [dbo].[tblShare]  WITH CHECK ADD  CONSTRAINT [FK_tblShare_tblVideo_Ad] FOREIGN KEY([Ad_v_Id])
REFERENCES [dbo].[tblVideo_Ad] ([Ad_v_Id])
GO
ALTER TABLE [dbo].[tblShare] CHECK CONSTRAINT [FK_tblShare_tblVideo_Ad]
GO
/****** Object:  ForeignKey [FK_tblUser_tblArea]    Script Date: 10/23/2019 17:28:15 ******/
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [FK_tblUser_tblArea] FOREIGN KEY([Ar_Id])
REFERENCES [dbo].[tblArea] ([Ar_Id])
GO
ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [FK_tblUser_tblArea]
GO
/****** Object:  ForeignKey [FK_tblVideo_Ad_tblRetailer]    Script Date: 10/23/2019 17:28:15 ******/
ALTER TABLE [dbo].[tblVideo_Ad]  WITH CHECK ADD  CONSTRAINT [FK_tblVideo_Ad_tblRetailer] FOREIGN KEY([Ret_Id])
REFERENCES [dbo].[tblRetailer] ([Ret_Id])
GO
ALTER TABLE [dbo].[tblVideo_Ad] CHECK CONSTRAINT [FK_tblVideo_Ad_tblRetailer]
GO
