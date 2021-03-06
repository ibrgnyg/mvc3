USE [kitapProjesi]
GO
/****** Object:  Table [dbo].[favorim]    Script Date: 4.8.2019 23:30:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[favorim](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NULL,
	[userId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[indirim]    Script Date: 4.8.2019 23:30:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[indirim](
	[indirimNo] [int] IDENTITY(1,1) NOT NULL,
	[indirimAdi] [varchar](max) NULL,
	[aciklama] [varchar](100) NULL,
	[indirimTutar] [decimal](6, 2) NULL,
	[indirimBaslangic] [datetime] NULL,
	[indirimBitis] [datetime] NULL,
	[musteriNo] [int] NULL,
	[indirimDurum] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[indirimNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kategori]    Script Date: 4.8.2019 23:30:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kategori](
	[kategoriNo] [int] IDENTITY(1,1) NOT NULL,
	[kategoriAdi] [varchar](50) NULL,
	[aciklama] [varchar](100) NULL,
	[resimAdi] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[kategoriNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[resim]    Script Date: 4.8.2019 23:30:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[resim](
	[resimNo] [int] IDENTITY(1,1) NOT NULL,
	[urunNo] [int] NULL,
	[resimAdi] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[resimNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[role]    Script Date: 4.8.2019 23:30:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[role](
	[roleId] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[siparis]    Script Date: 4.8.2019 23:30:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[siparis](
	[siparisNo] [int] IDENTITY(1,1) NOT NULL,
	[musteriNo] [int] NULL,
	[siparisTarihi] [datetime] NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[address] [varchar](100) NULL,
	[phone] [varchar](16) NULL,
	[company] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[postakodu] [int] NULL,
	[email] [varchar](50) NULL,
	[note] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[siparisNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[siparisDetay]    Script Date: 4.8.2019 23:30:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[siparisDetay](
	[siparisNo] [int] NOT NULL,
	[urunNo] [int] NOT NULL,
	[miktar] [int] NULL,
 CONSTRAINT [siparisNoUrunNoPK] PRIMARY KEY CLUSTERED 
(
	[siparisNo] ASC,
	[urunNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[urun]    Script Date: 4.8.2019 23:30:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[urun](
	[urunNo] [int] IDENTITY(1,1) NOT NULL,
	[urunAdi] [varchar](100) NULL,
	[yazar] [varchar](50) NULL,
	[yayinEvi] [varchar](50) NULL,
	[fiyat] [decimal](5, 2) NULL,
	[aciklama] [text] NULL,
	[stok] [int] NULL,
	[kategoriNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[urunNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user]    Script Date: 4.8.2019 23:30:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](max) NULL,
	[rePassword] [varchar](max) NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[phone] [varchar](15) NULL,
	[address] [text] NULL,
	[activationCode] [varchar](max) NULL,
	[resetCode] [varchar](max) NULL,
	[hostName] [varchar](50) NULL,
	[isActive] [bit] NULL,
	[loginAttempt] [int] NULL,
	[createdDate] [datetime] NULL,
	[loginTime] [datetime] NULL,
	[isMailVerified] [bit] NULL,
	[roleId] [int] NULL,
	[subscribe] [bit] NULL DEFAULT ((0)),
	[city] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[yorum]    Script Date: 4.8.2019 23:30:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[yorum](
	[yorumNo] [int] IDENTITY(1,1) NOT NULL,
	[urunNo] [int] NULL,
	[yorumAdi] [varchar](max) NULL,
	[yorumcu] [varchar](50) NULL,
	[yorumTarihi] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[yorumNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[favorim]  WITH CHECK ADD FOREIGN KEY([productId])
REFERENCES [dbo].[urun] ([urunNo])
GO
ALTER TABLE [dbo].[favorim]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[user] ([userId])
GO
ALTER TABLE [dbo].[indirim]  WITH CHECK ADD FOREIGN KEY([musteriNo])
REFERENCES [dbo].[user] ([userId])
GO
ALTER TABLE [dbo].[resim]  WITH CHECK ADD FOREIGN KEY([urunNo])
REFERENCES [dbo].[urun] ([urunNo])
GO
ALTER TABLE [dbo].[siparis]  WITH CHECK ADD FOREIGN KEY([musteriNo])
REFERENCES [dbo].[user] ([userId])
GO
ALTER TABLE [dbo].[siparisDetay]  WITH CHECK ADD  CONSTRAINT [siparisFK] FOREIGN KEY([siparisNo])
REFERENCES [dbo].[siparis] ([siparisNo])
GO
ALTER TABLE [dbo].[siparisDetay] CHECK CONSTRAINT [siparisFK]
GO
ALTER TABLE [dbo].[siparisDetay]  WITH CHECK ADD  CONSTRAINT [urunNoFK] FOREIGN KEY([urunNo])
REFERENCES [dbo].[urun] ([urunNo])
GO
ALTER TABLE [dbo].[siparisDetay] CHECK CONSTRAINT [urunNoFK]
GO
ALTER TABLE [dbo].[urun]  WITH CHECK ADD FOREIGN KEY([kategoriNo])
REFERENCES [dbo].[kategori] ([kategoriNo])
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD FOREIGN KEY([roleId])
REFERENCES [dbo].[role] ([roleId])
GO
ALTER TABLE [dbo].[yorum]  WITH CHECK ADD FOREIGN KEY([urunNo])
REFERENCES [dbo].[urun] ([urunNo])
GO
