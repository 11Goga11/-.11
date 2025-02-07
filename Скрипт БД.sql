USE [master]
GO
/****** Object:  Database [Учёт.ПК]    Script Date: 23.05.2024 19:20:23 ******/
CREATE DATABASE [Учёт.ПК]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Учёт.ПК', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Учёт.ПК.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Учёт.ПК_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Учёт.ПК_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Учёт.ПК] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Учёт.ПК].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Учёт.ПК] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Учёт.ПК] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Учёт.ПК] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Учёт.ПК] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Учёт.ПК] SET ARITHABORT OFF 
GO
ALTER DATABASE [Учёт.ПК] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Учёт.ПК] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Учёт.ПК] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Учёт.ПК] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Учёт.ПК] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Учёт.ПК] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Учёт.ПК] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Учёт.ПК] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Учёт.ПК] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Учёт.ПК] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Учёт.ПК] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Учёт.ПК] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Учёт.ПК] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Учёт.ПК] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Учёт.ПК] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Учёт.ПК] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Учёт.ПК] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Учёт.ПК] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Учёт.ПК] SET  MULTI_USER 
GO
ALTER DATABASE [Учёт.ПК] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Учёт.ПК] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Учёт.ПК] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Учёт.ПК] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Учёт.ПК] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Учёт.ПК] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Учёт.ПК] SET QUERY_STORE = ON
GO
ALTER DATABASE [Учёт.ПК] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Учёт.ПК]
GO
/****** Object:  Table [dbo].[Авторизация]    Script Date: 23.05.2024 19:20:23 ******/
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
/****** Object:  Table [dbo].[Кабинет]    Script Date: 23.05.2024 19:20:23 ******/
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
/****** Object:  Table [dbo].[Компьютеры]    Script Date: 23.05.2024 19:20:23 ******/
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
/****** Object:  Table [dbo].[Модель ПК]    Script Date: 23.05.2024 19:20:23 ******/
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
/****** Object:  Table [dbo].[Отдел]    Script Date: 23.05.2024 19:20:23 ******/
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
/****** Object:  Table [dbo].[Пирефирия]    Script Date: 23.05.2024 19:20:23 ******/
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
/****** Object:  Table [dbo].[Сотрудники]    Script Date: 23.05.2024 19:20:23 ******/
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
/****** Object:  Table [dbo].[Учет компьютерного оборудования]    Script Date: 23.05.2024 19:20:23 ******/
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
USE [master]
GO
ALTER DATABASE [Учёт.ПК] SET  READ_WRITE 
GO
