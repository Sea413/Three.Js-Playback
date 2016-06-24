USE [master]
GO
/****** Object:  Database [Hegemony]    Script Date: 5/17/2016 7:15:19 PM ******/
CREATE DATABASE [Hegemony]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hegemony', FILENAME = N'C:\Users\epicodus_student\Hegemony.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Hegemony_log', FILENAME = N'C:\Users\epicodus_student\Hegemony_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Hegemony] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hegemony].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hegemony] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hegemony] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hegemony] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hegemony] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hegemony] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hegemony] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Hegemony] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hegemony] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hegemony] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hegemony] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hegemony] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hegemony] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hegemony] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hegemony] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hegemony] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Hegemony] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hegemony] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hegemony] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hegemony] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hegemony] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hegemony] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Hegemony] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hegemony] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Hegemony] SET  MULTI_USER 
GO
ALTER DATABASE [Hegemony] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hegemony] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hegemony] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hegemony] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Hegemony] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Hegemony]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/17/2016 7:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_HistoryRow] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Armies]    Script Date: 5/17/2016 7:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Armies](
	[ArmyId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[NegativeModifier] [decimal](18, 2) NOT NULL,
	[PositiveModifier] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Army] PRIMARY KEY CLUSTERED 
(
	[ArmyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/17/2016 7:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_IdentityRoleClaim<string>] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/17/2016 7:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_IdentityRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/17/2016 7:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_IdentityUserClaim<string>] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/17/2016 7:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_IdentityUserLogin<string>] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/17/2016 7:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_IdentityUserRole<string>] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/17/2016 7:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_ApplicationUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CharacterInfo]    Script Date: 5/17/2016 7:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CharacterInfo](
	[AvatarId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[image] [varchar](50) NULL,
	[real_name] [varchar](50) NULL,
	[api_detail_url] [varchar](50) NULL,
	[deck] [varchar](50) NULL,
	[fame] [int] NULL,
 CONSTRAINT [PK_CharacterInfo] PRIMARY KEY CLUSTERED 
(
	[AvatarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Economies]    Script Date: 5/17/2016 7:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Economies](
	[EconomyId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[NegativeModifier] [decimal](18, 2) NOT NULL,
	[PositiveModifier] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Economy] PRIMARY KEY CLUSTERED 
(
	[EconomyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Geographies]    Script Date: 5/17/2016 7:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Geographies](
	[GeographyId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[NegativeModifier] [decimal](18, 2) NOT NULL,
	[PositiveModifier] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Geography] PRIMARY KEY CLUSTERED 
(
	[GeographyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Governments]    Script Date: 5/17/2016 7:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Governments](
	[GovernmentId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[NegativeModifier] [decimal](18, 2) NOT NULL,
	[PositiveModifier] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Government] PRIMARY KEY CLUSTERED 
(
	[GovernmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hazards]    Script Date: 5/17/2016 7:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hazards](
	[HazardId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[OutcomeId] [int] NOT NULL,
 CONSTRAINT [PK_Hazard] PRIMARY KEY CLUSTERED 
(
	[HazardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nations]    Script Date: 5/17/2016 7:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nations](
	[NationId] [int] IDENTITY(1,1) NOT NULL,
	[ArmyId] [int] NOT NULL,
	[ArmyValue] [int] NOT NULL,
	[EconomyId] [int] NOT NULL,
	[CapitalValue] [int] NOT NULL,
	[GeographyId] [int] NOT NULL,
	[ResourceValue] [int] NOT NULL,
	[GovernmentId] [int] NOT NULL,
	[PopulationValue] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[TechnologyId] [int] NOT NULL,
	[TechnologyValue] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[HappinessValue] [int] NULL,
 CONSTRAINT [PK_Nation] PRIMARY KEY CLUSTERED 
(
	[NationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outcomes]    Script Date: 5/17/2016 7:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outcomes](
	[OutcomeId] [int] IDENTITY(1,1) NOT NULL,
	[AVModifer] [int] NOT NULL,
	[CVModifier] [int] NOT NULL,
	[Description] [int] NOT NULL,
	[HVModifier] [int] NOT NULL,
	[HazardId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PVModifier] [int] NOT NULL,
	[RVModifier] [int] NOT NULL,
 CONSTRAINT [PK_Outcome] PRIMARY KEY CLUSTERED 
(
	[OutcomeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Technologies]    Script Date: 5/17/2016 7:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technologies](
	[TechnologyId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[NegativeModifier] [decimal](18, 2) NOT NULL,
	[PositiveModifier] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Technology] PRIMARY KEY CLUSTERED 
(
	[TechnologyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160506171129_Initial', N'7.0.0-rc1-16348')
SET IDENTITY_INSERT [dbo].[Armies] ON 

INSERT [dbo].[Armies] ([ArmyId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (2, N'Army of the people! Army size can never be more than 1/4 of the population, resource expenditure on army actions is half', N'Volunteer Force', CAST(0.25 AS Decimal(18, 2)), CAST(0.50 AS Decimal(18, 2)))
INSERT [dbo].[Armies] ([ArmyId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (5, N'For the empire! Army size can exceed population count, tech increases are reduced by half', N'Forced Conscription', CAST(0.50 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[Armies] ([ArmyId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (7, N'I Robot! You can contribute your tech score to all army checks, if your tech falls below your starting value, you cannot contribute your army strength to events', N'Robot Army', CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Armies] ([ArmyId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (8, N'Put down your arms! Happiness, resources, capital, technology all recieve 1.5 times bonus at the end of the game, your army score will remain at zero throughout the game', N'No Army', CAST(0.00 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Armies] OFF
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'399d0e9d-561e-4994-b6d0-50d8b7397aaf', 0, N'b006fb0c-e408-4ca1-a256-d999e8be8ed6', NULL, 0, 1, NULL, NULL, N'BEN', N'AQAAAAEAACcQAAAAEBwbFMhpPl9chBzfSjEFIxf9HOtogsgYHqjgNvpCEvJb8oSKxfzTWL0PHbrRu0gf0Q==', NULL, 0, N'9b492b67-711b-4e1f-adf7-acaac9791a3c', 0, N'Ben')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'ae0adbd9-7b0b-4d54-9b87-ad87f91d2c85', 0, N'b18574ed-5d22-4f0b-ab4b-928570a9fffe', NULL, 0, 1, NULL, NULL, N'TED', N'AQAAAAEAACcQAAAAELq09aKPH96HB0P3i56ksUE8A98sSll82VvDF/M3ezDBKB6RYodFq7YeXwNcn8WsYQ==', NULL, 0, N'a668a6af-2ef2-4a48-b3a3-64988b7c5c68', 0, N'Ted')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'dd50674b-06f2-445c-ac71-d9ca6de98aa1', 0, N'7ae3f804-85f1-46db-8d86-bcbb8c5c82ce', NULL, 0, 1, NULL, NULL, N'DOUG', N'AQAAAAEAACcQAAAAEDzTV2V+8rUB4k/dbueN5Bqyn+0A9JUZSvtNJPPFagmEt8xnMHogtHGD+GxTvmuvsQ==', NULL, 0, N'07667877-1331-4370-b272-4009797ddd44', 0, N'doug')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'f1809799-7626-4058-90a1-3b1024cbdbcf', 0, N'05c6fd49-6415-4465-ac6f-1a4e1f971069', NULL, 0, 1, NULL, NULL, N'BEAR', N'AQAAAAEAACcQAAAAEOr+iioCW8c7S9r2TPHfSoKR/GiMg7muzRJew2KBJvegmk3TVcM8PAf2i84NXW9F2w==', NULL, 0, N'542d4112-7dc8-41b7-9903-9ce8f564561f', 0, N'Bear')
SET IDENTITY_INSERT [dbo].[Economies] ON 

INSERT [dbo].[Economies] ([EconomyId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (1, N'Hegemony stands for hedge funds! At the start of each round you have a 50% chance of capital increasing by 75% and a 50% chance of a 75% reduction', N'Capitalism', CAST(0.75 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)))
INSERT [dbo].[Economies] ([EconomyId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (2, N'Under the boots of the oligarch! Capital is always equal to population size', N'Serfdom', CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[Economies] ([EconomyId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (3, N'Fear thy neighbors! Technology and population can only increase by 25%, an additional neutral option will be provided on all tests involving foreign nations', N'Isolationism', CAST(0.25 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[Economies] ([EconomyId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (4, N'Gold in them hills! All resource benefits are times 2X, any economic failures during the game result in double penalties', N'Gold Standard', CAST(2.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Economies] OFF
SET IDENTITY_INSERT [dbo].[Geographies] ON 

INSERT [dbo].[Geographies] ([GeographyId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (1, N'You are the Muad''Dib! Starting population is 25% lower, but all resource bumps half way through the game tripl   ', N'Desert', CAST(0.25 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Geographies] ([GeographyId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (2, N'In the Eerie! Resource score can be added to army score in checks, resource gains are reduced by 25% ', N'Mountains', CAST(1.00 AS Decimal(18, 2)), CAST(0.25 AS Decimal(18, 2)))
INSERT [dbo].[Geographies] ([GeographyId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (3, N'The Ents march to war! No benefits are provided during the course of the game, your final score is multipled by 1.25 at the end of the game', N'Woodlands', CAST(1.00 AS Decimal(18, 2)), CAST(1.25 AS Decimal(18, 2)))
INSERT [dbo].[Geographies] ([GeographyId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (6, N'Lord of the Islands! Happiness starts doubled, army options have a 50% chance of guranteed failure(reguardless of existing conditions)', N'Islands', CAST(0.50 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Geographies] OFF
SET IDENTITY_INSERT [dbo].[Governments] ON 

INSERT [dbo].[Governments] ([GovernmentId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (1, N'For the Iron throne! Resource penalties are reduced by half, happiness increases at 75% rate', N'Monarchy', CAST(0.75 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)))
INSERT [dbo].[Governments] ([GovernmentId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (2, N'Mountain/Hound 2016! All hapiness boosts are doubled, all failures suffer double penalties.', N'Democracy', CAST(2.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[Governments] ([GovernmentId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (3, N'Evict the heretics! State gains capital at 1.5 times the rate, must conduct wars on non religious nations', N'Theocracy', CAST(1.00 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)))
INSERT [dbo].[Governments] ([GovernmentId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (4, N'For the proletariot! Happines is reduced by half at the end of the game, all resource penalties are ignored.', N'Communism', CAST(2.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Governments] OFF
SET IDENTITY_INSERT [dbo].[Nations] ON 

INSERT [dbo].[Nations] ([NationId], [ArmyId], [ArmyValue], [EconomyId], [CapitalValue], [GeographyId], [ResourceValue], [GovernmentId], [PopulationValue], [Name], [TechnologyId], [TechnologyValue], [UserId], [HappinessValue]) VALUES (1, 5, 0, 2, 0, 2, 0, 2, 0, N'New Test', 2, 0, NULL, NULL)
INSERT [dbo].[Nations] ([NationId], [ArmyId], [ArmyValue], [EconomyId], [CapitalValue], [GeographyId], [ResourceValue], [GovernmentId], [PopulationValue], [Name], [TechnologyId], [TechnologyValue], [UserId], [HappinessValue]) VALUES (2, 8, 0, 3, 0, 3, 0, 2, 0, N'Super New Test', 2, 0, NULL, NULL)
INSERT [dbo].[Nations] ([NationId], [ArmyId], [ArmyValue], [EconomyId], [CapitalValue], [GeographyId], [ResourceValue], [GovernmentId], [PopulationValue], [Name], [TechnologyId], [TechnologyValue], [UserId], [HappinessValue]) VALUES (3, 5, 0, 2, 0, 3, 0, 3, 0, N'Newest', 4, 0, N'ae0adbd9-7b0b-4d54-9b87-ad87f91d2c85', NULL)
INSERT [dbo].[Nations] ([NationId], [ArmyId], [ArmyValue], [EconomyId], [CapitalValue], [GeographyId], [ResourceValue], [GovernmentId], [PopulationValue], [Name], [TechnologyId], [TechnologyValue], [UserId], [HappinessValue]) VALUES (4, 7, 897, 3, 0, 3, 0, 2, 0, N'sadasd', 4, 0, N'dd50674b-06f2-445c-ac71-d9ca6de98aa1', NULL)
INSERT [dbo].[Nations] ([NationId], [ArmyId], [ArmyValue], [EconomyId], [CapitalValue], [GeographyId], [ResourceValue], [GovernmentId], [PopulationValue], [Name], [TechnologyId], [TechnologyValue], [UserId], [HappinessValue]) VALUES (5, 5, 897, 2, 0, 2, 0, 3, 0, N'sdasd', 2, 0, N'dd50674b-06f2-445c-ac71-d9ca6de98aa1', NULL)
INSERT [dbo].[Nations] ([NationId], [ArmyId], [ArmyValue], [EconomyId], [CapitalValue], [GeographyId], [ResourceValue], [GovernmentId], [PopulationValue], [Name], [TechnologyId], [TechnologyValue], [UserId], [HappinessValue]) VALUES (6, 2, 0, 3, 0, 1, 0, 3, 0, N'cxzc', 2, 0, N'dd50674b-06f2-445c-ac71-d9ca6de98aa1', NULL)
INSERT [dbo].[Nations] ([NationId], [ArmyId], [ArmyValue], [EconomyId], [CapitalValue], [GeographyId], [ResourceValue], [GovernmentId], [PopulationValue], [Name], [TechnologyId], [TechnologyValue], [UserId], [HappinessValue]) VALUES (7, 5, 0, 2, 0, 3, 0, 2, 0, N'saddsa', 2, 0, N'dd50674b-06f2-445c-ac71-d9ca6de98aa1', NULL)
INSERT [dbo].[Nations] ([NationId], [ArmyId], [ArmyValue], [EconomyId], [CapitalValue], [GeographyId], [ResourceValue], [GovernmentId], [PopulationValue], [Name], [TechnologyId], [TechnologyValue], [UserId], [HappinessValue]) VALUES (8, 7, 0, 3, 0, 3, 0, 3, 0, N'dsadas', 2, 0, N'dd50674b-06f2-445c-ac71-d9ca6de98aa1', NULL)
INSERT [dbo].[Nations] ([NationId], [ArmyId], [ArmyValue], [EconomyId], [CapitalValue], [GeographyId], [ResourceValue], [GovernmentId], [PopulationValue], [Name], [TechnologyId], [TechnologyValue], [UserId], [HappinessValue]) VALUES (9, 7, 1000, 2, 0, 2, 0, 3, 0, N'asddsa', 2, 0, N'dd50674b-06f2-445c-ac71-d9ca6de98aa1', NULL)
INSERT [dbo].[Nations] ([NationId], [ArmyId], [ArmyValue], [EconomyId], [CapitalValue], [GeographyId], [ResourceValue], [GovernmentId], [PopulationValue], [Name], [TechnologyId], [TechnologyValue], [UserId], [HappinessValue]) VALUES (10, 5, 1000, 3, 0, 3, 0, 2, 0, N'dsakdasklasdk', 3, 0, N'dd50674b-06f2-445c-ac71-d9ca6de98aa1', NULL)
INSERT [dbo].[Nations] ([NationId], [ArmyId], [ArmyValue], [EconomyId], [CapitalValue], [GeographyId], [ResourceValue], [GovernmentId], [PopulationValue], [Name], [TechnologyId], [TechnologyValue], [UserId], [HappinessValue]) VALUES (11, 2, 250, 2, 750, 1, 1000, 2, 750, N'adsdsa', 3, 1000, N'dd50674b-06f2-445c-ac71-d9ca6de98aa1', NULL)
INSERT [dbo].[Nations] ([NationId], [ArmyId], [ArmyValue], [EconomyId], [CapitalValue], [GeographyId], [ResourceValue], [GovernmentId], [PopulationValue], [Name], [TechnologyId], [TechnologyValue], [UserId], [HappinessValue]) VALUES (12, 7, 1000, 3, 1000, 3, 1000, 3, 1000, N'dassda', 3, 1000, N'dd50674b-06f2-445c-ac71-d9ca6de98aa1', NULL)
INSERT [dbo].[Nations] ([NationId], [ArmyId], [ArmyValue], [EconomyId], [CapitalValue], [GeographyId], [ResourceValue], [GovernmentId], [PopulationValue], [Name], [TechnologyId], [TechnologyValue], [UserId], [HappinessValue]) VALUES (13, 2, 25, 2, 100, 3, 1000, 1, 100, N'xsfdfds', 2, 1000, N'dd50674b-06f2-445c-ac71-d9ca6de98aa1', NULL)
INSERT [dbo].[Nations] ([NationId], [ArmyId], [ArmyValue], [EconomyId], [CapitalValue], [GeographyId], [ResourceValue], [GovernmentId], [PopulationValue], [Name], [TechnologyId], [TechnologyValue], [UserId], [HappinessValue]) VALUES (14, 7, 1000, 2, 1000, 2, 1000, 2, 1000, N'sadda', 3, 1000, N'dd50674b-06f2-445c-ac71-d9ca6de98aa1', 1000)
INSERT [dbo].[Nations] ([NationId], [ArmyId], [ArmyValue], [EconomyId], [CapitalValue], [GeographyId], [ResourceValue], [GovernmentId], [PopulationValue], [Name], [TechnologyId], [TechnologyValue], [UserId], [HappinessValue]) VALUES (15, 7, 1000, 3, 1000, 2, 1000, 3, 100, N'sadassdas', 2, 1000, N'399d0e9d-561e-4994-b6d0-50d8b7397aaf', 1000)
SET IDENTITY_INSERT [dbo].[Nations] OFF
SET IDENTITY_INSERT [dbo].[Technologies] ON 

INSERT [dbo].[Technologies] ([TechnologyId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (1, N'The earth is flat sheeple! Your tech value starts at zero, your happiness score can only increase never decrease', N'Science is a hoax', CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[Technologies] ([TechnologyId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (2, N'More  machine than man! Technology increases at a 3X rate, population recieves a 90% reduction at the start of the game.', N'Cyborgs', CAST(1.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Technologies] ([TechnologyId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (3, N'War never changes! All army boosts will also count as tech boosts, peaceful solutions will never be provided as options during the game', N'War Machine', CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[Technologies] ([TechnologyId], [Description], [Name], [NegativeModifier], [PositiveModifier]) VALUES (4, N'In peace we propser! War options will never be provided during the game, tech increases will always be applied to happiness', N'Peace Sciences', CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Technologies] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/17/2016 7:15:19 PM ******/
CREATE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 5/17/2016 7:15:19 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/17/2016 7:15:19 PM ******/
CREATE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_IdentityRoleClaim<string>_IdentityRole_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_IdentityRoleClaim<string>_IdentityRole_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_IdentityUserClaim<string>_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_IdentityUserClaim<string>_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_IdentityUserLogin<string>_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_IdentityUserLogin<string>_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_IdentityUserRole<string>_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_IdentityUserRole<string>_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_IdentityUserRole<string>_IdentityRole_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_IdentityUserRole<string>_IdentityRole_RoleId]
GO
ALTER TABLE [dbo].[Nations]  WITH CHECK ADD  CONSTRAINT [FK_Nation_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Nations] CHECK CONSTRAINT [FK_Nation_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[Nations]  WITH CHECK ADD  CONSTRAINT [FK_Nation_Army_ArmyId] FOREIGN KEY([ArmyId])
REFERENCES [dbo].[Armies] ([ArmyId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nations] CHECK CONSTRAINT [FK_Nation_Army_ArmyId]
GO
ALTER TABLE [dbo].[Nations]  WITH CHECK ADD  CONSTRAINT [FK_Nation_Economy_EconomyId] FOREIGN KEY([EconomyId])
REFERENCES [dbo].[Economies] ([EconomyId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nations] CHECK CONSTRAINT [FK_Nation_Economy_EconomyId]
GO
ALTER TABLE [dbo].[Nations]  WITH CHECK ADD  CONSTRAINT [FK_Nation_Geography_GeographyId] FOREIGN KEY([GeographyId])
REFERENCES [dbo].[Geographies] ([GeographyId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nations] CHECK CONSTRAINT [FK_Nation_Geography_GeographyId]
GO
ALTER TABLE [dbo].[Nations]  WITH CHECK ADD  CONSTRAINT [FK_Nation_Government_GovernmentId] FOREIGN KEY([GovernmentId])
REFERENCES [dbo].[Governments] ([GovernmentId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nations] CHECK CONSTRAINT [FK_Nation_Government_GovernmentId]
GO
ALTER TABLE [dbo].[Nations]  WITH CHECK ADD  CONSTRAINT [FK_Nation_Technology_TechnologyId] FOREIGN KEY([TechnologyId])
REFERENCES [dbo].[Technologies] ([TechnologyId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nations] CHECK CONSTRAINT [FK_Nation_Technology_TechnologyId]
GO
ALTER TABLE [dbo].[Outcomes]  WITH CHECK ADD  CONSTRAINT [FK_Outcome_Hazard_HazardId] FOREIGN KEY([HazardId])
REFERENCES [dbo].[Hazards] ([HazardId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Outcomes] CHECK CONSTRAINT [FK_Outcome_Hazard_HazardId]
GO
USE [master]
GO
ALTER DATABASE [Hegemony] SET  READ_WRITE 
GO
