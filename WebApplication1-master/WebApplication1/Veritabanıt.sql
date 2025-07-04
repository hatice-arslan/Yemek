USE [dbo_YemekTarifi]
GO
/****** Object:  Table [dbo].[tbl_GünüYemegi]    Script Date: 12/27/2024 3:58:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_GünüYemegi](
	[GününYemegiId] [smallint] IDENTITY(1,1) NOT NULL,
	[GününYemegiAd] [nvarchar](50) NULL,
	[GününYemegiMalzeme] [nvarchar](500) NULL,
	[GününYemegiTarif] [nvarchar](max) NULL,
	[GününYemegiPuan] [tinyint] NULL,
	[GününYemegiTarih] [smalldatetime] NULL,
 CONSTRAINT [PK_tbl_GünüYemegi] PRIMARY KEY CLUSTERED 
(
	[GününYemegiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Kategoriler]    Script Date: 12/27/2024 3:58:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Kategoriler](
	[Kategoriid] [smallint] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [nvarchar](50) NULL,
	[KategoriAdet] [smallint] NULL,
	[KategoriResim] [nvarchar](150) NULL,
 CONSTRAINT [PK_tbl_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[Kategoriid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Tarifler]    Script Date: 12/27/2024 3:58:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Tarifler](
	[TarifId] [smallint] IDENTITY(1,1) NOT NULL,
	[TarifAd] [nvarchar](50) NULL,
	[TarifMalzeme] [nvarchar](500) NULL,
	[TarifYapilis] [nvarchar](max) NULL,
	[TarifResim] [nvarchar](50) NULL,
	[TarifSahip] [nvarchar](50) NULL,
	[TarifSahipMail] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Tarifler] PRIMARY KEY CLUSTERED 
(
	[TarifId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Yemekler]    Script Date: 12/27/2024 3:58:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Yemekler](
	[Yemekid] [smallint] IDENTITY(1,1) NOT NULL,
	[YemekAd] [nvarchar](50) NULL,
	[YemekMalzeme] [nvarchar](100) NULL,
	[YemekTarif] [nvarchar](max) NULL,
	[YemekResim] [varchar](150) NULL,
	[YemekTarih] [smalldatetime] NULL,
	[YemekPuan] [tinyint] NULL,
	[Kategoriid] [smallint] NULL,
 CONSTRAINT [PK_tbl_Yemekler] PRIMARY KEY CLUSTERED 
(
	[Yemekid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Yorum]    Script Date: 12/27/2024 3:58:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Yorum](
	[Yorumid] [smallint] IDENTITY(1,1) NOT NULL,
	[YorumAdSoyad] [nvarchar](100) NULL,
	[YorumMail] [nvarchar](50) NULL,
	[YorumTarih] [smalldatetime] NULL,
	[YorumOnay] [bit] NULL,
	[Yorum] [nvarchar](500) NULL,
	[YemekId] [smallint] NOT NULL,
 CONSTRAINT [PK_tbl_Yorum] PRIMARY KEY CLUSTERED 
(
	[Yorumid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Yönetici]    Script Date: 12/27/2024 3:58:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Yönetici](
	[Yöneticiid] [tinyint] IDENTITY(1,1) NOT NULL,
	[YöneticiAd] [nvarchar](50) NULL,
	[YöneticiSifre] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Yönetici] PRIMARY KEY CLUSTERED 
(
	[Yöneticiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_GünüYemegi] ADD  CONSTRAINT [DF_tbl_GünüYemegi_GününYemegiTarih]  DEFAULT (getdate()) FOR [GününYemegiTarih]
GO
ALTER TABLE [dbo].[tbl_Yemekler] ADD  CONSTRAINT [DF_tbl_Yemekler_YemekTarih]  DEFAULT (getdate()) FOR [YemekTarih]
GO
ALTER TABLE [dbo].[tbl_Yorum] ADD  CONSTRAINT [DF_tbl_Yorum_YorumOnay]  DEFAULT ((0)) FOR [YorumOnay]
GO
ALTER TABLE [dbo].[tbl_Yemekler]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Yemekler_tbl_Kategoriler] FOREIGN KEY([Kategoriid])
REFERENCES [dbo].[tbl_Kategoriler] ([Kategoriid])
GO
ALTER TABLE [dbo].[tbl_Yemekler] CHECK CONSTRAINT [FK_tbl_Yemekler_tbl_Kategoriler]
GO
ALTER TABLE [dbo].[tbl_Yorum]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Yorum_tbl_Yemekler] FOREIGN KEY([YemekId])
REFERENCES [dbo].[tbl_Yemekler] ([Yemekid])
GO
ALTER TABLE [dbo].[tbl_Yorum] CHECK CONSTRAINT [FK_tbl_Yorum_tbl_Yemekler]
GO
