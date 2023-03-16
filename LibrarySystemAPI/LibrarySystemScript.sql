CREATE DATABASE [LibrarySystemDB];
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/15/2023 8:43:32 PM ******/
USE [LibrarySystemDB]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 3/15/2023 8:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[AuthorId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[AuthorId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookGenres]    Script Date: 3/15/2023 8:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookGenres](
	[BookId] [int] NOT NULL,
	[GenreId] [int] NOT NULL,
 CONSTRAINT [PK_BookGenres] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC,
	[GenreId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 3/15/2023 8:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BookId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](2000) NOT NULL,
	[Rating] [int] NOT NULL,
	[FullPrice] [money] NOT NULL,
	[AuthorId] [int] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 3/15/2023 8:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[GenreId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[GenreId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230315135827_initialCreate', N'7.0.4')
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (1, N'Goswami, Jaideva')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (2, N'Foreman, John')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (3, N'Hawking, Stephen')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (4, N'Dubner, Stephen')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (5, N'Said, Edward')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (6, N'Vapnik, Vladimir')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (7, N'Menon, V P')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (8, N'Mlodinow, Leonard')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (9, N'Shih, Frank')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (10, N'Konnikova, Maria')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (11, N'Sebastian Gutierrez')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (12, N'Vonnegut, Kurt')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (13, N'Villani, Cedric')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (14, N'Sussman, Gerald')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (15, N'Eraly, Abraham')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (16, N'Kafka, Frank')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (17, N'Pratt, John')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (18, N'Nisbet, Robert')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (19, N'Wells, H. G.')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (20, N'Heisenberg, Werner')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (21, N'Oram, Andy')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (22, N'Tao, Terence')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (23, N'Conway, Drew')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (24, N'Silver, Nate')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (25, N'McKinney, Wes')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (26, N'Cormen, Thomas')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (27, N'Deb, Siddhartha')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (28, N'Camus, Albert')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (29, N'Doyle, Arthur Conan')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (30, N'Smith, Adam')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (31, N'Follett, Ken')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (32, N'Hitler, Adolf')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (33, N'Capra, Fritjof')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (34, N'Feynman, Richard')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (35, N'Hemingway, Ernest')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (36, N'Forsyth, Frederick')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (37, N'Archer, Jeffery')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (38, N'Pausch, Randy')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (39, N'Rand, Ayn')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (40, N'Crichton, Michael')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (41, N'Steinbeck, John')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (42, N'Poe, Edgar Allen')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (43, N'Durant, Will')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (44, N'Deshpande, P L')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (45, N'Grisham, John')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (46, N'Naipaul, V. S.')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (47, N'Heller, Joseph')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (48, N'BBC')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (49, N'Dylan, Bob')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (50, N'Gupta, Madan')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (51, N'Stonier, Alfred')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (52, N'Greene, W. H.')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (53, N'Bradsky, Gary')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (54, N'Tanenbaum, Andrew')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (55, N'Forsyth, David')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (56, N'Taub, Schilling')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (57, N'Kanetkar, Yashwant')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (58, N'Stroud, Jonathan')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (59, N'Dostoevsky, Fyodor')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (60, N'Brown, Dan')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (61, N'Sen, Amartya')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (62, N'Ghosh, Amitav')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (63, N'Hansberry, Lorraine')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (64, N'Woodward, Bob')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (65, N'Nayar, Kuldip')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (66, N'Deshpande, Sunita')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (67, N'Dalrymple, William')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (68, N'Various')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (69, N'Garg, Sanjay')
GO
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (1, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (2, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (3, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (6, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (9, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (11, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (14, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (17, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (18, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (21, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (22, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (23, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (24, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (25, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (26, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (56, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (57, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (58, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (59, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (60, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (61, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (62, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (63, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (76, 1)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (4, 2)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (8, 2)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (13, 2)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (31, 2)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (34, 2)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (35, 2)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (44, 2)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (45, 2)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (82, 2)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (5, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (7, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (10, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (15, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (27, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (33, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (39, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (42, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (49, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (54, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (55, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (67, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (71, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (73, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (74, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (75, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (77, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (78, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (79, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (80, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (85, 3)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (12, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (16, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (19, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (28, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (29, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (30, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (32, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (36, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (37, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (38, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (41, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (43, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (47, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (48, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (50, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (51, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (52, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (53, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (64, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (65, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (66, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (68, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (70, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (72, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (81, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (83, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (86, 4)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (20, 5)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (40, 5)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (46, 5)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (69, 5)
GO
INSERT [dbo].[BookGenres] ([BookId], [GenreId]) VALUES (84, 5)
GO
SET IDENTITY_INSERT [dbo].[Books] ON 
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (1, N'Fundamentals of Wavelets', N'signal_processing', 0, 228.0000, 1)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (2, N'Data Smart', N'data_science', 0, 235.0000, 2)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (3, N'God Created the Integers', N'mathematics', 0, 197.0000, 3)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (4, N'Superfreakonomics', N'economics', 0, 179.0000, 4)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (5, N'Orientalism', N'history', 0, 197.0000, 5)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (6, N'Nature of Statistical Learning Theory, The', N'data_science', 0, 230.0000, 6)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (7, N'Integration of the Indian States', N'history', 0, 217.0000, 7)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (8, N'Drunkard''s Walk, The', N'mathematics', 0, 197.0000, 8)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (9, N'Image Processing & Mathematical Morphology', N'signal_processing', 0, 241.0000, 9)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (10, N'How to Think Like Sherlock Holmes', N'psychology', 0, 240.0000, 10)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (11, N'Data Scientists at Work', N'data_science', 0, 230.0000, 11)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (12, N'Slaughterhouse Five', N'classic', 0, 198.0000, 12)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (13, N'Birth of a Theorem', N'mathematics', 0, 234.0000, 13)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (14, N'Structure & Interpretation of Computer Programs', N'computer_science', 0, 240.0000, 14)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (15, N'Age of Wrath, The', N'history', 0, 238.0000, 15)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (16, N'Trial, The', N'classic', 0, 198.0000, 16)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (17, N'Statistical Decision Theory''', N'data_science', 0, 236.0000, 17)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (18, N'Data Mining Handbook', N'data_science', 0, 242.0000, 18)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (19, N'New Machiavelli, The', N'novel', 0, 180.0000, 19)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (20, N'Physics & Philosophy', N'science', 0, 197.0000, 20)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (21, N'Making Software', N'computer_science', 0, 232.0000, 21)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (22, N'Analysis, Vol I', N'mathematics', 0, 248.0000, 22)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (23, N'Machine Learning for Hackers', N'data_science', 0, 233.0000, 23)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (24, N'Signal and the Noise, The', N'data_science', 0, 233.0000, 24)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (25, N'Python for Data Analysis', N'data_science', 0, 233.0000, 25)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (26, N'Introduction to Algorithms', N'computer_science', 0, 234.0000, 26)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (27, N'Beautiful and the Damned, The', N'history', 0, 198.0000, 27)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (28, N'Outsider, The', N'classic', 0, 198.0000, 28)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (29, N'Complete Sherlock Holmes, The - Vol I', N'classic', 0, 176.0000, 29)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (30, N'Complete Sherlock Holmes, The - Vol II', N'classic', 0, 176.0000, 29)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (31, N'Wealth of Nations, The', N'economics', 0, 175.0000, 30)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (32, N'Pillars of the Earth, The', N'novel', 0, 176.0000, 31)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (33, N'Mein Kampf', N'autobiography', 0, 212.0000, 32)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (34, N'Tao of Physics, The', N'physics', 0, 179.0000, 33)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (35, N'Surely You''re Joking Mr Feynman', N'physics', 0, 198.0000, 34)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (36, N'Farewell to Arms, A', N'classic', 0, 179.0000, 35)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (37, N'Veteran, The', N'novel', 0, 177.0000, 36)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (38, N'False Impressions', N'novel', 0, 177.0000, 37)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (39, N'Last Lecture, The', N'autobiography', 0, 197.0000, 38)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (40, N'Return of the Primitive', N'objectivism', 0, 202.0000, 39)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (41, N'Jurassic Park', N'novel', 0, 174.0000, 40)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (42, N'Russian Journal, A', N'history', 0, 196.0000, 41)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (43, N'Tales of Mystery and Imagination', N'classic', 0, 172.0000, 42)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (44, N'Freakonomics', N'economics', 0, 197.0000, 4)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (45, N'Hidden Connections, The', N'physics', 0, 197.0000, 33)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (46, N'Story of Philosophy, The', N'history', 0, 170.0000, 43)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (47, N'Asami Asami', N'novel', 0, 205.0000, 44)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (48, N'Journal of a Novel', N'classic', 0, 196.0000, 41)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (49, N'Once There Was a War', N'history', 0, 196.0000, 41)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (50, N'Moon is Down, The', N'classic', 0, 196.0000, 41)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (51, N'Brethren, The', N'novel', 0, 174.0000, 45)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (52, N'In a Free State', N'novel', 0, 196.0000, 46)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (53, N'Catch 22', N'classic', 0, 178.0000, 47)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (54, N'Complete Mastermind, The', N'trivia', 0, 178.0000, 48)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (55, N'Dylan on Dylan', N'autobiography', 0, 197.0000, 49)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (56, N'Soft Computing & Intelligent Systems', N'data_science', 0, 242.0000, 50)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (57, N'Textbook of Economic Theory', N'economics', 0, 242.0000, 51)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (58, N'Econometric Analysis', N'economics', 0, 242.0000, 52)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (59, N'Learning OpenCV', N'signal_processing', 0, 232.0000, 53)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (60, N'Data Structures Using C & C++', N'computer_science', 0, 235.0000, 54)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (61, N'Computer Vision, A Modern Approach', N'signal_processing', 0, 255.0000, 55)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (62, N'Principles of Communication Systems', N'signal_processing', 0, 240.0000, 56)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (63, N'Let Us C', N'computer_science', 0, 213.0000, 57)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (64, N'Amulet of Samarkand, The', N'novel', 0, 179.0000, 58)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (65, N'Crime and Punishment', N'classic', 0, 180.0000, 59)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (66, N'Angels & Demons', N'novel', 0, 178.0000, 60)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (67, N'Argumentative Indian, The', N'history', 0, 209.0000, 61)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (68, N'Sea of Poppies', N'novel', 0, 197.0000, 62)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (69, N'Idea of Justice, The', N'economics', 0, 212.0000, 61)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (70, N'Raisin in the Sun, A', N'novel', 0, 175.0000, 63)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (71, N'All the President''s Men', N'history', 0, 177.0000, 64)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (72, N'Prisoner of Birth, A', N'novel', 0, 176.0000, 37)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (73, N'Scoop!', N'history', 0, 216.0000, 65)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (74, N'Ahe Manohar Tari', N'autobiography', 0, 213.0000, 66)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (75, N'Last Mughal, The', N'history', 0, 199.0000, 67)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (76, N'Social Choice & Welfare, Vol 39 No. 1', N'economics', 0, 235.0000, 68)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (77, N'Radiowaril Bhashane & Shrutika', N'misc', 0, 213.0000, 44)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (78, N'Gun Gayin Awadi', N'misc', 0, 212.0000, 44)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (79, N'Aghal Paghal', N'misc', 0, 212.0000, 44)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (80, N'Maqta-e-Ghalib', N'poetry', 0, 221.0000, 69)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (81, N'Winter of Our Discontent, The', N'classic', 0, 196.0000, 41)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (82, N'Theory of Everything, The', N'physics', 0, 217.0000, 3)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (83, N'Burning Bright', N'classic', 0, 175.0000, 41)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (84, N'Identity & Violence', N'philosophy', 0, 219.0000, 61)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (85, N'Beyond the Three Seas', N'history', 0, 197.0000, 67)
GO
INSERT [dbo].[Books] ([BookId], [Name], [Description], [Rating], [FullPrice], [AuthorId]) VALUES (86, N'Phantom of Manhattan, The', N'classic', 0, 180.0000, 36)
GO
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Genres] ON 
GO
INSERT [dbo].[Genres] ([GenreId], [Name]) VALUES (1, N'Tech')
GO
INSERT [dbo].[Genres] ([GenreId], [Name]) VALUES (2, N'Science')
GO
INSERT [dbo].[Genres] ([GenreId], [Name]) VALUES (3, N'Nonfiction')
GO
INSERT [dbo].[Genres] ([GenreId], [Name]) VALUES (4, N'Fiction')
GO
INSERT [dbo].[Genres] ([GenreId], [Name]) VALUES (5, N'Philosophy')
GO
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
/****** Object:  Index [IX_BookGenres_GenreId]    Script Date: 3/15/2023 8:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_BookGenres_GenreId] ON [dbo].[BookGenres]
(
	[GenreId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Books_AuthorId]    Script Date: 3/15/2023 8:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_Books_AuthorId] ON [dbo].[Books]
(
	[AuthorId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BookGenres]  WITH CHECK ADD  CONSTRAINT [FK_BookGenres_Books_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([BookId])
GO
ALTER TABLE [dbo].[BookGenres] CHECK CONSTRAINT [FK_BookGenres_Books_BookId]
GO
ALTER TABLE [dbo].[BookGenres]  WITH CHECK ADD  CONSTRAINT [FK_BookGenres_Genres_GenreId] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genres] ([GenreId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BookGenres] CHECK CONSTRAINT [FK_BookGenres_Genres_GenreId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Authors_AuthorId]
GO
ALTER DATABASE [LibrarySystemDB] SET  READ_WRITE 
GO
