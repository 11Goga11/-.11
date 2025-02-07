USE [Учёт.ПК]
GO
/****** Object:  Table [dbo].[Авторизация]    Script Date: 23.05.2024 20:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Авторизация](
	[ID_Сотрудника] [int] NOT NULL,
	[Логин] [nvarchar](50) NOT NULL,
	[Пароль] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Авторизация] PRIMARY KEY CLUSTERED 
(
	[ID_Сотрудника] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Кабинет]    Script Date: 23.05.2024 20:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Кабинет](
	[Номер_кабинета] [int] NOT NULL,
	[Количество_компьютеров_в_кабинете] [int] NOT NULL,
 CONSTRAINT [PK_Кабинет] PRIMARY KEY CLUSTERED 
(
	[Номер_кабинета] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Компьютеры]    Script Date: 23.05.2024 20:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Компьютеры](
	[ID_Компьютера] [int] NOT NULL,
	[ID_Сотрудника] [int] NOT NULL,
	[Название] [nvarchar](50) NOT NULL,
	[Номер_модели] [int] NOT NULL,
	[Стоимость] [nvarchar](50) NOT NULL,
	[Номер_кабинета] [int] NOT NULL,
	[Номер_пирефирии] [int] NOT NULL,
	[Дата_изготовления] [date] NOT NULL,
 CONSTRAINT [PK_Компьютеры] PRIMARY KEY CLUSTERED 
(
	[ID_Компьютера] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Модель ПК]    Script Date: 23.05.2024 20:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Модель ПК](
	[Номер_модели] [int] NOT NULL,
	[Процессор] [nvarchar](50) NOT NULL,
	[Оперативная_память] [nvarchar](50) NOT NULL,
	[Материнская_плата] [nvarchar](50) NOT NULL,
	[Видеокарта] [nvarchar](50) NOT NULL,
	[Операционная_система] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Модел ПК] PRIMARY KEY CLUSTERED 
(
	[Номер_модели] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Отдел]    Script Date: 23.05.2024 20:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Отдел](
	[ID_Отдела] [int] NOT NULL,
	[Наименование] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Должность] PRIMARY KEY CLUSTERED 
(
	[ID_Отдела] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пирефирия]    Script Date: 23.05.2024 20:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пирефирия](
	[Номер_пирефирии] [int] NOT NULL,
	[Монитор] [nvarchar](50) NOT NULL,
	[Клавиатура] [nvarchar](50) NOT NULL,
	[Мышь] [nvarchar](50) NOT NULL,
	[Принтер] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Пирефирия] PRIMARY KEY CLUSTERED 
(
	[Номер_пирефирии] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сотрудники]    Script Date: 23.05.2024 20:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сотрудники](
	[ID_Сотрудника] [int] NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Отчетство] [nvarchar](50) NOT NULL,
	[ID_Отдела] [int] NOT NULL,
 CONSTRAINT [PK_Пользователи] PRIMARY KEY CLUSTERED 
(
	[ID_Сотрудника] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Учет компьютерного оборудования]    Script Date: 23.05.2024 20:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Учет компьютерного оборудования](
	[ID_Отдела] [int] NOT NULL,
	[Количество] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Учет компьютерного оборудования] PRIMARY KEY CLUSTERED 
(
	[ID_Отдела] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Авторизация] ([ID_Сотрудника], [Логин], [Пароль]) VALUES (1, N'User1', N'Password1')
INSERT [dbo].[Авторизация] ([ID_Сотрудника], [Логин], [Пароль]) VALUES (2, N'User2', N'Password2')
INSERT [dbo].[Авторизация] ([ID_Сотрудника], [Логин], [Пароль]) VALUES (3, N'User3', N'Password3')
INSERT [dbo].[Авторизация] ([ID_Сотрудника], [Логин], [Пароль]) VALUES (4, N'User4', N'Password4')
INSERT [dbo].[Авторизация] ([ID_Сотрудника], [Логин], [Пароль]) VALUES (5, N'User5', N'Password5')
INSERT [dbo].[Авторизация] ([ID_Сотрудника], [Логин], [Пароль]) VALUES (6, N'User6', N'Password6')
INSERT [dbo].[Авторизация] ([ID_Сотрудника], [Логин], [Пароль]) VALUES (7, N'User7', N'Password7')
INSERT [dbo].[Авторизация] ([ID_Сотрудника], [Логин], [Пароль]) VALUES (8, N'User8', N'Password8')
INSERT [dbo].[Авторизация] ([ID_Сотрудника], [Логин], [Пароль]) VALUES (9, N'User9', N'Password9')
INSERT [dbo].[Авторизация] ([ID_Сотрудника], [Логин], [Пароль]) VALUES (10, N'User10', N'Password10')
GO
INSERT [dbo].[Кабинет] ([Номер_кабинета], [Количество_компьютеров_в_кабинете]) VALUES (1, 5)
INSERT [dbo].[Кабинет] ([Номер_кабинета], [Количество_компьютеров_в_кабинете]) VALUES (2, 5)
GO
INSERT [dbo].[Компьютеры] ([ID_Компьютера], [ID_Сотрудника], [Название], [Номер_модели], [Стоимость], [Номер_кабинета], [Номер_пирефирии], [Дата_изготовления]) VALUES (1, 1, N'Офисный компьютер', 1, N'75000 рублей', 1, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[Компьютеры] ([ID_Компьютера], [ID_Сотрудника], [Название], [Номер_модели], [Стоимость], [Номер_кабинета], [Номер_пирефирии], [Дата_изготовления]) VALUES (2, 2, N'Офисный компьютер', 2, N'75000 рублей', 1, 2, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[Компьютеры] ([ID_Компьютера], [ID_Сотрудника], [Название], [Номер_модели], [Стоимость], [Номер_кабинета], [Номер_пирефирии], [Дата_изготовления]) VALUES (3, 3, N'Офисный компьютер', 3, N'75000 рублей', 1, 3, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[Компьютеры] ([ID_Компьютера], [ID_Сотрудника], [Название], [Номер_модели], [Стоимость], [Номер_кабинета], [Номер_пирефирии], [Дата_изготовления]) VALUES (4, 4, N'Офисный компьютер', 4, N'75000 рублей', 1, 4, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[Компьютеры] ([ID_Компьютера], [ID_Сотрудника], [Название], [Номер_модели], [Стоимость], [Номер_кабинета], [Номер_пирефирии], [Дата_изготовления]) VALUES (5, 5, N'Офисный компьютер', 5, N'75000 рублей', 1, 5, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[Компьютеры] ([ID_Компьютера], [ID_Сотрудника], [Название], [Номер_модели], [Стоимость], [Номер_кабинета], [Номер_пирефирии], [Дата_изготовления]) VALUES (6, 6, N'Офисный компьютер', 6, N'85000 рублей', 2, 6, CAST(N'2023-10-10' AS Date))
INSERT [dbo].[Компьютеры] ([ID_Компьютера], [ID_Сотрудника], [Название], [Номер_модели], [Стоимость], [Номер_кабинета], [Номер_пирефирии], [Дата_изготовления]) VALUES (7, 7, N'Офисный компьютер', 7, N'85000 рублей', 2, 7, CAST(N'2023-10-10' AS Date))
INSERT [dbo].[Компьютеры] ([ID_Компьютера], [ID_Сотрудника], [Название], [Номер_модели], [Стоимость], [Номер_кабинета], [Номер_пирефирии], [Дата_изготовления]) VALUES (8, 8, N'Офисный компьютер', 8, N'85000 рублей', 2, 8, CAST(N'2023-10-10' AS Date))
INSERT [dbo].[Компьютеры] ([ID_Компьютера], [ID_Сотрудника], [Название], [Номер_модели], [Стоимость], [Номер_кабинета], [Номер_пирефирии], [Дата_изготовления]) VALUES (9, 9, N'Офисный компьютер', 9, N'85000 рублей', 2, 9, CAST(N'2023-10-10' AS Date))
INSERT [dbo].[Компьютеры] ([ID_Компьютера], [ID_Сотрудника], [Название], [Номер_модели], [Стоимость], [Номер_кабинета], [Номер_пирефирии], [Дата_изготовления]) VALUES (10, 10, N'Офисный компьютер', 10, N'85000 рублей', 2, 10, CAST(N'2023-10-10' AS Date))
GO
INSERT [dbo].[Модель ПК] ([Номер_модели], [Процессор], [Оперативная_память], [Материнская_плата], [Видеокарта], [Операционная_система]) VALUES (1, N'AMD Ryzen 5 7500F', N'8GB', N' Gigabyte A620M S2H', N'Встроенная', N'Windows 7')
INSERT [dbo].[Модель ПК] ([Номер_модели], [Процессор], [Оперативная_память], [Материнская_плата], [Видеокарта], [Операционная_система]) VALUES (2, N'AMD Ryzen 5 7500F', N'8GB', N' Gigabyte A620M S2H', N'Встроенная', N'Windows 7')
INSERT [dbo].[Модель ПК] ([Номер_модели], [Процессор], [Оперативная_память], [Материнская_плата], [Видеокарта], [Операционная_система]) VALUES (3, N'AMD Ryzen 5 7500F', N'8GB', N' Gigabyte A620M S2H', N'Встроенная', N'Windows 7')
INSERT [dbo].[Модель ПК] ([Номер_модели], [Процессор], [Оперативная_память], [Материнская_плата], [Видеокарта], [Операционная_система]) VALUES (4, N'AMD Ryzen 5 7500F', N'8GB', N' Gigabyte A620M S2H', N'Встроенная', N'Windows 7')
INSERT [dbo].[Модель ПК] ([Номер_модели], [Процессор], [Оперативная_память], [Материнская_плата], [Видеокарта], [Операционная_система]) VALUES (5, N'AMD Ryzen 5 7500F', N'8GB', N' Gigabyte A620M S2H', N'Встроенная', N'Windows 7')
INSERT [dbo].[Модель ПК] ([Номер_модели], [Процессор], [Оперативная_память], [Материнская_плата], [Видеокарта], [Операционная_система]) VALUES (6, N'Intel Core i5-10400F', N'16GB', N'GIGABYTE H510M H V2', N'Встроенная', N'Windows 10')
INSERT [dbo].[Модель ПК] ([Номер_модели], [Процессор], [Оперативная_память], [Материнская_плата], [Видеокарта], [Операционная_система]) VALUES (7, N'Intel Core i5-10400F', N'16GB', N'GIGABYTE H510M H V3', N'Встроенная', N'Windows 10')
INSERT [dbo].[Модель ПК] ([Номер_модели], [Процессор], [Оперативная_память], [Материнская_плата], [Видеокарта], [Операционная_система]) VALUES (8, N'Intel Core i5-10400F', N'16GB', N'GIGABYTE H510M H V4', N'Встроенная', N'Windows 10')
INSERT [dbo].[Модель ПК] ([Номер_модели], [Процессор], [Оперативная_память], [Материнская_плата], [Видеокарта], [Операционная_система]) VALUES (9, N'Intel Core i5-10400F', N'16GB', N'GIGABYTE H510M H V5', N'Встроенная', N'Windows 10')
INSERT [dbo].[Модель ПК] ([Номер_модели], [Процессор], [Оперативная_память], [Материнская_плата], [Видеокарта], [Операционная_система]) VALUES (10, N'Intel Core i5-10400F', N'16GB', N'GIGABYTE H510M H V6', N'Встроенная', N'Windows 10')
GO
INSERT [dbo].[Отдел] ([ID_Отдела], [Наименование]) VALUES (1, N'Системный администратор')
INSERT [dbo].[Отдел] ([ID_Отдела], [Наименование]) VALUES (2, N'Админ')
INSERT [dbo].[Отдел] ([ID_Отдела], [Наименование]) VALUES (3, N'Разработчик 1C')
INSERT [dbo].[Отдел] ([ID_Отдела], [Наименование]) VALUES (4, N'Начальник информационных технологий')
GO
INSERT [dbo].[Пирефирия] ([Номер_пирефирии], [Монитор], [Клавиатура], [Мышь], [Принтер]) VALUES (1, N'МОНИТОР 24" HP Z24N G3, Acer SA222QEbi 21.45"', N'Acer OKW020', N'Acer OMR307', N'лазерный HP LaserJet M211dw')
INSERT [dbo].[Пирефирия] ([Номер_пирефирии], [Монитор], [Клавиатура], [Мышь], [Принтер]) VALUES (2, N'МОНИТОР 24" HP Z24N G3, Acer SA222QEbi 21.45"', N'Acer OKW021', N'Acer OMR308', N'лазерный HP LaserJet M211dw')
INSERT [dbo].[Пирефирия] ([Номер_пирефирии], [Монитор], [Клавиатура], [Мышь], [Принтер]) VALUES (3, N'МОНИТОР 24" HP Z24N G3, Acer SA222QEbi 21.45"', N'Acer OKW022', N'Acer OMR309', N'лазерный HP LaserJet M211dw')
INSERT [dbo].[Пирефирия] ([Номер_пирефирии], [Монитор], [Клавиатура], [Мышь], [Принтер]) VALUES (4, N'МОНИТОР 24" HP Z24N G3, Acer SA222QEbi 21.45"', N'Acer OKW023', N'Acer OMR310', N'лазерный HP LaserJet M211dw')
INSERT [dbo].[Пирефирия] ([Номер_пирефирии], [Монитор], [Клавиатура], [Мышь], [Принтер]) VALUES (5, N'МОНИТОР 24" HP Z24N G3, Acer SA222QEbi 21.45"', N'Acer OKW024', N'Acer OMR311', N'лазерный HP LaserJet M211dw')
INSERT [dbo].[Пирефирия] ([Номер_пирефирии], [Монитор], [Клавиатура], [Мышь], [Принтер]) VALUES (6, N'NPC MF2204-F 21.45, DELL E2420H 23.8', N'Acer OKW301', N'Logitech B100', N'лазерный HP LaserJet M211dw')
INSERT [dbo].[Пирефирия] ([Номер_пирефирии], [Монитор], [Клавиатура], [Мышь], [Принтер]) VALUES (7, N'NPC MF2204-F 21.45, DELL E2420H 23.9', N'Acer OKW302', N'Logitech B101', N'лазерный HP LaserJet M211dw')
INSERT [dbo].[Пирефирия] ([Номер_пирефирии], [Монитор], [Клавиатура], [Мышь], [Принтер]) VALUES (8, N'NPC MF2204-F 21.45, DELL E2420H 23.10', N'Acer OKW303', N'Logitech B102', N'лазерный HP LaserJet M211dw')
INSERT [dbo].[Пирефирия] ([Номер_пирефирии], [Монитор], [Клавиатура], [Мышь], [Принтер]) VALUES (9, N'NPC MF2204-F 21.45, DELL E2420H 23.11', N'Acer OKW304', N'Logitech B103', N'лазерный HP LaserJet M211dw')
INSERT [dbo].[Пирефирия] ([Номер_пирефирии], [Монитор], [Клавиатура], [Мышь], [Принтер]) VALUES (10, N'NPC MF2204-F 21.45, DELL E2420H 23.12', N'Acer OKW305', N'Logitech B104', N'лазерный HP LaserJet M211dw')
GO
INSERT [dbo].[Сотрудники] ([ID_Сотрудника], [Имя], [Фамилия], [Отчетство], [ID_Отдела]) VALUES (1, N'Павел', N'Ермаков', N'Андреевич', 1)
INSERT [dbo].[Сотрудники] ([ID_Сотрудника], [Имя], [Фамилия], [Отчетство], [ID_Отдела]) VALUES (2, N'Николай', N'Кошкин', N'Дмитричевич', 2)
INSERT [dbo].[Сотрудники] ([ID_Сотрудника], [Имя], [Фамилия], [Отчетство], [ID_Отдела]) VALUES (3, N'Владимир', N'Кочкин', N'Николаевич', 3)
INSERT [dbo].[Сотрудники] ([ID_Сотрудника], [Имя], [Фамилия], [Отчетство], [ID_Отдела]) VALUES (4, N'Пётр', N'Елькин', N'Николавевич', 4)
INSERT [dbo].[Сотрудники] ([ID_Сотрудника], [Имя], [Фамилия], [Отчетство], [ID_Отдела]) VALUES (5, N'Владимир', N'Мурин', N'Эдуардович', 3)
INSERT [dbo].[Сотрудники] ([ID_Сотрудника], [Имя], [Фамилия], [Отчетство], [ID_Отдела]) VALUES (6, N'Эдуард', N'Дорохов', N'Владимирович', 3)
INSERT [dbo].[Сотрудники] ([ID_Сотрудника], [Имя], [Фамилия], [Отчетство], [ID_Отдела]) VALUES (7, N'Кирилл', N'Владимиров', N'Михайлович', 3)
INSERT [dbo].[Сотрудники] ([ID_Сотрудника], [Имя], [Фамилия], [Отчетство], [ID_Отдела]) VALUES (8, N'Оксана', N'Мошкина', N'Дмитриевна', 3)
INSERT [dbo].[Сотрудники] ([ID_Сотрудника], [Имя], [Фамилия], [Отчетство], [ID_Отдела]) VALUES (9, N'Юлия', N'Шишкина', N'Анатольевна', 3)
INSERT [dbo].[Сотрудники] ([ID_Сотрудника], [Имя], [Фамилия], [Отчетство], [ID_Отдела]) VALUES (10, N'Елена', N'Деревенкина', N'Юрьевная', 3)
GO
INSERT [dbo].[Учет компьютерного оборудования] ([ID_Отдела], [Количество]) VALUES (1, N'1')
INSERT [dbo].[Учет компьютерного оборудования] ([ID_Отдела], [Количество]) VALUES (2, N'1')
INSERT [dbo].[Учет компьютерного оборудования] ([ID_Отдела], [Количество]) VALUES (3, N'7')
INSERT [dbo].[Учет компьютерного оборудования] ([ID_Отдела], [Количество]) VALUES (4, N'1')
GO
ALTER TABLE [dbo].[Авторизация]  WITH CHECK ADD  CONSTRAINT [FK_Авторизация_Сотрудники] FOREIGN KEY([ID_Сотрудника])
REFERENCES [dbo].[Сотрудники] ([ID_Сотрудника])
GO
ALTER TABLE [dbo].[Авторизация] CHECK CONSTRAINT [FK_Авторизация_Сотрудники]
GO
ALTER TABLE [dbo].[Компьютеры]  WITH CHECK ADD  CONSTRAINT [FK_Компьютеры_Кабинет1] FOREIGN KEY([Номер_кабинета])
REFERENCES [dbo].[Кабинет] ([Номер_кабинета])
GO
ALTER TABLE [dbo].[Компьютеры] CHECK CONSTRAINT [FK_Компьютеры_Кабинет1]
GO
ALTER TABLE [dbo].[Компьютеры]  WITH CHECK ADD  CONSTRAINT [FK_Компьютеры_Модель ПК] FOREIGN KEY([Номер_модели])
REFERENCES [dbo].[Модель ПК] ([Номер_модели])
GO
ALTER TABLE [dbo].[Компьютеры] CHECK CONSTRAINT [FK_Компьютеры_Модель ПК]
GO
ALTER TABLE [dbo].[Компьютеры]  WITH CHECK ADD  CONSTRAINT [FK_Компьютеры_Пирефирия] FOREIGN KEY([Номер_пирефирии])
REFERENCES [dbo].[Пирефирия] ([Номер_пирефирии])
GO
ALTER TABLE [dbo].[Компьютеры] CHECK CONSTRAINT [FK_Компьютеры_Пирефирия]
GO
ALTER TABLE [dbo].[Компьютеры]  WITH CHECK ADD  CONSTRAINT [FK_Компьютеры_Сотрудники] FOREIGN KEY([ID_Сотрудника])
REFERENCES [dbo].[Сотрудники] ([ID_Сотрудника])
GO
ALTER TABLE [dbo].[Компьютеры] CHECK CONSTRAINT [FK_Компьютеры_Сотрудники]
GO
ALTER TABLE [dbo].[Сотрудники]  WITH CHECK ADD  CONSTRAINT [FK_Пользователи_Должность] FOREIGN KEY([ID_Отдела])
REFERENCES [dbo].[Отдел] ([ID_Отдела])
GO
ALTER TABLE [dbo].[Сотрудники] CHECK CONSTRAINT [FK_Пользователи_Должность]
GO
ALTER TABLE [dbo].[Учет компьютерного оборудования]  WITH CHECK ADD  CONSTRAINT [FK_Учет компьютерного оборудования_Отдел] FOREIGN KEY([ID_Отдела])
REFERENCES [dbo].[Отдел] ([ID_Отдела])
GO
ALTER TABLE [dbo].[Учет компьютерного оборудования] CHECK CONSTRAINT [FK_Учет компьютерного оборудования_Отдел]
GO
