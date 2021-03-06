USE [SingleApartment]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[ActivityID] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryDetailID] [int] NOT NULL,
	[ActivityName] [nvarchar](50) NOT NULL,
	[PeopleCount] [int] NOT NULL,
	[MemberID] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[Step] [nvarchar](50) NULL,
	[Note] [nvarchar](max) NULL,
	[MeetingPoint] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[ActivityImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[ActivityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityMainCategory]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityMainCategory](
	[ActivityMainCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[ActivityMainCategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ActivityClass] PRIMARY KEY CLUSTERED 
(
	[ActivityMainCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivitySubCategory]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivitySubCategory](
	[ActivitySubCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[ActivitySubCategoryName] [nvarchar](50) NOT NULL,
	[ActivityMainCategoryID] [int] NOT NULL,
 CONSTRAINT [PK_ActivitySubClass] PRIMARY KEY CLUSTERED 
(
	[ActivitySubCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivitySubCategoryDetail]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivitySubCategoryDetail](
	[SubCategoryDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ActivityID] [int] NOT NULL,
	[ActivitySubCategoryID] [int] NOT NULL,
 CONSTRAINT [PK_ActivitySubCategoryDetail] PRIMARY KEY CLUSTERED 
(
	[SubCategoryDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BuildCase]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BuildCase](
	[ID] [nvarchar](16) NOT NULL,
	[BuildCaseName] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[TotalFloor] [int] NULL,
	[RoomCounts] [int] NULL,
	[BuildTimes] [date] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_BuildCase] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[DiscountID] [int] IDENTITY(1,1) NOT NULL,
	[DicountName] [nvarchar](50) NOT NULL,
	[Discount] [decimal](3, 3) NOT NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[DiscountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facility]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facility](
	[ID] [int] IDENTITY(11,1) NOT NULL,
	[FacilityName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Facility] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FavoriteList]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoriteList](
	[FavoriteListID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_FavoriteList] PRIMARY KEY CLUSTERED 
(
	[FavoriteListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Information]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Information](
	[InformationID] [int] IDENTITY(1,1) NOT NULL,
	[InformationDate] [datetime] NOT NULL,
	[InformationCategoryID] [int] NOT NULL,
	[InformationSource] [int] NULL,
	[DocumentID] [int] NOT NULL,
	[InformationContent] [nvarchar](50) NOT NULL,
	[Read_YN] [nvarchar](50) NOT NULL,
	[Priority] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[MemberID] [int] NOT NULL,
	[MemberCategoryID] [int] NULL,
	[JobID] [int] NULL,
	[JobPeriod] [nvarchar](50) NULL,
 CONSTRAINT [PK_Information_1] PRIMARY KEY CLUSTERED 
(
	[InformationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformationCategory]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformationCategory](
	[InformationCategoryID] [int] NOT NULL,
	[InformationCategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_InformationClass] PRIMARY KEY CLUSTERED 
(
	[InformationCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformationContent]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformationContent](
	[ContentID] [int] NOT NULL,
	[ContentName] [nvarchar](50) NOT NULL,
	[ContentText] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_InformationContent] PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobService]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobService](
	[JobID] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](50) NOT NULL,
	[JobDescription] [nvarchar](50) NOT NULL,
	[JobCycle] [nvarchar](50) NOT NULL,
	[BeforeDays] [int] NOT NULL,
 CONSTRAINT [PK_InformationServiceJob] PRIMARY KEY CLUSTERED 
(
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lease]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lease](
	[ID] [int] IDENTITY(6,1) NOT NULL,
	[RoomID] [int] NULL,
	[StartDate] [date] NULL,
	[ExpiryDate] [date] NULL,
	[PersonalRent] [int] NULL,
	[MemberID] [int] NULL,
 CONSTRAINT [PK_Lease] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberInformationCategory]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberInformationCategory](
	[MemberID] [int] NOT NULL,
	[MemberCategoryID] [int] NOT NULL,
	[MemberCategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MemberInformationCategory] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC,
	[MemberCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[ArrivedDate] [date] NULL,
	[OrderStatusID] [int] NULL,
	[SendingStatus] [nvarchar](50) NULL,
	[PayStatus] [nvarchar](50) NULL,
	[TotalAmount] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderdetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[Quantity] [int] NOT NULL,
	[DiscountID] [int] NULL,
	[UnitPrice] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderdetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[OrderStatusID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[OrderStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participant]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participant](
	[ParticipantID] [int] IDENTITY(1,1) NOT NULL,
	[ActivityID] [int] NOT NULL,
	[MemberID] [int] NOT NULL,
 CONSTRAINT [PK_Participant_1] PRIMARY KEY CLUSTERED 
(
	[ParticipantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Picture]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Picture](
	[ID] [int] NOT NULL,
	[RoomID] [int] NULL,
	[RoomStylePicture] [varbinary](max) NULL,
 CONSTRAINT [PK_Picture] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductSubCategoryID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[UnitPrice] [int] NOT NULL,
	[Discontinued] [nvarchar](50) NULL,
	[Sales] [int] NULL,
	[Stock] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ActivityID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMainCategory]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMainCategory](
	[ProductMainCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[ProductMainCategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductClass] PRIMARY KEY CLUSTERED 
(
	[ProductMainCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPictures]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPictures](
	[ProductPictureID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductPicture] [varbinary](max) NULL,
 CONSTRAINT [PK_ProductPictures] PRIMARY KEY CLUSTERED 
(
	[ProductPictureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSubCategory]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSubCategory](
	[ProductSubCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[ProductSubCategoryName] [nvarchar](50) NOT NULL,
	[ProductMainCategoryID] [int] NOT NULL,
 CONSTRAINT [PK_ProductSubClass] PRIMARY KEY CLUSTERED 
(
	[ProductSubCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[ID] [int] NOT NULL,
	[RoomName] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[RoomStyleID] [int] NULL,
	[RoomType] [nvarchar](max) NULL,
	[BuildCaseID] [nvarchar](16) NULL,
	[Description] [nvarchar](max) NULL,
	[Rent] [int] NULL,
	[SquareFootage] [int] NULL,
	[RoomPictureID] [int] NULL,
	[RoomFacilityID] [int] NULL,
	[Floor] [int] NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomFacilities]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomFacilities](
	[ID] [int] NOT NULL,
	[RoomID] [int] NULL,
	[FacilityID] [int] NULL,
 CONSTRAINT [PK_RoomFacilities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomFavorite]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomFavorite](
	[ID] [int] NOT NULL,
	[MemberID] [int] NULL,
	[RoomID] [int] NULL,
 CONSTRAINT [PK_RoomFavorite] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomStyle]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomStyle](
	[ID] [int] NOT NULL,
	[RoomStyleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_RoomStyle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubActivity]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubActivity](
	[SubActivityID] [int] IDENTITY(1,1) NOT NULL,
	[ActivityID] [int] NULL,
	[MemberID] [int] NULL,
 CONSTRAINT [PK_SubActivity] PRIMARY KEY CLUSTERED 
(
	[SubActivityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tActivityCart]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tActivityCart](
	[fJoinedId] [int] IDENTITY(1,1) NOT NULL,
	[fMemberId] [int] NULL,
	[fAvtivityName] [nvarchar](max) NULL,
	[fStartTime] [date] NULL,
	[fEndTime] [date] NULL,
	[fLocation] [nvarchar](max) NULL,
	[fPeopleCount] [int] NULL,
	[fStatus] [nvarchar](50) NULL,
	[fNote] [nvarchar](50) NULL,
 CONSTRAINT [PK_tActivityCart] PRIMARY KEY CLUSTERED 
(
	[fJoinedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tMember]    Script Date: 2020/12/10 下午 12:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tMember](
	[fMemberId] [int] IDENTITY(1,1) NOT NULL,
	[fMemberName] [nvarchar](max) NOT NULL,
	[fAccount] [nvarchar](max) NOT NULL,
	[fPassword] [nvarchar](max) NOT NULL,
	[fEmail] [nvarchar](max) NOT NULL,
	[fPhone] [nvarchar](max) NOT NULL,
	[fAge] [int] NULL,
	[fSex] [nvarchar](max) NULL,
	[fBirthDate] [date] NULL,
	[fSalary] [nvarchar](max) NULL,
	[fCareer] [nvarchar](max) NULL,
	[fImage] [nvarchar](max) NULL,
	[fRoomId] [int] NULL,
	[fLeave] [bit] NULL,
	[fRole] [nvarchar](max) NULL,
	[fActivityMessage] [nvarchar](max) NULL,
 CONSTRAINT [PK_tMember] PRIMARY KEY CLUSTERED 
(
	[fMemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Information] ADD  CONSTRAINT [DF_Information_Read_YN]  DEFAULT (N'N') FOR [Read_YN]
GO
ALTER TABLE [dbo].[Information] ADD  CONSTRAINT [DF_Information_Priority]  DEFAULT (N'Normal') FOR [Priority]
GO
ALTER TABLE [dbo].[Information] ADD  CONSTRAINT [DF_Information_Status]  DEFAULT (N'Open') FOR [Status]
GO
ALTER TABLE [dbo].[Activity]  WITH CHECK ADD  CONSTRAINT [FK_Activity_ActivitySubCategory] FOREIGN KEY([SubCategoryDetailID])
REFERENCES [dbo].[ActivitySubCategory] ([ActivitySubCategoryID])
GO
ALTER TABLE [dbo].[Activity] CHECK CONSTRAINT [FK_Activity_ActivitySubCategory]
GO
ALTER TABLE [dbo].[Activity]  WITH CHECK ADD  CONSTRAINT [FK_Activity_tMember] FOREIGN KEY([MemberID])
REFERENCES [dbo].[tMember] ([fMemberId])
GO
ALTER TABLE [dbo].[Activity] CHECK CONSTRAINT [FK_Activity_tMember]
GO
ALTER TABLE [dbo].[ActivitySubCategory]  WITH CHECK ADD  CONSTRAINT [FK_ActivitySubCategory_ActivityCategory] FOREIGN KEY([ActivityMainCategoryID])
REFERENCES [dbo].[ActivityMainCategory] ([ActivityMainCategoryID])
GO
ALTER TABLE [dbo].[ActivitySubCategory] CHECK CONSTRAINT [FK_ActivitySubCategory_ActivityCategory]
GO
ALTER TABLE [dbo].[ActivitySubCategoryDetail]  WITH CHECK ADD  CONSTRAINT [FK_ActivitySubCategoryDetail_ActivitySubCategory] FOREIGN KEY([ActivitySubCategoryID])
REFERENCES [dbo].[ActivitySubCategory] ([ActivitySubCategoryID])
GO
ALTER TABLE [dbo].[ActivitySubCategoryDetail] CHECK CONSTRAINT [FK_ActivitySubCategoryDetail_ActivitySubCategory]
GO
ALTER TABLE [dbo].[FavoriteList]  WITH CHECK ADD  CONSTRAINT [FK_FavoriteList_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[FavoriteList] CHECK CONSTRAINT [FK_FavoriteList_Product]
GO
ALTER TABLE [dbo].[FavoriteList]  WITH CHECK ADD  CONSTRAINT [FK_FavoriteList_tMember] FOREIGN KEY([MemberID])
REFERENCES [dbo].[tMember] ([fMemberId])
GO
ALTER TABLE [dbo].[FavoriteList] CHECK CONSTRAINT [FK_FavoriteList_tMember]
GO
ALTER TABLE [dbo].[Information]  WITH CHECK ADD  CONSTRAINT [FK_Information_InformationCategory] FOREIGN KEY([InformationCategoryID])
REFERENCES [dbo].[InformationCategory] ([InformationCategoryID])
GO
ALTER TABLE [dbo].[Information] CHECK CONSTRAINT [FK_Information_InformationCategory]
GO
ALTER TABLE [dbo].[Information]  WITH CHECK ADD  CONSTRAINT [FK_Information_MemberInformationCategory] FOREIGN KEY([MemberID], [MemberCategoryID])
REFERENCES [dbo].[MemberInformationCategory] ([MemberID], [MemberCategoryID])
GO
ALTER TABLE [dbo].[Information] CHECK CONSTRAINT [FK_Information_MemberInformationCategory]
GO
ALTER TABLE [dbo].[Information]  WITH CHECK ADD  CONSTRAINT [FK_Information_tMember] FOREIGN KEY([MemberID])
REFERENCES [dbo].[tMember] ([fMemberId])
GO
ALTER TABLE [dbo].[Information] CHECK CONSTRAINT [FK_Information_tMember]
GO
ALTER TABLE [dbo].[Lease]  WITH CHECK ADD  CONSTRAINT [FK_Lease_Room] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([ID])
GO
ALTER TABLE [dbo].[Lease] CHECK CONSTRAINT [FK_Lease_Room]
GO
ALTER TABLE [dbo].[Lease]  WITH CHECK ADD  CONSTRAINT [FK_Lease_tMember] FOREIGN KEY([MemberID])
REFERENCES [dbo].[tMember] ([fMemberId])
GO
ALTER TABLE [dbo].[Lease] CHECK CONSTRAINT [FK_Lease_tMember]
GO
ALTER TABLE [dbo].[MemberInformationCategory]  WITH CHECK ADD  CONSTRAINT [FK_MemberInformationCategory_tMember] FOREIGN KEY([MemberID])
REFERENCES [dbo].[tMember] ([fMemberId])
GO
ALTER TABLE [dbo].[MemberInformationCategory] CHECK CONSTRAINT [FK_MemberInformationCategory_tMember]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([OrderStatusID])
REFERENCES [dbo].[OrderStatus] ([OrderStatusID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_tMember] FOREIGN KEY([MemberID])
REFERENCES [dbo].[tMember] ([fMemberId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_tMember]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Discount] FOREIGN KEY([DiscountID])
REFERENCES [dbo].[Discount] ([DiscountID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Discount]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Product]
GO
ALTER TABLE [dbo].[Participant]  WITH CHECK ADD  CONSTRAINT [FK_Participant_Activity] FOREIGN KEY([ActivityID])
REFERENCES [dbo].[Activity] ([ActivityID])
GO
ALTER TABLE [dbo].[Participant] CHECK CONSTRAINT [FK_Participant_Activity]
GO
ALTER TABLE [dbo].[Participant]  WITH CHECK ADD  CONSTRAINT [FK_Participant_tMember] FOREIGN KEY([MemberID])
REFERENCES [dbo].[tMember] ([fMemberId])
GO
ALTER TABLE [dbo].[Participant] CHECK CONSTRAINT [FK_Participant_tMember]
GO
ALTER TABLE [dbo].[Picture]  WITH CHECK ADD  CONSTRAINT [FK_Picture_Room] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([ID])
GO
ALTER TABLE [dbo].[Picture] CHECK CONSTRAINT [FK_Picture_Room]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Activity] FOREIGN KEY([ActivityID])
REFERENCES [dbo].[Activity] ([ActivityID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Activity]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductSubClass] FOREIGN KEY([ProductSubCategoryID])
REFERENCES [dbo].[ProductSubCategory] ([ProductSubCategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductSubClass]
GO
ALTER TABLE [dbo].[ProductPictures]  WITH CHECK ADD  CONSTRAINT [FK_ProductPictures_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductPictures] CHECK CONSTRAINT [FK_ProductPictures_Product]
GO
ALTER TABLE [dbo].[ProductSubCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductSubCategory_ProductMainCategory] FOREIGN KEY([ProductMainCategoryID])
REFERENCES [dbo].[ProductMainCategory] ([ProductMainCategoryID])
GO
ALTER TABLE [dbo].[ProductSubCategory] CHECK CONSTRAINT [FK_ProductSubCategory_ProductMainCategory]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_BuildCase] FOREIGN KEY([BuildCaseID])
REFERENCES [dbo].[BuildCase] ([ID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_BuildCase]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_RoomStyle] FOREIGN KEY([RoomStyleID])
REFERENCES [dbo].[RoomStyle] ([ID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_RoomStyle]
GO
ALTER TABLE [dbo].[RoomFacilities]  WITH CHECK ADD  CONSTRAINT [FK_RoomFacilities_Facility] FOREIGN KEY([FacilityID])
REFERENCES [dbo].[Facility] ([ID])
GO
ALTER TABLE [dbo].[RoomFacilities] CHECK CONSTRAINT [FK_RoomFacilities_Facility]
GO
ALTER TABLE [dbo].[RoomFacilities]  WITH CHECK ADD  CONSTRAINT [FK_RoomFacilities_Room] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([ID])
GO
ALTER TABLE [dbo].[RoomFacilities] CHECK CONSTRAINT [FK_RoomFacilities_Room]
GO
ALTER TABLE [dbo].[RoomFavorite]  WITH CHECK ADD  CONSTRAINT [FK_RoomFavorite_Room] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([ID])
GO
ALTER TABLE [dbo].[RoomFavorite] CHECK CONSTRAINT [FK_RoomFavorite_Room]
GO
ALTER TABLE [dbo].[RoomFavorite]  WITH CHECK ADD  CONSTRAINT [FK_RoomFavorite_tMember] FOREIGN KEY([MemberID])
REFERENCES [dbo].[tMember] ([fMemberId])
GO
ALTER TABLE [dbo].[RoomFavorite] CHECK CONSTRAINT [FK_RoomFavorite_tMember]
GO
ALTER TABLE [dbo].[SubActivity]  WITH CHECK ADD  CONSTRAINT [FK_SubActivity_Activity] FOREIGN KEY([ActivityID])
REFERENCES [dbo].[Activity] ([ActivityID])
GO
ALTER TABLE [dbo].[SubActivity] CHECK CONSTRAINT [FK_SubActivity_Activity]
GO
