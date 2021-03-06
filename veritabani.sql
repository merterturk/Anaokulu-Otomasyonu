USE [Anaokuludb]
GO
/****** Object:  Table [dbo].[Aidat]    Script Date: 11.05.2020 17:03:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aidat](
	[AidatID] [int] IDENTITY(1,1) NOT NULL,
	[VeliID] [int] NULL,
	[Tarih] [date] NULL,
	[Tutar] [int] NULL,
	[OdemeTuru] [varchar](50) NULL,
	[Donem] [varchar](50) NULL,
	[Durumu] [bit] NULL,
 CONSTRAINT [PK_Aidat] PRIMARY KEY CLUSTERED 
(
	[AidatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ders]    Script Date: 11.05.2020 17:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ders](
	[DersID] [int] IDENTITY(1,1) NOT NULL,
	[DersAdi] [varchar](70) NULL,
	[Aciklama] [varchar](300) NULL,
	[Durumu] [bit] NULL,
 CONSTRAINT [PK_Ders] PRIMARY KEY CLUSTERED 
(
	[DersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DersProgrami]    Script Date: 11.05.2020 17:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DersProgrami](
	[DersprogramiID] [int] IDENTITY(1,1) NOT NULL,
	[Ders1] [varchar](75) NULL,
	[Ders2] [varchar](75) NULL,
	[Ders3] [varchar](75) NULL,
	[Ders4] [varchar](75) NULL,
	[Ders5] [varchar](75) NULL,
	[Ders6] [varchar](75) NULL,
	[Dönem] [varchar](20) NULL,
	[Tarih] [date] NULL,
	[Durumu] [bit] NULL,
 CONSTRAINT [PK_DersProgrami] PRIMARY KEY CLUSTERED 
(
	[DersprogramiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Duyuru]    Script Date: 11.05.2020 17:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Duyuru](
	[DuyuruID] [int] IDENTITY(1,1) NOT NULL,
	[Tarih] [date] NULL,
	[Baslik] [varchar](300) NULL,
	[İcerik] [varchar](max) NULL,
	[Dönem] [varchar](20) NULL,
	[Durumu] [bit] NULL,
 CONSTRAINT [PK_Duyuru] PRIMARY KEY CLUSTERED 
(
	[DuyuruID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Etkinlik]    Script Date: 11.05.2020 17:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Etkinlik](
	[EtkinlikID] [int] IDENTITY(1,1) NOT NULL,
	[Tarih] [date] NULL,
	[Baslik] [varchar](300) NULL,
	[İcerik] [varchar](max) NULL,
	[Donem] [varchar](20) NULL,
	[Durumu] [bit] NULL,
 CONSTRAINT [PK_Etkinlik] PRIMARY KEY CLUSTERED 
(
	[EtkinlikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galeri]    Script Date: 11.05.2020 17:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galeri](
	[ResimID] [int] IDENTITY(1,1) NOT NULL,
	[ResimAdi] [varchar](50) NULL,
	[Tarih] [date] NULL,
	[ResimYolu] [varchar](250) NULL,
	[Durumu] [bit] NULL,
 CONSTRAINT [PK_Galeri] PRIMARY KEY CLUSTERED 
(
	[ResimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GelirGider]    Script Date: 11.05.2020 17:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GelirGider](
	[GelirGiderID] [int] IDENTITY(1,1) NOT NULL,
	[GelirGider] [varchar](50) NULL,
	[Tarih] [date] NULL,
	[Tutar] [int] NULL,
	[GelirGiderTuru] [varchar](50) NULL,
	[OdemeTuru] [varchar](50) NULL,
	[Donem] [varchar](50) NULL,
	[Durumu] [bit] NULL,
 CONSTRAINT [PK_GelirGider] PRIMARY KEY CLUSTERED 
(
	[GelirGiderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[İlac]    Script Date: 11.05.2020 17:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[İlac](
	[İlacID] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciID] [int] NULL,
	[İlacAdi] [varchar](100) NULL,
	[İlacAciklama] [varchar](300) NULL,
	[Durumu] [bit] NULL,
 CONSTRAINT [PK_İlac] PRIMARY KEY CLUSTERED 
(
	[İlacID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[İlacBildirimi]    Script Date: 11.05.2020 17:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[İlacBildirimi](
	[İlacBildirimiID] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciID] [int] NULL,
	[Tarih] [date] NULL,
	[Aciklama] [varchar](300) NULL,
	[Durumu] [bit] NULL,
 CONSTRAINT [PK_İlacBildirimi] PRIMARY KEY CLUSTERED 
(
	[İlacBildirimiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogrenci]    Script Date: 11.05.2020 17:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogrenci](
	[OgrID] [int] IDENTITY(1,1) NOT NULL,
	[ADSOYAD] [varchar](75) NULL,
	[TC] [varchar](15) NULL,
	[DogumTarihi] [date] NULL,
	[Cinsiyet] [varchar](10) NULL,
	[SınıfID] [int] NULL,
	[KayitTarihi] [date] NULL,
	[Dönemi] [varchar](20) NULL,
	[Durumu] [bit] NOT NULL,
 CONSTRAINT [PK_Ogrenci] PRIMARY KEY CLUSTERED 
(
	[OgrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogretmen]    Script Date: 11.05.2020 17:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogretmen](
	[OgretmenID] [int] IDENTITY(1,1) NOT NULL,
	[ADSOYAD] [varchar](75) NULL,
	[TC] [varchar](20) NULL,
	[DogumTarihi] [date] NULL,
	[Adres] [varchar](max) NULL,
	[Maas] [int] NULL,
	[Telefon] [varchar](15) NULL,
	[KullaniciAdi] [varchar](50) NULL,
	[Sifre] [varchar](50) NULL,
	[Durumu] [bit] NULL,
 CONSTRAINT [PK_Ogretmen] PRIMARY KEY CLUSTERED 
(
	[OgretmenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sinif]    Script Date: 11.05.2020 17:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinif](
	[SınıfID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [varchar](50) NULL,
	[Kontenjan] [int] NULL,
	[Dönem] [varchar](20) NULL,
	[OgretmenID] [int] NULL,
	[Durumu] [bit] NULL,
 CONSTRAINT [PK_Sinif] PRIMARY KEY CLUSTERED 
(
	[SınıfID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Veli]    Script Date: 11.05.2020 17:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Veli](
	[VeliID] [int] IDENTITY(1,1) NOT NULL,
	[ADSOYAD] [varchar](75) NULL,
	[OGRID] [int] NULL,
	[Telefon] [varchar](15) NULL,
	[Adres] [varchar](500) NULL,
	[KullaniciAdi] [varchar](50) NULL,
	[Sifre] [varchar](50) NULL,
	[YillikFiyat] [int] NULL,
	[Dönemi] [varchar](20) NULL,
	[Durumu] [bit] NOT NULL,
 CONSTRAINT [PK_Veli] PRIMARY KEY CLUSTERED 
(
	[VeliID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YemekBildirimi]    Script Date: 11.05.2020 17:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YemekBildirimi](
	[YemekBildirimID] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciID] [int] NULL,
	[Tarih] [date] NULL,
	[Aciklama] [varchar](300) NULL,
	[Durumu] [bit] NULL,
 CONSTRAINT [PK_YemekBildirimi] PRIMARY KEY CLUSTERED 
(
	[YemekBildirimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YemekListesi]    Script Date: 11.05.2020 17:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YemekListesi](
	[YemekListesiID] [int] IDENTITY(1,1) NOT NULL,
	[Tarih] [date] NULL,
	[Sabah] [varchar](max) NULL,
	[Ogle] [varchar](max) NULL,
	[Ikindi] [varchar](max) NULL,
	[Donemi] [varchar](50) NULL,
	[Durumu] [bit] NULL,
 CONSTRAINT [PK_YemekListesi] PRIMARY KEY CLUSTERED 
(
	[YemekListesiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yoklama]    Script Date: 11.05.2020 17:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yoklama](
	[YoklamaID] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciID] [int] NULL,
	[Tarih] [date] NULL,
	[OkulaGeldimi] [varchar](15) NULL,
	[Durumu] [bit] NULL,
 CONSTRAINT [PK_Yoklama] PRIMARY KEY CLUSTERED 
(
	[YoklamaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yonetici]    Script Date: 11.05.2020 17:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yonetici](
	[YoneticiID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](50) NULL,
	[Sifre] [nchar](10) NULL,
	[ADSOYAD] [varchar](150) NULL,
 CONSTRAINT [PK_Yonetici] PRIMARY KEY CLUSTERED 
(
	[YoneticiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Aidat] ON 

INSERT [dbo].[Aidat] ([AidatID], [VeliID], [Tarih], [Tutar], [OdemeTuru], [Donem], [Durumu]) VALUES (1, 1, CAST(N'2020-05-10' AS Date), 1000, N'Nakit', N'2020-2021', 1)
INSERT [dbo].[Aidat] ([AidatID], [VeliID], [Tarih], [Tutar], [OdemeTuru], [Donem], [Durumu]) VALUES (2, 2, CAST(N'2020-05-10' AS Date), 1000, N'Havale', N'2020-2021', 1)
INSERT [dbo].[Aidat] ([AidatID], [VeliID], [Tarih], [Tutar], [OdemeTuru], [Donem], [Durumu]) VALUES (3, 3, CAST(N'2020-05-10' AS Date), 1000, N'EFT', N'2020-2021', 1)
INSERT [dbo].[Aidat] ([AidatID], [VeliID], [Tarih], [Tutar], [OdemeTuru], [Donem], [Durumu]) VALUES (4, 1, CAST(N'2020-05-10' AS Date), 500, N'Nakit', N'2020-2021', 1)
INSERT [dbo].[Aidat] ([AidatID], [VeliID], [Tarih], [Tutar], [OdemeTuru], [Donem], [Durumu]) VALUES (5, 5, CAST(N'2020-05-05' AS Date), 1000, N'Kredi Kartı', N'2020-2021', 1)
INSERT [dbo].[Aidat] ([AidatID], [VeliID], [Tarih], [Tutar], [OdemeTuru], [Donem], [Durumu]) VALUES (6, 4, CAST(N'2020-05-05' AS Date), 1000, N'Kredi Kartı', N'2020-2021', 0)
INSERT [dbo].[Aidat] ([AidatID], [VeliID], [Tarih], [Tutar], [OdemeTuru], [Donem], [Durumu]) VALUES (7, 4, CAST(N'2020-05-04' AS Date), 6000, N'Kredi Kartı', N'2020-2021', 1)
INSERT [dbo].[Aidat] ([AidatID], [VeliID], [Tarih], [Tutar], [OdemeTuru], [Donem], [Durumu]) VALUES (8, 2, CAST(N'2020-05-04' AS Date), 1000, N'Havale', N'2020-2021', 1)
INSERT [dbo].[Aidat] ([AidatID], [VeliID], [Tarih], [Tutar], [OdemeTuru], [Donem], [Durumu]) VALUES (9, 5, CAST(N'2020-05-04' AS Date), 2000, N'Havale', N'2020-2021', 1)
INSERT [dbo].[Aidat] ([AidatID], [VeliID], [Tarih], [Tutar], [OdemeTuru], [Donem], [Durumu]) VALUES (10, 5, CAST(N'2020-05-09' AS Date), 2000, N'Havale', N'2020-2021', 1)
SET IDENTITY_INSERT [dbo].[Aidat] OFF
SET IDENTITY_INSERT [dbo].[Ders] ON 

INSERT [dbo].[Ders] ([DersID], [DersAdi], [Aciklama], [Durumu]) VALUES (1, N'İngilizce', N'Öğrencilerimize temel İngilizce Eğitimi veriyoruz', 1)
INSERT [dbo].[Ders] ([DersID], [DersAdi], [Aciklama], [Durumu]) VALUES (2, N'Robotik Kodlama', N'Öğrencilerimize Robotik Kodlama Eğitimi Veriyoruz', 1)
INSERT [dbo].[Ders] ([DersID], [DersAdi], [Aciklama], [Durumu]) VALUES (3, N'Müzik', N'Bu dersimizde öğrenciler müzik eğitimi alır', 0)
INSERT [dbo].[Ders] ([DersID], [DersAdi], [Aciklama], [Durumu]) VALUES (4, N'Müzik ', N'BU ders Müziktir', 0)
INSERT [dbo].[Ders] ([DersID], [DersAdi], [Aciklama], [Durumu]) VALUES (5, N'Müzik', N'Öğrencilerimiz', 0)
INSERT [dbo].[Ders] ([DersID], [DersAdi], [Aciklama], [Durumu]) VALUES (6, N'Müzik', N'Öğrencilerimiz', 0)
SET IDENTITY_INSERT [dbo].[Ders] OFF
SET IDENTITY_INSERT [dbo].[DersProgrami] ON 

INSERT [dbo].[DersProgrami] ([DersprogramiID], [Ders1], [Ders2], [Ders3], [Ders4], [Ders5], [Ders6], [Dönem], [Tarih], [Durumu]) VALUES (1, N'İngilizce', N'Robotik Kodlama', N'İngilizce', N'Robotik Kodlama', N'İngilizce', N'Robotik Kodlama', N'2020-2021', CAST(N'2020-05-11' AS Date), 1)
INSERT [dbo].[DersProgrami] ([DersprogramiID], [Ders1], [Ders2], [Ders3], [Ders4], [Ders5], [Ders6], [Dönem], [Tarih], [Durumu]) VALUES (2, N'İngilizce', N'Robotik Kodlama', N'İngilizce', N'Robotik Kodlama', N'Robotik Kodlama', N'İngilizce', N'2020-2021', CAST(N'2020-05-10' AS Date), 1)
INSERT [dbo].[DersProgrami] ([DersprogramiID], [Ders1], [Ders2], [Ders3], [Ders4], [Ders5], [Ders6], [Dönem], [Tarih], [Durumu]) VALUES (3, N'İngilizce', N'İngilizce', N'İngilizce', N'İngilizce', N'Robotik Kodlama', N'Robotik Kodlama', N'2020-2021', CAST(N'2020-05-09' AS Date), 1)
INSERT [dbo].[DersProgrami] ([DersprogramiID], [Ders1], [Ders2], [Ders3], [Ders4], [Ders5], [Ders6], [Dönem], [Tarih], [Durumu]) VALUES (4, N'İngilizce', N'Robotik Kodlama', N'İngilizce', N'İngilizce', N'Robotik Kodlama', N'İngilizce', N'2020-2021', CAST(N'2020-05-04' AS Date), 0)
INSERT [dbo].[DersProgrami] ([DersprogramiID], [Ders1], [Ders2], [Ders3], [Ders4], [Ders5], [Ders6], [Dönem], [Tarih], [Durumu]) VALUES (5, N'İngilizce', N'Robotik Kodlama', N'İngilizce', N'', N'', N'', N'2020-2021', CAST(N'2020-05-04' AS Date), 0)
INSERT [dbo].[DersProgrami] ([DersprogramiID], [Ders1], [Ders2], [Ders3], [Ders4], [Ders5], [Ders6], [Dönem], [Tarih], [Durumu]) VALUES (6, N'İngilizce', N'Robotik Kodlama', N'İngilizce', N'Robotik Kodlama', N'İngilizce', N'İngilizce', N'2020-2021', CAST(N'2020-05-04' AS Date), 0)
INSERT [dbo].[DersProgrami] ([DersprogramiID], [Ders1], [Ders2], [Ders3], [Ders4], [Ders5], [Ders6], [Dönem], [Tarih], [Durumu]) VALUES (7, N'İngilizce', N'Robotik Kodlama', N'İngilizce', N'', N'', N'', N'2020-2021', CAST(N'2020-05-08' AS Date), 1)
INSERT [dbo].[DersProgrami] ([DersprogramiID], [Ders1], [Ders2], [Ders3], [Ders4], [Ders5], [Ders6], [Dönem], [Tarih], [Durumu]) VALUES (8, N'İngilizce', N'Robotik Kodlama', N'İngilizce', N'Robotik Kodlama', N'İngilizce', N'', N'2020-2021', CAST(N'2020-05-09' AS Date), 0)
INSERT [dbo].[DersProgrami] ([DersprogramiID], [Ders1], [Ders2], [Ders3], [Ders4], [Ders5], [Ders6], [Dönem], [Tarih], [Durumu]) VALUES (9, N'İngilizce', N'Robotik Kodlama', N'İngilizce', N'Robotik Kodlama', N'', N'', N'2020-2021', CAST(N'2020-05-10' AS Date), 0)
INSERT [dbo].[DersProgrami] ([DersprogramiID], [Ders1], [Ders2], [Ders3], [Ders4], [Ders5], [Ders6], [Dönem], [Tarih], [Durumu]) VALUES (10, N'İngilizce', N'İngilizce', N'Robotik Kodlama', N'Robotik Kodlama', N'', N'', N'2020-2021', CAST(N'2020-05-07' AS Date), 1)
INSERT [dbo].[DersProgrami] ([DersprogramiID], [Ders1], [Ders2], [Ders3], [Ders4], [Ders5], [Ders6], [Dönem], [Tarih], [Durumu]) VALUES (11, N'İngilizce', N'Robotik Kodlama', N'Robotik Kodlama', N'İngilizce', N'', N'', N'2020-2021', CAST(N'2020-05-06' AS Date), 1)
INSERT [dbo].[DersProgrami] ([DersprogramiID], [Ders1], [Ders2], [Ders3], [Ders4], [Ders5], [Ders6], [Dönem], [Tarih], [Durumu]) VALUES (12, N'İngilizce', N'Robotik Kodlama', N'İngilizce', N'Robotik Kodlama', N'Robotik Kodlama', N'İngilizce', N'2020-2021', CAST(N'2020-05-05' AS Date), 1)
SET IDENTITY_INSERT [dbo].[DersProgrami] OFF
SET IDENTITY_INSERT [dbo].[Duyuru] ON 

INSERT [dbo].[Duyuru] ([DuyuruID], [Tarih], [Baslik], [İcerik], [Dönem], [Durumu]) VALUES (1, CAST(N'2020-05-27' AS Date), N'Önemli Duyuru', N'Yemek Listesi Hakkında', N'2020-2021', 1)
INSERT [dbo].[Duyuru] ([DuyuruID], [Tarih], [Baslik], [İcerik], [Dönem], [Durumu]) VALUES (2, CAST(N'2020-05-08' AS Date), N'Duyuru!!', N'Servisler hakkında velilerimizin iletişime 12.05.2020 tarihine kadar geçmesi gerekiyor', N'2020-2021', 1)
INSERT [dbo].[Duyuru] ([DuyuruID], [Tarih], [Baslik], [İcerik], [Dönem], [Durumu]) VALUES (3, CAST(N'2020-05-09' AS Date), N'Velilerin Dikkatine', N'Öğrencilerin Çıkış Saati saat 6dadır', N'2020-2021', 0)
INSERT [dbo].[Duyuru] ([DuyuruID], [Tarih], [Baslik], [İcerik], [Dönem], [Durumu]) VALUES (4, CAST(N'2020-05-10' AS Date), N'Velilerin Dikkatine', N'İstanbul Gezisi', N'2020-2021', 1)
INSERT [dbo].[Duyuru] ([DuyuruID], [Tarih], [Baslik], [İcerik], [Dönem], [Durumu]) VALUES (5, CAST(N'2020-05-11' AS Date), N'Velilerin Dikkatine!!!', N'Duyuru', N'2020-2021', 1)
SET IDENTITY_INSERT [dbo].[Duyuru] OFF
SET IDENTITY_INSERT [dbo].[Etkinlik] ON 

INSERT [dbo].[Etkinlik] ([EtkinlikID], [Tarih], [Baslik], [İcerik], [Donem], [Durumu]) VALUES (1, CAST(N'2020-05-10' AS Date), N'İlk Etkinliğimiz', N'Bursa Gezisi düzenlenecektir Katılacaklar iletişime geçebilir', N'2020-2021', 1)
INSERT [dbo].[Etkinlik] ([EtkinlikID], [Tarih], [Baslik], [İcerik], [Donem], [Durumu]) VALUES (2, CAST(N'2020-05-11' AS Date), N'Velilerin Dikkatine', N'15.05.2020 Tarihinde İstanbul Gezisi düzenlenmektedir', N'2020-2021', 0)
INSERT [dbo].[Etkinlik] ([EtkinlikID], [Tarih], [Baslik], [İcerik], [Donem], [Durumu]) VALUES (3, CAST(N'2020-05-09' AS Date), N'Velilerin Dikkatine', N'30.05.2020 Tarihinde Okulumuzda müzik etkinliği düzenlenmektedir', N'2020-2021', 1)
INSERT [dbo].[Etkinlik] ([EtkinlikID], [Tarih], [Baslik], [İcerik], [Donem], [Durumu]) VALUES (4, CAST(N'2020-05-08' AS Date), N'Velilerin Dikkatine', N'Öğrencilerimizin 25.05.2020 Tarihinde tiyatro gösterisi vardır', N'2020-2021', 0)
SET IDENTITY_INSERT [dbo].[Etkinlik] OFF
SET IDENTITY_INSERT [dbo].[Galeri] ON 

INSERT [dbo].[Galeri] ([ResimID], [ResimAdi], [Tarih], [ResimYolu], [Durumu]) VALUES (1, N'Okul', CAST(N'2020-04-29' AS Date), N'C:\Users\asus\Desktop\RESİMLER\Okul.jpg', 1)
INSERT [dbo].[Galeri] ([ResimID], [ResimAdi], [Tarih], [ResimYolu], [Durumu]) VALUES (2, N'Anaokulu', CAST(N'2020-04-29' AS Date), N'C:\Users\asus\Desktop\RESİMLER\Anaokul.jpg', 1)
INSERT [dbo].[Galeri] ([ResimID], [ResimAdi], [Tarih], [ResimYolu], [Durumu]) VALUES (3, N'Okuliçi', CAST(N'2020-04-29' AS Date), N'C:\Users\asus\Desktop\RESİMLER\Anaokul2.jpg', 0)
INSERT [dbo].[Galeri] ([ResimID], [ResimAdi], [Tarih], [ResimYolu], [Durumu]) VALUES (8, N'Okul2', CAST(N'2020-05-04' AS Date), N'C:\Users\asus\Desktop\indir.jpg', 0)
INSERT [dbo].[Galeri] ([ResimID], [ResimAdi], [Tarih], [ResimYolu], [Durumu]) VALUES (9, N'Okul', CAST(N'2020-05-04' AS Date), N'C:\Users\asus\Desktop\indir.jpg', 0)
INSERT [dbo].[Galeri] ([ResimID], [ResimAdi], [Tarih], [ResimYolu], [Durumu]) VALUES (10, N'Okul', CAST(N'2020-05-13' AS Date), N'C:\Users\asus\Desktop\indir (1).jpg', 0)
INSERT [dbo].[Galeri] ([ResimID], [ResimAdi], [Tarih], [ResimYolu], [Durumu]) VALUES (11, N'Anaokulu2', CAST(N'2020-05-09' AS Date), N'C:\Users\asus\Desktop\RESİMLER\Anaokul2.jpg', 1)
SET IDENTITY_INSERT [dbo].[Galeri] OFF
SET IDENTITY_INSERT [dbo].[GelirGider] ON 

INSERT [dbo].[GelirGider] ([GelirGiderID], [GelirGider], [Tarih], [Tutar], [GelirGiderTuru], [OdemeTuru], [Donem], [Durumu]) VALUES (1, N'Gider', CAST(N'2020-05-01' AS Date), 3000, N'Kırtasiye Masrafları', N'Kredi Kartı', N'2020-2021', 1)
INSERT [dbo].[GelirGider] ([GelirGiderID], [GelirGider], [Tarih], [Tutar], [GelirGiderTuru], [OdemeTuru], [Donem], [Durumu]) VALUES (2, N'Gider', CAST(N'2020-05-02' AS Date), 5000, N'Kira Masrafları', N'Kredi Kartı', N'2020-2021', 1)
INSERT [dbo].[GelirGider] ([GelirGiderID], [GelirGider], [Tarih], [Tutar], [GelirGiderTuru], [OdemeTuru], [Donem], [Durumu]) VALUES (3, N'Gider', CAST(N'2020-05-02' AS Date), 1000, N'Kırtasiye Masrafları', N'Nakit', N'2020-2021', 1)
INSERT [dbo].[GelirGider] ([GelirGiderID], [GelirGider], [Tarih], [Tutar], [GelirGiderTuru], [OdemeTuru], [Donem], [Durumu]) VALUES (4, N'Gelir', CAST(N'2020-05-03' AS Date), 2000, N'Veli Ödemesi', N'Nakit', N'2020-2021', 1)
INSERT [dbo].[GelirGider] ([GelirGiderID], [GelirGider], [Tarih], [Tutar], [GelirGiderTuru], [OdemeTuru], [Donem], [Durumu]) VALUES (5, N'Gelir', CAST(N'2020-05-04' AS Date), 1000, N'Veli Ödemesi', N'Havale', N'2020-2021', 1)
INSERT [dbo].[GelirGider] ([GelirGiderID], [GelirGider], [Tarih], [Tutar], [GelirGiderTuru], [OdemeTuru], [Donem], [Durumu]) VALUES (6, N'Gelir', CAST(N'2020-05-04' AS Date), 1000, N'Veli Ödemesi', N'EFT', N'2020-2021', 1)
INSERT [dbo].[GelirGider] ([GelirGiderID], [GelirGider], [Tarih], [Tutar], [GelirGiderTuru], [OdemeTuru], [Donem], [Durumu]) VALUES (7, N'Gelir', CAST(N'2020-05-06' AS Date), 500, N'Veli Ödemesi', N'Nakit', N'2020-2021', 0)
INSERT [dbo].[GelirGider] ([GelirGiderID], [GelirGider], [Tarih], [Tutar], [GelirGiderTuru], [OdemeTuru], [Donem], [Durumu]) VALUES (8, N'Gider', CAST(N'2020-05-04' AS Date), 2500, N'Kırtasiye Masrafları', N'Kredi Kartı', N'2020-2021', 1)
INSERT [dbo].[GelirGider] ([GelirGiderID], [GelirGider], [Tarih], [Tutar], [GelirGiderTuru], [OdemeTuru], [Donem], [Durumu]) VALUES (9, N'Gider', CAST(N'2020-05-04' AS Date), 3000, N'Kırtasiye Masrafları', N'Nakit', N'2020-2021', 0)
INSERT [dbo].[GelirGider] ([GelirGiderID], [GelirGider], [Tarih], [Tutar], [GelirGiderTuru], [OdemeTuru], [Donem], [Durumu]) VALUES (10, N'Gider', CAST(N'2020-05-04' AS Date), 5000, N'Kira Masrafları', N'Nakit', N'2020-2021', 0)
INSERT [dbo].[GelirGider] ([GelirGiderID], [GelirGider], [Tarih], [Tutar], [GelirGiderTuru], [OdemeTuru], [Donem], [Durumu]) VALUES (11, N'Gider', CAST(N'2020-05-05' AS Date), 4000, N'Kırtasiye Masrafları', N'Kredi Kartı', N'2020-2021', 1)
INSERT [dbo].[GelirGider] ([GelirGiderID], [GelirGider], [Tarih], [Tutar], [GelirGiderTuru], [OdemeTuru], [Donem], [Durumu]) VALUES (12, N'Gelir', CAST(N'2020-05-05' AS Date), 1000, N'Veli Ödemesi', N'Kredi Kartı', N'2020-2021', 1)
INSERT [dbo].[GelirGider] ([GelirGiderID], [GelirGider], [Tarih], [Tutar], [GelirGiderTuru], [OdemeTuru], [Donem], [Durumu]) VALUES (13, N'Gelir', CAST(N'2020-05-05' AS Date), 1000, N'Veli Ödemesi', N'Kredi Kartı', N'2020-2021', 1)
INSERT [dbo].[GelirGider] ([GelirGiderID], [GelirGider], [Tarih], [Tutar], [GelirGiderTuru], [OdemeTuru], [Donem], [Durumu]) VALUES (14, N'Gelir', CAST(N'2020-05-04' AS Date), 5000, N'Veli Ödemesi', N'Havale', N'2020-2021', 1)
INSERT [dbo].[GelirGider] ([GelirGiderID], [GelirGider], [Tarih], [Tutar], [GelirGiderTuru], [OdemeTuru], [Donem], [Durumu]) VALUES (15, N'Gelir', CAST(N'2020-05-04' AS Date), 1000, N'Veli Ödemesi', N'Havale', N'2020-2021', 1)
INSERT [dbo].[GelirGider] ([GelirGiderID], [GelirGider], [Tarih], [Tutar], [GelirGiderTuru], [OdemeTuru], [Donem], [Durumu]) VALUES (16, N'Gelir', CAST(N'2020-05-04' AS Date), 1000, N'Veli Ödemesi', N'Kredi Kartı', N'2020-2021', 1)
INSERT [dbo].[GelirGider] ([GelirGiderID], [GelirGider], [Tarih], [Tutar], [GelirGiderTuru], [OdemeTuru], [Donem], [Durumu]) VALUES (17, N'Gider', CAST(N'2020-04-29' AS Date), 2500, N'Kira Masrafları', N'Nakit', N'2020-2021', 0)
INSERT [dbo].[GelirGider] ([GelirGiderID], [GelirGider], [Tarih], [Tutar], [GelirGiderTuru], [OdemeTuru], [Donem], [Durumu]) VALUES (18, N'Gelir', CAST(N'2020-05-09' AS Date), 1000, N'Veli Ödemesi', N'Havale', N'2020-2021', 1)
SET IDENTITY_INSERT [dbo].[GelirGider] OFF
SET IDENTITY_INSERT [dbo].[İlac] ON 

INSERT [dbo].[İlac] ([İlacID], [OgrenciID], [İlacAdi], [İlacAciklama], [Durumu]) VALUES (1, 1, N'Aspirin', N'günde 1 kez sabah saat 9:30 ta verilecek', 1)
INSERT [dbo].[İlac] ([İlacID], [OgrenciID], [İlacAdi], [İlacAciklama], [Durumu]) VALUES (3, 2, N'DENEME', N'DENEME', 1)
INSERT [dbo].[İlac] ([İlacID], [OgrenciID], [İlacAdi], [İlacAciklama], [Durumu]) VALUES (4, 3, N'Deneme', N'Deneme', 1)
INSERT [dbo].[İlac] ([İlacID], [OgrenciID], [İlacAdi], [İlacAciklama], [Durumu]) VALUES (5, 4, N'Deneme', N'deneme', 1)
INSERT [dbo].[İlac] ([İlacID], [OgrenciID], [İlacAdi], [İlacAciklama], [Durumu]) VALUES (6, 1, N'deneme', N'günde 2 kez', 1)
INSERT [dbo].[İlac] ([İlacID], [OgrenciID], [İlacAdi], [İlacAciklama], [Durumu]) VALUES (7, 9, N'Deneme', N'Günde 1 kez Sabah', 1)
INSERT [dbo].[İlac] ([İlacID], [OgrenciID], [İlacAdi], [İlacAciklama], [Durumu]) VALUES (8, 5, N'Deneme', N'Günde 1 kere öğlenleri verilecek', 0)
INSERT [dbo].[İlac] ([İlacID], [OgrenciID], [İlacAdi], [İlacAciklama], [Durumu]) VALUES (9, 5, N'Deneme', N'Günde 1 kez öğlenleri verilecek', 1)
SET IDENTITY_INSERT [dbo].[İlac] OFF
SET IDENTITY_INSERT [dbo].[İlacBildirimi] ON 

INSERT [dbo].[İlacBildirimi] ([İlacBildirimiID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (5, 2, CAST(N'2020-05-09' AS Date), N'Evet', 1)
INSERT [dbo].[İlacBildirimi] ([İlacBildirimiID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (6, 3, CAST(N'2020-05-09' AS Date), N'Evet', 1)
INSERT [dbo].[İlacBildirimi] ([İlacBildirimiID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (7, 4, CAST(N'2020-05-09' AS Date), N'Evet', 1)
INSERT [dbo].[İlacBildirimi] ([İlacBildirimiID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (8, 5, CAST(N'2020-05-09' AS Date), N'Evet', 1)
INSERT [dbo].[İlacBildirimi] ([İlacBildirimiID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (9, 9, CAST(N'2020-05-09' AS Date), N'Evet', 1)
INSERT [dbo].[İlacBildirimi] ([İlacBildirimiID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (10, 2, CAST(N'2020-05-10' AS Date), N'Hayır', 1)
INSERT [dbo].[İlacBildirimi] ([İlacBildirimiID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (11, 3, CAST(N'2020-05-10' AS Date), N'Evet', 1)
INSERT [dbo].[İlacBildirimi] ([İlacBildirimiID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (12, 4, CAST(N'2020-05-10' AS Date), N'Evet', 1)
INSERT [dbo].[İlacBildirimi] ([İlacBildirimiID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (13, 5, CAST(N'2020-05-10' AS Date), N'Evet', 1)
SET IDENTITY_INSERT [dbo].[İlacBildirimi] OFF
SET IDENTITY_INSERT [dbo].[Ogrenci] ON 

INSERT [dbo].[Ogrenci] ([OgrID], [ADSOYAD], [TC], [DogumTarihi], [Cinsiyet], [SınıfID], [KayitTarihi], [Dönemi], [Durumu]) VALUES (1, N'Ahmet Tekin', N'3333333234', CAST(N'2017-01-03' AS Date), N'Erkek ', 1, CAST(N'2020-04-25' AS Date), N'2020-2021', 0)
INSERT [dbo].[Ogrenci] ([OgrID], [ADSOYAD], [TC], [DogumTarihi], [Cinsiyet], [SınıfID], [KayitTarihi], [Dönemi], [Durumu]) VALUES (2, N'Mehmet Tez', N'312423423  ', CAST(N'2016-02-05' AS Date), N'Erkek ', 1, CAST(N'2020-04-23' AS Date), N'2021-2022', 1)
INSERT [dbo].[Ogrenci] ([OgrID], [ADSOYAD], [TC], [DogumTarihi], [Cinsiyet], [SınıfID], [KayitTarihi], [Dönemi], [Durumu]) VALUES (3, N'Ayse Kahraman', N'1231231321', CAST(N'2019-12-04' AS Date), N'Kız', 1, CAST(N'2020-04-14' AS Date), N'2020-2021', 1)
INSERT [dbo].[Ogrenci] ([OgrID], [ADSOYAD], [TC], [DogumTarihi], [Cinsiyet], [SınıfID], [KayitTarihi], [Dönemi], [Durumu]) VALUES (4, N'Tuğçe Serin', N'45435345', CAST(N'2016-08-03' AS Date), N'Kız', 4, CAST(N'2020-04-25' AS Date), N'2020-2021', 1)
INSERT [dbo].[Ogrenci] ([OgrID], [ADSOYAD], [TC], [DogumTarihi], [Cinsiyet], [SınıfID], [KayitTarihi], [Dönemi], [Durumu]) VALUES (5, N'Hasan Tekin', N'545000055', CAST(N'2020-01-07' AS Date), N'Erkek ', 4, CAST(N'2020-05-04' AS Date), N'2020-2021', 1)
INSERT [dbo].[Ogrenci] ([OgrID], [ADSOYAD], [TC], [DogumTarihi], [Cinsiyet], [SınıfID], [KayitTarihi], [Dönemi], [Durumu]) VALUES (6, N'Mehmet ', N'11111111', CAST(N'2014-01-08' AS Date), N'Erkek ', 4, CAST(N'2020-05-04' AS Date), N'2020-2021', 0)
INSERT [dbo].[Ogrenci] ([OgrID], [ADSOYAD], [TC], [DogumTarihi], [Cinsiyet], [SınıfID], [KayitTarihi], [Dönemi], [Durumu]) VALUES (7, N'Mehmet ', N'2222222', CAST(N'2019-07-10' AS Date), N'Erkek ', 1, CAST(N'2020-05-04' AS Date), N'2020-2021', 0)
INSERT [dbo].[Ogrenci] ([OgrID], [ADSOYAD], [TC], [DogumTarihi], [Cinsiyet], [SınıfID], [KayitTarihi], [Dönemi], [Durumu]) VALUES (8, N'Mehmet', N'22222222', CAST(N'2019-09-10' AS Date), N'Erkek ', 1, CAST(N'2020-05-04' AS Date), N'2020-2021', 0)
INSERT [dbo].[Ogrenci] ([OgrID], [ADSOYAD], [TC], [DogumTarihi], [Cinsiyet], [SınıfID], [KayitTarihi], [Dönemi], [Durumu]) VALUES (9, N'Cihan Ak', N'4234242342', CAST(N'2020-01-01' AS Date), N'Erkek ', 5, CAST(N'2020-05-04' AS Date), N'2020-2021', 1)
INSERT [dbo].[Ogrenci] ([OgrID], [ADSOYAD], [TC], [DogumTarihi], [Cinsiyet], [SınıfID], [KayitTarihi], [Dönemi], [Durumu]) VALUES (10, N'Deneme1', N'12312312', CAST(N'2020-05-04' AS Date), N'Erkek ', 5, CAST(N'2020-05-09' AS Date), N'2020-2021', 0)
INSERT [dbo].[Ogrenci] ([OgrID], [ADSOYAD], [TC], [DogumTarihi], [Cinsiyet], [SınıfID], [KayitTarihi], [Dönemi], [Durumu]) VALUES (11, N'11111111', N'111111111', CAST(N'2020-04-01' AS Date), N'Kız', 5, CAST(N'2020-05-09' AS Date), N'2024-2025', 0)
INSERT [dbo].[Ogrenci] ([OgrID], [ADSOYAD], [TC], [DogumTarihi], [Cinsiyet], [SınıfID], [KayitTarihi], [Dönemi], [Durumu]) VALUES (12, N'Deneme', N'23423423', CAST(N'2020-05-01' AS Date), N'Erkek ', 4, CAST(N'2020-05-09' AS Date), N'2020-2021', 0)
SET IDENTITY_INSERT [dbo].[Ogrenci] OFF
SET IDENTITY_INSERT [dbo].[Ogretmen] ON 

INSERT [dbo].[Ogretmen] ([OgretmenID], [ADSOYAD], [TC], [DogumTarihi], [Adres], [Maas], [Telefon], [KullaniciAdi], [Sifre], [Durumu]) VALUES (1, N'Fatma Ata', N'543535333  ', CAST(N'1988-11-05' AS Date), N'Tekirdağ', 2500, N'(234) 234-2342', N'Fatma', N'1234', 1)
INSERT [dbo].[Ogretmen] ([OgretmenID], [ADSOYAD], [TC], [DogumTarihi], [Adres], [Maas], [Telefon], [KullaniciAdi], [Sifre], [Durumu]) VALUES (2, N'Betül Işık', N'2543534543 ', CAST(N'1987-05-07' AS Date), N'Tekirdağ', 2750, N'(123) 123-1231', N'Betül', N'123', 1)
INSERT [dbo].[Ogretmen] ([OgretmenID], [ADSOYAD], [TC], [DogumTarihi], [Adres], [Maas], [Telefon], [KullaniciAdi], [Sifre], [Durumu]) VALUES (3, N'Ayşe Aytaç', N'22222', CAST(N'1999-06-09' AS Date), N'Tekirdağ/Merkez', 3000, N'(321) 312-3131', N'Ayşe', N'1234', 1)
INSERT [dbo].[Ogretmen] ([OgretmenID], [ADSOYAD], [TC], [DogumTarihi], [Adres], [Maas], [Telefon], [KullaniciAdi], [Sifre], [Durumu]) VALUES (5, N'Deniz Ak', N'1111111', CAST(N'2006-01-11' AS Date), N'Tekirdağ/Merkez', 3000, N'(545) 445-4545', N'Deniz', N'123', 0)
INSERT [dbo].[Ogretmen] ([OgretmenID], [ADSOYAD], [TC], [DogumTarihi], [Adres], [Maas], [Telefon], [KullaniciAdi], [Sifre], [Durumu]) VALUES (6, N'Demet Öz', N'22222222222', CAST(N'1990-02-07' AS Date), N'Tekirdağ', 3500, N'(345) 353-4533', N'Demet', N'123', 0)
INSERT [dbo].[Ogretmen] ([OgretmenID], [ADSOYAD], [TC], [DogumTarihi], [Adres], [Maas], [Telefon], [KullaniciAdi], [Sifre], [Durumu]) VALUES (7, N'Demet Öz', N'22222222', CAST(N'1995-07-07' AS Date), N'Tekirdağ', 4000, N'(123) 432-4234', N'Demet123', N'123', 0)
INSERT [dbo].[Ogretmen] ([OgretmenID], [ADSOYAD], [TC], [DogumTarihi], [Adres], [Maas], [Telefon], [KullaniciAdi], [Sifre], [Durumu]) VALUES (8, N'Denemeee', N'222222', CAST(N'2020-05-12' AS Date), N'Denem22222', 111, N'(111) 111-1111', N'111', N'111', 0)
SET IDENTITY_INSERT [dbo].[Ogretmen] OFF
SET IDENTITY_INSERT [dbo].[Sinif] ON 

INSERT [dbo].[Sinif] ([SınıfID], [Adi], [Kontenjan], [Dönem], [OgretmenID], [Durumu]) VALUES (1, N'Disney', 30, N'2020-2021', 1, 1)
INSERT [dbo].[Sinif] ([SınıfID], [Adi], [Kontenjan], [Dönem], [OgretmenID], [Durumu]) VALUES (4, N'Rainbow', 35, N'2020-2021', 2, 1)
INSERT [dbo].[Sinif] ([SınıfID], [Adi], [Kontenjan], [Dönem], [OgretmenID], [Durumu]) VALUES (5, N'Ocean', 35, N'2020-2021', 3, 1)
INSERT [dbo].[Sinif] ([SınıfID], [Adi], [Kontenjan], [Dönem], [OgretmenID], [Durumu]) VALUES (7, N'Deneme', 50, N'2020-2021', 3, 0)
INSERT [dbo].[Sinif] ([SınıfID], [Adi], [Kontenjan], [Dönem], [OgretmenID], [Durumu]) VALUES (8, N'Disney2', 60, N'2021-2022', 3, 0)
INSERT [dbo].[Sinif] ([SınıfID], [Adi], [Kontenjan], [Dönem], [OgretmenID], [Durumu]) VALUES (9, N'deneme22', 60, N'2021-2022', 2, 0)
INSERT [dbo].[Sinif] ([SınıfID], [Adi], [Kontenjan], [Dönem], [OgretmenID], [Durumu]) VALUES (10, N'Deneme', 55, N'2021-2022', 2, 0)
SET IDENTITY_INSERT [dbo].[Sinif] OFF
SET IDENTITY_INSERT [dbo].[Veli] ON 

INSERT [dbo].[Veli] ([VeliID], [ADSOYAD], [OGRID], [Telefon], [Adres], [KullaniciAdi], [Sifre], [YillikFiyat], [Dönemi], [Durumu]) VALUES (1, N'Mehmet Tekin', 5, N'(555) 353-4444', N'Tekirdağ', N'Mehmet', N'123', 7000, N'2020-2021', 1)
INSERT [dbo].[Veli] ([VeliID], [ADSOYAD], [OGRID], [Telefon], [Adres], [KullaniciAdi], [Sifre], [YillikFiyat], [Dönemi], [Durumu]) VALUES (2, N'Ayşe Tez', 2, N'(554) 433-2423', N'Tekirdağ', N'Ayse', N'123', 8000, N'2021-2022', 1)
INSERT [dbo].[Veli] ([VeliID], [ADSOYAD], [OGRID], [Telefon], [Adres], [KullaniciAdi], [Sifre], [YillikFiyat], [Dönemi], [Durumu]) VALUES (3, N'Yavuz Kahraman', 3, N'(555) 432-4234', N'Tekirdağ', N'Yavuz', N'1234', 6000, N'2020-2021', 1)
INSERT [dbo].[Veli] ([VeliID], [ADSOYAD], [OGRID], [Telefon], [Adres], [KullaniciAdi], [Sifre], [YillikFiyat], [Dönemi], [Durumu]) VALUES (4, N'Ali Çetin', 5, N'(554) 535-3453', N'Tekirdağ', N'Ali123', N'1234', 5000, N'2020-2021', 1)
INSERT [dbo].[Veli] ([VeliID], [ADSOYAD], [OGRID], [Telefon], [Adres], [KullaniciAdi], [Sifre], [YillikFiyat], [Dönemi], [Durumu]) VALUES (5, N'Ahmet Ak', 9, N'(554) 353-4535', N'İstanbul', N'Ahmet123', N'123', 7000, N'2020-2021', 1)
INSERT [dbo].[Veli] ([VeliID], [ADSOYAD], [OGRID], [Telefon], [Adres], [KullaniciAdi], [Sifre], [YillikFiyat], [Dönemi], [Durumu]) VALUES (6, N'sdfasfdsa', 12, N'(123) 121-3131', N'aaaaaa', N'111', N'111', 11, N'2020-2021', 0)
INSERT [dbo].[Veli] ([VeliID], [ADSOYAD], [OGRID], [Telefon], [Adres], [KullaniciAdi], [Sifre], [YillikFiyat], [Dönemi], [Durumu]) VALUES (7, N'1111', 12, N'(111) 111-1111', N'111111', N'1111', N'11111', 111111, N'2020-2021', 0)
SET IDENTITY_INSERT [dbo].[Veli] OFF
SET IDENTITY_INSERT [dbo].[YemekBildirimi] ON 

INSERT [dbo].[YemekBildirimi] ([YemekBildirimID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (5, 2, CAST(N'2020-05-09' AS Date), N'Yedi', 1)
INSERT [dbo].[YemekBildirimi] ([YemekBildirimID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (6, 3, CAST(N'2020-05-09' AS Date), N'Yedi', 1)
INSERT [dbo].[YemekBildirimi] ([YemekBildirimID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (7, 4, CAST(N'2020-05-09' AS Date), N'Yemedi', 1)
INSERT [dbo].[YemekBildirimi] ([YemekBildirimID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (8, 5, CAST(N'2020-05-09' AS Date), N'Az Yedi', 1)
INSERT [dbo].[YemekBildirimi] ([YemekBildirimID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (9, 9, CAST(N'2020-05-09' AS Date), N'Yedi', 1)
INSERT [dbo].[YemekBildirimi] ([YemekBildirimID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (10, 2, CAST(N'2020-05-10' AS Date), N'Yedi', 1)
INSERT [dbo].[YemekBildirimi] ([YemekBildirimID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (11, 3, CAST(N'2020-05-10' AS Date), N'Az Yedi', 1)
INSERT [dbo].[YemekBildirimi] ([YemekBildirimID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (12, 4, CAST(N'2020-05-10' AS Date), N'Yemedi', 1)
INSERT [dbo].[YemekBildirimi] ([YemekBildirimID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (13, 5, CAST(N'2020-05-10' AS Date), N'Yedi', 1)
INSERT [dbo].[YemekBildirimi] ([YemekBildirimID], [OgrenciID], [Tarih], [Aciklama], [Durumu]) VALUES (14, 9, CAST(N'2020-05-10' AS Date), N'Yemedi', 1)
SET IDENTITY_INSERT [dbo].[YemekBildirimi] OFF
SET IDENTITY_INSERT [dbo].[YemekListesi] ON 

INSERT [dbo].[YemekListesi] ([YemekListesiID], [Tarih], [Sabah], [Ogle], [Ikindi], [Donemi], [Durumu]) VALUES (1, CAST(N'2020-05-10' AS Date), N'Vişne Reçelli Ekmek', N'Karnıyarık', N'Börek,Kek', N'2020-2021', 1)
INSERT [dbo].[YemekListesi] ([YemekListesiID], [Tarih], [Sabah], [Ogle], [Ikindi], [Donemi], [Durumu]) VALUES (2, CAST(N'2020-05-11' AS Date), N'Serpme Kahvaltı', N'Pilav,Nohut', N'Kek,Süt,Börek', N'2020-2021', 1)
INSERT [dbo].[YemekListesi] ([YemekListesiID], [Tarih], [Sabah], [Ogle], [Ikindi], [Donemi], [Durumu]) VALUES (3, CAST(N'2020-05-08' AS Date), N'Sabah', N'Öğle', N'İkindi', N'2020-2021', 1)
INSERT [dbo].[YemekListesi] ([YemekListesiID], [Tarih], [Sabah], [Ogle], [Ikindi], [Donemi], [Durumu]) VALUES (4, CAST(N'2020-05-09' AS Date), N'Tost', N'Makarna,Köfte', N'Kek,Süt', N'2020-2021', 1)
SET IDENTITY_INSERT [dbo].[YemekListesi] OFF
SET IDENTITY_INSERT [dbo].[Yoklama] ON 

INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (1, 1, CAST(N'2020-04-27' AS Date), N'Hayır', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (2, 2, CAST(N'2020-04-27' AS Date), N'Evet', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (3, 3, CAST(N'2020-04-27' AS Date), N'Evet', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (4, 4, CAST(N'2020-04-27' AS Date), N'Hayır', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (5, 1, CAST(N'2020-04-28' AS Date), N'Evet', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (6, 2, CAST(N'2020-04-28' AS Date), N'Evet', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (7, 3, CAST(N'2020-04-28' AS Date), N'Hayır', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (8, 4, CAST(N'2020-04-28' AS Date), N'Evet', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (9, 1, CAST(N'2020-04-29' AS Date), N'Evet', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (10, 2, CAST(N'2020-04-29' AS Date), N'Hayır', 0)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (11, 1, CAST(N'2020-05-09' AS Date), N'Evet', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (12, 2, CAST(N'2020-05-09' AS Date), N'Evet', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (13, 3, CAST(N'2020-05-09' AS Date), N'Hayır', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (14, 4, CAST(N'2020-05-09' AS Date), N'Hayır', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (15, 9, CAST(N'2020-05-09' AS Date), N'Hayır', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (16, 2, CAST(N'2020-05-10' AS Date), N'Evet', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (17, 3, CAST(N'2020-05-10' AS Date), N'Evet', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (18, 4, CAST(N'2020-05-10' AS Date), N'Hayır', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (19, 5, CAST(N'2020-05-10' AS Date), N'Evet', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (20, 9, CAST(N'2020-05-10' AS Date), N'Evet', 1)
INSERT [dbo].[Yoklama] ([YoklamaID], [OgrenciID], [Tarih], [OkulaGeldimi], [Durumu]) VALUES (21, 9, CAST(N'2020-05-10' AS Date), N'Evet', 0)
SET IDENTITY_INSERT [dbo].[Yoklama] OFF
SET IDENTITY_INSERT [dbo].[Yonetici] ON 

INSERT [dbo].[Yonetici] ([YoneticiID], [KullaniciAdi], [Sifre], [ADSOYAD]) VALUES (1, N'Yonetici', N'123       ', N'Mehmet')
SET IDENTITY_INSERT [dbo].[Yonetici] OFF
ALTER TABLE [dbo].[Aidat] ADD  CONSTRAINT [DF_Aidat_Durumu]  DEFAULT ((1)) FOR [Durumu]
GO
ALTER TABLE [dbo].[Ders] ADD  CONSTRAINT [DF_Ders_Durumu]  DEFAULT ((1)) FOR [Durumu]
GO
ALTER TABLE [dbo].[DersProgrami] ADD  CONSTRAINT [DF_DersProgrami_Durumu]  DEFAULT ((1)) FOR [Durumu]
GO
ALTER TABLE [dbo].[Duyuru] ADD  CONSTRAINT [DF_Duyuru_Durumu]  DEFAULT ((1)) FOR [Durumu]
GO
ALTER TABLE [dbo].[Etkinlik] ADD  CONSTRAINT [DF_Etkinlik_Durumu]  DEFAULT ((1)) FOR [Durumu]
GO
ALTER TABLE [dbo].[Galeri] ADD  CONSTRAINT [DF_Galeri_Durumu]  DEFAULT ((1)) FOR [Durumu]
GO
ALTER TABLE [dbo].[GelirGider] ADD  CONSTRAINT [DF_GelirGider_Durumu]  DEFAULT ((1)) FOR [Durumu]
GO
ALTER TABLE [dbo].[İlac] ADD  CONSTRAINT [DF_İlac_Durumu]  DEFAULT ((1)) FOR [Durumu]
GO
ALTER TABLE [dbo].[İlacBildirimi] ADD  CONSTRAINT [DF_İlacBildirimi_Durumu]  DEFAULT ((1)) FOR [Durumu]
GO
ALTER TABLE [dbo].[Ogrenci] ADD  CONSTRAINT [DF_Ogrenci_Durumu]  DEFAULT ((1)) FOR [Durumu]
GO
ALTER TABLE [dbo].[Ogretmen] ADD  CONSTRAINT [DF_Ogretmen_Durumu]  DEFAULT ((1)) FOR [Durumu]
GO
ALTER TABLE [dbo].[Sinif] ADD  CONSTRAINT [DF_Sinif_Durumu]  DEFAULT ((1)) FOR [Durumu]
GO
ALTER TABLE [dbo].[YemekBildirimi] ADD  CONSTRAINT [DF_YemekBildirimi_Durumu]  DEFAULT ((1)) FOR [Durumu]
GO
ALTER TABLE [dbo].[YemekListesi] ADD  CONSTRAINT [DF_YemekListesi_Durumu]  DEFAULT ((1)) FOR [Durumu]
GO
ALTER TABLE [dbo].[Yoklama] ADD  CONSTRAINT [DF_Yoklama_Durumu]  DEFAULT ((1)) FOR [Durumu]
GO
ALTER TABLE [dbo].[Aidat]  WITH CHECK ADD  CONSTRAINT [FK_Aidat_Veli1] FOREIGN KEY([VeliID])
REFERENCES [dbo].[Veli] ([VeliID])
GO
ALTER TABLE [dbo].[Aidat] CHECK CONSTRAINT [FK_Aidat_Veli1]
GO
ALTER TABLE [dbo].[İlac]  WITH CHECK ADD  CONSTRAINT [FK_İlac_Ogrenci] FOREIGN KEY([OgrenciID])
REFERENCES [dbo].[Ogrenci] ([OgrID])
GO
ALTER TABLE [dbo].[İlac] CHECK CONSTRAINT [FK_İlac_Ogrenci]
GO
ALTER TABLE [dbo].[İlacBildirimi]  WITH CHECK ADD  CONSTRAINT [FK_İlacBildirimi_Ogrenci] FOREIGN KEY([OgrenciID])
REFERENCES [dbo].[Ogrenci] ([OgrID])
GO
ALTER TABLE [dbo].[İlacBildirimi] CHECK CONSTRAINT [FK_İlacBildirimi_Ogrenci]
GO
ALTER TABLE [dbo].[Ogrenci]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenci_Sinif] FOREIGN KEY([SınıfID])
REFERENCES [dbo].[Sinif] ([SınıfID])
GO
ALTER TABLE [dbo].[Ogrenci] CHECK CONSTRAINT [FK_Ogrenci_Sinif]
GO
ALTER TABLE [dbo].[Sinif]  WITH CHECK ADD  CONSTRAINT [FK_Sinif_Ogretmen] FOREIGN KEY([OgretmenID])
REFERENCES [dbo].[Ogretmen] ([OgretmenID])
GO
ALTER TABLE [dbo].[Sinif] CHECK CONSTRAINT [FK_Sinif_Ogretmen]
GO
ALTER TABLE [dbo].[Veli]  WITH CHECK ADD  CONSTRAINT [FK_Veli_Ogrenci] FOREIGN KEY([OGRID])
REFERENCES [dbo].[Ogrenci] ([OgrID])
GO
ALTER TABLE [dbo].[Veli] CHECK CONSTRAINT [FK_Veli_Ogrenci]
GO
ALTER TABLE [dbo].[YemekBildirimi]  WITH CHECK ADD  CONSTRAINT [FK_YemekBildirimi_Ogrenci] FOREIGN KEY([OgrenciID])
REFERENCES [dbo].[Ogrenci] ([OgrID])
GO
ALTER TABLE [dbo].[YemekBildirimi] CHECK CONSTRAINT [FK_YemekBildirimi_Ogrenci]
GO
ALTER TABLE [dbo].[Yoklama]  WITH CHECK ADD  CONSTRAINT [FK_Yoklama_Ogrenci] FOREIGN KEY([OgrenciID])
REFERENCES [dbo].[Ogrenci] ([OgrID])
GO
ALTER TABLE [dbo].[Yoklama] CHECK CONSTRAINT [FK_Yoklama_Ogrenci]
GO
