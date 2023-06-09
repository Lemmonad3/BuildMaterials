USE [Trade1]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 18.04.2023 11:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatus] [nvarchar](max) NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderPickupPoint] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 18.04.2023 11:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 18.04.2023 11:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductCategory] [nvarchar](max) NOT NULL,
	[ProductPhoto] [image] NOT NULL,
	[ProductManufacturer] [nvarchar](max) NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[ProductDiscountAmount] [tinyint] NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductStatus] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 18.04.2023 11:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 18.04.2023 11:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOrder]    Script Date: 18.04.2023 11:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOrder](
	[UserID] [int] NOT NULL,
	[UsersOrderID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[UsersOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (1, N'Завершен', CAST(N'2022-05-21T00:00:00.000' AS DateTime), N'18')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (2, N'Новый ', CAST(N'2022-05-22T00:00:00.000' AS DateTime), N'14')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (3, N'Завершен', CAST(N'2022-05-23T00:00:00.000' AS DateTime), N'22')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (4, N'Новый ', CAST(N'2022-05-23T00:00:00.000' AS DateTime), N'22')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (5, N'Завершен', CAST(N'2022-05-25T00:00:00.000' AS DateTime), N'26')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (6, N'Новый', CAST(N'2022-05-26T00:00:00.000' AS DateTime), N'28')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (7, N'Завершен', CAST(N'2022-05-28T00:00:00.000' AS DateTime), N'28')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (8, N'Новый', CAST(N'2022-05-28T00:00:00.000' AS DateTime), N'32')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (9, N'Завершен', CAST(N'2022-05-29T00:00:00.000' AS DateTime), N'36')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (10, N'Завершен', CAST(N'2022-05-30T00:00:00.000' AS DateTime), N'36')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (1, N'BPV4MM')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (1, N'PMEZMH')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (2, N'F895RB')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (2, N'JVL42J')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (3, N'3L7RCZ')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (3, N'3XBOTN')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (4, N'2G3280')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (4, N'MIO8YV')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (5, N'UER2QD')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (5, N'ZR70B4')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (6, N'LPDDM4')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (6, N'LQ48MW')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (7, N'M26EXW')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (7, N'O43COU')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (8, N'ASPXSG')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (8, N'K0YACK')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (9, N'4JR1HN')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (9, N'4WZEOT')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (10, N'EQ6RKO')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (10, N'QHNOKR')
GO
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'0YGHZ7', N'Очки защитные ', N'Очки защитные Husqvarna Clear (5449638-01) открытые с прозрачными линзами', N'Защита лица, глаз, головы', 0x696D6167652E6A7067, N'Husqvarna', CAST(700.0000 AS Decimal(19, 4)), 9, 36, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'2G3280', N'Угол наружный ', N'Угол наружный Vinylon 3050 мм серо-голубой', N'Стеновые и фасадные материалы', 0x696D6167652E6A7067, N'Vinylon', CAST(795.0000 AS Decimal(19, 4)), 9, 20, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'3L7RCZ', N'Газобетон', N'Газобетон ЛСР 100х250х625 мм D400', N'Стеновые и фасадные материалы', 0x696D6167652E6A7067, N'ЛСР', CAST(7400.0000 AS Decimal(19, 4)), 2, 20, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'3XBOTN', N'Керамзит фракция', N'Керамзит фракция 10-20 мм 0,05 куб.м', N'Общестроительные материалы', 0x696D6167652E6A7067, N'MixMaster', CAST(110.0000 AS Decimal(19, 4)), 5, 21, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'4JR1HN', N'Шпатель', N'Шпатель малярный 100 мм с пластиковой ручкой', N'Ручной инструмент', 0x696D6167652E6A7067, N'Hesler', CAST(26.0000 AS Decimal(19, 4)), 6, 7, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'4WZEOT', N'Лезвие для ножа ', N'Лезвие для ножа Armero 18 мм прямое (10 шт.)', N'Ручной инструмент', 0x696D6167652E6A7067, N'Armero', CAST(110.0000 AS Decimal(19, 4)), 6, 17, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'61PGH3', N'Очки защитные', N'Очки защитные Delta Plus KILIMANDJARO (KILIMGRIN) открытые с прозрачными линзами', N'Защита лица, глаз, головы', 0x696D6167652E6A7067, N'KILIMGRIN', CAST(184.0000 AS Decimal(19, 4)), 6, 25, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'81F1WG', N'Каска защитная', N'Каска защитная Delta Plus BASEBALL DIAMOND V UP (DIAM5UPBCFLBS) белая', N'Защита лица, глаз, головы', 0x696D6167652E6A7067, N'Delta', CAST(1500.0000 AS Decimal(19, 4)), 2, 13, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'83M5ME', N'Кисть', N'Кисть плоская смешанная щетина 100х12 мм для красок и антисептиков на водной основе', N'Ручной инструмент', 0x696D6167652E6A7067, N'Armero', CAST(122.0000 AS Decimal(19, 4)), 9, 26, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'ASPXSG', N'Ровнитель', N'Ровнитель (наливной пол) финишный Weber.vetonit 4100 самовыравнивающийся высокопрочный 20 кг', N'Сухие строительные смеси и гидроизоляция', 0x696D6167652E6A7067, N'Weber', CAST(711.0000 AS Decimal(19, 4)), 10, 20, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'BPV4MM', N'Пленка техническая', N'Пленка техническая полиэтиленовая Изостронг 60 мк 3 м рукав 1,5 м, пог.м', N'Общестроительные материалы', 0x696D6167652E6A7067, N'Изостронг', CAST(8.0000 AS Decimal(19, 4)), 8, 2, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'EQ6RKO', N'Подшлемник', N'Подшлемник для каски одноразовый', N'Защита лица, глаз, головы', 0x696D6167652E6A7067, N'Husqvarna', CAST(36.0000 AS Decimal(19, 4)), 3, 22, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'F895RB', N'Песок строительный', N'Песок строительный 50 кг', N'Общестроительные материалы', 0x696D6167652E6A7067, N'Knauf', CAST(102.0000 AS Decimal(19, 4)), 6, 7, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'GN6ICZ', N'Каска защитная ', N'Каска защитная Исток (КАС001О) оранжеваяи', N'Защита лица, глаз, головы', 0x696D6167652E6A7067, N'Исток', CAST(154.0000 AS Decimal(19, 4)), 6, 8, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'I6MH89', N'Валик', N'Валик Wenzo Roma полиакрил 250 мм ворс 18 мм для красок грунтов и антисептиков на водной основе с рукояткой', N'Ручной инструмент', 0x696D6167652E6A7067, N'Wenzo Roma', CAST(326.0000 AS Decimal(19, 4)), 6, 3, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'JVL42J', N'Пленка техническая', N'Пленка техническая полиэтиленовая Изостронг 60 мк 3 м рукав 1,5 м, пог.м', N'Общестроительные материалы', 0x696D6167652E6A7067, N'Изостронг', CAST(13.0000 AS Decimal(19, 4)), 4, 34, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'K0YACK', N'Смесь цементно-песчаная', N'Смесь цементно-песчаная (ЦПС) 300 по ТУ MixMaster Универсал 25 кг', N'Сухие строительные смеси и гидроизоляция', 0x696D6167652E6A7067, N'MixMaster', CAST(160.0000 AS Decimal(19, 4)), 8, 19, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'LPDDM4', N'Штукатурка гипсовая', N'Штукатурка гипсовая Knauf Ротбанд 30 кг', N'Сухие строительные смеси и гидроизоляция', 0x696D6167652E6A7067, N'Knauf', CAST(500.0000 AS Decimal(19, 4)), 6, 38, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'LQ48MW', N'Штукатурка гипсовая', N'Штукатурка гипсовая Knauf МП-75 машинная 30 кг', N'Сухие строительные смеси и гидроизоляция', 0x696D6167652E6A7067, N'Weber', CAST(462.0000 AS Decimal(19, 4)), 6, 33, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'M26EXW', N'Клей для плитки, керамогранита и камня', N'Клей для плитки, керамогранита и камня Крепс Усиленный серый (класс С1) 25 кг', N'Сухие строительные смеси и гидроизоляция', 0x696D6167652E6A7067, N'Knauf', CAST(340.0000 AS Decimal(19, 4)), 8, 2, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'MIO8YV', N'Кирпич', N'Кирпич рядовой Боровичи полнотелый М150 250х120х65 мм 1NF', N'Стеновые и фасадные материалы', 0x696D6167652E6A7067, N'ВОЛМА', CAST(30.0000 AS Decimal(19, 4)), 9, 31, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'O43COU', N'Шпаклевка', N'Шпаклевка полимерная Weber.vetonit LR + для сухих помещений белая 20 кг', N'Сухие строительные смеси и гидроизоляция', 0x696D6167652E6A7067, N'ВОЛМА', CAST(750.0000 AS Decimal(19, 4)), 1, 16, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'PMEZMH', N'Цемент', N'Цемент Евроцемент М500 Д0 ЦЕМ I 42,5 50 кг', N'Общестроительные материалы', 0x696D6167652E6A7067, N'М500', CAST(440.0000 AS Decimal(19, 4)), 8, 34, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'QHNOKR', N'Маска защитная', N'Маска защитная Исток (ЩИТ001) ударопрочная и термостойкая', N'Защита лица, глаз, головы', 0x696D6167652E6A7067, N'Исток', CAST(251.0000 AS Decimal(19, 4)), 2, 22, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'S72AM3', N'Пазогребневая плита ', N'Пазогребневая плита ВОЛМА Гидро 667х500х80 мм полнотелая', N'Стеновые и фасадные материалы', 0x696D6167652E6A7067, N'ВОЛМА', CAST(500.0000 AS Decimal(19, 4)), 5, 35, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'UER2QD', N'Скоба для пазогребневой плиты', N'Скоба для пазогребневой плиты Knauf С1 120х100 мм', N'Стеновые и фасадные материалы', 0x696D6167652E6A7067, N'Knauf', CAST(25.0000 AS Decimal(19, 4)), 8, 27, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'Z3LO0U', N'Очки защитные', N'Очки защитные Delta Plus RUIZ (RUIZ1VI) закрытые с прозрачными линзами', N'Защита лица, глаз, головы', 0x696D6167652E6A7067, N'RUIZ', CAST(228.0000 AS Decimal(19, 4)), 9, 11, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'Z3XFSP', N'Нож строительный ', N'Нож строительный Hesler 18 мм с ломающимся лезвием пластиковый корпус', N'Ручной инструмент', 0x696D6167652E6A7067, N'Hesler', CAST(63.0000 AS Decimal(19, 4)), 8, 5, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'ZKQ5FF', N'Лезвие для ножа ', N'Лезвие для ножа Hesler 18 мм прямое (10 шт.)', N'Ручной инструмент', 0x696D6167652E6A7067, N'Hesler', CAST(65.0000 AS Decimal(19, 4)), 6, 6, N'Завершен')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'ZR70B4', N'Кирпич', N'Кирпич рядовой силикатный Павловский завод полнотелый М200 250х120х65 мм 1NF', N'Стеновые и фасадные материалы', 0x696D6167652E6A7067, N'Павловский завод ', CAST(16.0000 AS Decimal(19, 4)), 3, 26, N'Завершен')
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Басова', N'Амина', N'Кирилловна', N'klh7pi4rcbtz@gmail.com', N'2L6KZG', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Михайлов', N'Андрей', N'Денисович', N'gn0354mbiork@outlook.com', N'uzWC67', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Сидоров', N'Егор', N'Александрович', N'1o4l05k8dwpv@yahoo.com', N'8ntwUp', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Аксенова', N'Ульяна', N' Ивановна', N'hsqixl2vebuz@mail.com', N'YOyhfR', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Васильева', N' Камила ', N'Ивановна', N'towkse0hf26b@outlook.com', N'RSbvHv', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Ильин', N'Артём ', N'Родионович', N'khx0ncdwz4uj@gmail.com', N'rwVDh9', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Васильева ', N'Василиса ', N'Фёдоровна', N'01zji3wfuq7h@outlook.com', N'LdNyos', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Кудрявцева ', N'Василиса ', N'Матвеевна', N'am65k18q7bwp@mail.com', N'gynQMT', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Кириллова ', N'Николь ', N'Святославовна', N'wt9q8i6ypx47@outlook.com', N'AtnDjr', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (11, N'Андреева ', N'Полина ', N'Артёмовна', N'4o72gufv3xlz@tutanota.com', N'JlFRCZ', 3)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Product] ([ProductArticleNumber])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[UserOrder]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[UserOrder]  WITH CHECK ADD FOREIGN KEY([UsersOrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
