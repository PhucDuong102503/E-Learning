USE [elearning]
GO
/****** Object:  Table [dbo].[answers]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[answers](
	[answer_id] [int] IDENTITY(1,1) NOT NULL,
	[question_id] [int] NULL,
	[answer_text] [text] NULL,
	[is_correct] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[answer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[comment_id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NULL,
	[sub_lesson_id] [int] NULL,
	[user_id] [int] NULL,
	[content] [nvarchar](max) NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[course_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[title] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[course_type_id] [int] NULL,
	[price] [decimal](10, 2) NULL,
	[course_img] [nvarchar](max) NULL,
	[created_by] [int] NULL,
	[teacher_id] [int] NULL,
	[is_locked] [bit] NULL,
	[created_at] [datetime] NULL,
	[is_deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseDuration]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseDuration](
	[course_id] [int] NULL,
	[course_duration] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseType]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseType](
	[course_type_id] [int] IDENTITY(1,1) NOT NULL,
	[course_type_name] [nvarchar](50) NOT NULL,
	[course_type_description] [nvarchar](255) NULL,
	[course_type_img] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[course_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enrollment]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollment](
	[user_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
	[enrollment_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[lesson_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[course_id] [int] NULL,
	[is_locked] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[lesson_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mentee_scores]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mentee_scores](
	[user_id] [int] NOT NULL,
	[quiz_id] [int] NOT NULL,
	[score] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[quiz_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MentorManager]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MentorManager](
	[MentorId] [int] NOT NULL,
	[ManagerId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MentorId] ASC,
	[ManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[course_id] [int] NULL,
	[amount] [decimal](10, 2) NULL,
	[payment_date] [datetime] NULL,
	[transaction_code] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_type]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_type](
	[type_id] [int] IDENTITY(1,1) NOT NULL,
	[type_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[questions]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[questions](
	[question_id] [int] IDENTITY(1,1) NOT NULL,
	[quiz_id] [int] NULL,
	[question_text] [text] NULL,
	[type_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quizzes]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quizzes](
	[quiz_id] [int] IDENTITY(1,1) NOT NULL,
	[lesson_id] [int] NULL,
	[quiz_name] [nvarchar](255) NULL,
	[duration_minutes] [int] NULL,
	[is_locked] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[quiz_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[user_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
	[rating] [int] NULL,
	[review_text] [nvarchar](max) NULL,
	[review_date] [datetime] NULL,
 CONSTRAINT [PK__User_Course_60883D90782C88E] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubLesson]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubLesson](
	[sub_lesson_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[content] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[lesson_id] [int] NULL,
	[creation_date] [datetime] NULL,
	[video_link] [varchar](max) NULL,
	[is_locked] [bit] NULL,
	[video_duration] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[sub_lesson_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[email] [nvarchar](255) NOT NULL,
	[first_name] [nvarchar](255) NULL,
	[last_name] [nvarchar](255) NULL,
	[role_id] [int] NULL,
	[avatar] [nvarchar](max) NULL,
	[created_at] [datetime] NULL,
	[is_locked] [bit] NULL,
	[is_deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCourseProgress]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCourseProgress](
	[user_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
	[completion_date] [datetime] NULL,
	[progress] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wish_list]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wish_list](
	[wish_id] [int] IDENTITY(1,1) NOT NULL,
	[course_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wish_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[answers] ON 

INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (21, 6, N'A. For loop.', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (22, 6, N'B. While loop.', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (23, 6, N'C. Do-while loop.', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (24, 6, N'D. There is no suitable loop for this situation.', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (25, 7, N'A. Use while loop instead of for.', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (26, 7, N'B. Initialize the counter variable with a random value.', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (27, 7, N'C. The stop condition of the loop must be attainable.', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (28, 7, N'D. Add conditional statements to stop the loop in repeating elements.', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (29, 8, N'A. There can be many counter variables.', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (30, 8, N'B. There may be no conditional expression.', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (31, 8, N'C. There can be multiple update expressions.', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (32, 8, N'D. There may be no counter variable.', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (33, 9, N'A. break', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (34, 9, N'B. continue', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (35, 9, N'C. return', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (36, 9, N'D. goto', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (37, 9, N'E. exit', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (38, 10, N'A. There can be many counter variables.', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (39, 10, N'B. There may be no conditional expression.', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (40, 10, N'C. There can be multiple update expressions.', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (41, 10, N'D. There may be no counter variable.', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (42, 10, N'E. The above parts are all correct.', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (63, 16, N'A. When you know the number of iterations in advance', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (64, 16, N'B. When you want the loop to run infinitely', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (65, 16, N'C. When you do not know the number of iterations in advance', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (66, 16, N'D. When you need to check the condition at the end of the loop', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (67, 17, N'A. Do-while', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (68, 17, N'B. While', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (69, 17, N'C. Both while and do-while loops', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (70, 17, N'D. No loops', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (71, 18, N'A. Continue', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (72, 18, N'B. While', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (73, 18, N'C. Exit', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (74, 18, N'D. Return', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (75, 19, N'A. A while loop always executes at least once, while a do-while may never execute.', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (76, 19, N'B. The while loop only executes when the condition is true, while the do-while loop executes at least once even when the condition is false.', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (77, 19, N'C. The while loop executes at least once, while the do-while loop only executes when the condition is true.', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (78, 19, N'D. While and do-while loops are completely identical in execution.', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (79, 20, N'A. Stop and end the program.', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (80, 20, N'B. End the current loop and exit the loop.', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (81, 20, N'C. Skip the rest of the current iteration and continue the loop.', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (82, 20, N'D. Move to the next iteration in the loop.', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (121, 50, N'answers%5B%5D.answer=a', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (122, 50, N'answers%5B%5D.correct=true', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (123, 50, N'answers%5B%5D.answer=b', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (124, 51, N'answers%5B%5D.answer=a', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (125, 51, N'answers%5B%5D.correct=true', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (126, 51, N'answers%5B%5D.answer=b', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (127, 52, N'answers%5B%5D.answer=a', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (128, 52, N'answers%5B%5D.correct=true', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (129, 52, N'answers%5B%5D.answer=b', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (131, 54, N'a', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (132, 55, N'a', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (133, 56, N'a', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (134, 57, N'a', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (135, 58, N'answerText_answer-0=a', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (136, 59, N'answerText_answer-0=a', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (137, 60, N'answerText_0=aa', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (138, 60, N'answerText_1=b', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (139, 60, N'answerText_2=b', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (153, 71, N'A. When you know the number of iterations in', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (154, 71, N'B. When you want the loop to run infinitely', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (155, 71, N'C. When you do not know the number of iterations in advance', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (156, 71, N'D. When you need to check the condition at the end of the loop', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (157, 72, N'A. Do-while', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (158, 72, N'B. While', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (159, 72, N'C. Both while and do-while loops', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (160, 72, N'D. No loops', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (161, 73, N'A. Continue', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (162, 73, N'B. Break', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (163, 73, N'C. Exit', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (164, 73, N'D. Return', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (169, 5, N'A. Stop and end the program.', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (170, 5, N'B. End the current loop and exit the loop.', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (171, 5, N'C. Skip the rest of the current iteration and continue the loop.', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (172, 5, N'D. Move to the next iteration in the loop.', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (219, 74, N'a', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (241, 86, N'a', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (242, 86, N'b', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (243, 81, N'a', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (244, 81, N'b', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (245, 81, N'e', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (246, 88, N'a', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (276, 97, N'1', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (277, 97, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (278, 97, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (279, 97, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (280, 98, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (281, 98, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (282, 98, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (283, 98, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (284, 99, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (285, 99, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (286, 99, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (287, 99, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (288, 100, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (289, 100, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (290, 100, N'8', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (291, 100, N'3.0', 0)
GO
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (292, 101, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (293, 101, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (294, 101, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (295, 101, N'3', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (304, 102, N'q', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (325, 108, N'1', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (326, 108, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (327, 108, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (328, 108, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (329, 109, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (330, 109, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (331, 109, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (332, 109, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (333, 110, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (334, 110, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (335, 110, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (336, 110, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (337, 111, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (338, 111, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (339, 111, N'8', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (340, 111, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (341, 112, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (342, 112, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (343, 112, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (344, 112, N'3', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (345, 113, N'1', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (346, 113, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (347, 113, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (348, 113, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (349, 114, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (350, 114, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (351, 114, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (352, 114, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (353, 115, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (354, 115, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (355, 115, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (356, 115, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (357, 116, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (358, 116, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (359, 116, N'8', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (360, 116, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (361, 117, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (362, 117, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (363, 117, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (364, 117, N'3', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (365, 118, N'1', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (366, 118, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (367, 118, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (368, 118, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (369, 119, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (370, 119, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (371, 119, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (372, 119, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (373, 120, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (374, 120, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (375, 120, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (376, 120, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (377, 121, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (378, 121, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (379, 121, N'8', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (380, 121, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (381, 122, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (382, 122, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (383, 122, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (384, 122, N'3', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (385, 123, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (386, 123, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (387, 123, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (388, 124, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (389, 124, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (390, 124, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (391, 124, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (392, 125, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (393, 125, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (394, 125, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (395, 125, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (396, 126, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (397, 126, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (398, 126, N'8', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (399, 126, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (400, 127, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (401, 127, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (402, 127, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (403, 127, N'3', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (404, 128, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (405, 128, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (406, 128, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (407, 129, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (408, 129, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (409, 129, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (410, 129, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (411, 130, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (412, 130, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (413, 130, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (414, 130, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (415, 131, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (416, 131, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (417, 131, N'8', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (418, 131, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (419, 132, N'1.0', 0)
GO
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (420, 132, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (421, 132, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (422, 132, N'3', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (426, 134, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (427, 134, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (428, 134, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (429, 134, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (430, 135, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (431, 135, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (432, 135, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (433, 135, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (434, 136, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (435, 136, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (436, 136, N'8', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (437, 136, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (438, 137, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (439, 137, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (440, 137, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (441, 137, N'3', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (446, 133, N'a', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (449, 139, N'ok 1 2 3 4 @', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (450, 139, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (451, 139, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (452, 139, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (453, 140, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (454, 140, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (455, 140, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (456, 140, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (457, 141, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (458, 141, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (459, 141, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (460, 141, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (461, 142, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (462, 142, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (463, 142, N'8', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (464, 142, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (465, 143, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (466, 143, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (467, 143, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (468, 143, N'3', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (469, 144, N'ok 1 2 3 4 @', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (470, 144, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (471, 144, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (472, 144, N'2.2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (473, 144, N'2.03', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (474, 144, N'2.234', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (475, 145, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (476, 145, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (477, 145, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (478, 145, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (479, 146, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (480, 146, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (481, 146, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (482, 146, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (483, 147, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (484, 147, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (485, 147, N'8', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (486, 147, N'3.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (487, 148, N'1.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (488, 148, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (489, 148, N'2.0', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (490, 148, N'3', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (491, 149, N'ok 1 2 3 4 @', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (492, 149, N'2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (493, 149, N'2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (494, 149, N'2.2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (495, 149, N'2.03', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (496, 149, N'2.234', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (497, 150, N'1', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (498, 150, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (499, 150, N'2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (500, 150, N'3', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (501, 151, N'1', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (502, 151, N'2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (503, 151, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (504, 151, N'3', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (505, 152, N'1', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (506, 152, N'2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (507, 152, N'8', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (508, 152, N'3', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (509, 153, N'1', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (510, 153, N'2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (511, 153, N'2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (512, 153, N'3', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (513, 154, N'ok 1 2 3 4 @', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (514, 154, N'2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (515, 154, N'2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (516, 154, N'2.2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (517, 154, N'2.03', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (518, 154, N'2.234', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (519, 155, N'1', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (520, 155, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (521, 155, N'2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (522, 155, N'3', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (523, 156, N'1', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (524, 156, N'2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (525, 156, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (526, 156, N'3', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (527, 157, N'1', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (528, 157, N'2', 0)
GO
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (529, 157, N'8', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (530, 157, N'3', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (531, 158, N'1', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (532, 158, N'2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (533, 158, N'2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (534, 158, N'3', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (541, 160, N'1', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (542, 160, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (543, 160, N'2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (544, 160, N'3', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (545, 161, N'1', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (546, 161, N'2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (547, 161, N'2', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (548, 161, N'3', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (549, 162, N'1', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (550, 162, N'2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (551, 162, N'8', 1)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (552, 162, N'3', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (553, 163, N'1', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (554, 163, N'2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (555, 163, N'2', 0)
INSERT [dbo].[answers] ([answer_id], [question_id], [answer_text], [is_correct]) VALUES (556, 163, N'3', 1)
SET IDENTITY_INSERT [dbo].[answers] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([comment_id], [parent_id], [sub_lesson_id], [user_id], [content], [created_at]) VALUES (11, NULL, 3, 1, N'oke nhe', CAST(N'2024-06-22T21:44:51.003' AS DateTime))
INSERT [dbo].[Comments] ([comment_id], [parent_id], [sub_lesson_id], [user_id], [content], [created_at]) VALUES (13, NULL, 14, 1, N'hehe', CAST(N'2024-06-22T21:46:31.573' AS DateTime))
INSERT [dbo].[Comments] ([comment_id], [parent_id], [sub_lesson_id], [user_id], [content], [created_at]) VALUES (14, NULL, 14, 1, N'oki nha', CAST(N'2024-06-22T21:46:42.263' AS DateTime))
INSERT [dbo].[Comments] ([comment_id], [parent_id], [sub_lesson_id], [user_id], [content], [created_at]) VALUES (15, 14, 14, 1, N'ok', CAST(N'2024-06-22T21:47:28.327' AS DateTime))
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([course_id], [name], [title], [description], [course_type_id], [price], [course_img], [created_by], [teacher_id], [is_locked], [created_at], [is_deleted]) VALUES (1, N'C++ Programing', N'Basic Programing Language for beginner', N'Ok phết', 1, CAST(0.00 AS Decimal(10, 2)), N'img/tải xuống.jpg', 5, 4, 0, CAST(N'2024-06-10T17:48:28.277' AS DateTime), 0)
INSERT [dbo].[Course] ([course_id], [name], [title], [description], [course_type_id], [price], [course_img], [created_by], [teacher_id], [is_locked], [created_at], [is_deleted]) VALUES (2, N'CCO Business', N'', N'', 2, CAST(10000.00 AS Decimal(10, 2)), NULL, 5, NULL, 0, CAST(N'2024-06-10T17:48:28.277' AS DateTime), 0)
INSERT [dbo].[Course] ([course_id], [name], [title], [description], [course_type_id], [price], [course_img], [created_by], [teacher_id], [is_locked], [created_at], [is_deleted]) VALUES (3, N'ADOBE ILLUSTRATOR PROFESSIONAL GRAPHIC DESIGNER', NULL, NULL, 3, CAST(890000.00 AS Decimal(10, 2)), N'https://i.ytimg.com/vi/BD_CvpUC3oA/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLA6ENRHVqf_ybqN1CNy2GrEVxEyhQ', 5, NULL, 0, CAST(N'2024-06-10T17:48:28.277' AS DateTime), 0)
INSERT [dbo].[Course] ([course_id], [name], [title], [description], [course_type_id], [price], [course_img], [created_by], [teacher_id], [is_locked], [created_at], [is_deleted]) VALUES (4, N'Python Basic to Advanced', NULL, NULL, 1, CAST(1200000.00 AS Decimal(10, 2)), N'https://i.ytimg.com/vi/c2sorFXCLU4/hqdefault.jpg?sqp=-oaymwEXCOADEI4CSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLBK20vWlIIhiagP5vdhZ_9802alSQ', 5, 4, 0, CAST(N'2024-06-10T17:48:28.277' AS DateTime), 0)
INSERT [dbo].[Course] ([course_id], [name], [title], [description], [course_type_id], [price], [course_img], [created_by], [teacher_id], [is_locked], [created_at], [is_deleted]) VALUES (5, N'C Programing Basic', NULL, NULL, 1, CAST(850000.00 AS Decimal(10, 2)), N'https://i.ytimg.com/vi/237q_8H7YI0/hqdefault.jpg?sqp=-oaymwEXCOADEI4CSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLAPKA7W_fkr7VYh1ePEHQ6dutP_QA', 5, 4, 0, CAST(N'2024-06-10T17:48:28.277' AS DateTime), 0)
INSERT [dbo].[Course] ([course_id], [name], [title], [description], [course_type_id], [price], [course_img], [created_by], [teacher_id], [is_locked], [created_at], [is_deleted]) VALUES (6, N'Graph Theory', NULL, NULL, 1, NULL, N'https://i.ytimg.com/vi/-DocD-YLlPY/hqdefault.jpg?sqp=-oaymwEXCOADEI4CSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLB-xIUAb28t-p0xw-K1iO4KS6hwdg', 5, 4, 0, CAST(N'2024-06-10T17:48:28.277' AS DateTime), 0)
INSERT [dbo].[Course] ([course_id], [name], [title], [description], [course_type_id], [price], [course_img], [created_by], [teacher_id], [is_locked], [created_at], [is_deleted]) VALUES (7, N'Java Collections', NULL, NULL, 1, CAST(200000.00 AS Decimal(10, 2)), N'https://i.ytimg.com/vi/nNle0CG8RiQ/hqdefault.jpg?sqp=-oaymwEXCOADEI4CSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLAifmNKIeWYWrnaWUBGA5wLLsBhUw', 5, 4, 0, CAST(N'2024-06-10T17:48:28.277' AS DateTime), 0)
INSERT [dbo].[Course] ([course_id], [name], [title], [description], [course_type_id], [price], [course_img], [created_by], [teacher_id], [is_locked], [created_at], [is_deleted]) VALUES (8, N'Flutter From Basic To Advanced', NULL, NULL, 1, CAST(5000000.00 AS Decimal(10, 2)), N'https://i.ytimg.com/vi/je_waU6BLTs/hqdefault.jpg?sqp=-oaymwEXCOADEI4CSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLD-v3iQkapldY848B1g_G-hTWKV6w', 5, 7, 0, CAST(N'2024-06-10T17:48:28.277' AS DateTime), 0)
INSERT [dbo].[Course] ([course_id], [name], [title], [description], [course_type_id], [price], [course_img], [created_by], [teacher_id], [is_locked], [created_at], [is_deleted]) VALUES (9, N'C++ Basic', NULL, NULL, 1, CAST(499999.00 AS Decimal(10, 2)), N'https://i.ytimg.com/vi/je_waU6BLTs/hqdefault.jpg?sqp=-oaymwEXCOADEI4CSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLD-v3iQkapldY848B1g_G-hTWKV6w', 5, 7, 0, CAST(N'2024-06-10T17:48:28.277' AS DateTime), 0)
INSERT [dbo].[Course] ([course_id], [name], [title], [description], [course_type_id], [price], [course_img], [created_by], [teacher_id], [is_locked], [created_at], [is_deleted]) VALUES (10, N'Java Advanced', NULL, NULL, 1, NULL, N'img\course_img.jpg', 5, 7, 0, CAST(N'2024-06-10T17:48:28.277' AS DateTime), 0)
INSERT [dbo].[Course] ([course_id], [name], [title], [description], [course_type_id], [price], [course_img], [created_by], [teacher_id], [is_locked], [created_at], [is_deleted]) VALUES (11, N'Introduction To Ubuntu', NULL, NULL, 1, CAST(300000.00 AS Decimal(10, 2)), N'https://i.ytimg.com/vi/xTG7KpMljEc/hqdefault.jpg?sqp=-oaymwEXCOADEI4CSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLBE984z04_yCxXXrq3dnZaOoY4Iow', 5, 7, 0, CAST(N'2024-06-10T17:48:28.277' AS DateTime), 0)
INSERT [dbo].[Course] ([course_id], [name], [title], [description], [course_type_id], [price], [course_img], [created_by], [teacher_id], [is_locked], [created_at], [is_deleted]) VALUES (12, N'Git Basic', NULL, NULL, 1, CAST(200000.00 AS Decimal(10, 2)), N'https://i.ytimg.com/vi/JK9EppK6kxI/hqdefault.jpg?sqp=-oaymwEXCOADEI4CSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLB1-vyvj9UeinJ3tvKuR_boHw7ClQ', 5, 7, 0, CAST(N'2024-06-10T17:48:28.277' AS DateTime), 0)
INSERT [dbo].[Course] ([course_id], [name], [title], [description], [course_type_id], [price], [course_img], [created_by], [teacher_id], [is_locked], [created_at], [is_deleted]) VALUES (13, N'SQL Basic', NULL, NULL, 1, NULL, N'https://i.ytimg.com/vi/AGVNe9FPH04/hqdefault.jpg?sqp=-oaymwEXCOADEI4CSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLAfNu73BJsayo2S2QaID4kERQzT0w', 5, 7, 0, CAST(N'2024-06-10T17:48:28.277' AS DateTime), 0)
INSERT [dbo].[Course] ([course_id], [name], [title], [description], [course_type_id], [price], [course_img], [created_by], [teacher_id], [is_locked], [created_at], [is_deleted]) VALUES (14, N'@:                                ))))', N'@:                                ))))', N'@:                                ))))', 1, CAST(10000.00 AS Decimal(10, 2)), N'img/tải xuống.jpg', 5, NULL, 0, CAST(N'2024-07-12T13:38:58.993' AS DateTime), 0)
INSERT [dbo].[Course] ([course_id], [name], [title], [description], [course_type_id], [price], [course_img], [created_by], [teacher_id], [is_locked], [created_at], [is_deleted]) VALUES (15, N'tôi                tên ', N'ssdsd@', N'@@@', 1, CAST(0.00 AS Decimal(10, 2)), N'https://i.ytimg.com/vi/py7-61U5IQU/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLCrxhh83ZY1vQQBLrShPkJ7jz-RfQ', 5, NULL, 0, CAST(N'2024-07-14T22:24:15.460' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
INSERT [dbo].[CourseDuration] ([course_id], [course_duration]) VALUES (1, 2404)
GO
SET IDENTITY_INSERT [dbo].[CourseType] ON 

INSERT [dbo].[CourseType] ([course_type_id], [course_type_name], [course_type_description], [course_type_img]) VALUES (1, N'Information technology
', NULL, N'https://thenationalfrontier.com/wp-content/uploads/2021/04/What_is_Information_Technology.jpg')
INSERT [dbo].[CourseType] ([course_type_id], [course_type_name], [course_type_description], [course_type_img]) VALUES (2, N'Business', NULL, N'https://jobsgo.vn/blog/wp-content/uploads/2023/11/business-la-gi.jpg')
INSERT [dbo].[CourseType] ([course_type_id], [course_type_name], [course_type_description], [course_type_img]) VALUES (3, N'Design', NULL, N'https://media.licdn.com/dms/image/D4D12AQHYC_ZczxV2zw/article-cover_image-shrink_720_1280/0/1695524296879?e=2147483647&v=beta&t=VJkWc3l89UdKGn2pEkDo4IWINkztx2V3u0tdzPL8ILA')
SET IDENTITY_INSERT [dbo].[CourseType] OFF
GO
INSERT [dbo].[Enrollment] ([user_id], [course_id], [enrollment_date]) VALUES (1, 1, CAST(N'2024-06-20T15:58:29.243' AS DateTime))
INSERT [dbo].[Enrollment] ([user_id], [course_id], [enrollment_date]) VALUES (1, 2, CAST(N'2024-06-21T14:16:19.683' AS DateTime))
INSERT [dbo].[Enrollment] ([user_id], [course_id], [enrollment_date]) VALUES (1, 3, CAST(N'2024-06-20T16:20:09.387' AS DateTime))
INSERT [dbo].[Enrollment] ([user_id], [course_id], [enrollment_date]) VALUES (2, 3, CAST(N'2024-07-11T13:48:45.277' AS DateTime))
INSERT [dbo].[Enrollment] ([user_id], [course_id], [enrollment_date]) VALUES (3, 1, CAST(N'2024-06-22T12:45:19.217' AS DateTime))
INSERT [dbo].[Enrollment] ([user_id], [course_id], [enrollment_date]) VALUES (4, 1, CAST(N'2024-06-27T00:49:07.953' AS DateTime))
INSERT [dbo].[Enrollment] ([user_id], [course_id], [enrollment_date]) VALUES (4, 5, CAST(N'2024-06-26T16:24:39.777' AS DateTime))
INSERT [dbo].[Enrollment] ([user_id], [course_id], [enrollment_date]) VALUES (4, 6, CAST(N'2024-06-27T01:40:44.577' AS DateTime))
INSERT [dbo].[Enrollment] ([user_id], [course_id], [enrollment_date]) VALUES (4, 10, CAST(N'2024-07-11T16:32:24.270' AS DateTime))
INSERT [dbo].[Enrollment] ([user_id], [course_id], [enrollment_date]) VALUES (4, 13, CAST(N'2024-07-11T16:33:39.067' AS DateTime))
INSERT [dbo].[Enrollment] ([user_id], [course_id], [enrollment_date]) VALUES (5, 1, CAST(N'2024-07-11T19:09:47.830' AS DateTime))
INSERT [dbo].[Enrollment] ([user_id], [course_id], [enrollment_date]) VALUES (5, 10, CAST(N'2024-07-12T00:28:14.027' AS DateTime))
INSERT [dbo].[Enrollment] ([user_id], [course_id], [enrollment_date]) VALUES (8, 1, CAST(N'2024-07-12T13:01:30.123' AS DateTime))
INSERT [dbo].[Enrollment] ([user_id], [course_id], [enrollment_date]) VALUES (9, 1, CAST(N'2024-06-22T22:18:32.167' AS DateTime))
INSERT [dbo].[Enrollment] ([user_id], [course_id], [enrollment_date]) VALUES (10, 1, CAST(N'2024-06-22T22:13:47.533' AS DateTime))
INSERT [dbo].[Enrollment] ([user_id], [course_id], [enrollment_date]) VALUES (11, 1, CAST(N'2024-07-11T19:42:24.400' AS DateTime))
INSERT [dbo].[Enrollment] ([user_id], [course_id], [enrollment_date]) VALUES (16, 1, CAST(N'2024-07-26T02:11:14.783' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Lesson] ON 

INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (1, N'Introduction', 1, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (2, N'Loop', 1, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (3, N'Datatypes', 1, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (4, N'ArrayList', 1, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (5, N'Pointer', 1, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (6, N'Basic ILLUSTRATOR ', 3, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (7, N'Cover Design', 3, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (8, N'Logo design', 3, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (9, N'Trademark', 3, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (12, N'ấdasdsad', 7, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (28, N'2', 1, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (33, N'1', 1, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (38, N'@": """           )))', 1, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (39, N'@: ". """))', 1, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (40, N'@"" ))', 1, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (43, N'aaaaaaaaaa @@@@ """"""', 1, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (45, N'ok', 4, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (46, N'2222', 1, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (47, N'2', 1, 0)
INSERT [dbo].[Lesson] ([lesson_id], [title], [course_id], [is_locked]) VALUES (48, N'2', 1, 0)
SET IDENTITY_INSERT [dbo].[Lesson] OFF
GO
INSERT [dbo].[mentee_scores] ([user_id], [quiz_id], [score]) VALUES (4, 1, 0)
INSERT [dbo].[mentee_scores] ([user_id], [quiz_id], [score]) VALUES (4, 39, 1)
INSERT [dbo].[mentee_scores] ([user_id], [quiz_id], [score]) VALUES (4, 41, 3)
GO
INSERT [dbo].[MentorManager] ([MentorId], [ManagerId]) VALUES (4, 5)
INSERT [dbo].[MentorManager] ([MentorId], [ManagerId]) VALUES (7, 5)
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([payment_id], [user_id], [course_id], [amount], [payment_date], [transaction_code]) VALUES (1, 1, 3, CAST(890000.00 AS Decimal(10, 2)), CAST(N'2024-06-19T16:26:16.000' AS DateTime), N'7060708')
INSERT [dbo].[Payment] ([payment_id], [user_id], [course_id], [amount], [payment_date], [transaction_code]) VALUES (2, 1, 2, CAST(10000.00 AS Decimal(10, 2)), CAST(N'2024-06-19T16:26:16.000' AS DateTime), N'7060708')
INSERT [dbo].[Payment] ([payment_id], [user_id], [course_id], [amount], [payment_date], [transaction_code]) VALUES (3, 2, 3, CAST(890000.00 AS Decimal(10, 2)), CAST(N'2024-04-28T18:35:15.000' AS DateTime), N'7162413')
INSERT [dbo].[Payment] ([payment_id], [user_id], [course_id], [amount], [payment_date], [transaction_code]) VALUES (5, 10, 2, CAST(10000.00 AS Decimal(10, 2)), CAST(N'2024-01-12T13:12:44.437' AS DateTime), NULL)
INSERT [dbo].[Payment] ([payment_id], [user_id], [course_id], [amount], [payment_date], [transaction_code]) VALUES (6, 9, 3, CAST(890000.00 AS Decimal(10, 2)), CAST(N'2024-02-12T13:13:00.533' AS DateTime), NULL)
INSERT [dbo].[Payment] ([payment_id], [user_id], [course_id], [amount], [payment_date], [transaction_code]) VALUES (7, 8, 3, CAST(890000.00 AS Decimal(10, 2)), CAST(N'2024-02-12T13:13:15.890' AS DateTime), NULL)
INSERT [dbo].[Payment] ([payment_id], [user_id], [course_id], [amount], [payment_date], [transaction_code]) VALUES (8, 10, 2, CAST(10000.00 AS Decimal(10, 2)), CAST(N'2024-02-12T13:22:51.430' AS DateTime), NULL)
INSERT [dbo].[Payment] ([payment_id], [user_id], [course_id], [amount], [payment_date], [transaction_code]) VALUES (9, 11, 3, CAST(890000.00 AS Decimal(10, 2)), CAST(N'2024-01-12T13:23:04.427' AS DateTime), NULL)
INSERT [dbo].[Payment] ([payment_id], [user_id], [course_id], [amount], [payment_date], [transaction_code]) VALUES (10, 12, 3, CAST(890000.00 AS Decimal(10, 2)), CAST(N'2024-03-12T13:23:04.427' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[question_type] ON 

INSERT [dbo].[question_type] ([type_id], [type_name]) VALUES (1, N'Radio box')
INSERT [dbo].[question_type] ([type_id], [type_name]) VALUES (2, N'Check box')
SET IDENTITY_INSERT [dbo].[question_type] OFF
GO
SET IDENTITY_INSERT [dbo].[questions] ON 

INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (5, 1, N'Break command; What is loop used for in C++?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (6, 1, N'In C++, to perform a certain action for each element in an array, which loop is commonly used?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (7, 1, N'To avoid infinite loops in C++, what needs to be guaranteed?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (8, 1, N'Which of the following characteristics does the for loop in C++ have?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (9, 1, N'In C++ programming language, the following control statements are used to change the execution flow of a loop. Select the commands that can fill in the question below:', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (10, 1, N'In the C++ programming language, what is true about for loops?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (16, 2, N'In what cases is the for loop commonly used in C++?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (17, 2, N'Which loop in C++ checks a condition before executing a block of statements?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (18, 2, N'In C++, what keywords can be used to exit a loop?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (19, 2, N'In C++, how is the while loop different from the do-while loop?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (20, 2, N'Break command; What is loop used for in C++?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (50, 2, N'a', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (51, 2, N'a', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (52, 2, N'a', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (54, 2, N'a', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (55, 2, N'a', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (56, 2, N'a', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (57, 2, N'a', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (58, 2, N'a', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (59, 2, N'a', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (60, 2, N'anh vi?t', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (71, 1, N'In what cases is the for loop commonly used in C?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (72, 1, N'Which loop in C++ checks a condition before executing a block of ?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (73, 1, N'In C++, what keywords can be used to exit a loop?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (74, 1, N'In C++, how is the while loop different from the do-while loop?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (80, 2, N'a', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (81, 2, N'viet anh', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (86, 1, N'anh vi?ttt', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (87, 1, N'anh vi?t', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (88, 1, N'vai', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (97, 33, N'1+1=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (98, 33, N'1+2=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (99, 33, N'1+3=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (100, 33, N'1+4=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (101, 33, N'1+5=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (102, 33, N'a', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (108, 33, N'1+1=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (109, 33, N'1+2=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (110, 33, N'1+3=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (111, 33, N'1+4=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (112, 33, N'1+5=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (113, 38, N'1+1=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (114, 38, N'1+2=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (115, 38, N'1+3=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (116, 38, N'1+4=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (117, 38, N'1+5=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (118, 39, N'1+1=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (119, 39, N'1+2=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (120, 39, N'1+3=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (121, 39, N'1+4=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (122, 39, N'1+5=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (123, 40, N'1+1=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (124, 40, N'1+2=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (125, 40, N'1+3=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (126, 40, N'1+4=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (127, 40, N'1+5=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (128, 41, N'1+1=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (129, 41, N'1+2=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (130, 41, N'1+3=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (131, 41, N'1+4=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (132, 41, N'1+5=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (133, 42, N'1+1=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (134, 42, N'1+2=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (135, 42, N'1+3=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (136, 42, N'1+4=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (137, 42, N'1+5=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (139, 42, N'1+1=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (140, 42, N'1+2=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (141, 42, N'1+3=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (142, 42, N'1+4=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (143, 42, N'1+5=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (144, 43, N'1+1=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (145, 43, N'1+2=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (146, 43, N'1+3=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (147, 43, N'1+4=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (148, 43, N'1+5=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (149, 43, N'1+1=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (150, 43, N'1+2=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (151, 43, N'1+3=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (152, 43, N'1+4=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (153, 43, N'1+5=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (154, 43, N'1+1=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (155, 43, N'1+2=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (156, 43, N'1+3=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (157, 43, N'1+4=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (158, 43, N'1+5=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (160, 44, N'1+2=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (161, 44, N'1+3=?', 1)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (162, 44, N'1+4=?', 2)
INSERT [dbo].[questions] ([question_id], [quiz_id], [question_text], [type_id]) VALUES (163, 44, N'1+5=?', 2)
SET IDENTITY_INSERT [dbo].[questions] OFF
GO
SET IDENTITY_INSERT [dbo].[quizzes] ON 

INSERT [dbo].[quizzes] ([quiz_id], [lesson_id], [quiz_name], [duration_minutes], [is_locked]) VALUES (1, 2, N'Quiz Loop', 300, 0)
INSERT [dbo].[quizzes] ([quiz_id], [lesson_id], [quiz_name], [duration_minutes], [is_locked]) VALUES (2, 3, N'Quiz Data types', 60, 0)
INSERT [dbo].[quizzes] ([quiz_id], [lesson_id], [quiz_name], [duration_minutes], [is_locked]) VALUES (33, 2, N'5', 5, 0)
INSERT [dbo].[quizzes] ([quiz_id], [lesson_id], [quiz_name], [duration_minutes], [is_locked]) VALUES (38, 1, N'quiz1', 10, 0)
INSERT [dbo].[quizzes] ([quiz_id], [lesson_id], [quiz_name], [duration_minutes], [is_locked]) VALUES (39, 45, N'33333', 0, 0)
INSERT [dbo].[quizzes] ([quiz_id], [lesson_id], [quiz_name], [duration_minutes], [is_locked]) VALUES (40, 45, N'1111', 0, 0)
INSERT [dbo].[quizzes] ([quiz_id], [lesson_id], [quiz_name], [duration_minutes], [is_locked]) VALUES (41, 1, N'a hùng', 0, 0)
INSERT [dbo].[quizzes] ([quiz_id], [lesson_id], [quiz_name], [duration_minutes], [is_locked]) VALUES (42, 1, N'222', 0, 0)
INSERT [dbo].[quizzes] ([quiz_id], [lesson_id], [quiz_name], [duration_minutes], [is_locked]) VALUES (43, 4, N'Quiz Loop', 0, 0)
INSERT [dbo].[quizzes] ([quiz_id], [lesson_id], [quiz_name], [duration_minutes], [is_locked]) VALUES (44, 5, N'demo1', 0, 0)
SET IDENTITY_INSERT [dbo].[quizzes] OFF
GO
INSERT [dbo].[Review] ([user_id], [course_id], [rating], [review_text], [review_date]) VALUES (1, 1, 4, N'vãi', CAST(N'2024-07-10T17:08:05.780' AS DateTime))
INSERT [dbo].[Review] ([user_id], [course_id], [rating], [review_text], [review_date]) VALUES (3, 1, 5, N'tuyệt vời', CAST(N'2024-06-27T01:03:46.687' AS DateTime))
INSERT [dbo].[Review] ([user_id], [course_id], [rating], [review_text], [review_date]) VALUES (9, 1, 4, N'qua ok', CAST(N'2024-06-27T01:04:00.847' AS DateTime))
INSERT [dbo].[Review] ([user_id], [course_id], [rating], [review_text], [review_date]) VALUES (10, 1, 4, N'tốt', CAST(N'2024-06-27T01:04:06.810' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (3, N'admin')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (4, N'manager')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (1, N'mentee')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (2, N'mentor')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[SubLesson] ON 

INSERT [dbo].[SubLesson] ([sub_lesson_id], [title], [content], [description], [lesson_id], [creation_date], [video_link], [is_locked], [video_duration]) VALUES (2, N'Introduction to c++ language', N'p', N'hay', 1, CAST(N'2024-06-02T16:02:07.287' AS DateTime), N'https://www.youtube.com/embed/Gg9WWUgiO3k', 0, 783)
INSERT [dbo].[SubLesson] ([sub_lesson_id], [title], [content], [description], [lesson_id], [creation_date], [video_link], [is_locked], [video_duration]) VALUES (3, N'For,while,do while loop', N'Study loop', NULL, 2, CAST(N'2024-06-02T15:59:37.083' AS DateTime), N'https://www.youtube.com/embed/NH66_l68eYQ', 0, 843)
INSERT [dbo].[SubLesson] ([sub_lesson_id], [title], [content], [description], [lesson_id], [creation_date], [video_link], [is_locked], [video_duration]) VALUES (4, N'GRAPHIC DESIGN', N'FREE professional graphic design for students and workers who are passionate about graphic design and make money online with design. Wishing you good studies and success soon.', NULL, 6, CAST(N'2024-06-20T16:12:07.083' AS DateTime), N'https://www.youtube.com/embed/BD_CvpUC3oA', 0, NULL)
INSERT [dbo].[SubLesson] ([sub_lesson_id], [title], [content], [description], [lesson_id], [creation_date], [video_link], [is_locked], [video_duration]) VALUES (5, N'DRAWING BASIC SHAPES', N'Drawing basic shapes is essential in art and design, forming the foundation for more complex forms. Here’s a summary of the key shapes and techniques:
Basic Shapes:Circle
Definition: All points equidistant from the center.
Technique: Use freehand, compass, or tracing.
Definition: Four equal sides and right angles.
Technique: Use freehand, ruler, or grid method.', NULL, 6, CAST(N'2024-06-20T16:23:15.430' AS DateTime), N'https://www.youtube.com/embed/DhcTS55aBTo', 0, NULL)
INSERT [dbo].[SubLesson] ([sub_lesson_id], [title], [content], [description], [lesson_id], [creation_date], [video_link], [is_locked], [video_duration]) VALUES (6, N'BASIC SHAPE CUTTING', N'Basic shape cutting involves creating various shapes from materials like paper, cardboard, fabric, or foam. This skill is fundamental in arts and crafts, model making, and design projects. Here’s a summary of the key aspects and techniques for basic shape cutting', NULL, 6, CAST(N'2024-06-20T16:24:13.467' AS DateTime), N'https://www.youtube.com/embed/YIHItmjzi0Y', 0, NULL)
INSERT [dbo].[SubLesson] ([sub_lesson_id], [title], [content], [description], [lesson_id], [creation_date], [video_link], [is_locked], [video_duration]) VALUES (7, N'OBJECT TRANSFER', N'Object transfer, in the context of arts and crafts, involves moving or copying shapes, designs, or images from one surface to another. This technique is useful in a variety of projects, including drawing, painting, sewing, and crafting. Here’s a summary of the key methods and techniques for object transfer', NULL, 7, CAST(N'2024-06-20T16:25:23.463' AS DateTime), N'https://www.youtube.com/embed/0D1BRr4iE', 0, NULL)
INSERT [dbo].[SubLesson] ([sub_lesson_id], [title], [content], [description], [lesson_id], [creation_date], [video_link], [is_locked], [video_duration]) VALUES (8, N'FILL AND STROKE', N'"Fill" and "stroke" are fundamental concepts in graphic design, drawing, and illustration, particularly in vector graphics. Here''s a detailed explanation of both terms and their applications', NULL, 7, CAST(N'2024-06-20T16:26:24.970' AS DateTime), N'https://www.youtube.com/embed/yF4Dcrgk2ss', 0, NULL)
INSERT [dbo].[SubLesson] ([sub_lesson_id], [title], [content], [description], [lesson_id], [creation_date], [video_link], [is_locked], [video_duration]) VALUES (9, N'PEN TOOL', N'The Pen Tool is a powerful and versatile feature found in many graphic design and vector illustration software programs such as Adobe Illustrator, Adobe Photoshop, CorelDRAW, and others. It allows users to create precise paths, shapes, and lines with great control over their form and curvature. Here’s an in-depth look at the Pen Tool', NULL, 8, CAST(N'2024-06-20T16:28:30.553' AS DateTime), N'https://www.youtube.com/embed/XuHOJsSpBi8', 0, NULL)
INSERT [dbo].[SubLesson] ([sub_lesson_id], [title], [content], [description], [lesson_id], [creation_date], [video_link], [is_locked], [video_duration]) VALUES (10, N'DRAWING PIKACHU', N'The Pen Tool is a powerful and versatile feature found in many graphic design and vector illustration software programs such as Adobe Illustrator, Adobe Photoshop, CorelDRAW, and others. It allows users to create precise paths, shapes, and lines with great control over their form and curvature. Here’s an in-depth look at the Pen Tool', NULL, 8, CAST(N'2024-06-20T16:29:23.180' AS DateTime), N'https://www.youtube.com/embed/hoTwyCC9-Ug', 0, NULL)
INSERT [dbo].[SubLesson] ([sub_lesson_id], [title], [content], [description], [lesson_id], [creation_date], [video_link], [is_locked], [video_duration]) VALUES (11, N'LOGO TEXT', N'
Creating logo text involves designing the text component of a logo, which can be just as crucial as the graphical elements. Logo text typically includes the company or brand name and sometimes a tagline. Here are key considerations and techniques for creating effective logo text', NULL, 9, CAST(N'2024-06-20T16:30:23.957' AS DateTime), N'https://www.youtube.com/embed/MkTe62rWDmg', 0, NULL)
INSERT [dbo].[SubLesson] ([sub_lesson_id], [title], [content], [description], [lesson_id], [creation_date], [video_link], [is_locked], [video_duration]) VALUES (12, N'GRADIENT AND FONT', N'Combining gradients and fonts can create visually striking text effects for logos, posters, websites, and other design projects. Here’s a guide on how to effectively use gradients with fonts', NULL, 9, CAST(N'2024-06-20T16:31:16.727' AS DateTime), N'https://www.youtube.com/embed/VoGqB8Hg_bc', 0, NULL)
INSERT [dbo].[SubLesson] ([sub_lesson_id], [title], [content], [description], [lesson_id], [creation_date], [video_link], [is_locked], [video_duration]) VALUES (13, N'Overview Datatyes', N'These data types form the foundational building blocks for storing and manipulating data in programming languages. Different languages may have additional or slightly different data types, but these are among the most common across various programming paradigms', NULL, 3, CAST(N'2024-06-20T19:08:30.730' AS DateTime), N'https://www.youtube.com/embed/8GJqjFoY7UQ', 0, 441)
INSERT [dbo].[SubLesson] ([sub_lesson_id], [title], [content], [description], [lesson_id], [creation_date], [video_link], [is_locked], [video_duration]) VALUES (14, N'ArrayList', N'In C++, Standard Template Library (STL) serves as the equivalent of an ArrayList in other programming languages like Java. It is a dynamic array that provides the benefits of arrays with the flexibility to resize as needed. Below is an overview of how to use std::vector and some of its common operations', NULL, 4, CAST(N'2024-06-21T18:43:43.707' AS DateTime), N'https://www.youtube.com/embed/HGXnCvrHok8', 0, 1598)
INSERT [dbo].[SubLesson] ([sub_lesson_id], [title], [content], [description], [lesson_id], [creation_date], [video_link], [is_locked], [video_duration]) VALUES (15, N'Linked List', N'In C++, a linked list is a data structure used for dynamic storage of data elements, where each element (node) contains a value and a pointer to the next node in the sequence. The linked list is particularly useful when you need to frequently add and remove elements from the beginning or middle of a list, as these operations are more efficient compared to arrays or vectors. Here''s an overview of implementing a singly linked list in C++.', NULL, 4, CAST(N'2024-06-21T18:46:55.857' AS DateTime), N'https://www.youtube.com/embed/R9PTBwOzceo', 0, 381)
INSERT [dbo].[SubLesson] ([sub_lesson_id], [title], [content], [description], [lesson_id], [creation_date], [video_link], [is_locked], [video_duration]) VALUES (16, N'Introduction to Pointers', N'Pointers are a fundamental concept in C++ (and other programming languages like C) that provide a powerful way to manipulate memory and interact with low-level system components. Understanding pointers is essential for tasks such as dynamic memory allocation, passing variables by reference, and working with arrays and data structures. Here''s an introduction to pointers in C++', NULL, 5, CAST(N'2024-06-21T18:48:36.160' AS DateTime), N'https://www.youtube.com/embed/h-HBipu_1P0', 0, 607)
INSERT [dbo].[SubLesson] ([sub_lesson_id], [title], [content], [description], [lesson_id], [creation_date], [video_link], [is_locked], [video_duration]) VALUES (26, N'@123 @)))', N'', N'', 1, CAST(N'2024-07-17T14:02:40.230' AS DateTime), N'https://www.youtube.com/embed/hlU_ugrplVM', 0, 296)
SET IDENTITY_INSERT [dbo].[SubLesson] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [username], [password], [email], [first_name], [last_name], [role_id], [avatar], [created_at], [is_locked], [is_deleted]) VALUES (1, N'thaigay2k3', N'Thaingu@123', N'quyen.nddl.vn@gmail.com', N'quyen', N'ne', 1, N'img\z4347971629520_59f67ae8605e6a1214bf23674b4996bb.jpg', CAST(N'2024-05-26T23:55:35.510' AS DateTime), 0, 0)
INSERT [dbo].[User] ([user_id], [username], [password], [email], [first_name], [last_name], [role_id], [avatar], [created_at], [is_locked], [is_deleted]) VALUES (2, N'admin', N'1', N'baodaica6677@gmail.com', N'Viet', N'Dang', 3, N'img\autumn-trees-park-background-free-photo.jpg', CAST(N'2024-05-29T08:56:05.763' AS DateTime), 0, 0)
INSERT [dbo].[User] ([user_id], [username], [password], [email], [first_name], [last_name], [role_id], [avatar], [created_at], [is_locked], [is_deleted]) VALUES (3, N'mentee', N'1', N'a@gmail.com', N'Me', N'TI', 1, N'img\avt_default.jpg', CAST(N'2024-06-02T15:49:27.550' AS DateTime), 0, 0)
INSERT [dbo].[User] ([user_id], [username], [password], [email], [first_name], [last_name], [role_id], [avatar], [created_at], [is_locked], [is_deleted]) VALUES (4, N'mentor', N'1', N'b@gmail.com', N'Me1', N'To', 2, N'img\R.png', CAST(N'2024-06-02T15:49:48.780' AS DateTime), 0, 0)
INSERT [dbo].[User] ([user_id], [username], [password], [email], [first_name], [last_name], [role_id], [avatar], [created_at], [is_locked], [is_deleted]) VALUES (5, N'manager', N'1', N'c@gmail.com', N'Ma', N'Na', 4, N'img\R.png', CAST(N'2024-06-02T15:51:46.250' AS DateTime), 0, 0)
INSERT [dbo].[User] ([user_id], [username], [password], [email], [first_name], [last_name], [role_id], [avatar], [created_at], [is_locked], [is_deleted]) VALUES (6, N'mentor1', N'1', N'a', N'Mentor1', N'', 2, N'img\avt_default.jpg', CAST(N'2024-06-08T09:20:21.807' AS DateTime), 0, 0)
INSERT [dbo].[User] ([user_id], [username], [password], [email], [first_name], [last_name], [role_id], [avatar], [created_at], [is_locked], [is_deleted]) VALUES (7, N'mentor2', N'1', N'b', N'Mentor2', N'', 2, N'img\avt_default.jpg', CAST(N'2024-06-08T09:21:42.917' AS DateTime), 0, 0)
INSERT [dbo].[User] ([user_id], [username], [password], [email], [first_name], [last_name], [role_id], [avatar], [created_at], [is_locked], [is_deleted]) VALUES (8, N'thantrieu', N'1', N'c', N'Than Trieu', N'', 2, N'img\avt_default.jpg', CAST(N'2024-06-08T09:57:23.100' AS DateTime), 0, 0)
INSERT [dbo].[User] ([user_id], [username], [password], [email], [first_name], [last_name], [role_id], [avatar], [created_at], [is_locked], [is_deleted]) VALUES (9, N'28tech', N'1', N'd', N'Xuan', N'Loc', 2, N'img\avt_default.jpg', CAST(N'2024-06-08T09:57:43.043' AS DateTime), 0, 0)
INSERT [dbo].[User] ([user_id], [username], [password], [email], [first_name], [last_name], [role_id], [avatar], [created_at], [is_locked], [is_deleted]) VALUES (10, N'howkteam', N'1', N'e', N'K', N'Team', 2, N'img\avt_default.jpg', CAST(N'2024-06-08T10:04:58.563' AS DateTime), 0, 0)
INSERT [dbo].[User] ([user_id], [username], [password], [email], [first_name], [last_name], [role_id], [avatar], [created_at], [is_locked], [is_deleted]) VALUES (11, NULL, NULL, N'anhdvvhe171788@fpt.edu.vn', N'', N'Đặng Vũ Việt Anh', 1, N'img\autumn-trees-park-background-free-photo.jpg', CAST(N'2024-06-09T21:16:19.213' AS DateTime), 0, 0)
INSERT [dbo].[User] ([user_id], [username], [password], [email], [first_name], [last_name], [role_id], [avatar], [created_at], [is_locked], [is_deleted]) VALUES (12, NULL, NULL, N'phucdq2003@gmail.com', N'Phục', N'Dương', 1, N'https://lh3.googleusercontent.com/a/ACg8ocJyWVFvW01BZm-0XeaxfVhmU--HTR_OXmBTEW1Lfos3_Mpp1w=s96-c', CAST(N'2024-06-15T16:18:09.210' AS DateTime), 0, 0)
INSERT [dbo].[User] ([user_id], [username], [password], [email], [first_name], [last_name], [role_id], [avatar], [created_at], [is_locked], [is_deleted]) VALUES (13, N'Huytran', N'Huyend03@', N'huy243@gmail.com', N'Dinh', N'Quyen', 2, N'img\avt_default.jpg', CAST(N'2024-07-11T13:33:56.857' AS DateTime), 0, 0)
INSERT [dbo].[User] ([user_id], [username], [password], [email], [first_name], [last_name], [role_id], [avatar], [created_at], [is_locked], [is_deleted]) VALUES (14, N'THAIHE091203', N'Thaiok123@', N'thaibhe091203@fpt.edu.vn', N'bui', N'Thai', 2, N'img\avt_default.jpg', CAST(N'2024-07-11T13:34:09.000' AS DateTime), 0, 0)
INSERT [dbo].[User] ([user_id], [username], [password], [email], [first_name], [last_name], [role_id], [avatar], [created_at], [is_locked], [is_deleted]) VALUES (15, N'admin0555', N'Vietanh@g44', N'vietanh09@gmail.com', N'viet', N'Anh', 4, N'img\avt_default.jpg', CAST(N'2024-07-12T14:20:36.203' AS DateTime), 0, 0)
INSERT [dbo].[User] ([user_id], [username], [password], [email], [first_name], [last_name], [role_id], [avatar], [created_at], [is_locked], [is_deleted]) VALUES (16, NULL, NULL, N'nanaye8877@gmail.com', N'Đặng', N'Vũ Việt Anh', 1, N'https://lh3.googleusercontent.com/a/ACg8ocJZljyi_ztTmy3AbpBOjgYsTdrJywViQFsQtLyiVy0cnLLKDDCD=s96-c', CAST(N'2024-07-26T02:11:01.350' AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
INSERT [dbo].[UserCourseProgress] ([user_id], [course_id], [completion_date], [progress]) VALUES (1, 1, CAST(N'2024-06-22T22:01:58.413' AS DateTime), 100)
INSERT [dbo].[UserCourseProgress] ([user_id], [course_id], [completion_date], [progress]) VALUES (1, 2, CAST(N'2024-06-22T17:56:51.373' AS DateTime), 25)
INSERT [dbo].[UserCourseProgress] ([user_id], [course_id], [completion_date], [progress]) VALUES (1, 3, CAST(N'2024-06-22T17:58:11.217' AS DateTime), 33)
INSERT [dbo].[UserCourseProgress] ([user_id], [course_id], [completion_date], [progress]) VALUES (3, 1, CAST(N'2024-06-22T21:52:39.380' AS DateTime), 50)
INSERT [dbo].[UserCourseProgress] ([user_id], [course_id], [completion_date], [progress]) VALUES (4, 1, CAST(N'2024-07-12T00:51:31.737' AS DateTime), 0)
INSERT [dbo].[UserCourseProgress] ([user_id], [course_id], [completion_date], [progress]) VALUES (4, 4, CAST(N'2024-07-19T14:16:29.810' AS DateTime), 0)
INSERT [dbo].[UserCourseProgress] ([user_id], [course_id], [completion_date], [progress]) VALUES (5, 1, CAST(N'2024-07-11T19:12:39.630' AS DateTime), 0)
INSERT [dbo].[UserCourseProgress] ([user_id], [course_id], [completion_date], [progress]) VALUES (8, 1, CAST(N'2024-07-12T13:01:54.817' AS DateTime), 0)
INSERT [dbo].[UserCourseProgress] ([user_id], [course_id], [completion_date], [progress]) VALUES (10, 1, CAST(N'2024-06-22T22:14:22.350' AS DateTime), 50)
INSERT [dbo].[UserCourseProgress] ([user_id], [course_id], [completion_date], [progress]) VALUES (11, 1, CAST(N'2024-07-11T19:42:26.570' AS DateTime), 0)
INSERT [dbo].[UserCourseProgress] ([user_id], [course_id], [completion_date], [progress]) VALUES (16, 1, CAST(N'2024-07-26T02:11:14.790' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[wish_list] ON 

INSERT [dbo].[wish_list] ([wish_id], [course_id], [user_id]) VALUES (2, 1, 4)
INSERT [dbo].[wish_list] ([wish_id], [course_id], [user_id]) VALUES (4, 5, 1)
INSERT [dbo].[wish_list] ([wish_id], [course_id], [user_id]) VALUES (9, 6, 5)
SET IDENTITY_INSERT [dbo].[wish_list] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__CourseTy__75B1D6ED7BE21610]    Script Date: 7/26/2024 3:31:13 PM ******/
ALTER TABLE [dbo].[CourseType] ADD UNIQUE NONCLUSTERED 
(
	[course_type_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Role__783254B143778AF7]    Script Date: 7/26/2024 3:31:13 PM ******/
ALTER TABLE [dbo].[Role] ADD UNIQUE NONCLUSTERED 
(
	[role_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__AB6E6164E1527B2F]    Script Date: 7/26/2024 3:31:13 PM ******/
ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comments] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Course] ADD  DEFAULT ('img\course_img.jpg') FOR [course_img]
GO
ALTER TABLE [dbo].[Course] ADD  DEFAULT ((0)) FOR [is_locked]
GO
ALTER TABLE [dbo].[Course] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Course] ADD  DEFAULT ((0)) FOR [is_deleted]
GO
ALTER TABLE [dbo].[Enrollment] ADD  DEFAULT (getdate()) FOR [enrollment_date]
GO
ALTER TABLE [dbo].[Lesson] ADD  DEFAULT ((0)) FOR [is_locked]
GO
ALTER TABLE [dbo].[Payment] ADD  DEFAULT (getdate()) FOR [payment_date]
GO
ALTER TABLE [dbo].[quizzes] ADD  DEFAULT ((0)) FOR [is_locked]
GO
ALTER TABLE [dbo].[Review] ADD  DEFAULT (getdate()) FOR [review_date]
GO
ALTER TABLE [dbo].[SubLesson] ADD  DEFAULT (getdate()) FOR [creation_date]
GO
ALTER TABLE [dbo].[SubLesson] ADD  DEFAULT ((0)) FOR [is_locked]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ('img\avt_default.jpg') FOR [avatar]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [is_locked]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [is_deleted]
GO
ALTER TABLE [dbo].[UserCourseProgress] ADD  DEFAULT (getdate()) FOR [completion_date]
GO
ALTER TABLE [dbo].[answers]  WITH CHECK ADD FOREIGN KEY([question_id])
REFERENCES [dbo].[questions] ([question_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[Comments] ([comment_id])
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK__Comments__sub_le__6D0D32F4] FOREIGN KEY([sub_lesson_id])
REFERENCES [dbo].[SubLesson] ([sub_lesson_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK__Comments__sub_le__6D0D32F4]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD FOREIGN KEY([course_type_id])
REFERENCES [dbo].[CourseType] ([course_type_id])
GO
ALTER TABLE [dbo].[CourseDuration]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[mentee_scores]  WITH CHECK ADD FOREIGN KEY([quiz_id])
REFERENCES [dbo].[quizzes] ([quiz_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[mentee_scores]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MentorManager]  WITH CHECK ADD FOREIGN KEY([ManagerId])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[MentorManager]  WITH CHECK ADD FOREIGN KEY([MentorId])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[questions]  WITH CHECK ADD FOREIGN KEY([quiz_id])
REFERENCES [dbo].[quizzes] ([quiz_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[questions]  WITH CHECK ADD FOREIGN KEY([type_id])
REFERENCES [dbo].[question_type] ([type_id])
GO
ALTER TABLE [dbo].[quizzes]  WITH CHECK ADD FOREIGN KEY([lesson_id])
REFERENCES [dbo].[Lesson] ([lesson_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK__Review__course_i__6E01572D] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK__Review__course_i__6E01572D]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK__Review__user_id__6EF57B66] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK__Review__user_id__6EF57B66]
GO
ALTER TABLE [dbo].[SubLesson]  WITH CHECK ADD  CONSTRAINT [FK__SubLesson__lesso__7E37BEF6] FOREIGN KEY([lesson_id])
REFERENCES [dbo].[Lesson] ([lesson_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubLesson] CHECK CONSTRAINT [FK__SubLesson__lesso__7E37BEF6]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[UserCourseProgress]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[UserCourseProgress]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[wish_list]  WITH CHECK ADD  CONSTRAINT [FK_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[wish_list] CHECK CONSTRAINT [FK_Course]
GO
ALTER TABLE [dbo].[wish_list]  WITH CHECK ADD  CONSTRAINT [FK_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[wish_list] CHECK CONSTRAINT [FK_User]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD CHECK  (([rating]>=(1) AND [rating]<=(5)))
GO
/****** Object:  StoredProcedure [dbo].[DeleteCommentAndDescendants]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCommentAndDescendants]
    @comment_id INT
AS
BEGIN
    -- Tạo một bảng tạm để lưu trữ tất cả các comment con của comment hiện tại
    CREATE TABLE #TempComments (
        comment_id INT
    );

    -- Chèn comment hiện tại vào bảng tạm
    INSERT INTO #TempComments (comment_id) VALUES (@comment_id);

    -- Lặp lại quá trình cho tất cả các comment con của comment hiện tại
    WHILE @@ROWCOUNT > 0
    BEGIN
        -- Xóa tất cả các comment con của comment trong bảng tạm và chèn các comment con mới vào bảng tạm
        DELETE FROM Comments WHERE parent_id IN (SELECT comment_id FROM #TempComments);
        INSERT INTO #TempComments (comment_id)
        SELECT comment_id FROM Comments WHERE parent_id IN (SELECT comment_id FROM #TempComments);
    END

    -- Xóa tất cả các comment đã được chèn vào bảng tạm
    DELETE FROM Comments WHERE comment_id IN (SELECT comment_id FROM #TempComments);

    -- Xóa bảng tạm
    DROP TABLE #TempComments;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteCommentAndReplies]    Script Date: 7/26/2024 3:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCommentAndReplies]
    @comment_id INT
AS
BEGIN
    -- Xóa tất cả các comment con của comment cần xóa và chính comment đó
    WITH RecursiveComments AS (
        SELECT comment_id
        FROM Comments
        WHERE comment_id = @comment_id
        UNION ALL
        SELECT c.comment_id
        FROM Comments c
        INNER JOIN RecursiveComments rc ON c.parent_id = rc.comment_id
    )
    DELETE FROM Comments
    WHERE comment_id IN (SELECT comment_id FROM RecursiveComments);
END;
GO
