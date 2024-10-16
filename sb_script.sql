
USE [eExam]
GO
/****** Object:  Table [dbo].[a1]    Script Date: 09-09-2021 19:33:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a1](
	[a_id] [float] NULL,
	[a_qusetion_id] [float] NULL,
	[a_answer] [varchar](4000) NULL,
	[a_rightanswer] [float] NULL,
	[a_create_by] [float] NULL,
	[a_craete_date] [smalldatetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[answer_master]    Script Date: 09-09-2021 19:33:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[answer_master](
	[a_id] [int] IDENTITY(1,1) NOT NULL,
	[a_qusetion_id] [int] NOT NULL,
	[a_answer] [varchar](3500) NOT NULL,
	[a_rightanswer] [int] NOT NULL,
	[a_create_by] [int] NOT NULL,
	[a_craete_date] [datetime] NOT NULL,
 CONSTRAINT [PK_answer_master] PRIMARY KEY CLUSTERED 
(
	[a_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[country_master]    Script Date: 09-09-2021 19:33:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country_master](
	[c_code] [varchar](2) NOT NULL,
	[c_name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_country_master] PRIMARY KEY CLUSTERED 
(
	[c_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[exam_master]    Script Date: 09-09-2021 19:33:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exam_master](
	[e_id] [int] IDENTITY(1,1) NOT NULL,
	[e_name] [varchar](50) NOT NULL,
	[e_description] [varchar](500) NULL,
	[e_total_time] [int] NOT NULL,
	[e_no_of_question] [int] NOT NULL,
	[e_max_marks] [int] NOT NULL,
	[e_pass_marks] [int] NOT NULL,
	[e_active] [int] NOT NULL,
	[e_create_by] [int] NOT NULL,
	[e_create_date] [datetime] NOT NULL,
 CONSTRAINT [PK_exam_master] PRIMARY KEY CLUSTERED 
(
	[e_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[member_master]    Script Date: 09-09-2021 19:33:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member_master](
	[m_id] [int] NOT NULL,
	[m_emailid] [varchar](50) NOT NULL,
	[m_name] [varchar](50) NOT NULL,
	[m_password] [varchar](50) NOT NULL,
	[m_address] [varchar](100) NULL,
	[m_country_code] [varchar](2) NOT NULL,
	[m_city] [varchar](50) NULL,
	[m_zip] [varchar](50) NULL,
	[m_createdate] [datetime] NOT NULL,
	[m_active] [int] NOT NULL,
	[m_lastlogin_ip] [varchar](50) NULL,
	[m_lastlogin_date1] [datetime] NULL,
	[m_lastlogin_date2] [datetime] NULL,
	[m_password_change_date] [datetime] NULL,
 CONSTRAINT [PK_member_master] PRIMARY KEY CLUSTERED 
(
	[m_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[q1]    Script Date: 09-09-2021 19:33:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[q1](
	[q_id] [float] NULL,
	[q_exam_id] [float] NULL,
	[q_text] [varchar](4000) NULL,
	[q_type] [nvarchar](255) NULL,
	[q_active] [float] NULL,
	[q_create_by] [int] NULL,
	[q_create_date] [smalldatetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_master]    Script Date: 09-09-2021 19:33:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_master](
	[q_id] [int] NOT NULL,
	[q_exam_id] [int] NOT NULL,
	[q_text] [varchar](2500) NOT NULL,
	[q_type] [varchar](10) NOT NULL,
	[q_active] [int] NOT NULL,
	[q_create_by] [int] NOT NULL,
	[q_create_date] [datetime] NOT NULL,
 CONSTRAINT [PK_qusetion_master] PRIMARY KEY CLUSTERED 
(
	[q_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test_master]    Script Date: 09-09-2021 19:33:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test_master](
	[t_id] [int] IDENTITY(1,1) NOT NULL,
	[t_mem_id] [int] NOT NULL,
	[t_exam_id] [int] NOT NULL,
	[t_exam_date] [datetime] NOT NULL,
	[t_total_qst] [int] NOT NULL,
	[t_total_attempt] [int] NOT NULL,
	[t_not_atempt] [int] NOT NULL,
	[t_total_right] [int] NOT NULL,
	[t_total_wrong] [int] NOT NULL,
	[t_total_marks] [int] NOT NULL,
	[t_marks_get] [int] NOT NULL,
	[t_percent] [int] NOT NULL,
 CONSTRAINT [PK_test_master] PRIMARY KEY CLUSTERED 
(
	[t_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_master]    Script Date: 09-09-2021 19:33:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_master](
	[u_id] [int] NOT NULL,
	[u_name] [varchar](50) NOT NULL,
	[u_type] [varchar](50) NOT NULL,
	[u_password] [varchar](50) NOT NULL,
	[u_create_date] [datetime] NOT NULL,
	[u_changepassword_date] [datetime] NULL,
	[u_lastogin_date] [datetime] NULL,
	[u_login_ip] [varchar](50) NULL,
 CONSTRAINT [PK_user_master] PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (54, 8, N'Create a new order table named OrderDetail. Add OrderID, ProductID, and Quantity columns to this table. ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (55, 8, N'Create a composite PRIMARY KEY constraint on the OrderID and ProductID columns of the Orders table. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (56, 8, N'Remove the ProductID and Quantity columns from the Orders table. ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (57, 8, N'Create a UNIQUE constraint on the OrderID column of the Orders table. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (58, 8, N'Move the UnitPrice column from the Products table to the Orders table. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (93, 17, N'Create a database role named Marketing for the marketing employees and a database role named CustomerService for the customer service employees.  Add the Windows 2000 groups to the user-defined database roles.  Grant SELECT permissions on all tables in the database to the Marketing database role. Grant SELECT, INSERT, and UPDATE permissions on all tables in the database to the CustomerService database role. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (94, 17, N'Create one application role to be used by both the customer service and marketing employees.  Grant SELECT permissions on all tables in the database to the Windows 2000 Marketing group. Grant SELECT, INSERT, and UPDATE permissions on all tables in the database to the Windows 2000 CSR group. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (95, 17, N'Create an application role for the custom application.  Grant SELECT, INSERT and UPDATE permissions to the application role. Create a database role 
named Marketing for the marketing employees.  
Add the Windows 2000 Marketing group to the Marketing database role. 
Grant SELECT permissions on all tables in the database to the Marketing database role. 
', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (96, 17, N'Create one application role for the customer service employees.  Create a second application role for the marketing employees.  Grant SELECT permissions on all tables in the database to the application role to be used by the marketing employees.  Grant SELECT, INSERT, and UPDATE permissions on all tables in the database to the application role to be used by the customer service employees.  ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (97, 17, N'Create one application role for the customer service employees.  Create a second application role for the marketing employees to access the Sales database by using the custom application.  Create a third application role for the marketing employees to use when retrieving data from Excel. Grant SELECT permissions on all tables in the database to both application roles to be used by the marketing employees.  Grant SELECT, INSERT, and UPDATE permissions on all tables in the database to the application role to be used by the customer service employees.  ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (98, 18, N'Create a view that displays the order information for a customer. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (99, 18, N'Create a stored procedure that retrieves the order information for a customer. ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (100, 18, N'Create a scalar user-defined function that retrieves the order information for a customer. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (101, 18, N'Grant SELECT permissions on the Order and LineItem tables to the customers.  ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (102, 19, N'Create a trigger on the Department table that checks whether the database login of the user performing the insert or update operation belongs to a member of that department. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (103, 19, N'Create a view that includes all columns in the Department table and the SQLLogin column from the Employees table. ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (104, 19, N'Include the WITH CHECK OPTION clause in the view definition.  ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (105, 19, N'Grant INSERT and UPDATE permissions on the Department table. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (106, 19, N'Grant INSERT and UPDATE permissions on the SQLLogin column of the Employees table. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (111, 21, N'Use SQL profiler to capture the RPC:Completed event. Group the trace by the HostName data column. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (112, 21, N'Use SQL profiler to capture the SQL:StmtCompleted event.  Group the trace by the ApplicationName data column. ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (113, 21, N'Use System Monitor to monitor the SQLServer:Database counter. Select all counters for the Sales database ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (114, 21, N'Use System Monitor to monitor the SQLServer:General Statistics counter. Select all counters for the Sales database. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (115, 22, N'EXEC sp_updatestats ''resample'' ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (116, 22, N'CREATE STATISTICS Sales WITH FULLSCAN ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (117, 22, N'Sp_autostats ''Sales'' ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (118, 22, N'UPDATE STATISTICS Sales WITH FULLSCAN ALL ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (119, 23, N'Create a covering index for each query contained in the stored procedures. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (120, 23, N'For each query in the stored procedures, create an index that includes each column contained in the WHERE clause. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (121, 23, N'Use output from the Index Tuning Wizard to identify whether indexes should be added.  ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (122, 23, N'CREATE STATISTICS on all columns in the SELECT and WHERE clauses of each query. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (123, 24, N'Execute the DBCC UPDATEUSAGE statement against the database to update the sysindexes system table. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (124, 24, N'Execute the DBCC SHOW_STATISTICS statement to find high-density indexes. Drop the high-density indexes. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (125, 24, N'Run the Index Tuning Wizard against a workload file to suggest indexes to create and drop the suggested indexes. ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (126, 24, N'Use SQL profiler to find table scans. Add indexes to tables that were found to have table scans.  ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (127, 25, N'Use transactional replication. Mark all subscriptions for reinitialization. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (128, 25, N'Copy the snapshot to an NTFS compressed share.  Create a CD from that share.  Distribute the CD to the regional office. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (129, 25, N'Create a compressed snapshot in the default snapshot folder on the Distributor.  Create CD from that folder.  Distribute the CD to the regional offices. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (130, 25, N'Create a compressed snapshot in an alternative snapshot folder on the network.  Create CD from that folder.  Distribute the CD to the regional offices. ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (131, 25, N'Create a compressed snapshot in an alternative snapshot folder on the network.  Use FTP to distribute the snapshot to the regional offices.  ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (132, 26, N'Create a new table, and move the columns that are most frequently queried to this table.  Retain the DepartmentID column in both tables.  Create a view on the original table and on the new table. Add a FOREIGN KEY constraint on the join columns of the new table.  ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (133, 26, N'Create a new table, and move the columns that are most frequently queried to this table.  Retain the DepartmentID column in both tables.  
Create a view on the original table and on the new table. 
Add a CHECK constraint on the DepartmentID columns of both tables.  

', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (134, 26, N'Create one new table for each department, and move the sales information for each department to that department''s table.  Add a CHECK constraint on the DepartmentID columns of the new tables.  Create a view on the new tables. ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (135, 26, N'Create one new table for each department, and move the sales information for each department to that department''s table.  Create a view on the new tables.  Add a CHECK constraint on the DepartmentID column in the view.  ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (136, 26, N'Create a stored procedure that accepts an input parameter for the department.  Use the stored procedure to return results from the Sales table.  ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (137, 27, N'Drop the clustered index on the view. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (138, 27, N'Remove all permissions from the view. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (139, 27, N'Remove the WITH SCHEMABINDING option from the view.  ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (140, 27, N'. Remove the WITH SCHEMABINDING option from the function that is referencing the view.  ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (141, 27, N'. Disable the INSTEAD OF trigger on the view. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (142, 28, N'SIZE = 1GB ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (143, 28, N'. SIZE = 1MB ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (144, 28, N'SIZE= 2048KB ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (145, 28, N'FILEGROWTH = 20 ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (146, 28, N'FILEGROWTH = 5% ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (147, 29, N'Use the ALTER TABLE statement and the ON UPDATE clause to modify the Products table. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (148, 29, N'Use the ALTER TABLE statement and the DISABLE TRIGGER ALL option to modify the Products table. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (149, 29, N'Use the ALTER TABLE statement and the DISABLE TRIGGER ALL option to modify the Companies table. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (150, 29, N'Use the ALTER TABLE statement and the NOCHECK CONSTRAINT option to modify the Companies table. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (151, 29, N'Use the ALTER TABLE statement and the NOCHECK CONSTRAINT option to modify the Products table. ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (152, 30, N'Revoke SELECT permissions on the Salary and BonusPercentage columns of the Employees table for Tom''s database user account. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (153, 30, N'Add Tom to the db_datareader database role. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (154, 30, N'Add Tom to the db_accessadmin database role. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (155, 30, N'Grant SELECT permissions on the Salary and BonusPercentage columns of the Employees table for Tom''s database user account. ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (164, 2, N'EXEC sp_addlinkedserver ‘CORP2’, ‘SQL Server’
GO
SELECT CustomerID FROM CORP2.Archive.dbo.SalesHistory
WHERE CategoryID = 21', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (165, 2, N'SELECT CustomerID FROM OPENROWSET (‘SQLOLEDB’, ‘CORP2’; ‘p*word’, ‘SELECT
CustomerID FROM Archive.dbo.SalesHistory WHERE CategoryID = 21’)', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (166, 2, N'SELECT CustomerID FROM CORP2.Archive.dbo.SalesHistory
WHERE CategoryID = 21', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (167, 2, N'EXEC sp_addserver ‘CORP2’
GO
SELECT CustomerID FROM CORP2.Archive.dbo.SalesHistory
WHERE CategoryID = 21', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (168, 3, N'Set the DEADLOCK_PRIORITY to LOW for the transaction that inserts the employee name and
address information.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (169, 3, N'Set the DEADLOCK_PRIORITY to LOW for the transaction that inserts the employee demographics
information.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (170, 3, N'Add conditional code that checks for server error 1205 for the transaction that inserts the employee
name and address information. If this error is encountered, restart the transaction.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (171, 3, N'Add the ROWLOCK optimizer hint to the data manipulation SQL statements within the transactions', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (172, 3, N'Set the transaction isolation level to SERIALIZABLE for the transaction that inserts the employee
name and address information.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (173, 4, N'Place tables that are frequently joined together on the same filegroup.
Place heavily accessed tables and all indexes belonging to those tables on different filegroups.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (174, 4, N'Place tables that are frequently joined together on the same filegroup.
Place heavily accessed tables and the nonclustered indexes belonging to those tables on the same
filegroup.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (175, 4, N'Place tables that are frequently joined together on different filegroups.
Place heavily accessed tables and the nonclustered indexes belonging to those tables on different
filegroups.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (176, 4, N'Place tables that are frequently joined together on different filegroups.
Place heavily accessed tables and the nonclustered indexes belonging to those tables on the same
filegroup.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (177, 5, N'Create a script that contains the Data Definition Language of each stored procedure.
Use this script as a workload file for the Index Tuning Wizard.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (178, 5, N'Capture the execution of each stored procedure in a SQL Profiler trace.
Use the trace file as a workload file for the Index Tuning Wizard.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (179, 5, N'Update the index statistics for the tables used in the stored procedures.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (180, 5, N'Execute each stored procedure in SQL Query Analyzer, and use the Show Execution Plan option.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (181, 5, N'Execute each stored procedure in SQL Query Analyzer, and use the Show Server Trace option.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (182, 6, N'Set the data type of the column to uniqueidentifier.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (183, 6, N'Set the data type of the column to int, and set the IDENTITY property for the column.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (184, 6, N'Set the data type of the column to int.
Create a user-defined function that selects the maximum order number in the table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (185, 6, N'Set the data type of the column to int.
Create a NextKey table, and add a NextOrder column to the table.
Set the data type of the NextOrder column to int.
Create a stored procedure to retrieve and update the value held in the NextKey.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (186, 7, N'Create a new table named Instructors. Include an InstructorID column, and InstructorName column, and an OfficePhone column.  Add an InstructorID column to the Courses table. ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (187, 7, N'Move all the columns from the Classroom table to the Courses table, and drop the Classroom table. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (188, 7, N'Remove the PRIMARY KEY constraint from the Courses table, and replace the PRIMARY KEY constraint with a composite PRIMARY KEY constraint based on the CourseID and CourseTitle. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (189, 7, N'Remove the ClassroomID column, and base the PRIMARY KEY constraint on the ClassroomNumber and ClassTime columns. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (194, 9, N'DECLARE @retval int
DECLARE @ytd int
EXEC get_sales_for_title ‘Net Etiquette’, @ytd
IF @retval < 0
PRINT ‘No sales found’
ELSE
PRINT ‘Year to date sales: ’ + STR (@ytd)
GO', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (195, 9, N'DECLARE @retval int
DECLARE @ytd int
EXEC get_sales_for_title ‘Net Etiquette’, @ytd OUTPUT
IF @retval < 0
PRINT ‘No sales found’
ELSE
PRINT ‘Year to date sales: ’ + STR (@ytd)
GO', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (196, 9, N'DECLARE @retval int
DECLARE @ytd int
EXEC get_sales_for_title ‘Net Etiquette’,@retval OUTPUT
IF @retval < 0
PRINT ‘No sales found’
ELSE
PRINT ‘Year to date sales: ’ + STR (@ytd)
GO', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (197, 9, N'DECLARE @retval int
DECLARE @ytd int
EXEC @retval = get_sales_for_title ‘Net Etiquette’, @ytd OUTPUT
IF @retval < 0
PRINT ‘No sales found’
ELSE
PRINT ‘Year to date sales: ’ + STR (@ytd)
GO', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (202, 10, N'Create a user-defined function that requires ContainerID as an argument and returns the volume of the
container.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (203, 10, N'Create a stored procedure that requires ContainerID as an argument and returns the volume of the container. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (204, 10, N'Add a column named volume to the Container table. Create a trigger that calculates and store the volume in this column when a new container is inserted into the table. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (205, 10, N'Add a computed column to the Container table that calculates the volume of the container. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (206, 11, N'Create a stored procedure that will be called to update the inventory table. If the resultant quantity is less than the restocking quantity, use the xp_logevent system stored procedure to page the supply manager. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (207, 11, N'Create an INSTEAD OF UPDATE trigger on the inventory table. If the quantity in the inserted table is less than the restocking quantity, use SQLAgentMail to send an e-mail message to the supply manager''s pager. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (208, 11, N'Create a FOR UPDATE trigger on the inventory table. If the quantity in the inserted table is less than the restocking quantity, use the xp_sendmail system stored procedure to page the supply manager. ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (209, 11, N'Schedule the SQL server job to run at four-hour intervals.
Configure the job to use the @notify_level_page = 2 argument.
Configure the job so that it tests each item’s quantity against the restocking quantity.
Configure the job so that it returns a false value if the item requires restocking.
This will trigger the paging of the supply manager.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (210, 12, N'Use the sp_lock and sp_who system stored procedures to find locked resources and to identify
processes that are holding locks.
Use this information to identify and redesign the transactions that are causing the locks.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (211, 12, N'Query the sysprocesses and sysobjects system tables to find deadlocked resources and to identify which processes are accessing those resources.  Set a shorter lock timeout for the processes that are accessing the deadlock resources. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (212, 12, N'Query the sysprocesses system table to find which resources are being accessed.  Add clustered indexes on the primary keys of all of the tables that are being accessed. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (213, 12, N'Use the sp_monitor system stored procedure to identify which processes are being affected by the increased query response times.  Set a less restrictive transaction isolation level for these processes. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (214, 13, N'Add a CHECK constraint on the BirthDate column.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (215, 13, N'Create a rule, and bind the rule to the BirthDate column.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (216, 13, N'Alter the Owners table so that the BirthDate column does not allow null.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (217, 13, N'Create a trigger on the Owners table that validates the BirthDate column.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (218, 14, N'Add the WITH RECOMPILE option to the procedure definition.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (219, 14, N'Replace the cursor operation with a single DELETE statement.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (220, 14, N'Add a BEGIN TRAN statement to the beginning of the procedure, and add a COMMIT TRAN statement to the end of the procedure. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (221, 14, N'Set the transaction isolation level to READ UNCOMMITTED for the procedure. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (222, 14, N'Add a nonclustered index on the PartID column of the Parts table. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (223, 15, N'Create an INSTEAD OF INSERT trigger to generate a new policy number, and include the policy
number in the data inserted into the table.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (224, 15, N'Create an INSTEAD OF UPDATE trigger to generate a new policy number, and include the policy
number in the data inserted into the table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (225, 15, N'Create an AFTER UPDATE trigger to generate a new policy number, and include the policy number in the data inserted into the table.  ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (226, 15, N'Replace the DEFAULT constraint with an AFTER INSERT trigger that generates a new policy number and includes the policy number in the data inserted into the table.  ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (227, 16, N'Add the marketing role to the sysadmin fixed server role. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (228, 16, N'Transfer the ownership of the vwCustomers view to the marketing role. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (229, 16, N'Instruct Marc to transfer the ownership of the Customers table to each member of the marketing role.  ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (230, 16, N'Instruct Marc to grant the users SELECT permissions on the Customers table.  ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (231, 16, N'Drop the vwCustomers view. Instruct Marc to re-create the view and to grant SELECT permissions on the view to the marketing role.  ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (232, 20, N'Create a nonclustered index on the OrderDate column. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (233, 20, N'Create a clustered index on the OrderDate column. ', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (234, 20, N'Change the clustered index on the OrderID column to a nonclustered index', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (235, 20, N'Change the nonclustered index on the CustomerID column to include the OrderDate column. ', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (236, 31, N'Create a view that is defined to return the rows that apply to a specified position type.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (237, 31, N'Create a stored procedure that returns the rows that apply to a specified position type.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (238, 31, N'Grant SELECT permissions on the EmployeePositionType column for each position type.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (239, 31, N'Grant permission on the News table for each position type.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (240, 32, N'Change the PRIMARY KEY constraint to use the LastName column followed by the FirstName
column.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (241, 32, N'Add a nonclustered index on the City column.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (242, 32, N'Add a nonclustered index on the AreaCode, Exchange, and Number columns.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (243, 32, N'Remove the unique index from the PhoneNumberID column.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (244, 32, N'Change the PRIMARY KEY constraints to nonclustered indexes.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (245, 33, N'Rewrite the query to eliminate BETWEEN keyword.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (246, 33, N'Add a join hint that includes the HASH option to the query.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (247, 33, N'Add the WITH (INDEX(0)) table hint to the Policy table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (248, 33, N'Update statistics on the Policy table.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (249, 33, N'Execute the DBCC DBREINDEX statement on the Policy table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (250, 34, N'Execute each query in SQL Query Analyzer, and use the SHOWPLAN_TEXT option. Use the output
for the report.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (251, 34, N'Execute each query in SQL Query Analyzer, and use the Show Execution Plan option. Use output for
the report.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (252, 34, N'Run the Index Tuning Wizard against a Workload file. Use the output for the report.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (253, 34, N'Execute the DBCC SHOW_STATISTICS statement. Use the output for the report.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (254, 35, N'CREATE TABLE Physicians
(
Physicians ID int NOT NULL CONSTRAINT PK_Physicians PRIMARY KEY CLUSTERED,
LastName varchar(25) NOT NULL,
)
GO
CREATE TABLE Patients
(
PatientID bigint NOT NULL CONSTRAINT PK_Patients PRIMARY KEY CLUSTERED,
LastName varchar (25) NOT NULL,
FirstName varchar (25) NOT NULL,
PrimaryPhysician int NOT NULL,
SecondaryPhysician int NOT NULL,
CONSTRAINT PK_Patients_Physicians1 FOREIGN KEY (PrimaryPhysician) REFERENCES
Physicians (PhysicianID),
CONSTRAINT PK_Patients_Physicians2 FOREIGN KEY (SecondaryPhysician) REFERENCES
Physicians (PhysicianID)
)', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (255, 35, N'CREATE TABLE Patients
(
PatientID smallint NOT NULL CONSTRAINT PK_Patients PRIMARY KEY CLUSTERED,
LastName varchar(25) NOT NULL,
FirstName varchar (25) NOT NULL,
PrimaryPhysician int NOT NULL,
SecondaryPhysician int NOT NULL,
)
GO
CREATE TABLE Physicians
(
PhysicianID smallint NOT NULL CONSTRAINT PK_Physicians PRIMARY KEY CLUSTERED,
LastName varchar (25) NOT NULL,
FirstName varchar (25) NOT NULL,
CONSTRAINT PK_Physicians_Patients FOREIGN KEY (PhysicianID) REFERENCES Patients
(PatientID)
)', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (256, 35, N'CREATE TABLE Patients
(
PatientID bigint NOT NULL CONSTRAINT PK_Patients PRIMARY KEY CLUSTERED,
LastName varchar (25) NOT NULL,
FirstName varchar (25) NOT NULL,
)
GO
CREATE TABLE Physicians
(
PhysicianID int NOT NULL CONSTRAINT PK_Physician PRIMARY KEY CLUSTERED,
LastName varchar (25) NOT NULL,
FirstName varchar (25) NOT NULL,
)
GO
CREATE TABLE PatientPhysician
(
PatientPhysicianID bigint NOT NULL CONSTRAINT PK_PatientsPhysicians PRIMARY KEY
CLUSTERED,
PhysicianID int NOT NULL,
PatientID bigint NOT NULL,
PrimaryPhysician bit NOT NULL,
FOREIGN KEY (PhysicianID) REFERENCES Physicians (PhysicianID),
FOREIGN KEY (PatientID) REFERENCES Patients (PatientID)
)', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (257, 35, N'CREATE TABLE Patients
(
PatientID int NOT NULL PRIMARY KEY,
LastName varchar (25) NOT NULL,
FirstName varchar (25) NOT NULL,
)
GO
CREATE TABLE Physicians
(
PhysicianID int NOT NULL PRIMARY KEY,
LastName varchar (25) NOT NULL,
FirstName varchar (25) NOT NULL,
)
GO
CREATE TABLE PatientPhysician
(
PhysicianID int NOT NULL REFERENCES Physicians (PhysicianID),
PatientID int NOT NULL REFERENCES Patients (PatientID), PrimaryPhysician bit NOT NULL,
CONSTRAINT PK_PatientsPhysicians PRIMARY KEY (PhysicianID, PatientID)
)', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (258, 36, N'Add your login name to the HR database role.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (259, 36, N'Qualify the trigger name with the trigger owner in the DROP TRIGGER statement.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (260, 36, N'Disable the trigger before executing the DROP TRIGGER statement.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (261, 36, N'Define the trigger number in the DROP TRIGGER statement.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (262, 36, N'Remove the text of the trigger from the sysobjects and syscomments system tables.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (267, 38, N'Create a cursor within an explicit transaction, and set the transaction isolation level to REPEATABLE
READ.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (268, 38, N'Create a cursor that uses optimistic concurrency and positioned updates. In the cursor, place the
positioned UPDATE statements within an explicit transaction.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (269, 38, N'Create a cursor that uses optimistic concurrency. In the cursor, use UPDATE statements that specify the
key value of the row to be updated in the WHERE clause, and place the UPDATE statements within an
implicit transaction.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (270, 38, N'Create a cursor that uses positioned updates. Include the SCROLL_LOCKS argument in the cursor
definition to enforce pessimistic concurrency. In the cursor, place the positioned UPDATE statements
within an implicit transaction.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (271, 39, N'Use a cursor to retrieve all of the data for the survey.
Use FETCH RELATIVE 5 statement to select the summary data from the cursor.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (272, 39, N'Use a SELECT INTO statement to retrieve the data for the survey into a temporary table.
Use a SELECT TOP 1 statement to retrieve the first row from the temporary table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (273, 39, N'Set the query rowcount to five. Use a SELECT statement to retrieve and summarize the survey data.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (274, 39, N'Use a SELECT TOP 5 statement to retrieve and summarize the survey data.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (275, 40, N'Use the bcp utility, and specify the –t option.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (276, 40, N'Use the BULK INSERT statement, and specify the FIRE_TRIGGERS argument.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (277, 40, N'Use the SQL-DMO BulkCopy2 object and set the TableLock property to TRUE.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (278, 40, N'Use Data Transformation Services to create two Transform Data tasks.
For each task, map the text file columns to the database columns.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (283, 42, N'Create a stored procedure to retrieve all of the data that is loaded into the list box.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (284, 42, N'Use an API server-side cursor to retrieve the data that is loaded into list box.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (285, 42, N'Retrieve all of the data at once by using a SELECT statement, and then load the data into the list box.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (286, 42, N'Use a Transact-SQL server-side cursor to retrieve the data that is loaded into the list box.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (287, 43, N'INSERT INTO Country (CountryName)
SELECT DISTINCT Country
FROM Customers', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (288, 43, N'SELECT (*) AS ColID, c1.Country
INTO Country
FROM (SELECT DISTINCT Country FROM Customers)AS c1,
(SELECT DISTINCT Country FROM Customers) AS c2,
WHERE c1.Country >=c2.Country
GROUP BY c1.Country ORDER BY 1', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (293, 44, N'SELECT l.LocationName, e.FirstName, e.LastName
FROM Employee AS e FULL OUTER JOIN Location AS 1
ON e.LocationID= l.LocationID
ORDER BY l.LocationName, e.LastName, e.FirstName', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (294, 44, N'SELECT l.LocationName, e.FirstName, e.LastName
FROM Employee AS e CROSS JOIN Location AS 1
ORDER BY l.LocationName, e.LastName, e.FirstName', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (344, 56, N'Use a user-defined function to retrieve the list of tickets.
Use a second stored procedure to make purchases.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (348, 57, N'Create a rule and bind it to the MotherID. Bind the same rule to the FatherID column.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (289, 43, N'DECLARE @Country char (20)
DECLARE cursor_country CURSOR
FOR SELECT Country FROM Customers
OPEN cursor_country
FETCH NEXT FROM cursor_country INTO @Country
WHILE (@@FETCH_STATUS <> -1)
BEGIN
If NOT EXISTS (SELECT CountryID
FROM Country
WHERE CountryName = @Country)
INSERT INTO Country (CountryName) VALUES (@Country)
FETCH NEXT FROM cursor_country INTO @Country
END
CLOSE cursor_country
DEALLOCATE cursor_country', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (290, 43, N'DECLARE @SQL varchar (225)
SELECT @SQL = ‘bcp “SELECT ColID = COUNT(*), c1. Country’ +
‘FROM (SELECT DISTINCT Country FROM Sales..Customers) AS
c1, '' +
(SELECT DISTINCT Country FROM Sales..Customers) AS c2 ''
+
WHERE c1.Country >= c2.Country’ +
‘GROUP BY c1.Country ORDER BY 1’ +
‘query out c:\country.txt -c’
EXEC master..xp_cmdshell @SQL, no_output
EXEC master..xp_cmdshell ‘bcp Sales..Country in c:\country. Txt-c’, no_output', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (291, 44, N'SELECT l.LocationName, e.FirstName, e.LastName
FROM Employee AS e LEFT OUTER JOIN Location AS 1
ON e.LocationID= l.LocationID
ORDER BY l.LocationName, e.LastName, e.FirstName', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (292, 44, N'SELECT l.LocationName, e.FirstName, e.LastName
FROM Location AS 1 LEFT OUTER JOIN EMPLOYEE AS 1
ON e.LocationID= l.LocationID
ORDER BY l.LocationName, e.LastName, e.FirstName', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (295, 44, N'SELECT l.LocationName, e.FirstName, e.LastName
FROM Employee AS e, Location AS 1
ORDER BY l.LocationName, e.LastName, e.FirstName', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (341, 56, N'Use a scrollable static cursor to retrieve the list of tickets.
Use positioned updates within the cursor to make purchases.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (342, 56, N'Use a scrollable dynamic cursor to retrieve the list of tickets.
Use positioned updates within the cursor to make purchases.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (343, 56, N'Use a stored procedure to retrieve the list of tickets.
Use a second stored procedure to make purchases.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (345, 57, N'Create an AFTER INSERT trigger on the Dogs table that rolls back the transaction of the MotherID or
FatherID column is not valid.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (346, 57, N'Create a table-level CHECK constraint on the MotherID and FatherID columns.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (347, 57, N'Create two FOREIGN KEY constraints: one constraint on the MotherID column and one constraint on
the FatherID column. Specify that each constraint reference the DogID column.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (349, 58, N'Create a view, and include the WITH ENCRYPTION clause.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (350, 58, N'Create a view, and include the WITH CHECK OPTION clause.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (351, 58, N'Create a view, and include the SCHEMABINDING clause.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (352, 58, N'Create a view, and build a covering index on the view.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (353, 58, N'Create a user-defined function that returns a table containing the non-executive employees.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (354, 59, N'Replace the lines 12-17 of the stored procedure with the following:
Return @@ROWCOUNT', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (355, 59, N'Replace line 5-6 of the stored procedure with the following:
DECLARE @count int
Replace lines 12-17 with the following:
SET @Count = @@ROWCOUNT
If @@ERROR = 0
Return @Count
Else
Return –1', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (356, 59, N'Replace line 5 of the stored procedure with the following:
DECLARE @Err int, @Count int
Replace lines 12-17 with the following:
SELECT @Err = @@ERROR, @Count = @@ROWCOUNT
IF @Err = 0
Return @Count
Else
Return @Err', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (357, 59, N'Replace line 5 of the stored procedure with the following:
Return @@Error', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (358, 59, N'Replace line 5 of the stored procedure with the following
DECLARE @Err int, @Count int
Replace line 9 with the following:
SET Balance = Balance * 1.01, @Count = Count (*)
Replace line 15 with the following:
Return @Count', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (359, 60, N'UPDATE Products
SET p1.[Description] = p2.[Description], p1.UnitPrice = p2.UnitPrice
FROM Products p1, PendingProductUpdate p2
WHERE p1.ProductID= p2.ProductID
GO
TRUNCATE TABLE PendingProductUpdate
GO', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (360, 60, N'UPDATE Products p1
SET [Description] = p2.[Description], UnitPrice = p2.UnitPrice
FROM Products, PendingProductUpdate p2
WHERE p1.ProductID= p2.ProductID
GO
TRUNCATE TABLE PendingProductUpdate
GO', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (361, 60, N'UPDATE Products p1
SET p1.[Description] = p2.[Description], p1.UnitPrice = p2.UnitPrice
FROM (SELECT [Description], UnitPrice
FROM PendingProductUpdate p2
WHERE p1.ProductID= p2.ProductID)
GO
TRUNCATE TABLE PendingProductUpdate
GO', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (362, 60, N'UPDATE p1
SET p1.[Description] = p2.[Description], p1.UnitPrice = p2.UnitPrice
FROM Products p1, PendingProductUpdate p2
WHERE p1.ProductID= p2.ProductID
GO
TRUNCATE TABLE PendingProductUpdate', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (363, 61, N'SELECT Country FROM Customers
GROUP BY Country HAVING COUNT (Country)>10', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (364, 61, N'SELECT TOP 10 Country FROM Customers', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (365, 61, N'SELECT TOP 10 Country FROM Customers
FROM (SELECT DISTINCT Country FROM Customers) AS X
GROUP BY Country HAVING COUNT(*)> 10', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (366, 61, N'SET ROWCOUNT 10
SELECT Country, COUNT (*) as “NumCountries”
FROM Customers
GROUP BY Country ORDER BY NumCountries, Desc', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (367, 62, N'SELECT TOP 20 PERCENT LastName, FirstName, SUM (OrderAmount) AS ytd
FROM sales
GROUP BY LastName, FirstName
ORDER BY 3 DESC', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (368, 62, N'SELECT LastName, FirstName, COUNT(*) AS sales
FROM sales
GROUP BY LastName, FirstName
HAVING COUNT (*) > 20
ORDER BY 3 DESC', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (369, 62, N'SELECT TOP 20 LastName, FirstName, MAX(OrderAmount) AS ytd
FROM sales
GROUP BY LastName, FirstName
ORDER BY 3 DESC', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (370, 62, N'SELECT TOP 20 LastName, FirstName, SUM (OrderAmount) AS ytd
FROM sales
GROUP BY LastName, FirstName
ORDER BY 3 DESC', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (371, 62, N'SELECT TOP 20 WITH TIES LastName, FirstName, SUM (OrderAmount) AS ytd
FROM sales
GROUP BY LastName, FirstName
ORDER BY 3 DESC', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (372, 63, N'Create two stored procedures, and specify that one of the stored procedures should accept a parameter
and that the other should not.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (373, 63, N'Create a user-defined function that accepts a parameter with a default value of 101.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (374, 63, N'Create a stored procedure that accepts a parameter with a default value of 101.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (375, 63, N'Create a view that filters the FlightTimes table on a value of 101.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (376, 63, N'Create a default of 101 on the FlightTimes table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (377, 64, N'BEGIN TRANSACTION Order
INSERT INTO Order VALUES (@ID, @CustomerID, @OrderDate)
INSERT INTO LineItem VALUES (@ItemID, @ID, @ProductID, @Price)
SAVE TRANSACTION Order', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (378, 64, N'INSERT INTO Order VALUES (@ID, @CustomerID, @OrderDate)
INSERT INTO LineItem VALUES (@ItemID, @ID, @ProductID, @Price)
IF (@@Error = 0)
COMMIT TRANSACTION
ELSE
ROLLBACK TRANSACTION', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (379, 64, N'BEGIN TRANSACTION
INSERT INTO Order VALUES (@ID, @CustomerID, @OrderDate)
IF (@@Error = 0)
BEGIN
INSERT INTO LineItem
VALUES (@ItemID, @ID, @ProductID, @Price)
IF (@@Error = 0)
COMMIT TRANSACTION
ELSE
ROLLBACK TRANSACTION
END
ELSE
ROLLBACK TRANSACTION
END', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (380, 64, N'BEGIN TRANSACTION
INSERT INTO Order VALUES (@ID, @CustomerID, @OrderDate)
IF (@@Error = 0)
COMMIT TRANSACTION
ELSE
ROLLBACK TRANSACTION
BEGIN TRANSACTION
INSERT INTO LineItem VALUES (@ItemID, @ID, @ProductID, @Price)
IF (@@Error = 0)
COMMIT TRANSACTION
ELSE
ROLLBACK TRANSACTION', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (381, 65, N'Use the Microsoft Distributed Transaction Coordinator to enlist the Employee table in a distributed
transaction that will roll back the entire transaction if the employee ID is not active.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (382, 65, N'Add a CHECK constraint on the EmployeeID column of the VacuumSales table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (383, 65, N'Add a FOREIGN KEY constraint on the EmployeeID column of the VacuumSales table that
references the EmployeeID column in the Employee table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (384, 65, N'Add a FOR INSERT trigger on the VacuumSales table. In the trigger, join the Employee table with
the inserted table based on the EmployeeID column, and test the IsActive column.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (385, 66, N'CREATE PROCEDURE UpdateStockPrice @StockID int, @Price decimal
AS BEGIN
DECLARE @Msg varchar(50)
UPDATE Stocks SET CurrentPrice = @Price
WHERE StockID = @ StockID
AND CurrentPrice <> @ Price
IF @@ERROR <> 0
RAISERROR (‘Error %d occurred updating Stock %d.’, 10, 1, @@ERROR, @StockID) WITH
LOG
IF @@ROWCOUNT > 0
BEGIN
SELECT @Msg = ‘Stock’ + STR (@StockID) + ‘updated to’ + STR (@Price) + ‘.’
EXEC master. . xp_LOGEVENT 50001, @Msg
END
END', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (386, 66, N'CREATE PROCEDURE UpdateStockPrice @StockID int, @Price decimal
AS BEGIN
UPDATE Stocks SET CurrentPrice = @Price
WHERE StockID = @ StockID
AND CurrentPrice <> @ Price
IF @@ERROR <> 0
PRINT ‘ERROR’ + STR(@@ERROR) + ‘occurred updating Stock’ +STR (@StockID)+ ‘.’
IF @@ROWCOUNT > 0
PRINT ‘Stock’ + STR (@StockID) + ‘updated to’ + STR (@Price) + ‘.’
END', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (387, 66, N'CREATE PROCEDURE UpdateStockPrice @StockID int, @Price decimal
AS BEGIN
DECLARE @Err int, @RCount int, @Msg varchar(50)
UPDATE Stocks SET CurrentPrice = @Price
WHERE StockID = @ StockID
AND CurrentPrice <> @ Price
SELECT @Err = @@ERROR, @RCount = @@ROWCOUNT
IF @Err <> 0
BEGIN
SELECT @Msg = ‘Error’ + STR(@Err) + ‘occurred updating Stock’ + STR (@StockID) + ‘.’
EXEC master..xp_logevent 50001, @Msg
END
IF @RCOUNT > 0
BEGIN
SELECT @Msg = ‘Stock’ + STR (@StockID) + ‘updated to’ + STR (@Price) + ‘.’
EXEC master. . xp_LOGEVENT 50001, @Msg
END
END', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (388, 66, N'CREATE PROCEDURE UpdateStockPrice @StockID int, @Price decimal AS BEGIN
DECLARE @Err int, @RCount int, @Msg varchar (50)
UPDATE Stocks SET CurrentPrice = @Price
WHERE StockID = @StockID
AND CurrentPrice <> @Price
SELECT @Err = @@ERROR, @RCount = @@ROWCOUNT
If @Err <> 0
RAISEERROR (‘Error %d occurred updating Stock %d.’, 10, 1, @Err, @StockID) WITH LOG
If @RCount > 0
BEGIN
SELECT @Msg = ‘Stock’ + STR (@StockID) + ‘update to’ + STR (@Price) + ‘.’
EXEC master. . xp_logevent 50001, @Msg
END
END', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (389, 67, N'Create a trigger on the Reservations table to create the History table entries.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (390, 67, N'Create a cascading referential integrity constraint on the Reservations table to create the History table
entries.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (391, 67, N'Create a view on the Reservations table. Include the WITH SCHEMABINDING option in the view
definition.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (392, 67, N'Create a view on the Reservations table. Include the WITH CHECK OPTION clause in the view
definition.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (393, 68, N'Create a trigger on the Reservations table to create the History table entries.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (394, 68, N'Create a cascading referential integrity constraint on the Reservations table to create the History table
entries.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (395, 68, N'Create a view on the Reservations table. Include the WITH SCHEMABINDING option in the view
definition.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (396, 68, N'Create a view on the Reservations table. Include the WITH CHECK OPTION clause in the view
definition.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (397, 69, N'Create a stored procedure that requires a postal code as a parameter. Include the WITH RECOMPILE
option when the procedure is created.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (398, 69, N'Create one stored procedure for each postal code.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (399, 69, N'Create one view for each postal code.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (400, 69, N'Split the Company table into multiple tables so that each table contains one postal code.
Build a partitioned view on the tables so that the data can still be viewed as a single table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (401, 70, N'Use a DELETE statement to remove the data from the table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (402, 70, N'Use a TRUNCATE TABLE statement to remove the data from the table.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (403, 70, N'Use a DROP TABLE statement to remove the data from the table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (404, 70, N'Use an updateable cursor to access and remove each row of data from the table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (405, 71, N'SELECT m.ModelName, c.ColorName
FROM Colors AS c FULL OUTER JOIN Models AS m
ON c.ColorID = m.ColorID
ORDER BY m.ModelName, c.ColorName', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (406, 71, N'SELECT m.ModelName, c.ColorName
FROM Colors AS c CROSS JOIN Models AS m
ORDER BY m.ModelName, c.ColorName', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (407, 71, N'SELECT m.ModelName, c.ColorName
FROM Colors AS m INNER JOIN Colors AS c
ON m.ColorID = c.ColorID
ORDER BY m.ModelName, c.ColorName', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (408, 71, N'SELECT m.ModelName, c.ColorName
FROM Colors AS c LEFT OUTER JOIN Models AS m
ON c.ColorID = m.ColorID
UNION
SELECT m.ModelName, c.ColorName
FROM Colors AS c RIGHT OUTER JOIN Models AS m
ON c.ColorID = m.ColorID
ORDER BY m.ModelName, c.ColorName', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (409, 71, N'SELECT m.ModelName
FROM Models AS m
UNION
SELECT c.ColorName
FROM Colors AS c
ORDER BY m.ModelName', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (410, 72, N'Use SQL-DMO and Microsoft Visual Basic Scripting Edition to create a Table object.
Use the ImportData method of the Table object to load the table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (411, 72, N'Use SQL-DMO and Microsoft Visual Basic Scripting Edition to create a Database object.
Use the CopyData property of the Database object to load the table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (412, 72, N'Use Data Transformation Services and Microsoft Visual Basic Scripting edition to create a Package
object.
Create a Connection object for the text file.
Add a BulkInsertTask object to the Package object.
Use the Execute method of the Package object to load the data.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (413, 72, N'Use Data Transformation Services and Microsoft Visual Basic Scripting edition to create a Package
object.
Create a Connection object for the text file.
Add an ExecuteSQLTask2 object to the Package object.
Use the Execute method of the ExecuteSQLTask2 object to load the data.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (414, 73, N'EXEC sp_configure ‘cursor threshold’, 0', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (415, 73, N'EXEC sp_dboption ‘Policies’ SET CURSOR_CLOSE_ON_COMMIT ON', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (416, 73, N'SET TRANSACTION ISOLATION LEVEL SERIALIZABLE', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (417, 73, N'ALTER DATABASE Policies SET CURSOR_DEFAULT LOCAL', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (442, 74, N'SELECT *
FROM OPENXML (@docHandle, ‘/ROOT/category/Product’, 1)
WITH (ProductID int,
CategoryID int,
CategoryName varchar(50),
[Description] varchar (50))', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (443, 74, N'SELECT *
FROM OPENXML (@docHandle, ‘/ROOT/category/Product’, 8)
WITH (ProductID int,
CategoryID int,
CategoryName varchar(50),
[Description] varchar (50))', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (444, 74, N'SELECT *
FROM OPENXML (@docHandle, ‘/ROOT/category/Product’, 1)
WITH (ProductID int,
CategoryID int,
CategoryName varchar(50), ‘@CategoryName’,
[Description] varchar (50))', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (445, 74, N'SELECT *
FROM OPENXML (@docHandle, ‘/ROOT/category/Product’, 1)
WITH (ProductID int,
CategoryID int ‘../@CategoryID’,
CategoryName varchar(50), ‘../@CategoryName’,
[Description] varchar (50))', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (446, 75, N'SELECT CAST (hourly_wage * 40 * 52 +
salary +
commission * num_sales AS MONEY) as YearlyWages
FROM Wages', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (447, 75, N'SELECT CAST (COALESCE (hourly_wage * 40 * 52,
Salary,
commission * num_sales) AS MONEY) as YearlyWages
FROM Wages', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (448, 75, N'SELECT CAST (CASE
WHEN((hourly_wage,) IS NOTNULL) THEN hourly_wage * 40 * 52
WHEN(NULLIF(salary,NULL)IS NULL)THEN salary
ELSE commission * num_sales
END
AS MONEY)
As YearlyWages
FROM Wages', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (449, 75, N'SELECT CAST(CASE
WHEN (hourly_wage IS NULL)THEN salary
WHEN (salary IS NULL)THEN commission*num_sales
ELSE commission * num_sales
END
AS MONEY)
As YearlyWages
FROM Wages', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (450, 76, N'Use SELECT statements that include the FOR XML AUTO clause to copy the data from the XML
documents into the appropriate tables.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (451, 76, N'Use SELECT statements that include the FOR XML EXPLICIT clause to copy the data from the XML
documents into the appropriate tables.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (452, 76, N'Use the OPENXML function to access the data and to insert it into the appropriate tables.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (453, 76, N'Build a view on the SalesXML table that displays the contents of the XML documents.
Use SELECT INTO statements to extract the data from this view into the appropriate tables.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (454, 77, N'Add the PolicyID, InsuredName, and InsuredBirthDate columns to the primary key', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (455, 77, N'Add a UNIQUE constraint to enforce the uniqueness of the combination of the PolicyID,
InsuredName, and InsuredBirthDate columns.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (456, 77, N'Add a CHECK constraint to enforce the uniqueness of the combination of the PolicyID, InsuredName,
and InsuredBirthDate columns.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (457, 77, N'Create a clustered index on the PolicyID, InsuredName, and InsuredBirthDate columns.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (458, 78, N'Create a new table named CustomerContact.
Add CustomerID, ContactName, and Phone columns to this table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (459, 78, N'Create a new composite PRIMARY KEY constraint on the OrderDetails table.
Include the OrderID, ProductID, and CustomerID columns in the constraint.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (460, 78, N'Remove the PRIMARY KEY constraint from the OrderDetails table.
Use an IDENTITY column to create a surrogate key for the OrderDetails table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (461, 78, N'Remove the CustomerID column from the OrderDetails table.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (462, 78, N'Remove the Quantity column from the OrderDetails table.
Add a Quantity column to the Orders table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (463, 79, N'Create an indexed view on the tables.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (464, 79, N'Create a stored procedure that returns data from the tables.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (465, 79, N'Create a scalar user-defined function that returns data from the tables.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (466, 79, N'Create a table-valued user-defined function that returns data from the tables.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (467, 80, N'Configure the main office as a publishing Subscriber.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (468, 80, N'Configure the main office as a publisher with a remote distributor.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (469, 80, N'Configure the main office as a central publisher and the regional offices as Subscribers.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (470, 80, N'Configure the regional offices as Publishers and the main office as a central Subscriber.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (471, 81, N'Remove the table hint.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (472, 81, N'Change the table hint to UPDLOCK.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (473, 81, N'Change the table hint to REPEATABLEREAD.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (474, 81, N'Set the transaction isolation level to SERIALIZABLE.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (475, 81, N'Set the transaction isolation level to REPEATABLE READ.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (476, 82, N'UPDATE l
SET Price = Price – 10
FROM LineItem AS l INNER JOIN [Order] AS o
ON l.OrderID = o.OrderID
WHERE o.OrderDate >= ‘6/1/2000’
AND o.OrderDate < ‘6/2/2000’', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (477, 82, N'UPDATE l
SET Price = Price – 10
FROM LineItem AS l INNER JOIN [Order] AS o
ON l.OrderID = o.OrderID
WHERE o.OrderDate = ‘6/1/2000’', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (478, 82, N'DECLARE @ItemID int
DECLARE items_cursor CURSOR FOR
SELECT l.ItemID
FROM LineItem AS l INNER JOIN [Order] AS o
ON l.OrderID = o.OrderID
WHERE o.OrderDate >= ‘6/1/2000’
AND o.OrderDate < ‘6/1/2000’
FOR UPDATE
OPEN items_cursor
FETCH NEXT FROM items_cursor INTO @ItemID
WHILE @@FETCH_STATUS = 0
BEGIN
UPDATE LineItem SET Price = Price – 10
WHERE CURRENT OF items_cursor
FETCH NEXT FROM items_cursor INTO @ItemID
END
CLOSE items_cursor
DEALLOCATE items_cursor', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (566, 84, N'Deny SELECT permissions on the syscomments system table to the public role.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (571, 100, N'Execute a SET CURSOR_CLOSE_ON_COMMIT ON statement.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (577, 102, N'Add an ORDER BY clause to the view.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (580, 102, N'Change the index to a unique, nonclustered index.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (582, 103, N'Add Andrea to the db_owner database role.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (584, 103, N'Grant Andrea CREATE VIEW permissions.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (586, 103, N'Grant Andrea REFERENCES permissions on the tables.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (587, 104, N'Use GRANT, REVOKE and DENY statements to assign permission to the sales associates.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (592, 105, N'Transfer the ownership of the table and the views to the database owner.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (595, 105, N'Grant SELECT permission on the vwActionFigureSales view to the ActionFigure database role.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (599, 106, N'Run SQL Profiler during the day. Select the SQL:BatchCompleted and RPC:Completed events and
the EventClass and TextData data columns. Use the output from SQL profiler as input to the Index
Tuning Wizard.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (479, 82, N'DECLARE @OrderID int
DECLARE order_cursor CURSOR FOR
SELECT ordered FROM [Order]
WHERE OrderDate = ‘6/1/2000’
OPEN order_cursor
FETCH NEXT FROM order_cursor INTO @OrderID
WHILE @@FETCH_STATUS = 0
BEGIN
UPDATE LineItem SET Price = Price – 10
WHERE OrderID= @OrderID
FETCH NEXT FROM order_cursor INTO @OrderID
END
CLOSE order_cursor
DEALLOCATE order_cursor', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (480, 83, N'CREATE PROCEDURE spAddCatalogItems (
@xmlDocument varchar (8000))
AS
BEGIN
DECLARE @docHandle int
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument
INSERT INTO Products
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument
INSERT INTO Products
SELECT * FROM
OPENXML (@docHandle, ‘/ROOT/Category/Product’, 1)
WITH Products
EXEC sp_xml_removedocument @docHandle
END', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (481, 83, N'CREATE PROCEDURE spAddCatalogItems (
@xmlDocument varchar (8000))
AS
BEGIN
DECLARE @docHandle int
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument
INSERT INTO Products
SELECT * FROM OPENXML (@docHandle, ‘/ROOT/Category/Product’, 1)
WITH (ProductID int ‘./@ProductID’,
CategoryID int ‘../@CategoryID’,
[Description] varchar (100) ‘./@Description’)
EXEC sp_xml_removedocument @docHandle
END', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (482, 83, N'CREATE PROCEDURE spAddCatalogItems (
@xmlDocument varchar (8000))
AS
BEGIN
INSERT INTO Products
SELECT * FROM OPENXML (
@xmlDocument, ‘/ROOT/Category/Product’, 1)
WITH (ProductID int, Description varchar (50))
END', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (483, 83, N'CREATE PROCEDURE spAddCatalogItems (
@xmlDocument varchar (8000))
AS
BEGIN
INSERT INTO Products
SELECT* FROM
OPENXML (@xmlDocument, ‘/ROOT/Category/Product’,1)
WITH Products
END', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (564, 84, N'Remove the text of the stored procedures from the syscomments system table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (565, 84, N'Encrypt the text of the stored procedures.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (567, 84, N'Deny SELECT permissions on the sysobjects system table to the public role.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (568, 100, N'Delete records in tables that reference the Orders table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (569, 100, N'Disable triggers on the Orders table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (570, 100, N'Execute a SET IMPLICIT_TRANSACTIONS OFF statement.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (572, 100, N'Change the logic in the DELETE statement.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (573, 101, N'CREATE DATABASE CustomerContacts
ON
(NAME = Contacts_dat,
FILENAME = ‘c:\data\contacts.mdf’,
SIZE = 10,
MAXSIZE = 1GB
FILEGROWTH= 5)', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (574, 101, N'CREATE DATABASE CustomerContacts
ON
(NAME = Contacts_dat,
FILENAME = ‘c:\data\contacts.mdf’,
SIZE = 10,
MAXSIZE = 1GB
FILEGROWTH= 10%)', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (575, 101, N'CREATE DATABASE CustomerContacts
ON
(NAME = Contacts_dat,
FILENAME = ‘c:\data\contacts.mdf’,
SIZE = 100,
MAXSIZE = UNLIMITED)', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (576, 101, N'CREATE DATABASE CustomerContacts
ON
(NAME = Contacts_dat,
FILENAME = ‘c:\data\contacts.mdf’,
SIZE = 1GB)', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (578, 102, N'Add a HAVING clause to the view.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (579, 102, N'Change the NUMERIC_ROUNDABORT option to ON.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (581, 102, N'Add the WITH SCHEMABINDING option to the view.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (583, 103, N'Add Andrea to the db_ddladmin database role', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (585, 103, N'Grant Andrea ALTER VIEW permissions.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (588, 104, N'Use SQL Server Enterprise Manager to assign permission on the RegionSales table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (589, 104, N'Create one view on the RegionSales table for each sales region.
Grant the sales associates permission to access the views that correspond to the sales region to which
they have been assigned.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (590, 104, N'Create a new table named Security to hold combinations of sales associates and sales regions.
Create stored procedures that allow or disallow modifications of the data in the RegionSales table by
validating the user of the procedures against the Security table.
Grant EXECUTE permissions on the stored procedures to all sales associates.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (591, 104, N'Create a new table named Security to hold combinations of sales associates and sales regions.
Create user-defined functions that allow or disallow modifications of the data.
In the RegionSales table by validating the user of the function against the Security table.
Grant EXECUTE permissions on the functions to all sales associates.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (593, 105, N'Grant SELECT permissions on the ToySales table to your login.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (594, 105, N'Grant SELECT permissions on the vwDollSales view to the Doll database role.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (596, 105, N'Deny SELECT permission on the ToySales table for the Doll database role.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (597, 106, N'Run system monitor on the SQL Server:Access Methods counter during the day. Use the output from
System Monitor to identify which tables need indexes.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (598, 106, N'Use the sp_configure system stored procedure to increase the number of locks that can be used by SQL
Server.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (600, 106, N'Increase the value of the min server memory option.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (601, 106, N'Rebuild indexes, and use a FILLFACTOR of 100.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (602, 107, N'Create a new filegroup on each of the four disk drives.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (603, 107, N'Create the clustered index for the Order table on a separate filegroup from the nonclustered indexes.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (604, 107, N'Store the data and the clustered index for the OrderDetail table on one filegroup, and create the
nonclustered indexes on another filegroup.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (605, 107, N'Create the Order table and its indexes on one filegroup, and create the OrderDetail table and its
indexes on another filegroup.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (606, 107, N'Create two filegroups that each consists of two disk drives connected to the same controller.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (607, 108, N'Execute the DBCC DBREINDEX statement on the table.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (608, 108, N'Execute the UPDATE STATISTICS statement on the table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (609, 108, N'Execute the DROP STATISTICS statement on the clustered index.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (610, 108, N'Execute the DBCC INDEXDEFRAG statement on the primary key index.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (611, 108, N'Execute the DROP INDEX and CREATE INDEX statements on the primary key index.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (612, 109, N'Create a SQL Profiler trace, and use the Objects event classes.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (613, 109, N'Run the Index Tuning Wizard against a workload file that contains the queries used in the reports.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (614, 109, N'Run System Monitor, and use the SQLServer:Access Methods counter.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (615, 109, N'Execute the queries against the tables in SQL Query Analyzer, and use the SHOWPLAN_TEXT
option.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (616, 110, N'Create an AFTER trigger on the view.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (617, 110, N'Create an INSTEAD OF trigger on the view.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (618, 110, N'Create an INSTEAD OF trigger on the Person and Employees tables.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (619, 110, N'Alter the view to include the WITH CHECK option.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (620, 110, N'Alter the view to include the WITH SCHEMABINDING option.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (621, 111, N'CREATE TABLE Orders
(
OrderID uniqueidentifier PRIMARY KEY NOT NULL,
OrderDate datetime NULL,
CustomerID char(5) NOT NULL FOREIGN KEY REFERENCES Customer (Customer ID),
ShipperID int NOT NULL FOREIGN KEY REFERENCES Shippers(ShipperID),
ShipDate datetime Null
)', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (622, 111, N'CREATE TABLE Orders
(
OrderID int identity (1, 1) PRIMARY KEY NOT NULL,
OrderDate datetime NOT NULL,
CustomerID char(5) NOT NULL FOREIGN KEY REFERENCES Customer (Customer ID),
ShipperID int NOT NULL FOREIGN KEY REFERENCES Shippers(ShipperID),
ShipDate datetime Null
)', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (623, 111, N'CREATE TABLE Orders
(
OrderID int identity (1, 1) PRIMARY KEY NOT NULL,
OrderDate datetime NULL,
CustomerID char(5) NOT NULL FOREIGN KEY REFERENCES Customer (Customer ID),
ShipperID int NULL,
ShipDate datetime Null
)', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (624, 111, N'CREATE TABLE Orders
(
OrderID uniqueidentifier PRIMARY KEY NOT NULL,
OrderDate datetime NOT NULL,
CustomerID char(5) NOT NULL FOREIGN KEY REFERENCES Customer (Customer ID),
ShipperID int NOT NULL FOREIGN KEY REFERENCES Shippers(ShipperID),
ShipDate datetime Null
)', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (625, 112, N'Create a job that rebuilds the clustered index each night by using the default FILLFACTOR.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (626, 112, N'Add additional indexes to the Orders table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (627, 112, N'Partition the Orders table vertically.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (628, 112, N'Rebuild the clustered index with a FILLFACTOR of 50.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (629, 112, N'Execute the UPDATE STATISTICS statement on the Orders table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (630, 113, N'Assign appropriate permissions to each Windows 2000 group.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (631, 113, N'Assign appropriate permissions to each application role.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (632, 113, N'Assign the Windows 2000 groups to the appropriate application role.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (633, 113, N'Provide users with the password to the application role.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (634, 114, N'Change the order of the tables in the FROM clause to list the Agents table first.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (635, 114, N'Use a HASH JOIN hint to join the Agents table in the query.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (636, 114, N'Create a clustered index on the AgentID column of the Agents table.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (637, 114, N'Create a nonclustered index on the AgentID column of the Agents table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (638, 115, N'Qualify the Archived_Orders_1995_1999 table name with the owner name.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (639, 115, N'Request CREATE TABLE permissions.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (640, 115, N'Create the Archived_Orders_1995_1999 table before you execute the SET SHOWPLAN_TEXT
ON statement.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (641, 115, N'Change the table name to ArchivedOrders.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (642, 116, N'Qualify the Archived_Orders_1995_1999 table name with the owner name.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (643, 116, N'Request CREATE TABLE permissions.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (644, 116, N'Create the Archived_Orders_1995_1999 table before you execute the SET SHOWPLAN_TEXT
ON statement.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (645, 116, N'Change the table name to ArchivedOrders.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (646, 117, N'In Transaction 2, move the UPDATE Customer statement before the UPDATE CustomerPhone
statement.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (647, 117, N'Add the SET DEADLOCK_PRIORITY LOW statement to both transactions.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (648, 117, N'Add code that checks for server error 1205 to each script. If this error is encountered, restart the
transaction in which it occurred.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (649, 117, N'Add the SET LOCK_TIMEOUT 0 statement to both transactions.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (650, 118, N'Create a trigger on the Rosters table that validates the data.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (651, 118, N'Create a rule that validates the data.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (652, 118, N'Create an UPDATE view that includes the WITH CHECK OPTION clause in its definition.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (653, 118, N'Add a CHECK constraint on the Rosters table to validate the data.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (654, 119, N'Create an AFTER trigger on the CurrentPrice table that compares the values of the StockPrice
column in the inserted and deleted tables. If the values are different, then the trigger will insert a row
into the PastPrice table.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (655, 119, N'Create an AFTER trigger on the CurrentPrice table that compares the values of the StockPrice
column in the inserted table with the StockPrice column in the CurrentPrice table. If the values are
different, then the trigger will insert a row into the PastPrice table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (656, 119, N'Create a cascading update constraint on the CurrentPrice table that updates a row in the PastPrice
table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (657, 119, N'Create a stored procedure that compares the new value of the StockPrice column in the CurrentPrice
table with the old value. If the values are different, then the procedure will insert a row into the
PastPrice table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (658, 120, N'Create an AFTER trigger on the CurrentPrice table that compares the values of the StockPrice
column in the inserted and deleted tables. If the values are different, then the trigger will insert a row
into the PastPrice table.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (659, 120, N'Create an AFTER trigger on the CurrentPrice table that compares the values of the StockPrice
column in the inserted table with the StockPrice column in the CurrentPrice table. If the values are
different, then the trigger will insert a row into the PastPrice table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (660, 120, N'Create a cascading update constraint on the CurrentPrice table that updates a row in the PastPrice
table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (661, 120, N'Create a stored procedure that compares the new value of the StockPrice column in the CurrentPrice
table with the old value. If the values are different, then the procedure will insert a row into the
PastPrice table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (662, 121, N'Always use the WITH RECOMPILE option to execute the slow-running stored procedures.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (663, 121, N'Execute the UPDATE STATISTICS statement for each of the tables accessed by the slow-running
stored procedures.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (664, 121, N'Execute the sp_recompile system stored procedure for each of the slow-running procedures.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (665, 121, N'Execute the DBCC REINDEX statement for each of the tables accessed by the slow-running stored
procedures.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (666, 122, N'Use an ALTER VIEW statement to add the parameter value to the view definition.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (667, 122, N'Create a stored procedure that accepts the parameter as input and returns a rowset with the result set.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (668, 122, N'Create a scalar user-defined function that accepts the parameter as input.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (669, 122, N'Create an inline user-defined function that accepts the parameter as input.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (670, 123, N'Add indexes on the PostalCode, State, and DateOfBirth columns of the Customers table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (671, 123, N'Denormalize the Customers table', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (672, 123, N'Create a view on the Customers, SalesLineItem, State, and Product tables.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (673, 123, N'Create a function to return the required data from the Customers table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (674, 124, N'CREATE CLUSTERED INDEX [IX_EmployeeName] ON [dbo].[Employee] ([LastName],
[FirstName])', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (675, 124, N'CREATE INDEX [IX_EmployeeFirstName] ON [dbo].[Employee] ([First Name])
CREATE INDEX [IX_EmployeeLastName] ON [dbo].[Employee] ([Last Name])', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (676, 124, N'CREATE UNIQUE INDEX [IX_EmployeeEmployeeID] ON [dbo].[Employee] ([EmployeeID])', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (677, 124, N'CREATE UNIQUE INDEX [IX_EmployeeSSN] ON [dbo].[Employee] ([SSN])', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (678, 124, N'CREATE CLUSTERED INDEX [IX_EmployeeEmployeeID] ON [dbo].[Employee]
([EmployeeID])', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (679, 125, N'Use GRANT, REVOKE, and DENY statements to assign permissions to each department manager.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (680, 125, N'Add the database login of each department manager to the db_datareader fixed database role.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (681, 125, N'Build tables and views that enforce row-level security on the Employee table.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (682, 125, N'Use SQL Server Enterprise Manager to assign permissions on the Employee table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (683, 126, N'Create a stored procedure that returns the non-confidential information from the Employee table
formatted as XML.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (684, 126, N'Create a user-defined function that returns the non-confidential information from the Employee table
in a rowset that is formatted as XML.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (685, 126, N'Create a view that includes only the non-confidential information from the Employee table.
Give the external application permission to submit queries against the view.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (686, 126, N'Set column-level permissions on the Employee table to prevent the external application from viewing
the confidential columns.
Give the external application permissions to submit queries against the table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (687, 127, N'Create a stored procedure that will use the OPENROWSET statement to retrieve the data.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (688, 127, N'Create a stored procedure that will use the fully qualified table name on CORP2 to retrieve the data.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (689, 127, N'Create a script that uses the OPENQUERY statement to retrieve the data.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (690, 127, N'On CORP1, execute the sp_addlinkedserver system stored procedure.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (691, 127, N'On CORP1, execute the sp_addlinkedsrvlogin system stored procedure.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (692, 128, N'Create a PRIMARY KEY constraint on the CandidateID column.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (693, 128, N'Create a PRIMARY KEY constraint on the CandidateID and DateLastUsed columns.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (694, 128, N'Create a PRIMARY KEY constraint on the CandidateID and SkillID columns.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (695, 128, N'Create a PRIMARY KEY constraint on the CandidateID, SkillID, and DateLastUsed columns.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (696, 129, N'Create a rule that disallows null values.
Bind the rule to both the HomePhone and BusinessPhone columns.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (697, 129, N'Create a rule that prevents null values from being entered into both the HomePhone and
BusinessPhone columns.
Bind the rule to the table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (698, 129, N'Add CHECK constraints on the HomePhone and BusinessPhone columns that prevent null values
from being entered into the columns.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (699, 129, N'Add a CHECK constraint on the table to validate that at least one of the values entered into the
HomePhone and BusinessPhone columns is non-null.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (700, 129, N'Create a trigger that counts the number of items entered without a value in the HomePhone column
and then counts the number of items entered without a value in the BusinessPhone column.
Configure the trigger so that if one or more rows are found that meet these conditions, the trigger will
cancel the data modification.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (701, 130, N'Create a FOREIGN KEY constraint on the Products table that references the OrderDetails table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (702, 130, N'Create a FOREIGN KEY constraint on the Products table that references the Suppliers table.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (703, 130, N'Create a FOREIGN KEY constraint on the Orders table that references the OrderDetails table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (704, 130, N'Create a FOREIGN KEY constraint on the OrderDetails table that references the Order table.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (705, 130, N'Create a FOREIGN KEY constraint on the OrderDetails table that references the Products table.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (706, 131, N'Add Andrea to the db_datareader database role.
Grant REFERENCES permissions to the public role.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (707, 131, N'Remove Andrea from the Marketing database role.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (708, 131, N'Grant Andrea’s database user account SELECT permissions on the tables referenced in the stored
procedure.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (709, 131, N'Grant Andrea’s database user account REFERENCES permissions on the tables referenced in the
stored procedure.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (710, 132, N'Instruct Eric to grant the Agent role SELECT permissions on the Traveler table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (711, 132, N'Instruct Eric to grant you SELECT permissions on needed columns in the Traveler table.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (712, 132, N'Instruct Eric to create a view named vwTravelers that displays the data in the desired format.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (713, 132, N'Create a view named vwTravelers that displays the data in the desired format.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (714, 132, N'Grant the Agent role SELECT permissions on the vwTravelers view.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (715, 133, N'SELECT i1.InvoiceNumber, i1.CustomerName, i1.InvoiceAmount
FROM Invoice As i1, Invoice AS i2
GROUP BY i1.InvoiceNumber, i1.CustomerName, i1.InvoiceAmount
HAVING i1.InvoiceAmount < AVG (i2.InvoiceAmount)
ORDER BY i1.CustomerName, i1.InvoiceNumber', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (716, 133, N'SELECT i1.InvoiceNumber, i1.CustomerName, i1.InvoiceAmount
FROM Invoice As i1
WHERE i1.InvoiceAmount <
(SELECT AVG (i2.InvoiceAmount)
FROM Invoice AS i2
WHERE i2.CustomerName=i1.CustomerName)
ORDER BY i1.CustomerName, i1.InvoiceNumber', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (717, 133, N'SELECT i1.InvoiceNumber, i1.CustomerName, i1.InvoiceAmount
FROM Invoice As i1
WHERE i1.InvoiceAmount <
(SELECT AVG (i2.InvoiceAmount)
FROM Invoice AS i2)
ORDER BY i1.CustomerName, i1.InvoiceNumber', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (718, 133, N'SELECT i1.InvoiceNumber, i1.CustomerName, i1.InvoiceAmount,
CASE WHEN i1.InvoiceAmount < AVG (i2.InvoiceAmount)
THEN i1.InvoiceAmount ELSE 0 END
FROM Invoice As i1 INNER JOIN Invoice AS i2
ON i1.CustomerName = i2.CustomerName
GROUP BY i1.InvoiceNumber, i1.CustomerName, i1.InvoiceAmount
ORDER BY i1.CustomerName, i1.InvoiceNumber', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (719, 134, N'Create a view on the Customers table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (720, 134, N'Create a function that returns data for the Customers table.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (721, 134, N'Create a composite, nonclustered index on the City and Region columns, and use City as the first
column in the index.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (722, 134, N'Create a composite, nonclustered index on the City and Region columns, and use Region as the first
column in the index.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (723, 134, N'Add the City and Region columns to the clustered index, and use Region as the first column in the
index.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (724, 135, N'Use a higher transaction isolation level for transactions used in the database.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (725, 135, N'Use SQL Profiler to capture deadlock events.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (726, 135, N'Use System Monitor to monitor lock requests and deadlo', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (727, 135, N'Execute the sp_configure system stored procedure to increase the number of simultaneous user
connections allowed to SQL server.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (729, 1, N'Extract the data by using SELECT statements that include the FOR XML clause.', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (730, 1, N'Use the sp_makewebtask system stored procedure to generate HTML from the data returned by
SELECT statements.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (731, 1, N'Create Data Transformation Services packages that export the data from the database and place the
data into tab-delimited text files.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[a1] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (732, 1, N'Create an application that uses SQL_DMO to extract the data from the database and transform the data
into standard electronic data interchange (EDI) files.', 0, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[answer_master] ON 

INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (54, 8, N'Create a new order table named OrderDetail. Add OrderID, ProductID, and Quantity columns to this table. ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (55, 8, N'Create a composite PRIMARY KEY constraint on the OrderID and ProductID columns of the Orders table. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (56, 8, N'Remove the ProductID and Quantity columns from the Orders table. ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (57, 8, N'Create a UNIQUE constraint on the OrderID column of the Orders table. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (58, 8, N'Move the UnitPrice column from the Products table to the Orders table. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (93, 17, N'Create a database role named Marketing for the marketing employees and a database role named CustomerService for the customer service employees.  Add the Windows 2000 groups to the user-defined database roles.  Grant SELECT permissions on all tables in the database to the Marketing database role. Grant SELECT, INSERT, and UPDATE permissions on all tables in the database to the CustomerService database role. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (94, 17, N'Create one application role to be used by both the customer service and marketing employees.  Grant SELECT permissions on all tables in the database to the Windows 2000 Marketing group. Grant SELECT, INSERT, and UPDATE permissions on all tables in the database to the Windows 2000 CSR group. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (95, 17, N'Create an application role for the custom application.  Grant SELECT, INSERT and UPDATE permissions to the application role. Create a database role 
named Marketing for the marketing employees.  
Add the Windows 2000 Marketing group to the Marketing database role. 
Grant SELECT permissions on all tables in the database to the Marketing database role. 
', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (96, 17, N'Create one application role for the customer service employees.  Create a second application role for the marketing employees.  Grant SELECT permissions on all tables in the database to the application role to be used by the marketing employees.  Grant SELECT, INSERT, and UPDATE permissions on all tables in the database to the application role to be used by the customer service employees.  ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (97, 17, N'Create one application role for the customer service employees.  Create a second application role for the marketing employees to access the Sales database by using the custom application.  Create a third application role for the marketing employees to use when retrieving data from Excel. Grant SELECT permissions on all tables in the database to both application roles to be used by the marketing employees.  Grant SELECT, INSERT, and UPDATE permissions on all tables in the database to the application role to be used by the customer service employees.  ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (98, 18, N'Create a view that displays the order information for a customer. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (99, 18, N'Create a stored procedure that retrieves the order information for a customer. ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (100, 18, N'Create a scalar user-defined function that retrieves the order information for a customer. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (101, 18, N'Grant SELECT permissions on the Order and LineItem tables to the customers.  ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (102, 19, N'Create a trigger on the Department table that checks whether the database login of the user performing the insert or update operation belongs to a member of that department. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (103, 19, N'Create a view that includes all columns in the Department table and the SQLLogin column from the Employees table. ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (104, 19, N'Include the WITH CHECK OPTION clause in the view definition.  ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (105, 19, N'Grant INSERT and UPDATE permissions on the Department table. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (106, 19, N'Grant INSERT and UPDATE permissions on the SQLLogin column of the Employees table. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (111, 21, N'Use SQL profiler to capture the RPC:Completed event. Group the trace by the HostName data column. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (112, 21, N'Use SQL profiler to capture the SQL:StmtCompleted event.  Group the trace by the ApplicationName data column. ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (113, 21, N'Use System Monitor to monitor the SQLServer:Database counter. Select all counters for the Sales database ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (114, 21, N'Use System Monitor to monitor the SQLServer:General Statistics counter. Select all counters for the Sales database. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (115, 22, N'EXEC sp_updatestats ''resample'' ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (116, 22, N'CREATE STATISTICS Sales WITH FULLSCAN ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (117, 22, N'Sp_autostats ''Sales'' ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (118, 22, N'UPDATE STATISTICS Sales WITH FULLSCAN ALL ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (119, 23, N'Create a covering index for each query contained in the stored procedures. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (120, 23, N'For each query in the stored procedures, create an index that includes each column contained in the WHERE clause. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (121, 23, N'Use output from the Index Tuning Wizard to identify whether indexes should be added.  ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (122, 23, N'CREATE STATISTICS on all columns in the SELECT and WHERE clauses of each query. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (123, 24, N'Execute the DBCC UPDATEUSAGE statement against the database to update the sysindexes system table. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (124, 24, N'Execute the DBCC SHOW_STATISTICS statement to find high-density indexes. Drop the high-density indexes. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (125, 24, N'Run the Index Tuning Wizard against a workload file to suggest indexes to create and drop the suggested indexes. ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (126, 24, N'Use SQL profiler to find table scans. Add indexes to tables that were found to have table scans.  ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (127, 25, N'Use transactional replication. Mark all subscriptions for reinitialization. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (128, 25, N'Copy the snapshot to an NTFS compressed share.  Create a CD from that share.  Distribute the CD to the regional office. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (129, 25, N'Create a compressed snapshot in the default snapshot folder on the Distributor.  Create CD from that folder.  Distribute the CD to the regional offices. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (130, 25, N'Create a compressed snapshot in an alternative snapshot folder on the network.  Create CD from that folder.  Distribute the CD to the regional offices. ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (131, 25, N'Create a compressed snapshot in an alternative snapshot folder on the network.  Use FTP to distribute the snapshot to the regional offices.  ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (132, 26, N'Create a new table, and move the columns that are most frequently queried to this table.  Retain the DepartmentID column in both tables.  Create a view on the original table and on the new table. Add a FOREIGN KEY constraint on the join columns of the new table.  ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (133, 26, N'Create a new table, and move the columns that are most frequently queried to this table.  Retain the DepartmentID column in both tables.  
Create a view on the original table and on the new table. 
Add a CHECK constraint on the DepartmentID columns of both tables.  

', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (134, 26, N'Create one new table for each department, and move the sales information for each department to that department''s table.  Add a CHECK constraint on the DepartmentID columns of the new tables.  Create a view on the new tables. ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (135, 26, N'Create one new table for each department, and move the sales information for each department to that department''s table.  Create a view on the new tables.  Add a CHECK constraint on the DepartmentID column in the view.  ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (136, 26, N'Create a stored procedure that accepts an input parameter for the department.  Use the stored procedure to return results from the Sales table.  ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (137, 27, N'Drop the clustered index on the view. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (138, 27, N'Remove all permissions from the view. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (139, 27, N'Remove the WITH SCHEMABINDING option from the view.  ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (140, 27, N'. Remove the WITH SCHEMABINDING option from the function that is referencing the view.  ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (141, 27, N'. Disable the INSTEAD OF trigger on the view. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (142, 28, N'SIZE = 1GB ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (143, 28, N'. SIZE = 1MB ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (144, 28, N'SIZE= 2048KB ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (145, 28, N'FILEGROWTH = 20 ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (146, 28, N'FILEGROWTH = 5% ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (147, 29, N'Use the ALTER TABLE statement and the ON UPDATE clause to modify the Products table. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (148, 29, N'Use the ALTER TABLE statement and the DISABLE TRIGGER ALL option to modify the Products table. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (149, 29, N'Use the ALTER TABLE statement and the DISABLE TRIGGER ALL option to modify the Companies table. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (150, 29, N'Use the ALTER TABLE statement and the NOCHECK CONSTRAINT option to modify the Companies table. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (151, 29, N'Use the ALTER TABLE statement and the NOCHECK CONSTRAINT option to modify the Products table. ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (152, 30, N'Revoke SELECT permissions on the Salary and BonusPercentage columns of the Employees table for Tom''s database user account. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (153, 30, N'Add Tom to the db_datareader database role. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (154, 30, N'Add Tom to the db_accessadmin database role. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (155, 30, N'Grant SELECT permissions on the Salary and BonusPercentage columns of the Employees table for Tom''s database user account. ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (164, 2, N'EXEC sp_addlinkedserver ‘CORP2’, ‘SQL Server’
GO
SELECT CustomerID FROM CORP2.Archive.dbo.SalesHistory
WHERE CategoryID = 21', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (165, 2, N'SELECT CustomerID FROM OPENROWSET (‘SQLOLEDB’, ‘CORP2’; ‘p*word’, ‘SELECT
CustomerID FROM Archive.dbo.SalesHistory WHERE CategoryID = 21’)', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (166, 2, N'SELECT CustomerID FROM CORP2.Archive.dbo.SalesHistory
WHERE CategoryID = 21', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (167, 2, N'EXEC sp_addserver ‘CORP2’
GO
SELECT CustomerID FROM CORP2.Archive.dbo.SalesHistory
WHERE CategoryID = 21', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (168, 3, N'Set the DEADLOCK_PRIORITY to LOW for the transaction that inserts the employee name and
address information.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (169, 3, N'Set the DEADLOCK_PRIORITY to LOW for the transaction that inserts the employee demographics
information.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (170, 3, N'Add conditional code that checks for server error 1205 for the transaction that inserts the employee
name and address information. If this error is encountered, restart the transaction.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (171, 3, N'Add the ROWLOCK optimizer hint to the data manipulation SQL statements within the transactions', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (172, 3, N'Set the transaction isolation level to SERIALIZABLE for the transaction that inserts the employee
name and address information.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (173, 4, N'Place tables that are frequently joined together on the same filegroup.
Place heavily accessed tables and all indexes belonging to those tables on different filegroups.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (174, 4, N'Place tables that are frequently joined together on the same filegroup.
Place heavily accessed tables and the nonclustered indexes belonging to those tables on the same
filegroup.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (175, 4, N'Place tables that are frequently joined together on different filegroups.
Place heavily accessed tables and the nonclustered indexes belonging to those tables on different
filegroups.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (176, 4, N'Place tables that are frequently joined together on different filegroups.
Place heavily accessed tables and the nonclustered indexes belonging to those tables on the same
filegroup.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (177, 5, N'Create a script that contains the Data Definition Language of each stored procedure.
Use this script as a workload file for the Index Tuning Wizard.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (178, 5, N'Capture the execution of each stored procedure in a SQL Profiler trace.
Use the trace file as a workload file for the Index Tuning Wizard.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (179, 5, N'Update the index statistics for the tables used in the stored procedures.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (180, 5, N'Execute each stored procedure in SQL Query Analyzer, and use the Show Execution Plan option.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (181, 5, N'Execute each stored procedure in SQL Query Analyzer, and use the Show Server Trace option.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (182, 6, N'Set the data type of the column to uniqueidentifier.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (183, 6, N'Set the data type of the column to int, and set the IDENTITY property for the column.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (184, 6, N'Set the data type of the column to int.
Create a user-defined function that selects the maximum order number in the table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (185, 6, N'Set the data type of the column to int.
Create a NextKey table, and add a NextOrder column to the table.
Set the data type of the NextOrder column to int.
Create a stored procedure to retrieve and update the value held in the NextKey.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (186, 7, N'Create a new table named Instructors. Include an InstructorID column, and InstructorName column, and an OfficePhone column.  Add an InstructorID column to the Courses table. ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (187, 7, N'Move all the columns from the Classroom table to the Courses table, and drop the Classroom table. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (188, 7, N'Remove the PRIMARY KEY constraint from the Courses table, and replace the PRIMARY KEY constraint with a composite PRIMARY KEY constraint based on the CourseID and CourseTitle. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (189, 7, N'Remove the ClassroomID column, and base the PRIMARY KEY constraint on the ClassroomNumber and ClassTime columns. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (194, 9, N'DECLARE @retval int
DECLARE @ytd int
EXEC get_sales_for_title ‘Net Etiquette’, @ytd
IF @retval < 0
PRINT ‘No sales found’
ELSE
PRINT ‘Year to date sales: ’ + STR (@ytd)
GO', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (195, 9, N'DECLARE @retval int
DECLARE @ytd int
EXEC get_sales_for_title ‘Net Etiquette’, @ytd OUTPUT
IF @retval < 0
PRINT ‘No sales found’
ELSE
PRINT ‘Year to date sales: ’ + STR (@ytd)
GO', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (196, 9, N'DECLARE @retval int
DECLARE @ytd int
EXEC get_sales_for_title ‘Net Etiquette’,@retval OUTPUT
IF @retval < 0
PRINT ‘No sales found’
ELSE
PRINT ‘Year to date sales: ’ + STR (@ytd)
GO', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (197, 9, N'DECLARE @retval int
DECLARE @ytd int
EXEC @retval = get_sales_for_title ‘Net Etiquette’, @ytd OUTPUT
IF @retval < 0
PRINT ‘No sales found’
ELSE
PRINT ‘Year to date sales: ’ + STR (@ytd)
GO', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (202, 10, N'Create a user-defined function that requires ContainerID as an argument and returns the volume of the
container.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (203, 10, N'Create a stored procedure that requires ContainerID as an argument and returns the volume of the container. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (204, 10, N'Add a column named volume to the Container table. Create a trigger that calculates and store the volume in this column when a new container is inserted into the table. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (205, 10, N'Add a computed column to the Container table that calculates the volume of the container. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (206, 11, N'Create a stored procedure that will be called to update the inventory table. If the resultant quantity is less than the restocking quantity, use the xp_logevent system stored procedure to page the supply manager. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (207, 11, N'Create an INSTEAD OF UPDATE trigger on the inventory table. If the quantity in the inserted table is less than the restocking quantity, use SQLAgentMail to send an e-mail message to the supply manager''s pager. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (208, 11, N'Create a FOR UPDATE trigger on the inventory table. If the quantity in the inserted table is less than the restocking quantity, use the xp_sendmail system stored procedure to page the supply manager. ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (209, 11, N'Schedule the SQL server job to run at four-hour intervals.
Configure the job to use the @notify_level_page = 2 argument.
Configure the job so that it tests each item’s quantity against the restocking quantity.
Configure the job so that it returns a false value if the item requires restocking.
This will trigger the paging of the supply manager.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (210, 12, N'Use the sp_lock and sp_who system stored procedures to find locked resources and to identify
processes that are holding locks.
Use this information to identify and redesign the transactions that are causing the locks.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (211, 12, N'Query the sysprocesses and sysobjects system tables to find deadlocked resources and to identify which processes are accessing those resources.  Set a shorter lock timeout for the processes that are accessing the deadlock resources. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (212, 12, N'Query the sysprocesses system table to find which resources are being accessed.  Add clustered indexes on the primary keys of all of the tables that are being accessed. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (213, 12, N'Use the sp_monitor system stored procedure to identify which processes are being affected by the increased query response times.  Set a less restrictive transaction isolation level for these processes. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (214, 13, N'Add a CHECK constraint on the BirthDate column.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (215, 13, N'Create a rule, and bind the rule to the BirthDate column.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (216, 13, N'Alter the Owners table so that the BirthDate column does not allow null.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (217, 13, N'Create a trigger on the Owners table that validates the BirthDate column.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (218, 14, N'Add the WITH RECOMPILE option to the procedure definition.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (219, 14, N'Replace the cursor operation with a single DELETE statement.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (220, 14, N'Add a BEGIN TRAN statement to the beginning of the procedure, and add a COMMIT TRAN statement to the end of the procedure. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (221, 14, N'Set the transaction isolation level to READ UNCOMMITTED for the procedure. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (222, 14, N'Add a nonclustered index on the PartID column of the Parts table. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (223, 15, N'Create an INSTEAD OF INSERT trigger to generate a new policy number, and include the policy
number in the data inserted into the table.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (224, 15, N'Create an INSTEAD OF UPDATE trigger to generate a new policy number, and include the policy
number in the data inserted into the table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (225, 15, N'Create an AFTER UPDATE trigger to generate a new policy number, and include the policy number in the data inserted into the table.  ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (226, 15, N'Replace the DEFAULT constraint with an AFTER INSERT trigger that generates a new policy number and includes the policy number in the data inserted into the table.  ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (227, 16, N'Add the marketing role to the sysadmin fixed server role. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (228, 16, N'Transfer the ownership of the vwCustomers view to the marketing role. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (229, 16, N'Instruct Marc to transfer the ownership of the Customers table to each member of the marketing role.  ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (230, 16, N'Instruct Marc to grant the users SELECT permissions on the Customers table.  ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (231, 16, N'Drop the vwCustomers view. Instruct Marc to re-create the view and to grant SELECT permissions on the view to the marketing role.  ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (232, 20, N'Create a nonclustered index on the OrderDate column. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (233, 20, N'Create a clustered index on the OrderDate column. ', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (234, 20, N'Change the clustered index on the OrderID column to a nonclustered index', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (235, 20, N'Change the nonclustered index on the CustomerID column to include the OrderDate column. ', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (236, 31, N'Create a view that is defined to return the rows that apply to a specified position type.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (237, 31, N'Create a stored procedure that returns the rows that apply to a specified position type.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (238, 31, N'Grant SELECT permissions on the EmployeePositionType column for each position type.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (239, 31, N'Grant permission on the News table for each position type.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (240, 32, N'Change the PRIMARY KEY constraint to use the LastName column followed by the FirstName
column.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (241, 32, N'Add a nonclustered index on the City column.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (242, 32, N'Add a nonclustered index on the AreaCode, Exchange, and Number columns.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (243, 32, N'Remove the unique index from the PhoneNumberID column.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (244, 32, N'Change the PRIMARY KEY constraints to nonclustered indexes.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (245, 33, N'Rewrite the query to eliminate BETWEEN keyword.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (246, 33, N'Add a join hint that includes the HASH option to the query.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (247, 33, N'Add the WITH (INDEX(0)) table hint to the Policy table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (248, 33, N'Update statistics on the Policy table.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (249, 33, N'Execute the DBCC DBREINDEX statement on the Policy table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (250, 34, N'Execute each query in SQL Query Analyzer, and use the SHOWPLAN_TEXT option. Use the output
for the report.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (251, 34, N'Execute each query in SQL Query Analyzer, and use the Show Execution Plan option. Use output for
the report.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (252, 34, N'Run the Index Tuning Wizard against a Workload file. Use the output for the report.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (253, 34, N'Execute the DBCC SHOW_STATISTICS statement. Use the output for the report.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (254, 35, N'CREATE TABLE Physicians
(
Physicians ID int NOT NULL CONSTRAINT PK_Physicians PRIMARY KEY CLUSTERED,
LastName varchar(25) NOT NULL,
)
GO
CREATE TABLE Patients
(
PatientID bigint NOT NULL CONSTRAINT PK_Patients PRIMARY KEY CLUSTERED,
LastName varchar (25) NOT NULL,
FirstName varchar (25) NOT NULL,
PrimaryPhysician int NOT NULL,
SecondaryPhysician int NOT NULL,
CONSTRAINT PK_Patients_Physicians1 FOREIGN KEY (PrimaryPhysician) REFERENCES
Physicians (PhysicianID),
CONSTRAINT PK_Patients_Physicians2 FOREIGN KEY (SecondaryPhysician) REFERENCES
Physicians (PhysicianID)
)', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (255, 35, N'CREATE TABLE Patients
(
PatientID smallint NOT NULL CONSTRAINT PK_Patients PRIMARY KEY CLUSTERED,
LastName varchar(25) NOT NULL,
FirstName varchar (25) NOT NULL,
PrimaryPhysician int NOT NULL,
SecondaryPhysician int NOT NULL,
)
GO
CREATE TABLE Physicians
(
PhysicianID smallint NOT NULL CONSTRAINT PK_Physicians PRIMARY KEY CLUSTERED,
LastName varchar (25) NOT NULL,
FirstName varchar (25) NOT NULL,
CONSTRAINT PK_Physicians_Patients FOREIGN KEY (PhysicianID) REFERENCES Patients
(PatientID)
)', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (256, 35, N'CREATE TABLE Patients
(
PatientID bigint NOT NULL CONSTRAINT PK_Patients PRIMARY KEY CLUSTERED,
LastName varchar (25) NOT NULL,
FirstName varchar (25) NOT NULL,
)
GO
CREATE TABLE Physicians
(
PhysicianID int NOT NULL CONSTRAINT PK_Physician PRIMARY KEY CLUSTERED,
LastName varchar (25) NOT NULL,
FirstName varchar (25) NOT NULL,
)
GO
CREATE TABLE PatientPhysician
(
PatientPhysicianID bigint NOT NULL CONSTRAINT PK_PatientsPhysicians PRIMARY KEY
CLUSTERED,
PhysicianID int NOT NULL,
PatientID bigint NOT NULL,
PrimaryPhysician bit NOT NULL,
FOREIGN KEY (PhysicianID) REFERENCES Physicians (PhysicianID),
FOREIGN KEY (PatientID) REFERENCES Patients (PatientID)
)', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (257, 35, N'CREATE TABLE Patients
(
PatientID int NOT NULL PRIMARY KEY,
LastName varchar (25) NOT NULL,
FirstName varchar (25) NOT NULL,
)
GO
CREATE TABLE Physicians
(
PhysicianID int NOT NULL PRIMARY KEY,
LastName varchar (25) NOT NULL,
FirstName varchar (25) NOT NULL,
)
GO
CREATE TABLE PatientPhysician
(
PhysicianID int NOT NULL REFERENCES Physicians (PhysicianID),
PatientID int NOT NULL REFERENCES Patients (PatientID), PrimaryPhysician bit NOT NULL,
CONSTRAINT PK_PatientsPhysicians PRIMARY KEY (PhysicianID, PatientID)
)', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (258, 36, N'Add your login name to the HR database role.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (259, 36, N'Qualify the trigger name with the trigger owner in the DROP TRIGGER statement.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (260, 36, N'Disable the trigger before executing the DROP TRIGGER statement.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (261, 36, N'Define the trigger number in the DROP TRIGGER statement.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (262, 36, N'Remove the text of the trigger from the sysobjects and syscomments system tables.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (267, 38, N'Create a cursor within an explicit transaction, and set the transaction isolation level to REPEATABLE
READ.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (268, 38, N'Create a cursor that uses optimistic concurrency and positioned updates. In the cursor, place the
positioned UPDATE statements within an explicit transaction.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (269, 38, N'Create a cursor that uses optimistic concurrency. In the cursor, use UPDATE statements that specify the
key value of the row to be updated in the WHERE clause, and place the UPDATE statements within an
implicit transaction.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (270, 38, N'Create a cursor that uses positioned updates. Include the SCROLL_LOCKS argument in the cursor
definition to enforce pessimistic concurrency. In the cursor, place the positioned UPDATE statements
within an implicit transaction.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (271, 39, N'Use a cursor to retrieve all of the data for the survey.
Use FETCH RELATIVE 5 statement to select the summary data from the cursor.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (272, 39, N'Use a SELECT INTO statement to retrieve the data for the survey into a temporary table.
Use a SELECT TOP 1 statement to retrieve the first row from the temporary table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (273, 39, N'Set the query rowcount to five. Use a SELECT statement to retrieve and summarize the survey data.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (274, 39, N'Use a SELECT TOP 5 statement to retrieve and summarize the survey data.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (275, 40, N'Use the bcp utility, and specify the –t option.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (276, 40, N'Use the BULK INSERT statement, and specify the FIRE_TRIGGERS argument.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (277, 40, N'Use the SQL-DMO BulkCopy2 object and set the TableLock property to TRUE.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (278, 40, N'Use Data Transformation Services to create two Transform Data tasks.
For each task, map the text file columns to the database columns.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (283, 42, N'Create a stored procedure to retrieve all of the data that is loaded into the list box.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (284, 42, N'Use an API server-side cursor to retrieve the data that is loaded into list box.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (285, 42, N'Retrieve all of the data at once by using a SELECT statement, and then load the data into the list box.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (286, 42, N'Use a Transact-SQL server-side cursor to retrieve the data that is loaded into the list box.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (287, 43, N'INSERT INTO Country (CountryName)
SELECT DISTINCT Country
FROM Customers', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (288, 43, N'SELECT (*) AS ColID, c1.Country
INTO Country
FROM (SELECT DISTINCT Country FROM Customers)AS c1,
(SELECT DISTINCT Country FROM Customers) AS c2,
WHERE c1.Country >=c2.Country
GROUP BY c1.Country ORDER BY 1', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (289, 43, N'DECLARE @Country char (20)
DECLARE cursor_country CURSOR
FOR SELECT Country FROM Customers
OPEN cursor_country
FETCH NEXT FROM cursor_country INTO @Country
WHILE (@@FETCH_STATUS <> -1)
BEGIN
If NOT EXISTS (SELECT CountryID
FROM Country
WHERE CountryName = @Country)
INSERT INTO Country (CountryName) VALUES (@Country)
FETCH NEXT FROM cursor_country INTO @Country
END
CLOSE cursor_country
DEALLOCATE cursor_country', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (290, 43, N'DECLARE @SQL varchar (225)
SELECT @SQL = ‘bcp “SELECT ColID = COUNT(*), c1. Country’ +
‘FROM (SELECT DISTINCT Country FROM Sales..Customers) AS
c1, '' +
(SELECT DISTINCT Country FROM Sales..Customers) AS c2 ''
+
WHERE c1.Country >= c2.Country’ +
‘GROUP BY c1.Country ORDER BY 1’ +
‘query out c:\country.txt -c’
EXEC master..xp_cmdshell @SQL, no_output
EXEC master..xp_cmdshell ‘bcp Sales..Country in c:\country. Txt-c’, no_output', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (291, 44, N'SELECT l.LocationName, e.FirstName, e.LastName
FROM Employee AS e LEFT OUTER JOIN Location AS 1
ON e.LocationID= l.LocationID
ORDER BY l.LocationName, e.LastName, e.FirstName', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (292, 44, N'SELECT l.LocationName, e.FirstName, e.LastName
FROM Location AS 1 LEFT OUTER JOIN EMPLOYEE AS 1
ON e.LocationID= l.LocationID
ORDER BY l.LocationName, e.LastName, e.FirstName', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (293, 44, N'SELECT l.LocationName, e.FirstName, e.LastName
FROM Employee AS e FULL OUTER JOIN Location AS 1
ON e.LocationID= l.LocationID
ORDER BY l.LocationName, e.LastName, e.FirstName', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (294, 44, N'SELECT l.LocationName, e.FirstName, e.LastName
FROM Employee AS e CROSS JOIN Location AS 1
ORDER BY l.LocationName, e.LastName, e.FirstName', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (295, 44, N'SELECT l.LocationName, e.FirstName, e.LastName
FROM Employee AS e, Location AS 1
ORDER BY l.LocationName, e.LastName, e.FirstName', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (341, 56, N'Use a scrollable static cursor to retrieve the list of tickets.
Use positioned updates within the cursor to make purchases.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (342, 56, N'Use a scrollable dynamic cursor to retrieve the list of tickets.
Use positioned updates within the cursor to make purchases.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (343, 56, N'Use a stored procedure to retrieve the list of tickets.
Use a second stored procedure to make purchases.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (344, 56, N'Use a user-defined function to retrieve the list of tickets.
Use a second stored procedure to make purchases.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (345, 57, N'Create an AFTER INSERT trigger on the Dogs table that rolls back the transaction of the MotherID or
FatherID column is not valid.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (346, 57, N'Create a table-level CHECK constraint on the MotherID and FatherID columns.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (347, 57, N'Create two FOREIGN KEY constraints: one constraint on the MotherID column and one constraint on
the FatherID column. Specify that each constraint reference the DogID column.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (348, 57, N'Create a rule and bind it to the MotherID. Bind the same rule to the FatherID column.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (349, 58, N'Create a view, and include the WITH ENCRYPTION clause.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (350, 58, N'Create a view, and include the WITH CHECK OPTION clause.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (351, 58, N'Create a view, and include the SCHEMABINDING clause.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (352, 58, N'Create a view, and build a covering index on the view.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (353, 58, N'Create a user-defined function that returns a table containing the non-executive employees.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (354, 59, N'Replace the lines 12-17 of the stored procedure with the following:
Return @@ROWCOUNT', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (355, 59, N'Replace line 5-6 of the stored procedure with the following:
DECLARE @count int
Replace lines 12-17 with the following:
SET @Count = @@ROWCOUNT
If @@ERROR = 0
Return @Count
Else
Return –1', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (356, 59, N'Replace line 5 of the stored procedure with the following:
DECLARE @Err int, @Count int
Replace lines 12-17 with the following:
SELECT @Err = @@ERROR, @Count = @@ROWCOUNT
IF @Err = 0
Return @Count
Else
Return @Err', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (357, 59, N'Replace line 5 of the stored procedure with the following:
Return @@Error', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (358, 59, N'Replace line 5 of the stored procedure with the following
DECLARE @Err int, @Count int
Replace line 9 with the following:
SET Balance = Balance * 1.01, @Count = Count (*)
Replace line 15 with the following:
Return @Count', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (359, 60, N'UPDATE Products
SET p1.[Description] = p2.[Description], p1.UnitPrice = p2.UnitPrice
FROM Products p1, PendingProductUpdate p2
WHERE p1.ProductID= p2.ProductID
GO
TRUNCATE TABLE PendingProductUpdate
GO', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (360, 60, N'UPDATE Products p1
SET [Description] = p2.[Description], UnitPrice = p2.UnitPrice
FROM Products, PendingProductUpdate p2
WHERE p1.ProductID= p2.ProductID
GO
TRUNCATE TABLE PendingProductUpdate
GO', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (361, 60, N'UPDATE Products p1
SET p1.[Description] = p2.[Description], p1.UnitPrice = p2.UnitPrice
FROM (SELECT [Description], UnitPrice
FROM PendingProductUpdate p2
WHERE p1.ProductID= p2.ProductID)
GO
TRUNCATE TABLE PendingProductUpdate
GO', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (362, 60, N'UPDATE p1
SET p1.[Description] = p2.[Description], p1.UnitPrice = p2.UnitPrice
FROM Products p1, PendingProductUpdate p2
WHERE p1.ProductID= p2.ProductID
GO
TRUNCATE TABLE PendingProductUpdate', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (363, 61, N'SELECT Country FROM Customers
GROUP BY Country HAVING COUNT (Country)>10', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (364, 61, N'SELECT TOP 10 Country FROM Customers', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (365, 61, N'SELECT TOP 10 Country FROM Customers
FROM (SELECT DISTINCT Country FROM Customers) AS X
GROUP BY Country HAVING COUNT(*)> 10', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (366, 61, N'SET ROWCOUNT 10
SELECT Country, COUNT (*) as “NumCountries”
FROM Customers
GROUP BY Country ORDER BY NumCountries, Desc', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (367, 62, N'SELECT TOP 20 PERCENT LastName, FirstName, SUM (OrderAmount) AS ytd
FROM sales
GROUP BY LastName, FirstName
ORDER BY 3 DESC', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (368, 62, N'SELECT LastName, FirstName, COUNT(*) AS sales
FROM sales
GROUP BY LastName, FirstName
HAVING COUNT (*) > 20
ORDER BY 3 DESC', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (369, 62, N'SELECT TOP 20 LastName, FirstName, MAX(OrderAmount) AS ytd
FROM sales
GROUP BY LastName, FirstName
ORDER BY 3 DESC', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (370, 62, N'SELECT TOP 20 LastName, FirstName, SUM (OrderAmount) AS ytd
FROM sales
GROUP BY LastName, FirstName
ORDER BY 3 DESC', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (371, 62, N'SELECT TOP 20 WITH TIES LastName, FirstName, SUM (OrderAmount) AS ytd
FROM sales
GROUP BY LastName, FirstName
ORDER BY 3 DESC', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (372, 63, N'Create two stored procedures, and specify that one of the stored procedures should accept a parameter
and that the other should not.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (373, 63, N'Create a user-defined function that accepts a parameter with a default value of 101.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (374, 63, N'Create a stored procedure that accepts a parameter with a default value of 101.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (375, 63, N'Create a view that filters the FlightTimes table on a value of 101.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (376, 63, N'Create a default of 101 on the FlightTimes table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (377, 64, N'BEGIN TRANSACTION Order
INSERT INTO Order VALUES (@ID, @CustomerID, @OrderDate)
INSERT INTO LineItem VALUES (@ItemID, @ID, @ProductID, @Price)
SAVE TRANSACTION Order', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (378, 64, N'INSERT INTO Order VALUES (@ID, @CustomerID, @OrderDate)
INSERT INTO LineItem VALUES (@ItemID, @ID, @ProductID, @Price)
IF (@@Error = 0)
COMMIT TRANSACTION
ELSE
ROLLBACK TRANSACTION', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (379, 64, N'BEGIN TRANSACTION
INSERT INTO Order VALUES (@ID, @CustomerID, @OrderDate)
IF (@@Error = 0)
BEGIN
INSERT INTO LineItem
VALUES (@ItemID, @ID, @ProductID, @Price)
IF (@@Error = 0)
COMMIT TRANSACTION
ELSE
ROLLBACK TRANSACTION
END
ELSE
ROLLBACK TRANSACTION
END', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (380, 64, N'BEGIN TRANSACTION
INSERT INTO Order VALUES (@ID, @CustomerID, @OrderDate)
IF (@@Error = 0)
COMMIT TRANSACTION
ELSE
ROLLBACK TRANSACTION
BEGIN TRANSACTION
INSERT INTO LineItem VALUES (@ItemID, @ID, @ProductID, @Price)
IF (@@Error = 0)
COMMIT TRANSACTION
ELSE
ROLLBACK TRANSACTION', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (381, 65, N'Use the Microsoft Distributed Transaction Coordinator to enlist the Employee table in a distributed
transaction that will roll back the entire transaction if the employee ID is not active.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (382, 65, N'Add a CHECK constraint on the EmployeeID column of the VacuumSales table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (383, 65, N'Add a FOREIGN KEY constraint on the EmployeeID column of the VacuumSales table that
references the EmployeeID column in the Employee table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (384, 65, N'Add a FOR INSERT trigger on the VacuumSales table. In the trigger, join the Employee table with
the inserted table based on the EmployeeID column, and test the IsActive column.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (385, 66, N'CREATE PROCEDURE UpdateStockPrice @StockID int, @Price decimal
AS BEGIN
DECLARE @Msg varchar(50)
UPDATE Stocks SET CurrentPrice = @Price
WHERE StockID = @ StockID
AND CurrentPrice <> @ Price
IF @@ERROR <> 0
RAISERROR (‘Error %d occurred updating Stock %d.’, 10, 1, @@ERROR, @StockID) WITH
LOG
IF @@ROWCOUNT > 0
BEGIN
SELECT @Msg = ‘Stock’ + STR (@StockID) + ‘updated to’ + STR (@Price) + ‘.’
EXEC master. . xp_LOGEVENT 50001, @Msg
END
END', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (386, 66, N'CREATE PROCEDURE UpdateStockPrice @StockID int, @Price decimal
AS BEGIN
UPDATE Stocks SET CurrentPrice = @Price
WHERE StockID = @ StockID
AND CurrentPrice <> @ Price
IF @@ERROR <> 0
PRINT ‘ERROR’ + STR(@@ERROR) + ‘occurred updating Stock’ +STR (@StockID)+ ‘.’
IF @@ROWCOUNT > 0
PRINT ‘Stock’ + STR (@StockID) + ‘updated to’ + STR (@Price) + ‘.’
END', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (387, 66, N'CREATE PROCEDURE UpdateStockPrice @StockID int, @Price decimal
AS BEGIN
DECLARE @Err int, @RCount int, @Msg varchar(50)
UPDATE Stocks SET CurrentPrice = @Price
WHERE StockID = @ StockID
AND CurrentPrice <> @ Price
SELECT @Err = @@ERROR, @RCount = @@ROWCOUNT
IF @Err <> 0
BEGIN
SELECT @Msg = ‘Error’ + STR(@Err) + ‘occurred updating Stock’ + STR (@StockID) + ‘.’
EXEC master..xp_logevent 50001, @Msg
END
IF @RCOUNT > 0
BEGIN
SELECT @Msg = ‘Stock’ + STR (@StockID) + ‘updated to’ + STR (@Price) + ‘.’
EXEC master. . xp_LOGEVENT 50001, @Msg
END
END', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (388, 66, N'CREATE PROCEDURE UpdateStockPrice @StockID int, @Price decimal AS BEGIN
DECLARE @Err int, @RCount int, @Msg varchar (50)
UPDATE Stocks SET CurrentPrice = @Price
WHERE StockID = @StockID
AND CurrentPrice <> @Price
SELECT @Err = @@ERROR, @RCount = @@ROWCOUNT
If @Err <> 0
RAISEERROR (‘Error %d occurred updating Stock %d.’, 10, 1, @Err, @StockID) WITH LOG
If @RCount > 0
BEGIN
SELECT @Msg = ‘Stock’ + STR (@StockID) + ‘update to’ + STR (@Price) + ‘.’
EXEC master. . xp_logevent 50001, @Msg
END
END', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (389, 67, N'Create a trigger on the Reservations table to create the History table entries.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (390, 67, N'Create a cascading referential integrity constraint on the Reservations table to create the History table
entries.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (391, 67, N'Create a view on the Reservations table. Include the WITH SCHEMABINDING option in the view
definition.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (392, 67, N'Create a view on the Reservations table. Include the WITH CHECK OPTION clause in the view
definition.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (393, 68, N'Create a trigger on the Reservations table to create the History table entries.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (394, 68, N'Create a cascading referential integrity constraint on the Reservations table to create the History table
entries.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (395, 68, N'Create a view on the Reservations table. Include the WITH SCHEMABINDING option in the view
definition.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (396, 68, N'Create a view on the Reservations table. Include the WITH CHECK OPTION clause in the view
definition.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (397, 69, N'Create a stored procedure that requires a postal code as a parameter. Include the WITH RECOMPILE
option when the procedure is created.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (398, 69, N'Create one stored procedure for each postal code.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (399, 69, N'Create one view for each postal code.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (400, 69, N'Split the Company table into multiple tables so that each table contains one postal code.
Build a partitioned view on the tables so that the data can still be viewed as a single table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (401, 70, N'Use a DELETE statement to remove the data from the table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (402, 70, N'Use a TRUNCATE TABLE statement to remove the data from the table.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (403, 70, N'Use a DROP TABLE statement to remove the data from the table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (404, 70, N'Use an updateable cursor to access and remove each row of data from the table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (405, 71, N'SELECT m.ModelName, c.ColorName
FROM Colors AS c FULL OUTER JOIN Models AS m
ON c.ColorID = m.ColorID
ORDER BY m.ModelName, c.ColorName', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (406, 71, N'SELECT m.ModelName, c.ColorName
FROM Colors AS c CROSS JOIN Models AS m
ORDER BY m.ModelName, c.ColorName', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (407, 71, N'SELECT m.ModelName, c.ColorName
FROM Colors AS m INNER JOIN Colors AS c
ON m.ColorID = c.ColorID
ORDER BY m.ModelName, c.ColorName', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (408, 71, N'SELECT m.ModelName, c.ColorName
FROM Colors AS c LEFT OUTER JOIN Models AS m
ON c.ColorID = m.ColorID
UNION
SELECT m.ModelName, c.ColorName
FROM Colors AS c RIGHT OUTER JOIN Models AS m
ON c.ColorID = m.ColorID
ORDER BY m.ModelName, c.ColorName', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (409, 71, N'SELECT m.ModelName
FROM Models AS m
UNION
SELECT c.ColorName
FROM Colors AS c
ORDER BY m.ModelName', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (410, 72, N'Use SQL-DMO and Microsoft Visual Basic Scripting Edition to create a Table object.
Use the ImportData method of the Table object to load the table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (411, 72, N'Use SQL-DMO and Microsoft Visual Basic Scripting Edition to create a Database object.
Use the CopyData property of the Database object to load the table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (412, 72, N'Use Data Transformation Services and Microsoft Visual Basic Scripting edition to create a Package
object.
Create a Connection object for the text file.
Add a BulkInsertTask object to the Package object.
Use the Execute method of the Package object to load the data.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (413, 72, N'Use Data Transformation Services and Microsoft Visual Basic Scripting edition to create a Package
object.
Create a Connection object for the text file.
Add an ExecuteSQLTask2 object to the Package object.
Use the Execute method of the ExecuteSQLTask2 object to load the data.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (414, 73, N'EXEC sp_configure ‘cursor threshold’, 0', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (415, 73, N'EXEC sp_dboption ‘Policies’ SET CURSOR_CLOSE_ON_COMMIT ON', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (416, 73, N'SET TRANSACTION ISOLATION LEVEL SERIALIZABLE', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (417, 73, N'ALTER DATABASE Policies SET CURSOR_DEFAULT LOCAL', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (442, 74, N'SELECT *
FROM OPENXML (@docHandle, ‘/ROOT/category/Product’, 1)
WITH (ProductID int,
CategoryID int,
CategoryName varchar(50),
[Description] varchar (50))', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (443, 74, N'SELECT *
FROM OPENXML (@docHandle, ‘/ROOT/category/Product’, 8)
WITH (ProductID int,
CategoryID int,
CategoryName varchar(50),
[Description] varchar (50))', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (444, 74, N'SELECT *
FROM OPENXML (@docHandle, ‘/ROOT/category/Product’, 1)
WITH (ProductID int,
CategoryID int,
CategoryName varchar(50), ‘@CategoryName’,
[Description] varchar (50))', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (445, 74, N'SELECT *
FROM OPENXML (@docHandle, ‘/ROOT/category/Product’, 1)
WITH (ProductID int,
CategoryID int ‘../@CategoryID’,
CategoryName varchar(50), ‘../@CategoryName’,
[Description] varchar (50))', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (446, 75, N'SELECT CAST (hourly_wage * 40 * 52 +
salary +
commission * num_sales AS MONEY) as YearlyWages
FROM Wages', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (447, 75, N'SELECT CAST (COALESCE (hourly_wage * 40 * 52,
Salary,
commission * num_sales) AS MONEY) as YearlyWages
FROM Wages', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (448, 75, N'SELECT CAST (CASE
WHEN((hourly_wage,) IS NOTNULL) THEN hourly_wage * 40 * 52
WHEN(NULLIF(salary,NULL)IS NULL)THEN salary
ELSE commission * num_sales
END
AS MONEY)
As YearlyWages
FROM Wages', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (449, 75, N'SELECT CAST(CASE
WHEN (hourly_wage IS NULL)THEN salary
WHEN (salary IS NULL)THEN commission*num_sales
ELSE commission * num_sales
END
AS MONEY)
As YearlyWages
FROM Wages', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (450, 76, N'Use SELECT statements that include the FOR XML AUTO clause to copy the data from the XML
documents into the appropriate tables.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (451, 76, N'Use SELECT statements that include the FOR XML EXPLICIT clause to copy the data from the XML
documents into the appropriate tables.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (452, 76, N'Use the OPENXML function to access the data and to insert it into the appropriate tables.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (453, 76, N'Build a view on the SalesXML table that displays the contents of the XML documents.
Use SELECT INTO statements to extract the data from this view into the appropriate tables.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (454, 77, N'Add the PolicyID, InsuredName, and InsuredBirthDate columns to the primary key', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (455, 77, N'Add a UNIQUE constraint to enforce the uniqueness of the combination of the PolicyID,
InsuredName, and InsuredBirthDate columns.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (456, 77, N'Add a CHECK constraint to enforce the uniqueness of the combination of the PolicyID, InsuredName,
and InsuredBirthDate columns.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (457, 77, N'Create a clustered index on the PolicyID, InsuredName, and InsuredBirthDate columns.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (458, 78, N'Create a new table named CustomerContact.
Add CustomerID, ContactName, and Phone columns to this table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (459, 78, N'Create a new composite PRIMARY KEY constraint on the OrderDetails table.
Include the OrderID, ProductID, and CustomerID columns in the constraint.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (460, 78, N'Remove the PRIMARY KEY constraint from the OrderDetails table.
Use an IDENTITY column to create a surrogate key for the OrderDetails table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (461, 78, N'Remove the CustomerID column from the OrderDetails table.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (462, 78, N'Remove the Quantity column from the OrderDetails table.
Add a Quantity column to the Orders table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (463, 79, N'Create an indexed view on the tables.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (464, 79, N'Create a stored procedure that returns data from the tables.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (465, 79, N'Create a scalar user-defined function that returns data from the tables.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (466, 79, N'Create a table-valued user-defined function that returns data from the tables.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (467, 80, N'Configure the main office as a publishing Subscriber.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (468, 80, N'Configure the main office as a publisher with a remote distributor.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (469, 80, N'Configure the main office as a central publisher and the regional offices as Subscribers.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (470, 80, N'Configure the regional offices as Publishers and the main office as a central Subscriber.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (471, 81, N'Remove the table hint.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (472, 81, N'Change the table hint to UPDLOCK.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (473, 81, N'Change the table hint to REPEATABLEREAD.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (474, 81, N'Set the transaction isolation level to SERIALIZABLE.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (475, 81, N'Set the transaction isolation level to REPEATABLE READ.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (476, 82, N'UPDATE l
SET Price = Price – 10
FROM LineItem AS l INNER JOIN [Order] AS o
ON l.OrderID = o.OrderID
WHERE o.OrderDate >= ‘6/1/2000’
AND o.OrderDate < ‘6/2/2000’', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (477, 82, N'UPDATE l
SET Price = Price – 10
FROM LineItem AS l INNER JOIN [Order] AS o
ON l.OrderID = o.OrderID
WHERE o.OrderDate = ‘6/1/2000’', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (478, 82, N'DECLARE @ItemID int
DECLARE items_cursor CURSOR FOR
SELECT l.ItemID
FROM LineItem AS l INNER JOIN [Order] AS o
ON l.OrderID = o.OrderID
WHERE o.OrderDate >= ‘6/1/2000’
AND o.OrderDate < ‘6/1/2000’
FOR UPDATE
OPEN items_cursor
FETCH NEXT FROM items_cursor INTO @ItemID
WHILE @@FETCH_STATUS = 0
BEGIN
UPDATE LineItem SET Price = Price – 10
WHERE CURRENT OF items_cursor
FETCH NEXT FROM items_cursor INTO @ItemID
END
CLOSE items_cursor
DEALLOCATE items_cursor', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (479, 82, N'DECLARE @OrderID int
DECLARE order_cursor CURSOR FOR
SELECT ordered FROM [Order]
WHERE OrderDate = ‘6/1/2000’
OPEN order_cursor
FETCH NEXT FROM order_cursor INTO @OrderID
WHILE @@FETCH_STATUS = 0
BEGIN
UPDATE LineItem SET Price = Price – 10
WHERE OrderID= @OrderID
FETCH NEXT FROM order_cursor INTO @OrderID
END
CLOSE order_cursor
DEALLOCATE order_cursor', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (480, 83, N'CREATE PROCEDURE spAddCatalogItems (
@xmlDocument varchar (8000))
AS
BEGIN
DECLARE @docHandle int
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument
INSERT INTO Products
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument
INSERT INTO Products
SELECT * FROM
OPENXML (@docHandle, ‘/ROOT/Category/Product’, 1)
WITH Products
EXEC sp_xml_removedocument @docHandle
END', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (481, 83, N'CREATE PROCEDURE spAddCatalogItems (
@xmlDocument varchar (8000))
AS
BEGIN
DECLARE @docHandle int
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument
INSERT INTO Products
SELECT * FROM OPENXML (@docHandle, ‘/ROOT/Category/Product’, 1)
WITH (ProductID int ‘./@ProductID’,
CategoryID int ‘../@CategoryID’,
[Description] varchar (100) ‘./@Description’)
EXEC sp_xml_removedocument @docHandle
END', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (482, 83, N'CREATE PROCEDURE spAddCatalogItems (
@xmlDocument varchar (8000))
AS
BEGIN
INSERT INTO Products
SELECT * FROM OPENXML (
@xmlDocument, ‘/ROOT/Category/Product’, 1)
WITH (ProductID int, Description varchar (50))
END', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (483, 83, N'CREATE PROCEDURE spAddCatalogItems (
@xmlDocument varchar (8000))
AS
BEGIN
INSERT INTO Products
SELECT* FROM
OPENXML (@xmlDocument, ‘/ROOT/Category/Product’,1)
WITH Products
END', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (564, 84, N'Remove the text of the stored procedures from the syscomments system table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (565, 84, N'Encrypt the text of the stored procedures.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (566, 84, N'Deny SELECT permissions on the syscomments system table to the public role.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (567, 84, N'Deny SELECT permissions on the sysobjects system table to the public role.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (568, 100, N'Delete records in tables that reference the Orders table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (569, 100, N'Disable triggers on the Orders table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (570, 100, N'Execute a SET IMPLICIT_TRANSACTIONS OFF statement.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (571, 100, N'Execute a SET CURSOR_CLOSE_ON_COMMIT ON statement.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (572, 100, N'Change the logic in the DELETE statement.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (573, 101, N'CREATE DATABASE CustomerContacts
ON
(NAME = Contacts_dat,
FILENAME = ‘c:\data\contacts.mdf’,
SIZE = 10,
MAXSIZE = 1GB
FILEGROWTH= 5)', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (574, 101, N'CREATE DATABASE CustomerContacts
ON
(NAME = Contacts_dat,
FILENAME = ‘c:\data\contacts.mdf’,
SIZE = 10,
MAXSIZE = 1GB
FILEGROWTH= 10%)', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (575, 101, N'CREATE DATABASE CustomerContacts
ON
(NAME = Contacts_dat,
FILENAME = ‘c:\data\contacts.mdf’,
SIZE = 100,
MAXSIZE = UNLIMITED)', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (576, 101, N'CREATE DATABASE CustomerContacts
ON
(NAME = Contacts_dat,
FILENAME = ‘c:\data\contacts.mdf’,
SIZE = 1GB)', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (577, 102, N'Add an ORDER BY clause to the view.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (578, 102, N'Add a HAVING clause to the view.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (579, 102, N'Change the NUMERIC_ROUNDABORT option to ON.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (580, 102, N'Change the index to a unique, nonclustered index.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (581, 102, N'Add the WITH SCHEMABINDING option to the view.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (582, 103, N'Add Andrea to the db_owner database role.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (583, 103, N'Add Andrea to the db_ddladmin database role', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (584, 103, N'Grant Andrea CREATE VIEW permissions.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (585, 103, N'Grant Andrea ALTER VIEW permissions.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (586, 103, N'Grant Andrea REFERENCES permissions on the tables.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (587, 104, N'Use GRANT, REVOKE and DENY statements to assign permission to the sales associates.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (588, 104, N'Use SQL Server Enterprise Manager to assign permission on the RegionSales table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (589, 104, N'Create one view on the RegionSales table for each sales region.
Grant the sales associates permission to access the views that correspond to the sales region to which
they have been assigned.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (590, 104, N'Create a new table named Security to hold combinations of sales associates and sales regions.
Create stored procedures that allow or disallow modifications of the data in the RegionSales table by
validating the user of the procedures against the Security table.
Grant EXECUTE permissions on the stored procedures to all sales associates.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (591, 104, N'Create a new table named Security to hold combinations of sales associates and sales regions.
Create user-defined functions that allow or disallow modifications of the data.
In the RegionSales table by validating the user of the function against the Security table.
Grant EXECUTE permissions on the functions to all sales associates.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (592, 105, N'Transfer the ownership of the table and the views to the database owner.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (593, 105, N'Grant SELECT permissions on the ToySales table to your login.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (594, 105, N'Grant SELECT permissions on the vwDollSales view to the Doll database role.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (595, 105, N'Grant SELECT permission on the vwActionFigureSales view to the ActionFigure database role.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (596, 105, N'Deny SELECT permission on the ToySales table for the Doll database role.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (597, 106, N'Run system monitor on the SQL Server:Access Methods counter during the day. Use the output from
System Monitor to identify which tables need indexes.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (598, 106, N'Use the sp_configure system stored procedure to increase the number of locks that can be used by SQL
Server.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (599, 106, N'Run SQL Profiler during the day. Select the SQL:BatchCompleted and RPC:Completed events and
the EventClass and TextData data columns. Use the output from SQL profiler as input to the Index
Tuning Wizard.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (600, 106, N'Increase the value of the min server memory option.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (601, 106, N'Rebuild indexes, and use a FILLFACTOR of 100.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (602, 107, N'Create a new filegroup on each of the four disk drives.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (603, 107, N'Create the clustered index for the Order table on a separate filegroup from the nonclustered indexes.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (604, 107, N'Store the data and the clustered index for the OrderDetail table on one filegroup, and create the
nonclustered indexes on another filegroup.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (605, 107, N'Create the Order table and its indexes on one filegroup, and create the OrderDetail table and its
indexes on another filegroup.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (606, 107, N'Create two filegroups that each consists of two disk drives connected to the same controller.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (607, 108, N'Execute the DBCC DBREINDEX statement on the table.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (608, 108, N'Execute the UPDATE STATISTICS statement on the table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (609, 108, N'Execute the DROP STATISTICS statement on the clustered index.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (610, 108, N'Execute the DBCC INDEXDEFRAG statement on the primary key index.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (611, 108, N'Execute the DROP INDEX and CREATE INDEX statements on the primary key index.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (612, 109, N'Create a SQL Profiler trace, and use the Objects event classes.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (613, 109, N'Run the Index Tuning Wizard against a workload file that contains the queries used in the reports.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (614, 109, N'Run System Monitor, and use the SQLServer:Access Methods counter.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (615, 109, N'Execute the queries against the tables in SQL Query Analyzer, and use the SHOWPLAN_TEXT
option.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (616, 110, N'Create an AFTER trigger on the view.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (617, 110, N'Create an INSTEAD OF trigger on the view.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (618, 110, N'Create an INSTEAD OF trigger on the Person and Employees tables.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (619, 110, N'Alter the view to include the WITH CHECK option.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (620, 110, N'Alter the view to include the WITH SCHEMABINDING option.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (621, 111, N'CREATE TABLE Orders
(
OrderID uniqueidentifier PRIMARY KEY NOT NULL,
OrderDate datetime NULL,
CustomerID char(5) NOT NULL FOREIGN KEY REFERENCES Customer (Customer ID),
ShipperID int NOT NULL FOREIGN KEY REFERENCES Shippers(ShipperID),
ShipDate datetime Null
)', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (622, 111, N'CREATE TABLE Orders
(
OrderID int identity (1, 1) PRIMARY KEY NOT NULL,
OrderDate datetime NOT NULL,
CustomerID char(5) NOT NULL FOREIGN KEY REFERENCES Customer (Customer ID),
ShipperID int NOT NULL FOREIGN KEY REFERENCES Shippers(ShipperID),
ShipDate datetime Null
)', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (623, 111, N'CREATE TABLE Orders
(
OrderID int identity (1, 1) PRIMARY KEY NOT NULL,
OrderDate datetime NULL,
CustomerID char(5) NOT NULL FOREIGN KEY REFERENCES Customer (Customer ID),
ShipperID int NULL,
ShipDate datetime Null
)', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (624, 111, N'CREATE TABLE Orders
(
OrderID uniqueidentifier PRIMARY KEY NOT NULL,
OrderDate datetime NOT NULL,
CustomerID char(5) NOT NULL FOREIGN KEY REFERENCES Customer (Customer ID),
ShipperID int NOT NULL FOREIGN KEY REFERENCES Shippers(ShipperID),
ShipDate datetime Null
)', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (625, 112, N'Create a job that rebuilds the clustered index each night by using the default FILLFACTOR.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (626, 112, N'Add additional indexes to the Orders table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (627, 112, N'Partition the Orders table vertically.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (628, 112, N'Rebuild the clustered index with a FILLFACTOR of 50.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (629, 112, N'Execute the UPDATE STATISTICS statement on the Orders table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (630, 113, N'Assign appropriate permissions to each Windows 2000 group.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (631, 113, N'Assign appropriate permissions to each application role.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (632, 113, N'Assign the Windows 2000 groups to the appropriate application role.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (633, 113, N'Provide users with the password to the application role.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (634, 114, N'Change the order of the tables in the FROM clause to list the Agents table first.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (635, 114, N'Use a HASH JOIN hint to join the Agents table in the query.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (636, 114, N'Create a clustered index on the AgentID column of the Agents table.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (637, 114, N'Create a nonclustered index on the AgentID column of the Agents table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (638, 115, N'Qualify the Archived_Orders_1995_1999 table name with the owner name.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (639, 115, N'Request CREATE TABLE permissions.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (640, 115, N'Create the Archived_Orders_1995_1999 table before you execute the SET SHOWPLAN_TEXT
ON statement.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (641, 115, N'Change the table name to ArchivedOrders.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (642, 116, N'Qualify the Archived_Orders_1995_1999 table name with the owner name.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (643, 116, N'Request CREATE TABLE permissions.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (644, 116, N'Create the Archived_Orders_1995_1999 table before you execute the SET SHOWPLAN_TEXT
ON statement.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (645, 116, N'Change the table name to ArchivedOrders.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (646, 117, N'In Transaction 2, move the UPDATE Customer statement before the UPDATE CustomerPhone
statement.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (647, 117, N'Add the SET DEADLOCK_PRIORITY LOW statement to both transactions.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (648, 117, N'Add code that checks for server error 1205 to each script. If this error is encountered, restart the
transaction in which it occurred.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (649, 117, N'Add the SET LOCK_TIMEOUT 0 statement to both transactions.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (650, 118, N'Create a trigger on the Rosters table that validates the data.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (651, 118, N'Create a rule that validates the data.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (652, 118, N'Create an UPDATE view that includes the WITH CHECK OPTION clause in its definition.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (653, 118, N'Add a CHECK constraint on the Rosters table to validate the data.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (654, 119, N'Create an AFTER trigger on the CurrentPrice table that compares the values of the StockPrice
column in the inserted and deleted tables. If the values are different, then the trigger will insert a row
into the PastPrice table.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (655, 119, N'Create an AFTER trigger on the CurrentPrice table that compares the values of the StockPrice
column in the inserted table with the StockPrice column in the CurrentPrice table. If the values are
different, then the trigger will insert a row into the PastPrice table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (656, 119, N'Create a cascading update constraint on the CurrentPrice table that updates a row in the PastPrice
table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (657, 119, N'Create a stored procedure that compares the new value of the StockPrice column in the CurrentPrice
table with the old value. If the values are different, then the procedure will insert a row into the
PastPrice table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (658, 120, N'Create an AFTER trigger on the CurrentPrice table that compares the values of the StockPrice
column in the inserted and deleted tables. If the values are different, then the trigger will insert a row
into the PastPrice table.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (659, 120, N'Create an AFTER trigger on the CurrentPrice table that compares the values of the StockPrice
column in the inserted table with the StockPrice column in the CurrentPrice table. If the values are
different, then the trigger will insert a row into the PastPrice table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (660, 120, N'Create a cascading update constraint on the CurrentPrice table that updates a row in the PastPrice
table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (661, 120, N'Create a stored procedure that compares the new value of the StockPrice column in the CurrentPrice
table with the old value. If the values are different, then the procedure will insert a row into the
PastPrice table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (662, 121, N'Always use the WITH RECOMPILE option to execute the slow-running stored procedures.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (663, 121, N'Execute the UPDATE STATISTICS statement for each of the tables accessed by the slow-running
stored procedures.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (664, 121, N'Execute the sp_recompile system stored procedure for each of the slow-running procedures.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (665, 121, N'Execute the DBCC REINDEX statement for each of the tables accessed by the slow-running stored
procedures.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (666, 122, N'Use an ALTER VIEW statement to add the parameter value to the view definition.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (667, 122, N'Create a stored procedure that accepts the parameter as input and returns a rowset with the result set.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (668, 122, N'Create a scalar user-defined function that accepts the parameter as input.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (669, 122, N'Create an inline user-defined function that accepts the parameter as input.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (670, 123, N'Add indexes on the PostalCode, State, and DateOfBirth columns of the Customers table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (671, 123, N'Denormalize the Customers table', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (672, 123, N'Create a view on the Customers, SalesLineItem, State, and Product tables.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (673, 123, N'Create a function to return the required data from the Customers table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (674, 124, N'CREATE CLUSTERED INDEX [IX_EmployeeName] ON [dbo].[Employee] ([LastName],
[FirstName])', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (675, 124, N'CREATE INDEX [IX_EmployeeFirstName] ON [dbo].[Employee] ([First Name])
CREATE INDEX [IX_EmployeeLastName] ON [dbo].[Employee] ([Last Name])', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (676, 124, N'CREATE UNIQUE INDEX [IX_EmployeeEmployeeID] ON [dbo].[Employee] ([EmployeeID])', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (677, 124, N'CREATE UNIQUE INDEX [IX_EmployeeSSN] ON [dbo].[Employee] ([SSN])', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (678, 124, N'CREATE CLUSTERED INDEX [IX_EmployeeEmployeeID] ON [dbo].[Employee]
([EmployeeID])', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (679, 125, N'Use GRANT, REVOKE, and DENY statements to assign permissions to each department manager.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (680, 125, N'Add the database login of each department manager to the db_datareader fixed database role.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (681, 125, N'Build tables and views that enforce row-level security on the Employee table.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (682, 125, N'Use SQL Server Enterprise Manager to assign permissions on the Employee table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (683, 126, N'Create a stored procedure that returns the non-confidential information from the Employee table
formatted as XML.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (684, 126, N'Create a user-defined function that returns the non-confidential information from the Employee table
in a rowset that is formatted as XML.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (685, 126, N'Create a view that includes only the non-confidential information from the Employee table.
Give the external application permission to submit queries against the view.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (686, 126, N'Set column-level permissions on the Employee table to prevent the external application from viewing
the confidential columns.
Give the external application permissions to submit queries against the table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (687, 127, N'Create a stored procedure that will use the OPENROWSET statement to retrieve the data.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (688, 127, N'Create a stored procedure that will use the fully qualified table name on CORP2 to retrieve the data.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (689, 127, N'Create a script that uses the OPENQUERY statement to retrieve the data.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (690, 127, N'On CORP1, execute the sp_addlinkedserver system stored procedure.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (691, 127, N'On CORP1, execute the sp_addlinkedsrvlogin system stored procedure.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (692, 128, N'Create a PRIMARY KEY constraint on the CandidateID column.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (693, 128, N'Create a PRIMARY KEY constraint on the CandidateID and DateLastUsed columns.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (694, 128, N'Create a PRIMARY KEY constraint on the CandidateID and SkillID columns.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (695, 128, N'Create a PRIMARY KEY constraint on the CandidateID, SkillID, and DateLastUsed columns.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (696, 129, N'Create a rule that disallows null values.
Bind the rule to both the HomePhone and BusinessPhone columns.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (697, 129, N'Create a rule that prevents null values from being entered into both the HomePhone and
BusinessPhone columns.
Bind the rule to the table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (698, 129, N'Add CHECK constraints on the HomePhone and BusinessPhone columns that prevent null values
from being entered into the columns.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (699, 129, N'Add a CHECK constraint on the table to validate that at least one of the values entered into the
HomePhone and BusinessPhone columns is non-null.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (700, 129, N'Create a trigger that counts the number of items entered without a value in the HomePhone column
and then counts the number of items entered without a value in the BusinessPhone column.
Configure the trigger so that if one or more rows are found that meet these conditions, the trigger will
cancel the data modification.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (701, 130, N'Create a FOREIGN KEY constraint on the Products table that references the OrderDetails table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (702, 130, N'Create a FOREIGN KEY constraint on the Products table that references the Suppliers table.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (703, 130, N'Create a FOREIGN KEY constraint on the Orders table that references the OrderDetails table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (704, 130, N'Create a FOREIGN KEY constraint on the OrderDetails table that references the Order table.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (705, 130, N'Create a FOREIGN KEY constraint on the OrderDetails table that references the Products table.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (706, 131, N'Add Andrea to the db_datareader database role.
Grant REFERENCES permissions to the public role.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (707, 131, N'Remove Andrea from the Marketing database role.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (708, 131, N'Grant Andrea’s database user account SELECT permissions on the tables referenced in the stored
procedure.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (709, 131, N'Grant Andrea’s database user account REFERENCES permissions on the tables referenced in the
stored procedure.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (710, 132, N'Instruct Eric to grant the Agent role SELECT permissions on the Traveler table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (711, 132, N'Instruct Eric to grant you SELECT permissions on needed columns in the Traveler table.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (712, 132, N'Instruct Eric to create a view named vwTravelers that displays the data in the desired format.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (713, 132, N'Create a view named vwTravelers that displays the data in the desired format.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (714, 132, N'Grant the Agent role SELECT permissions on the vwTravelers view.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (715, 133, N'SELECT i1.InvoiceNumber, i1.CustomerName, i1.InvoiceAmount
FROM Invoice As i1, Invoice AS i2
GROUP BY i1.InvoiceNumber, i1.CustomerName, i1.InvoiceAmount
HAVING i1.InvoiceAmount < AVG (i2.InvoiceAmount)
ORDER BY i1.CustomerName, i1.InvoiceNumber', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (716, 133, N'SELECT i1.InvoiceNumber, i1.CustomerName, i1.InvoiceAmount
FROM Invoice As i1
WHERE i1.InvoiceAmount <
(SELECT AVG (i2.InvoiceAmount)
FROM Invoice AS i2
WHERE i2.CustomerName=i1.CustomerName)
ORDER BY i1.CustomerName, i1.InvoiceNumber', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (717, 133, N'SELECT i1.InvoiceNumber, i1.CustomerName, i1.InvoiceAmount
FROM Invoice As i1
WHERE i1.InvoiceAmount <
(SELECT AVG (i2.InvoiceAmount)
FROM Invoice AS i2)
ORDER BY i1.CustomerName, i1.InvoiceNumber', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (718, 133, N'SELECT i1.InvoiceNumber, i1.CustomerName, i1.InvoiceAmount,
CASE WHEN i1.InvoiceAmount < AVG (i2.InvoiceAmount)
THEN i1.InvoiceAmount ELSE 0 END
FROM Invoice As i1 INNER JOIN Invoice AS i2
ON i1.CustomerName = i2.CustomerName
GROUP BY i1.InvoiceNumber, i1.CustomerName, i1.InvoiceAmount
ORDER BY i1.CustomerName, i1.InvoiceNumber', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (719, 134, N'Create a view on the Customers table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (720, 134, N'Create a function that returns data for the Customers table.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (721, 134, N'Create a composite, nonclustered index on the City and Region columns, and use City as the first
column in the index.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (722, 134, N'Create a composite, nonclustered index on the City and Region columns, and use Region as the first
column in the index.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (723, 134, N'Add the City and Region columns to the clustered index, and use Region as the first column in the
index.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (724, 135, N'Use a higher transaction isolation level for transactions used in the database.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (725, 135, N'Use SQL Profiler to capture deadlock events.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (726, 135, N'Use System Monitor to monitor lock requests and deadlo', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (727, 135, N'Execute the sp_configure system stored procedure to increase the number of simultaneous user
connections allowed to SQL server.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (729, 1, N'Extract the data by using SELECT statements that include the FOR XML clause.', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (730, 1, N'Use the sp_makewebtask system stored procedure to generate HTML from the data returned by
SELECT statements.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (731, 1, N'Create Data Transformation Services packages that export the data from the database and place the
data into tab-delimited text files.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (732, 1, N'Create an application that uses SQL_DMO to extract the data from the database and transform the data
into standard electronic data interchange (EDI) files.', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (769, 136, N'Type tutor', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (770, 136, N'Word Processor', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (771, 136, N'Pain Program', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (772, 136, N'Spell Checker', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (773, 137, N'Ctrl + C', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (774, 137, N'Ctrl + V', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (775, 137, N'Ctrl + X', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (776, 137, N'Ctrl + W', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (777, 138, N'72 pt', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (778, 138, N'1600 pt', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (779, 138, N'1700 pt', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (780, 138, N'200 pt', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (781, 139, N'Goal Seek', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (782, 139, N'Spell Checker', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (783, 139, N'Auto Complete', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[answer_master] ([a_id], [a_qusetion_id], [a_answer], [a_rightanswer], [a_create_by], [a_craete_date]) VALUES (784, 139, N'Pivot Table', 0, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[answer_master] OFF
GO
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'AD', N'Andorra')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'AE', N'United Arab Emirates')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'AF', N'Afghanistan')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'AG', N'Antigua and Barbuda')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'AI', N'Anguilla')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'AL', N'Albania')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'AM', N'Armenia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'AN', N'Netherlands Antilles')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'AO', N'Angola')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'AQ', N'Antarctica')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'AR', N'Argentina')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'AS', N'American Samoa')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'AT', N'Austria')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'AU', N'Australia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'AW', N'Aruba')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'AX', N'Åland Islands')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'AZ', N'Azerbaijan')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BA', N'Bosnia and Herzegovina')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BB', N'Barbados')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BD', N'Bangladesh')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BE', N'Belgium')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BF', N'Burkina Faso')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BG', N'Bulgaria')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BH', N'Bahrain')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BI', N'Burundi')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BJ', N'Benin')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BL', N'Saint Barthélemy')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BM', N'Bermuda')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BN', N'Brunei Darussalam')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BO', N'Bolivia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BR', N'Brazil')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BS', N'Bahamas')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BT', N'Bhutan')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BV', N'Bouvet Island')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BW', N'Botswana')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BY', N'Belarus')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'BZ', N'Belize')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'CA', N'Canada')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'CC', N'Cocos (Keeling) Islands')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'CD', N'Congo, the Democratic Republic of the')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'CF', N'Central African Republic')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'CG', N'Congo')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'CH', N'Switzerland')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'CI', N'Côte d''Ivoire')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'CK', N'Cook Islands')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'CL', N'Chile')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'CM', N'Cameroon')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'CN', N'China')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'CO', N'Colombia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'CR', N'Costa Rica')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'CU', N'Cuba')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'CV', N'Cape Verde')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'CX', N'Christmas Island')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'CY', N'Cyprus')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'CZ', N'Czech Republic')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'DE', N'Germany')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'DJ', N'Djibouti')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'DK', N'Denmark')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'DM', N'Dominica')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'DO', N'Dominican Republic')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'DZ', N'Algeria')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'EC', N'Ecuador')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'EE', N'Estonia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'EG', N'Egypt')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'EH', N'Western Sahara')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'ER', N'Eritrea')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'ES', N'Spain')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'ET', N'Ethiopia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'FI', N'Finland')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'FJ', N'Fiji')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'FK', N'Falkland Islands (Malvinas)')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'FM', N'Micronesia, Federated States of')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'FO', N'Faroe Islands')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'FR', N'France')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GA', N'Gabon')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GB', N'United Kingdom')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GD', N'Grenada')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GE', N'Georgia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GF', N'French Guiana')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GG', N'Guernsey')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GH', N'Ghana')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GI', N'Gibraltar')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GL', N'Greenland')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GM', N'Gambia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GN', N'Guinea')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GP', N'Guadeloupe')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GQ', N'Equatorial Guinea')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GR', N'Greece')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GS', N'South Georgia and the South Sandwich Islands')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GT', N'Guatemala')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GU', N'Guam')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GW', N'Guinea-Bissau')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'GY', N'Guyana')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'HK', N'Hong Kong')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'HM', N'Heard Island and McDonald Islands')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'HN', N'Honduras')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'HR', N'Croatia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'HT', N'Haiti')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'HU', N'Hungary')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'ID', N'Indonesia')
GO
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'IE', N'Ireland')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'IL', N'Israel')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'IM', N'Isle of Man')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'IN', N'India')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'IO', N'British Indian Ocean Territory')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'IQ', N'Iraq')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'IR', N'Iran, Islamic Republic of')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'IS', N'Iceland')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'IT', N'Italy')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'JE', N'Jersey')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'JM', N'Jamaica')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'JO', N'Jordan')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'JP', N'Japan')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'KE', N'Kenya')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'KG', N'Kyrgyzstan')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'KH', N'Cambodia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'KI', N'Kiribati')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'KM', N'Comoros')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'KN', N'Saint Kitts and Nevis')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'KP', N'Korea, Democratic People''s Republic of')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'KR', N'Korea, Republic of')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'KW', N'Kuwait')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'KY', N'Cayman Islands')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'KZ', N'Kazakhstan')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'LA', N'Lao People''s Democratic Republic')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'LB', N'Lebanon')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'LC', N'Saint Lucia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'LI', N'Liechtenstein')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'LK', N'Sri Lanka')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'LR', N'Liberia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'LS', N'Lesotho')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'LT', N'Lithuania')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'LU', N'Luxembourg')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'LV', N'Latvia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'LY', N'Libyan Arab Jamahiriya')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MA', N'Morocco')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MC', N'Monaco')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MD', N'Moldova, Republic of')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'ME', N'Montenegro')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MF', N'Saint Martin (French part)')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MG', N'Madagascar')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MH', N'Marshall Islands')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MK', N'Macedonia, the former Yugoslav Republic of')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'ML', N'Mali')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MM', N'Myanmar')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MN', N'Mongolia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MO', N'Macao')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MP', N'Northern Mariana Islands')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MQ', N'Martinique')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MR', N'Mauritania')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MS', N'Montserrat')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MT', N'Malta')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MU', N'Mauritius')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MV', N'Maldives')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MW', N'Malawi')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MX', N'Mexico')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MY', N'Malaysia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'MZ', N'Mozambique')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'NA', N'Namibia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'NC', N'New Caledonia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'NE', N'Niger')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'NF', N'Norfolk Island')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'NG', N'Nigeria')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'NI', N'Nicaragua')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'NL', N'Netherlands')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'NO', N'Norway')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'NP', N'Nepal')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'NR', N'Nauru')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'NU', N'Niue')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'NZ', N'New Zealand')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'OM', N'Oman')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'PA', N'Panama')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'PE', N'Peru')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'PF', N'French Polynesia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'PG', N'Papua New Guinea')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'PH', N'Philippines')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'PK', N'Pakistan')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'PL', N'Poland')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'PM', N'Saint Pierre and Miquelon')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'PN', N'Pitcairn')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'PR', N'Puerto Rico')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'PS', N'Palestinian Territory, Occupied')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'PT', N'Portugal')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'PW', N'Palau')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'PY', N'Paraguay')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'QA', N'Qatar')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'RE', N'Réunion')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'RO', N'Romania')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'RS', N'Serbia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'RU', N'Russian Federation')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'RW', N'Rwanda')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'SA', N'Saudi Arabia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'SB', N'Solomon Islands')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'SC', N'Seychelles')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'SD', N'Sudan')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'SE', N'Sweden')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'SG', N'Singapore')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'SH', N'Saint Helena')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'SI', N'Slovenia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'SJ', N'Svalbard and Jan Mayen')
GO
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'SK', N'Slovakia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'SL', N'Sierra Leone')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'SM', N'San Marino')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'SN', N'Senegal')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'SO', N'Somalia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'SR', N'Suriname')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'ST', N'Sao Tome and Principe')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'SV', N'El Salvador')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'SY', N'Syrian Arab Republic')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'SZ', N'Swaziland')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'TC', N'Turks and Caicos Islands')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'TD', N'Chad')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'TF', N'French Southern Territories')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'TG', N'Togo')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'TH', N'Thailand')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'TJ', N'Tajikistan')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'TK', N'Tokelau')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'TL', N'Timor-Leste')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'TM', N'Turkmenistan')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'TN', N'Tunisia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'TO', N'Tonga')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'TR', N'Turkey')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'TT', N'Trinidad and Tobago')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'TV', N'Tuvalu')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'TW', N'Taiwan, Province of China')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'TZ', N'Tanzania, United Republic of')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'UA', N'Ukraine')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'UG', N'Uganda')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'UM', N'United States Minor Outlying Islands')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'US', N'United States')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'UY', N'Uruguay')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'UZ', N'Uzbekistan')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'VA', N'Holy See (Vatican City State)')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'VC', N'Saint Vincent and the Grenadines')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'VE', N'Venezuela, Bolivarian Republic of')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'VG', N'Virgin Islands, British')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'VI', N'Virgin Islands, U.S.')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'VN', N'Viet Nam')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'VU', N'Vanuatu')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'WF', N'Wallis and Futuna')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'WS', N'Samoa')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'YE', N'Yemen')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'YT', N'Mayotte')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'ZA', N'South Africa')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'ZM', N'Zambia')
INSERT [dbo].[country_master] ([c_code], [c_name]) VALUES (N'ZW', N'Zimbabwe')
GO
SET IDENTITY_INSERT [dbo].[exam_master] ON 

INSERT [dbo].[exam_master] ([e_id], [e_name], [e_description], [e_total_time], [e_no_of_question], [e_max_marks], [e_pass_marks], [e_active], [e_create_by], [e_create_date]) VALUES (1, N'SQL Server', N'MCP Examination for SQL Server', 20, 20, 100, 70, 1, 1, CAST(N'2001-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[exam_master] ([e_id], [e_name], [e_description], [e_total_time], [e_no_of_question], [e_max_marks], [e_pass_marks], [e_active], [e_create_by], [e_create_date]) VALUES (2, N'Ms Word', N'Microsoft Word', 10, 4, 100, 70, 1, 1, CAST(N'2009-06-18T21:42:14.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[exam_master] OFF
GO
INSERT [dbo].[member_master] ([m_id], [m_emailid], [m_name], [m_password], [m_address], [m_country_code], [m_city], [m_zip], [m_createdate], [m_active], [m_lastlogin_ip], [m_lastlogin_date1], [m_lastlogin_date2], [m_password_change_date]) VALUES (1, N'atanu.maity@rediffmail.com', N'Atanu Maity', N'1234', N'sadad', N'MO', N'233', N'123123', CAST(N'2021-01-01T00:00:00.000' AS DateTime), 1, N'MAITY', CAST(N'2021-06-21T00:44:36.840' AS DateTime), CAST(N'2021-06-19T01:48:33.450' AS DateTime), NULL)
INSERT [dbo].[member_master] ([m_id], [m_emailid], [m_name], [m_password], [m_address], [m_country_code], [m_city], [m_zip], [m_createdate], [m_active], [m_lastlogin_ip], [m_lastlogin_date1], [m_lastlogin_date2], [m_password_change_date]) VALUES (2, N'atanumaity@deltaindia.net', N'Atanu', N'1234', N'Mumbai', N'IN', N'Mumbai', N'444400', CAST(N'2021-05-19T23:52:02.000' AS DateTime), 1, N'MAITY', CAST(N'2021-06-19T01:37:25.623' AS DateTime), CAST(N'2021-05-19T23:52:22.903' AS DateTime), NULL)
INSERT [dbo].[member_master] ([m_id], [m_emailid], [m_name], [m_password], [m_address], [m_country_code], [m_city], [m_zip], [m_createdate], [m_active], [m_lastlogin_ip], [m_lastlogin_date1], [m_lastlogin_date2], [m_password_change_date]) VALUES (3, N'madhavi@gmail.com', N'Madhavi', N'1234', N'Mumbai', N'IN', N'Mumbai', N'400001', CAST(N'2021-06-21T00:46:20.000' AS DateTime), 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (1, 1, N'You are a database developer for A Datum Corporation. You are creating a database that will store
statistics for 15 different high school sports. This information will be used by 50 companies that publish
sports information on their web sites. Each company''s web site arranges and displays the statistics in a
different format.
You need to package the data for delivery to the companies. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (2, 1, N'You are a database developer for a mail order company. The company has two SQL Server 2000
computers named CORP1 and CORP2. CORP1 is the online transaction processing server. CORP2
stores historical sales data. CORP2 has been added as a linked server to CORP1.

The manager of the sales department asks you to create a list of customers who have purchased floppy
disks. This list will be generated each month for promotional mailings. Floppy disks are represented in
the database with a category ID of 21.
You must retrieve this information from a table named SalesHistory. This table is located in the Archive
database, which resides on CORP2. You need to execute this query from CORP1.
Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (3, 1, N'You are a database developer for Trey Research. You create two transactions to support the data entry
of employee information into the company''s database. One transaction inserts employee name and
address information into the database. This transaction is important. The other transaction inserts
employee demographics information into the database. This transaction is less important.
The database administrator has notified you that the database server occasionally encounters errors
during periods of high usage. Each time this occurs, the database server randomly terminates one of the
transactions.
You must ensure that when the database server terminates one of these transactions, it never terminates
the more important transaction. What should you do?
The database administrator has notified you that the database server occasionally encounters errors during periods of high usage. Each time this occurs, the database server randomly terminates one of the transactions. 
You must ensure that when the database server terminates one of these transactions, it never terminates the more important transaction. What should you do? 
', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (4, 1, N'You are a database developer for your company''s SQL Server 2000 online transaction processing
database. Many of the tables have 1 million or more rows. All tables have a clustered index. The heavily
accessed tables have at least one non-clustered index. Two RAID arrays on the database server will be
used to contain the data files. You want to place the tables and indexes to ensure optimal I/O
performance.
You create one filegroup on each RAID array. What should you do next?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (5, 1, N'You are a database developer for your company''s SQL Server 2000 database. You update several stored
procedures in the database that create new end-of-month reports for the sales department. The stored
procedures contain complex queries that retrieve data from three or more tables. All tables in the
database have at least one index.
Users have reported that the new end-of-month reports are running much slower than the previous
version of the reports. You want to improve the performance of the reports.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (6, 1, N'You are a database developer for wide world importers. You are creating a database that will store order
information. Orders will be entered in a client/server application. Each time a new order is entered, a
unique order number must be assigned. Order numbers must be assigned in ascending order. An average
of 10, 000 orders will be entered each day.
You create a new table named Orders and add an OrderNumber column to this table. What should you
do next?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (7, 1, N'You are a database developer for a technical training center. Currently, administrative employees keep
records of students, instructors, courses, and classroom assignments only on paper. The training center
wants to eliminate the use of paper to keep records by developing a database to record this information.
You design the tables for this database. Your design is shown in the exhibit.
You want to promote quick response times for queries and minimize redundant data. What should you do?

You want to promote quick response times for queries and minimize redundant data. What should you
do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (8, 1, N'You are designing a database that will contain customer orders. Customers will be able to order multiple products each time they place an order. You review the database design, which is shown in the exhibit.  
 
You want to promote quick response times for queries and minimize redundant data. What should you do? (Each correct answer presents part of the solution. Choose two.)', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (9, 1, N'You are the database developer for a publishing company. You create the following stored procedure to
report the year-to-date sales for a particular book title:
CREATE PROCEDURE get_sales_for_title
%title varchar(80), @ytd_sales int OUTPUT
AS
SELECT @ytd_sales = ytd_sales
FROM titles
WHERE title = @title
IF @@ROWCOUNT = 0
RETURN(-1)
ELSE
RETURN(0)
You are creating a script that will execute this stored procedure. If the stored procedure executes
successfully, it should report the year-to-date sales for the book title. If the stored procedure fails to
execute, it should report the following message:
“No Sales Found”
How should you create the script?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (10, 1, N'You are a database developer for a container manufacturing company. The containers produced by your
company are a number of different sizes and shapes. The tables that store the container information are
shown in the Size, Container, and Shape Tables exhibit.
---
A sample of the data stored in the tables is shown in the Sample Data exhibit.
--
Periodically, the dimensions of the containers change. Frequently, the database users require the volume
of a container. The volume of a container is calculated based on information in the shape and size tables.
You need to hide the details of the calculation so that the volume can be easily accessed in a SELECT
query with the rest of the container information. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (34, 1, N'You are a database developer for a SQL Server 2000 database. You are planning to add new indexes,
drop some indexes, and change other indexes to composite and covering indexes.
For documentation purposes, you must create a report that shows the indexes used by queries before and
after you make changes. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (128, 1, N'You are a database developer for an IT consulting company. You are designing a database to record
information about potential consultants. You create a table named CandidateSkills for the database. The
table is shown in the exhibit.
How should you uniquely identify the skills for each consultant?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (78, 1, N'You are designing a database for Tailspin Toys. You review the database design, which is shown in the
exhibit.
You want to promote quick response times for queries and minimize redundant data. What should you
do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (11, 1, N'You are a database developer for a hospital. There are four supply rooms on each floor of the hospital,
and the hospital has 26 floors. You are designing an inventory control database for disposable equipment.
Certain disposable items must be kept stored at all times. As each item is used, a barcode is scanned to
reduce the inventory count in the database. The supply manager should be paged as soon as a supply
room has less than the minimum quantity of an item.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (12, 1, N'You are the developer of a database that supports time reporting for your company. Usually there is an
average of five users accessing this database at one time, and query response times are less than one
second. However, on Friday afternoons and Monday mornings, when most employees enter their
timesheet data, the database usage increases to an average of 50 users at one time. During these times, the
query response times increase to an average of 15 to 20 seconds.
You need to find the source of the slow query response times and correct the problem. What should you
do?
You need to find the source of the slow query response times and correct the problem. What should you do? 
', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (13, 1, N'You are a database developer for an insurance company. The insurance company has a multi-tier
application that is used to enter data about its policies and the owners of the policies. The policy owner
information is stored in a table named Owners. The script that was used to create this table is shown in
the exhibit.
CREATE TABLE Owners
(
OwnerID int IDENTITY (1, 1) NOT NULL,
FirstName char(20) NULL,
LastName char(30) NULL,
BirthDate date NULL,
CONSTRAINT PK_Owners PRIMARY KEY (Owner ID)
)
When information about policy owners is entered, the owner’s birth date is not included; the database
needs to produce a customized error message that can be displayed by the data entry application. You
need to design a way for the database to validate that the birth date is supplied and to produce the error
message if it is not.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (14, 1, N'You are the database developer for a large brewery. Information about each of the brewery’s plants and
the equipment located at each plant is stored in a database named Equipment. The plant information is
stored in a table named Location, and the equipment information is stored in a table named Parts. The
scripts that were used to create these tables are shown in the Location and Parts Scripts exhibit.
CREATE TABLE Location
(
LocationID int NOT NULL,
LocationName char (30) NOT NULL UNIQUE,
CONSTRAINT PK_Location PRIMARY KEY (LocationID)
)
CREATE TABLE Parts
(
PartID int NOT NULL,
LocationID int NOT NULL,
PartName char (30) NOT NULL,
CONSTRAINT PK_Parts PRIMARY KEY (PartID),
CONSTRAINT FK_PartsLocation FOREIGN KEY (Location ID)
REFERENCES Location (LocationID)
)
The brewery is in the process of closing several existing plants and opening several new plants. When a
plant is closed, the information about the plant and all of the equipment at that plant must be deleted
from the database. You have created a stored procedure to perform this operation. The stored procedure
is shown in the Script for sp_DeleteLocation exhibit.
CREATE PROCEDURE sp_DeleteLocation @LocName char(30) AS
BEGIN
DECLARE @PartID int
DECLARE crs_Parts CURSOR FOR
SELECT p.PartID
FROM Parts AS p INNER JOIN Location AS 1
ON p.LocationID = @LocName
WHERE l.LocationName = @LocName
OPEN crs_Parts
FETCH NEXT FROM crs_Parts INTO @PartID
WHILE (@@FETCH_STATUS <> -1)
BEGIN
DELETE Parts WHERE CURRENT OF crs_Parts
FETCH NEXT FROM crs_Parts INTO @PartID
END
CLOSE crs_Parts
DEALLOCATE crs_Parts
DELETE Location WHERE LocationName = @LocName
END
This procedure is taking longer than expected to execute. You need to reduce the execution time of the
procedure.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (15, 1, N'You are a database developer for an insurance company. Information about the company''s insurance
policies is stored in a SQL Server 2000 database. You create a table named Policy for this database by
using the script shown in the exhibit.
CREATE TABLE Policy
(
PolicyNumber int NOT NULL DEFAULT (0),
InsuredLastName char (30) NOT NULL,
InsuredFirstName char (20) NOT NULL,
InsuredBirthDate datetime NOT NULL,
PolicyDate datetime NOT NULL,
FaceAmount money NOT NULL,
CONSTRAINT PK_Policy PRIMARY KEY (PolicyNumber)
)
Each time the company sells a new policy, the policy must be assigned a unique policy number. The
database must assign a new policy number when a new policy is entered.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (16, 1, N'You are a member of a database development team for a telecommunications company. Another
developer on the team, Marc, has created a table named Customers in the Corporate database. Because
the table contains confidential information, he has granted SELECT permissions on the table only to the
other members of your team.
You are developing an application that will allow employees in the marketing department to view some of
the information in the Customers table. These employees are all members of the Marketing database
role. To support this application, you create a view named vwCustomers on the Customers table. After
creating the view, you grant SELECT permissions on the view to the Marketing role.
When members of the Marketing role attempt to retrieve data from the view, they receive the following
error message:
SELECT permission denied on object ‘Customers’, database ‘Corporate’, owner
‘Marc’.
You must ensure that the members of the Marketing role can only use the vwCustomers view to access
the data in the Customers table. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (17, 1, N'You are designing your company''s SQL Server 2000 sales database, which will be accessed by a custom application. Customer service and marketing employees require SELECT, INSERT, and UPDATE permissions on all tables in the Sales database. In addition to using the custom application, the marketing employees will use Microsoft Excel to retrieve data from the sales database to create charts.  

Customer service employees belong to a Microsoft Windows 2000 group named CSR, and marketing employees belong to a Windows 2000 group named Marketing.  
You want the customer service employees to access the sales database only from within the custom application. You want to allow the marketing employees to use both the custom application and Excel to access the sales database. No permissions have been granted in the database.  
What should you do? 
', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (18, 1, N'You are a database developer for an online book retailer. Customers use the company''s web site to place orders for books. As orders are entered, they are inserted into a database named BookOrders. During a nightly batch process, the order information is transferred to a database named Reports.  
The Reports database includes a table named Order and a table named LineItem. The Order table contains basic information about the orders. The LineItem table contains information about the individual items in the orders. The Order and LineItem tables are shown in the exhibit.  
 
Customers must be able to use the company''s web site to view orders stored in the Reports database. Customers should be able to see only their own orders.  
Customers should not be able to modify the orders. The primary key values of the orders are not relevant to the customers and should not be visible. 
What should you do?
', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (19, 1, N'You are a database developer for a large travel company. Information about each of the company''s departments is stored in a table named Department. Data about each of the company''s travel agents and department managers is stored in a table named Employees. The SQLLogin column of the Employees table contains the database login for the travel agent or department manager. The Department and Employees table are shown in the exhibit. 
 
Each department manager has been added to the Managers database role. You need to allow members of this database role to view all of the data in the department table. Members of this role should be able to insert or update only the row that pertains to their department.  
You grant the Managers database role SELECT permissions on the Department table. What should you do next?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (20, 1, N'You are a database developer for your company''s database named Sales. The database contains a table
named Orders. The script that was used to create the table is shown in the Script Orders Table exhibit.
CREATE TABLE Orders
(
OrderID int NOT NULL,
CustomerID char (5) NOT NULL,
OrderDate datetime DEFAULT GETDATE ( ) NULL,
ShippedDate datetime NULL,
Freight money NULL,
ShipName varchar (40) NULL
)
GO
CREATE CLUSTERED INDEX IX_OrderID ON Orders (OrderID)
GO
CREATE NONCLUSTERED INDEX IX_CustomerID ON Orders (CustomerID)
An application will execute queries like the following to retrieve orders for a customer:
SELECT OrderID, CustomerID, OrderDate
FROM Orders WHERE CustomerID = ‘WHITC’
ORDER BY OrderDate DESC
The query execution plan that is generated is shown in the Query Execution Plan exhibit. .
Query Execution Plan

You want this query to execute as quickly as possible. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (21, 1, N'You are database developer for your company''s SQL Server 2000 database named Sales. The company has several custom web-based applications that retrieve data from the Sales database. Some of these applications use the EXECUTE statement to allow users to issue ad hoc queries. As the use of the Web-based applications increases, queries are taking longer to execute.  
You want to discover which applications are sending a high number of these queries to the database server. What should you do? ', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (22, 1, N'You are a database developer for a multinational corporation. The company has a centralized online transaction processing database located on a SQL Server 2000 computer. This database has a table named Sales, which contains consolidated sales information from the company''s offices.  
During the last year, more than 150,000 rows have been added to the Sales table. Users of the database report that performance during the course of the year has steadily decreased.  
You need to improve the performance of queries against the Sales table. In the SQL query analyzer, which script should you execute? ', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (23, 1, N'You are a database developer for your company''s SQL Server 2000 online transaction processing database. You have written several stored procedures that will produce critical sales reports. The stored procedures access existing tables, which are indexed.  
Before you put the stored procedures in the production environment, you want to ensure optimal performance of the new stored procedures. You also want to ensure that daily operations in the database are not adversely affected.  
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (24, 1, N'You are a database developer for an insurance company. You are informed that database operations, such as selects, inserts, and updates, are taking much longer than they were when the database was created a year ago. 

The previous developer added necessary indexes on the tables when the database was created. Since that time, additional tables and stored procedures have been added to the database. In addition, many of the queries are no longer used. 
You want to improve the response time of the database operations as quickly as possible. What should you do? 
', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (25, 1, N'You are a database developer for a sporting goods company. The company has one main office and many regional offices across the United States. A 56-Kbps frame relay network connects the offices. Each office has a SQL Server 2000 database that contains information about the company''s products. The main office SQL Server databases is used to process incremental updates to the regional office databases. Transactional replication is used to perform these updates.  

Each quarter, you create a new snapshot file. You use this snapshot file to replace the regional office databases with the latest product information. This snapshot file is now more than 800 MB in size. You need to apply the snapshot file to the regional office databases. You want to accomplish this by using the least amount of expense. 
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (26, 1, N'26 You are a database developer for your company''s SQL Server 2000 database. This database contains a table named Sales, which has 2 million rows. The Sales table contains sales information for all departments in the company. Each department is identified in the table by the DepartmentID column. Most queries against the table are used to find sales for a single department. 

You want to increase the I/O performance of these queries. However, you do not want to affect the applications that access the table.  
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (27, 1, N'You are a database developer for your company''s SQL Server 2000 database. You are deleting objects in the database that are no longer used. You are unable to drop the 1997Sales view. After investigation, you find that the view has the following characteristics:  

.	o There is a clustered index on the view 
.	o The sales database role has permissions on the view.  
.	o The view uses the WITH SCHEMABINDING option.  
.	o A schema-bound inline function references the view 
.	o An INSTEAD OF trigger is defined on the view 

What should you do before you can drop the view? 
', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (28, 1, N'You are a database developer for Proseware, Inc. You are creating a database named HumanResources for the company. This database will contain all employee records and demographics information. The company has 2,000 employees and experiences a yearly turnover rate of about 2 percent. When employees leave the company, all of their records must be retained for auditing purposes. Employee demographics information changes at a yearly rate of about 9 percent. You do not need to maintain a history of demographics changes.  
The schema for the human resources database is shown in the human resources schema exhibit, and the scripts that will be used to create the indexes are shown in the Index Scripts exhibit.  
 
ALTER TABLE [dbo].[Employee] WITH NOCHECK ADDCONSTRAINT [pk_Employee] PRIMARY KEY CLUSTERED([EmployeeID])WITH FILLFACTOR = 90 
GO 
ALTER TABLE [dbo].[EmployeeDemographics] WITH NOCHECK ADDCONSTRAINT [dbo].[EmployeeDemographics] PRIMARY KEY CLUSTERED([EmployeeID])WITH FILLFACTOR = 90 
GO 
You want to conserve disk space and minimize the number of times that expansion of the database files needs to occur. All varchar columns are 50 percent full.  
Which two parameters should you specify for the CREATE DATABASE statement? (Each correct answer presents part of the solution. Choose two) 
', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (29, 1, N'29 You are a database developer for your company''s SQL Server 2000 database. This database contains a table named Products and a table named Companies. You want to insert new product information from a linked server into the Products table. The Products table has a FOREIGN KEY constraint that references the Companies table. An UPDATE trigger is defined on the Products table.  

You want to load the data as quickly as possible. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (30, 1, N'You are the database developer for your company''s Accounting database. The database contains a table named Employees. Tom is a member of the accounting department. Tom''s database user account has been denied SELECT permissions on the Salary and BonusPercentage columns of the Employees table. Tom has been granted SELECT permissions on all other columns in the table. Tom now requires access to all the data in the Employees table.  
What should you do? ', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (31, 1, N'You are a database developer for a toy manufacturer. Each employee of the company is assigned to either
an executive, administrative, or labor position. The home page of the company intranet displays company
news that is customized for each position type. When an employee logs on to the company intranet, the
home page identifies the employee’s position type and displays the appropriate company news.
Company news is stored in a table named News, which is located in the corporate database. The script
that was used to create the News table is shown in the exhibit.
CREATE TABLE News
(
NewsID int NOT NULL,
NewsText varchar (8000) NOT NULL,
EmployeePositionType char (15) NOT NULL,
DisplayUntil datetime NOT NULL,
DateAdded datetime NOT NULL DEFAULT (getdate( )),
CONSTRAINT PK_News PRIMARY KEY (NewsID)
)
Users of the intranet need to view data in the News table, but do not need to insert, update, or delete data
in the table. You need to deliver only the appropriate data to the intranet, based on the employee’s
position type.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (32, 1, N'You are a database developer for a company that produces an online telephone directory. A table named
PhoneNumbers is shown in the exhibit.
After loading 100,000 names into the table, you create indexes by using the following script:
ALTER TABLE [dbo]. [PhoneNumbers] WITH NOCHECK ADD
CONSTRAINT[PK_PhoneNumbers]PRIMARY KEY CLUSTERED (
[FirstName],
[LastName],
) ON [PRIMARY]
GO
CREATE UNIQUE INDEX
[IX_PhoneNumbers] ON [dbo].[PhoneNumbers](
[PhoneNumberID]
) ON [PRIMARY]
GO
You are testing the performance of the database. You notice that queries such as the following take a long
time to execute:
Return all names and phone numbers for persons who live in a certain city and whose last name begins
with ‘W’
How should you improve the processing performance of these types of queries? (Each correct answer
presents part of the solution. Choose two.)', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (33, 1, N'You are a database developer for an insurance company. You are tuning the performance of queries in
SQL Query Analyzer. In the query pane, you create the following query:
SELECT P.PolicyNumber, P.IssueState, AP.Agent
FROM Policy AS P JOIN AgentPolicy AS AP
ON (P.PolicyNumber = AP.PolicyNumber)
WHERE IssueState = ‘IL’
AND PolicyDate BETWEEN ‘1/1/2000’ AND ‘3/1/2000’
AND FaceAmount > 1000000
You choose “Display estimated execution plan” from the query menu and execute the query. The query
execution plan that is generated is shown in the estimated execution plan exhibit.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (35, 1, N'You are a database developer for a hospital. You are designing a SQL Server 2000 database that will
contain physician and patient information. This database will contain a table named Physicians and a
table named Patients.
Physicians treat multiple patients. Patients have a primary physician and usually have a secondary
physician. The primary physician must be identified as the primary physician. The Patients table will
contain no more than 2 million rows.
You want to increase I/O performance when data is selected from the tables. The database should be
normalized to the third normal form.
Which script should you use to create the tables?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (62, 1, N'You are a database developer for a sales organization. Your database has a table named Sales that
contains summary information regarding the sales orders from salespeople. The sales manager asks you
to create a report of the salespeople who had the 20 highest total sales.
Which query should you use to accomplish this?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (36, 1, N'You are the database developer for your company’s SQL Server 2000 database. This database contains a
table named Invoices. You are a member of the db_owner role.
Eric, a member of the HR database role, created the Trey_Research_UpdateInvoices trigger on the
Invoices table. Eric is out of the office, and the trigger is no longer needed. You execute the following
statement in the Sales database to drop the trigger:
DROP TRIGGER Trey_Research_UpdateInvoices
You receive the following error message:
Cannot drop the trigger ‘Trey_Research_UpdateInvoices’, because it does not
exist in the system catalog.
What should you do before you can drop the trigger?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (38, 1, N'You have designed the database for a web site that is used to purchase concert tickets. During a ticket
purchase, a buyer views a list of available tickets, decides whether to buy the tickets, and then attempts to
purchase the tickets. This list of available tickets is retrieved in a cursor.
For popular concerts, thousands of buyers might attempt to purchase tickets at the same time. Because of
the potentially high number of buyers at any one time, you must allow the highest possible level of
concurrent access to the data.
How should you design the cursor?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (39, 1, N'You are a database developer for a company that conducts telephone surveys of consumer music
preferences. As the survey responses are received from the survey participants, they are inserted into a
table named SurveyData. After all of the responses to a survey are received, summaries of the results are
produced.
You have been asked to create a summary by sampling every fifth row of responses for a survey. You
need to produce the summary as quickly as possible.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (40, 1, N'You are a database developer for a lumber company. You are performing a one-time migration from a
flat-file database to SQL Server 2000. You export the flat-file database to a text file in comma-delimited
format. The text file is shown in the Import file exhibit button.
1111, ‘*4 Interior’, 4, ‘Interior Lumber’, 1.12
1112, ‘2*4 Exterior’, 5, ‘Exterior Lumbar’, 1.87
2001, ‘16d galvanized’,2, ‘Bulk Nails’, 2.02
2221, ‘8d Finishing brads’,3, ‘Nails’, 0.01
You need to import this file into SQL Server tables named Product and Category. The product and
category tables are shown in the product and Category Tables exhibit.

You want to import the data using the least amount of administrative effort. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (42, 1, N'You are a database developer for a database named Accounts at Woodgrove Bank. A developer is
creating a multi-tier application for the bank. Bank employees will use the application to manage
customer accounts. The developer needs to retrieve customer names from the accounts database to
populate a drop-down list box in the application. A user of the application will use the list box to locate a
customer account.
The database contains more than 50,000 customer accounts. Therefore, the developer wants to retrieve
only 25 rows as the user scrolls through the list box. The most current list of customers must be available
to the application at all times.
You need to recommend a strategy for the developer to use when implementing the drop-down list box.
What should you recommend?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (43, 1, N'You are a database developer for Litware, Inc. You are restructuring the company’s sales database. The
database contains customer information in a table named Customers. This table includes a character
field named Country that contains the name of the country in which the customer is located.
You have created a new table named Country. The scripts that were used to create the Customers and
Country tables are shown in the exhibit.
CREATE TABLE dbo.Country
(
CountryID int IDENTITY(1,1) NOT NULL,
CountryName char(20) NOT NULL,
CONSTRAINT PK_Country PRIMARY KEY CLUSTERED (CountryID)
)
CREATE TABLE dbo.Customers
(
CustomerID int NOT NULL,
CustomerName char(30) NOT NULL,
Country char(20) NULL,
CONSTRAINT PK_Customers PRIMARY KEY CLUSTERED (CustomerID)
)
You must move the country information from the Customers table into the new Country tables as quickly
as possible.
Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (44, 1, N'You are a database developer for Contoso, Ltd. The company has a database named HumanResources
that contains information about all employees and office locations. The database also contains
information about potential employees and office locations. The tables that contain this information are
shown in the exhibit.
Current employees are assigned to a location, and current locations have one or more employees assigned
to them. Potential employees are not assigned to a location, and potential office locations do not have any
employees assigned to them.
You need to create a report to display all current and potential employees and office locations. The report
should list each current and potential location, followed by any employees who have been assigned to that
location. Potential employees should be listed together.
Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (56, 1, N'You are designing a database for a web-based ticket reservation application. There might be 500 or more
tickets available for any single event. Most users of the application will view fewer than 50 of the
available tickets before purchasing tickets.
However, it must be possible for a user to view the entire list of available tickets. As the user scrolls
through the list, the list should be updated to reflect that tickets have been sold to other users. The user
should be able to select tickets from the list and purchase the tickets.
You need to design a way for the user to view and purchase available tickets. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (57, 1, N'You are a database consultant. You have been hired by a local dog breeder to develop a database. This
database will be used to store information about the breeder’s dogs. You create a table named Dogs by
using the following script:
CREATE TABLE[dbo].[Dogs]
(
[DogID] [int] NOT NULL,
[BreedID] [int] NOT NULL,
[DateofBirth] [datetime] NOT NULL,
[WeightAtBirth] [decimal] (5, 2) NOT NULL,
[NumberOfSiblings] [int] NULL,
[MotherID] [int] NOT NULL,
[FatherID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dogs] WITH NOCHECK ADD
CONSTRAINT [PK_Dogs]PRIMARY KEY CLUSTERED
(
[DogID]
) ON [PRIMARY]
GO
You must ensure that each dog has a valid value for the MotherID and FatherID columns. You want to
enforce this rule while minimizing disk I/O.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (58, 1, N'You are the database developer for a company that provides consulting service. The company maintains
data about its employees in a table named Employee. The script that was used to create the Employee
table is shown in the exhibit.
CREATE TABLE Employee
(
EmployeeID int NOT NULL;
EmpType char (1) NOT NULL,
EmployeeName char (50) NOT NULL,
Address char (50) NULL,
Phone char (20) NULL,
CONSTRAINT PK_Employee PRMARY KEY (Employee ID)
)
The EmpType column in this table is used to identify employees as executive, administrative, or
consultants. You need to ensure that the administrative employees can add, update, or delete data for
non-executive employees only.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (59, 1, N'You are a database developer for an electric utility company. When customers fail to pay the balance on
a billing statement before the statement due date, the balance of the billing statement needs to be
increased by 1 percent each day until the balance is paid. The company needs to track the number of
overdue billing statements. You create a stored procedure to update the balances and to report the
number of billing statements that are overdue. The stored procedure is shown in the exhibit.
Each time the stored procedure executes without error, it reports that zero billing statements are
overdue. However, you observe that balances are being updated by the procedure.
What should you do to correct the problem?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (60, 1, N'You are a database developer for an online electronics company. The company’s product catalog is
contained in a table named Products. The Products table is frequently accessed during normal business
hours. Modifications to the Products table are written to a table named PendingProductUpdate. These
tables are shown in the exhibit.
The PendingProductUpdate table will be used to update the Products table after business hours. The
database server runs SQL Server 2000 and is set to 8.0 compatibility mode.
You need to create a script that will be used to update the products table. Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (61, 1, N'You are the database developer for a sporting goods company that exports products to customers
worldwide. The company stores its sales information in a database named Sales. Customer names are
stored in a table named Customers in this database. The script that was used to create this table is shown
in the exhibit.
CREATE TABLE Customers
(
CustomerID int NOT NULL,
CustomerName varchar(30) NOT NULL,
ContactName varchar(30) NULL,
Phone varchar(20) NULL,
Country varchar(30) NOT NULL,
CONSTRAINT PK_Customers PRIMARY KEY (CustomerID)
)
There are usually only one or two customers per country. However, some countries have as many as 20
customers. Your company’s marketing department wants to target its advertising to countries that have
more than 10 customers.
You need to create a list of these countries for the marketing department. Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (63, 1, N'You are a database developer for a travel agency. A table named FlightTimes in the Airlines database
contains flight information for all airlines. The travel agency uses an intranet-based application to
manage travel reservations. This application retrieves flight information for each airline from the
FlightTimes table. Your company primarily works with one particular airline. In the Airlines database,
the unique identifier for this airline is 101.
The application must be able to request flight times without having to specify a value for the airline. The
application should be required to specify a value for the airline only if a different airline’s flight times are
needed.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (64, 1, N'You are a database developer for Wingtip Toys. You have created an order entry database that includes
two tables, as shown in the exhibit.
Users enter orders into an entry application. When a new order is entered, the data is saved to the Order
and LineItem tables in the order entry database.

You must ensure that the entire order is saved successfully. Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (65, 1, N'You are a database developer for a vacuum sales company. The company has a database named Sales
that contains tables named VacuumSales and Employee. Sales information is stored in the VacuumSales
table. Employee information is stored in the Employee table. The Employee table has a bit column named
IsActive. This column indicates whether an employee is currently employed. The Employee table also has
a column named EmployeeID that uniquely identifies each employee. All sales entered into the
VacuumSales table must contain an employee ID of a currently employed employee.
How should you enforce this requirement?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (66, 1, N'You are a database developer for an online brokerage firm. The prices of the stocks owned by customers
are maintained in a SQL Server 2000 database.
To allow tracking of the stock price history, all updates of stock prices must be logged. To help correct
problems regarding price updates, any errors that occur during an update must also be logged. When
errors are logged, a message that identifies the stock producing the error must be returned to the client
application.
You must ensure that the appropriate conditions are logged and that the appropriate messages are
generated. Which procedure should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (67, 1, N'You are a database developer for a company that leases trucks. The company has created a web site that
customer can use to reserve trucks. You are designing the SQL server 2000 database to support the web
site.
New truck reservations are inserted into a table named Reservations. Customers who have reserved a
truck can return to the web site and update their reservation. When a reservation is updated, the entire
existing reservation must be copied to a table named History.
Occasionally, customers will save an existing reservation without actually changing any of the
information about the reservation. In this case, the existing reservation should not be copied to the
History table.
You need to develop a way to create the appropriate entries in the History table.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (68, 1, N'You are a database developer for a company that leases trucks. The company has created a web site that
customer can use to reserve trucks. You are designing the SQL server 2000 database to support the web
site.
New truck reservations are inserted into a table named Reservations. Customers who have reserved a
truck can return to the web site and update their reservation. When a reservation is updated, the entire
existing reservation must be copied to a table named History.
Occasionally, customers will save an existing reservation without actually changing any of the
information about the reservation. In this case, the existing reservation should not be copied to the
History table.
You need to develop a way to create the appropriate entries in the History table.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (69, 1, N'You are a database developer for Proseware, Inc. The company has a database that contains information
about companies located within specific postal codes. This information is contained in the company table
within this database. Currently, the database contains company data for five different postal codes. The
number of companies in a specific postal code currently ranges from 10 to 5,000. More companies and
postal codes will be added to the database over time.
You are creating a query to retrieve information from the database. You need to accommodate new data
by making only minimal changes to the database. The performance of your query must not be affected by
the number of companies returned.
You want to create a query that performs consistently and minimizes future maintenance. What should
you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (70, 1, N'You are a database developer for Woodgrove Bank. You are implementing a process that loads data into
a SQL Server 2000 database. As a part of this process, data is temporarily loaded into a table named
Staging. When the data load process is complete, the data is deleted from this table. You will never need
to recover this deleted data.
You need to ensure that the data from the Staging table is deleted as quickly as possible. What should
you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (71, 1, N'You are a database developer for an automobile dealership. You are designing a database to support a
web site that will be used for purchasing automobiles. A person purchasing an automobile from the web
site will be able to customize his or her order by selecting the model and color.
The manufacturer makes four different models of automobiles. The models can be ordered in any one of
five colors. A default color is assigned to each model.
The models are stored in a table named Models, and the colors are stored in a table named Colors. These
tables are shown in the exhibit.
You need to create a list of all possible model and color combinations. Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (72, 1, N'You are a database developer for Adventure Works. A large amount of data has been exported from a
human resources application to a text file. The format file that was used to export the human resources
data is shown in the Format File exhibit.
Format File
1 SQLINT 0 4 “,” 1 EmployeeID “”
2 SQLCHAR 0 50 “,” 2 Firstname SQL_Latin1_General_CP1_AS
3 SQLCHAR 0 50 “,” 3 Lastname SQL_Latin1_General_CP1_AS
4 SQLCHAR 0 10 “,” 4 SSN SQL_Latin1_General_CP1_AS
5 SQLDATETIME 0 8 “” 5 Hiredate “”
You need to import that data programmatically into a table named Employee. The Employee table is
shown in the exhibit table.
You need to run this import as quickly as possible. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (73, 1, N'You are a database developer for an insurance company. The company has a database named Policies.
You have designed stored procedures for this database that will use cursors to process large result sets.
Analysts who use the stored procedures report that there is a long initial delay before data is displayed to
them.
After the delay, performance is adequate. Only data analysts, who perform data analysis, use the Policies
database.
You want to improve the performance of the stored procedures. Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (74, 1, N'You are a database developer for a bookstore. You are designing a stored procedure to process XML
documents. You use the following script to create the stored procedure:
CREATE PROCEDURE spParseXML (@xmlDocument varchar(1000)) AS
DECLARE @docHandle int
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument
SELECT *
FROM OPENXML (@docHandle, ‘/ROOT/Category/Product’,2)
WITH (ProductID int,
CategoryID int,
CategoryName varchar (50),
[Description] varchar (50))
EXEC sp_xml_removedocument @docHandle
You execute this stored procedure and use an XML documents as the input document. The XML
document is shown in the XML Document exhibit.

XML Document
<ROOT>
<Category CategoryID= “1” CategoryName= “General Books”>
<Product ProductID=“10248” Description=“Cooking for
you”>
</Product>
</Category>
<Category CategoryID= “2” CategoryName= “Videos”>
<Product ProductID= “80248” Description= “7 Minute Abs”>
</Product>
</Category>
<Category CategoryID= “3” CategoryName= “Computer Books”>
<Product ProductID= “12345” Description= “Inside SQL
Server 2000”>
</Product>
<Product ProductID= “22345” Description= “Analysis
Services with SQL Server 2000”>
</Product>
</Category>
<ROOT>
You receive the output shown in the Output exhibit.
Output
ProductID CategoryID CategoryName Description
NULL NULL NULL NULL
NULL NULL NULL NULL
NULL NULL NULL NULL
NULL NULL NULL NULL
(4 row(s) affected)
You need to replace the body of the stored procedure. Which script should you use?
', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (75, 1, N'You are a database developer for Adventure Works. You are designing a script for the human resources
department that will report yearly wage information. There are three types of employee. Some employees
earn an hourly wage, some are salaried, and some are paid commission on each sale that they make. This
data is recorded in a table named Wages, which was created by using the following script:
CREATE TABLE Wages
(
emp_id tinyint identity,
hourly_wage decimal NULL,
salary decimal NULL,
commission decimal NULL,
num_sales tinyint NULL
)
An employee can have only on type of wage information. You must correctly report each employee’s
yearly wage information.
Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (76, 1, N'You are a database developer for an insurance company. The company''s regional offices transmit their
sales information to the company''s main office in XML documents. The XML documents are then stored
in a table named SalesXML, which is located in a SQL Server 2000 database. The data contained in the
XML documents includes the names of insurance agents, the names of insurance policy owners,
information about insurance policy beneficiaries, and other detailed information about the insurance
policies. You have created tables to store information extracted from the XML documents.
You need to extract this information from the XML documents and store it in the tables. What should
you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (77, 1, N'You are a database developer for an insurance company. You create a table named Insured, which will
contain information about persons covered by insurance policies. You use the script shown in the exhibit
to create this table.
CREATE TABLE dbo.Insured (
InsuredID int IDENTITY (1, 1) NOT NULL,
PolicyID int NOT NULL,
InsuredName char(30) NOT NULL,
InsuredBirthDate datetime NOT NULL,
CONSTRAINT PK_Insured PRIMARY KEY CLUSTERED
(
InsuredID
),
CONSTRAINT FK_Insured_Policy FOREIGN KEY
(
PolicyID
) REFERENCES dbo.Policy(
PolicyID
)
)
A person covered by an insurance policy is uniquely identified by his or her name and birth date. An
insurance policy can cover more than one person. A person cannot be covered more than once by the
same insurance policy.
You must ensure that the database correctly enforces the relationship between insurance policies and the
persons covered by insurance policies. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (79, 1, N'You are a database developer for an automobile dealership. The company stored its automobiles
inventory data in a SQL Server 2000 database. Many of the critical queries in the database join three
tables named Make, Model, and Manufacturer. These tables are updated infrequently.
You want to improve the response time of the critical queries. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (80, 1, N'You are a database developer for an insurance company. The company has one main office and 18
regional offices. Each office has one SQL Server 2000 database. The regional offices are connected to the
main office by a high-speed network.
The main office database is used to consolidate information from the regional office databases. The tables
in the main office database are partitioned horizontally. The regional office location is used as part of the
primary key for the main office database. You are designing the physical replication model.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (81, 1, N'You are a database developer for a clothing retailer. The company has a database named Sales. This
database contains a table named Inventory. The Inventory table contains the list of items for sale and the
quantity available for each of those items. When sales information is inserted into the database, this table
is updated. The stored procedure that updates the Inventory table is shown in the exhibit.
CREATE PROCEDURE UpdateInventory @IntID int
AS
BEGIN
DECLARE @Count int
BEGIN TRAN
SELECT @Count = Available
FROM Inventory WITH (HOLDLOCK)
WHERE InventoryID = @IntID
IF (@Count > 0)
UPDATE Inventory SET Available = @Count – 1
WHERE InventoryID = @IntID
COMMIT TRAN
END
When this procedure executes, the database server occasionally returns the following error message:
Transaction (Process ID 53) was deadlocked on {lock} resources with another
process and has been chosen as the deadlock victim. Rerun the transaction.
You need to prevent the error message from occurring while maintaining data integrity. What should
you do?
', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (82, 1, N'You are a database developer for Wide World Importers. The company tracks its order information in a
SQL Server 2000 database. The database includes two tables that contain order details. The tables are
named Order and LineItem. The script that was used to create these tables is shown in the exhibit.
CREATE TABLE dbo.Order
(
OrderID int NOT NULL,
CustomerID int NOT NULL,
OrderDate datetime NOT NULL,
CONSTRAINT DF_Order_OrderDate DEFAULT (getdate())FOR OrderDate,
CONSTRAINT PK_Order PRIMARY KEY CLUSTERED (OrderID)
)
CREATE TABLE dbo.LineITEM
(
ItemID int NOT NULL,
OrderID INT NOT NULL,
ProductID int NOT NULL,
Price money NOT NULL,
CONSTRAINT PK_LineITEM PRIMARY KEY CLUSTERED (ItemID),
CONSTRAINT FK_LineITEM_Order FOREIGN KEY (OrderID)
REFERENCES dbo.Order (OrderID)
)
The company''s auditors have discovered that every item that was ordered on June 1, 2000, was entered
with a price that was $10 more than its actual price. You need to correct the data in the database as
quickly as possible.
Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (83, 1, N'You are a database developer for a bookstore. Each month, you receive new supply information from
your vendors in the form of an XML document. The XML document is shown in the XML Document
exhibit.
XML Document
<ROOT>
<CategoryID= “2” CategoryName= “Videos”>
<Product ProductID= “80248” Description= “7 Minute Abs”>
</Product>
</Category>
<Category CategoryID= “3” CategoryName= “Computer Books”>
<Product ProductID= “12345” Description= “Inside SQL Server 2000”>
</Product>
</Category>
<Category CategoryID= “3” CategoryName= “Computer Books”>
<Product ProductID= “22345” Description= “Analysis Services with SQL
Server 2000”>
</Product>
</Category>
<ROOT>
You are designing a stored procedure to read the XML document and to insert the data into a table
named Products. The Products table is shown in the Products Table exhibit.

Which script should you use to create this stored procedure?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (84, 1, N'You are a database developer for Trey Research. You are designing a SQL Server 2000 database that will
be distributed with an application to numerous companies. You create several stored procedures in the
database that contain confidential information. You want to prevent the companies from viewing this
confidential information.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (100, 1, N'You are a database developer for Southridge Video. The company stores its sales information in an SQL
Server 2000 database. You are asked to delete order records from this database that are more than five
years old. To delete the records, you execute the following statement in SQL Query Analyzer:
DELETE FROM Orders WHERE OrderDate < (DATEADD (year, -5, getdate()))
You close SQL Query Analyzer after you receive the following message:
(29979 row(s) affected)
You examine the table and find that the old records are still in the table. The current connection
properties are shown in the exhibit.

What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (101, 1, N'You are a database developer for a telemarketing company. You are designing a database named
CustomerContacts. This database will be updated frequently. The database will be about 1 GB in size.
You want to achieve the best possible performance for the database. You have 5 GB of free space on
drive C.
Which script should you use to create the database?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (102, 1, N'You are a database developer for Woodgrove Bank. The company stores its sales data in a SQL Server
2000 database. You want to create an indexed view in this database. To accomplish his, you execute the
script shown in the exhibit.
Set NUMERIC_ROUNDABORT OFF
GO
CREATE VIEW Sales
AS
SELECT SUM(UnitPrice*Quantity*(1.00-Discount))AS Revenue,
OrderDate, ProductID, COUNT_BIG(*) AS COUNT
FROM dbo.OrderDetails AS OD JOIN dbo.Orders AS O
ON OD.OrderID = O.OrderID
GROUP BY O.OrderDate, OD.ProductID
GO
CREATE UNIQUE CLUSTERED INDEX IX_Sales ON Sales (OrderDate,
ProductID)
GO
The index creation fails, and you receive an error message. You want to eliminate the error message and
create the index.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (103, 1, N'You are a database developer for your company''s SQL Server 2000 database. Another database
developer named Andrea needs to be able to alter several existing views in the database. However, you
want to prevent her form viewing or changing any of the data in the tables. Currently, Andrea belongs
only to the Public database role.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (104, 1, N'You are a database developer for a rapidly growing company. The company is expanding into new sales
regions each month. As each new sales region is added, one or more sales associates are assigned to the
new region. Sales data is inserted into a table named RegionSales, which is located in the Corporate
database. The RegionSales table is shown in the exhibit.
Each sales associate should be able to view and modify only the information in the RegionSales table that
pertains to his or her regions. It must be as easy as possible to extend the solution as new regions and
sales associates are added.', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (105, 1, N'You are a database developer for a toy company. Another developer, Marie, has created a table named
ToySales. Neither you nor Marie is a member of the sysadmin fixed server role, but you are both
members of the db_owner database role. The ToySales table stores the sales information for all
departments in the company. This table is shown in the exhibit.
You have created a view under your database login named vwDollSales to display only the information
from the ToySales table that pertains to sales of dolls. Employees in the dolls department should be given
full access to the data. You have also created a view named vwActionFigureSales to display only the
information that pertains to sales of action figures. Employees in the action figures department should be
given full access each other’s data. The two departments currently have no access to the data.
Employees in the data department are associated with the Doll database role. Employees in the action
figures department are associated with the ActionFigure database role.
You must ensure that the two departments can view only their own data. Which three actions should you
take? (Each correct answer presents part of the solution. Choose three)', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (106, 1, N'You are a database developer for your company''s SQL Server 2000 database. The database is installed
on a Microsoft Windows 2000 Server computer. The database is in the default configuration. All tables in
the database have at least one index. SQL Server is the only application running on the server.
The database activity peaks during the day, when sales representatives enter and update sales
transactions. Batch reporting is performed after business hours. The sales representatives report slow
updates and inserts.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (107, 1, N'You are a database developer for a shipping company. You have a SQL Server 2000 database that stores
order information. The database contains tables named Order and OrderDetails. The database resides on
a computer that has four 9-GB disk drives available for data storage. The computer has two disk
controllers. Each disk controller controls two of the drives. The Order and OrderDetail tables are often
joined in queries.
You need to tune the performance of the database. What should you do? (Each correct answer presents
part of the solution. Choose two.)', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (109, 1, N'You are the developer of a database named Inventory. You have a list of reports that you must create.
These reports will be run at the same time.
You write queries to create each report. Based on the queries, you design and create the indexes for the
database tables.
You want to ensure that you have created useful indexes. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (111, 1, N'You are a database developer for Wide World Importers. You are creating a table named Orders for the
company’s SQL Server 2000 database. Each order contains an OrderID, an OrderDate, a CustomerID, a
ShipperID, and a ShipDate.
Customer services representatives who take the orders must enter the OrderDate, CustomerID, and
ShipperID when the order is taken. The OrderID must be generated automatically by the database and
must be unique. Orders can be taken from existing customers only. Shippers can be selected only from an
existing set of shippers. After the customer service representatives complete the order, the order is sent to
the shipping department for final processing. The shipping department enters the ship date when the
order is shipped.
Which script should you use to create the Orders table?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (113, 1, N'You are designing your company''s Sales database. The database will be used by three custom
applications. Users who require access to the database are currently members of Microsoft Windows
2000 groups. Users were placed in the Windows 2000 groups according to their database access
requirements. The custom applications will connect to the sales database through the sales database
through application roles that exist for each application. Each application role was assigned a password.
All users should have access to the sales database only through the custom applications. No permissions
have been granted in the database.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (108, 1, N'You are the database developer for a brokerage firm. The database contains a table named Trades. The
script that was used to create this table is shown in the Script for Trades Table exhibit.
CREATE TABLE Trades
(
TradeID int IDENTITY(1,1)PRIMARY KEY NONCLUSTERED NOT NULL,
TradeDate datetime NULL,
SettlementDate datetime NULL,
Units decimal(18, 4) NULL,
Symbol char(5) NULL,
ClientID int NULL,
BrokerID int NULL
)
GO
CREATE CLUSTERED INDEX c_symbol ON Trades (Symbol)
The Trades table has frequent inserts and updates during the day. Reports are run against the table each
night. You execute the following statement in the SQL Query Analyzer:
DBCC SHOWCONTIG (Trades)
The output for the statement is shown in the DBCC Statement Output exhibit.
DBCC Statement Output
DBCC SHOWCONTIG scanning ‘Trades’ table. . . . .
Table: ‘Trades’(1621580815); index ID:1, database ID:12
Table level scan performed.
-Pages Scanned-----------------------------------------:104
-Extents Scanned---------------------------------------:16
-Extent Switches----------------------------------------:24
-Avg. Pages per Extent-------------------------------:6.5
-Scan Density[Best Count:Actual Count]-----------:52.00%[13:25]
-Logical Scan Fragmentation-------------------------:7.69%
-Extent Scan Fragmentation---------------------------:43.75%
-Avg. Bytes Free per page-----------------------------:460.1
-Avg. Page Density (full)------------------------------:94.32%
DBCC execution completed. If DBCC printed error messages, contact
your system
You want to ensure optional performance for the insert and select operations on the Trades table. What
should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (110, 1, N'You are a database developer for your company''s SQL server 2000 database. You use the following
script to create a view named Employee in the database:
CREATE VIEW Employee AS
SELECT P.SSN, P.LastName, P.FirstName, P.Address, P.City, P.State,
P.Birthdate, E.EmployeeID, E.Department, E.Salary
FROM Person AS P JOIN Employees AS E ON (P.SSN = E.SSN)
The view will be used by an application that inserts records in both the Person and Employees tables. The
script that was used to create these tables is shown in the exhibit.
CREATE TABLE Person
(
SSN char(11) NOT NULL PRIMARY KEY
LastName varchar (50) NOT NULL,
FirstName varchar (50) NOT NULL,
Address varchar (100) NOT NULL,
City varchar (50) NOT NULL,
State char (2) NOT NULL,
Birthdate datetime NOT NULL
)
GO
CREATE TABLE Employees
(
EmployeeID int NOT NULL PRIMARY KEY,
SSN char (11) UNIQUE NOT NULL,
Department varchar (10) NOT NULL,
Salary money NOT NULL,
CONSTRAINT FKEmpPER FOREIGN KEY (SSN)REFERENCES Person (SSN)
)
You want to enable the application to issue INSERT statements against the view. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (112, 1, N'You are a database developer for Lucerne Publishing. The company stores its sales data in a SQL Server
2000 database. This database contains a table named Orders. There is currently a clustered index on the
table, which is generated by using a customer’s name and the current date.
The orders table currently contains 750,000 rows, and the number of rows increased by 5 percent each
week. The company plans to launch a promotion next week that will increase the volume of inserts to the
Orders table by 50 percent.
You want to optimize inserts to the Orders table during the promotion. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (114, 1, N'You are a database developer for your company''s database named Insurance. You execute the following
script in SQL Query Analyzer to retrieve agent and policy information:
SELECT A.LastName, A.FirstName, A.CompanyName, P.PolicyNumber
FROM Policy AS P JOIN AgentPolicy AS AP
ON (P.PolicyNumber = AP.PolicyNumber)
JOIN Agents AS A ON (A.AgentID= AP.AgentID)
The query execution plan that is generated is shown in the Query Execution Plan exhibit:

The information received when you move the pointer over the Table Scan icon is shown in the Table Scan
Information exhibit:
You want to improve the performance of this query. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (115, 1, N'You are a database developer for Wingtip Toys. The company stores its sales information in a SQL
Server 2000 database. This database contains a table named Orders. You want to move old data from the
orders table to an archive table. Before implementing this process, you want to identify how the query
optimizer will process the INSERT statement.
You execute the following script in SQL Query Analyzer:
SET SHOWPLAN_TEXT ON
GO
CREATE TABLE Archived_Orders_1995_1999
(
OrderID int,
CustomerID char (5),
EmployeeID int,
OrderDate datetime,
ShippedDate datetime
)
INSERT INTO Archived_Orders_1995_1999
SELECT OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate
FROM SalesOrders
WHERE ShippedDate < DATEADD (year, -1, getdate())
You receive the following error message:
Invalid object name ‘Archived_Orders_1995_1999’.
What should you do to resolve the problem?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (116, 1, N'You are a database developer for Wingtip Toys. The company stores its sales information in a SQL
Server 2000 database. This database contains a table named Orders. You want to move old data from the
orders table to an archive table. Before implementing this process, you want to identify how the query
optimizer will process the INSERT statement.
You execute the following script in SQL Query Analyzer:
SET SHOWPLAN_TEXT ON
GO
CREATE TABLE Archived_Orders_1995_1999
(
OrderID int,
CustomerID char (5),
EmployeeID int,
OrderDate datetime,
ShippedDate datetime
)
INSERT INTO Archived_Orders_1995_1999
SELECT OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate
FROM SalesOrders
WHERE ShippedDate < DATEADD (year, -1, getdate())
You receive the following error message:
Invalid object name ‘Archived_Orders_1995_1999’.
What should you do to resolve the problem?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (117, 1, N'You are a database developer for Woodgrove Bank. The company has a database that contains human
resources information. You are designing transactions to support data entry into this database. Scripts
for two of the transactions that you designed are shown in the exhibit.
Transaction 1 Transaction 2
BEGIN TRANSACTION
UPDATE Customer
SET CustomerName=@Name
WHERE
CustomerID=@CustID
UPDATE CustomerPhone
SET PhoneNumber=@Phone
WHERE
CustomerID=@CustID
AND PhoneType=@PType
COMMIT TRANSACTION
BEGIN TRANSACTION
UPDATE CustomerPhone SET
PhoneNumber=@Phone
WHERE CustomerID=@CustID
AND PhoneType = @PType
UPDATE CustomerAddress SET Street =
@Street
WHERE CustomerID=@CustID
AND AddressType=@AType
UPDATE Customer SET CustomerName =
@Name
WHERE CustomerID = @CustID
COMMIT TRANSACTION
While testing these scripts, you discover that the database server occasionally detects a deadlock
condition. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (118, 1, N'You are a database developer for a company that compiles statistics for baseball teams. These statistics
are stored in a database named Statistics. The Players of each team are entered in a table named Rosters
in the Statistics database. The script that was used to create the Rosters table is shown in the exhibit.
CREATE TABLE Rosters
(
RosterID int NOT NULL,
TeamID int NOT NULL,
FirstName char(20) NOT NULL,
LastName char(20) NOT NULL,
CONSTRAINT PK_Rosters PRIMARY KEY (RosterID),
CONSTRAINT FK_TeamRoster FOREIGN KEY (TeamID)
REFERENCES Team (TeamID)
)
Each baseball team can have a maximum of 24 players on the roster at any one time. You need to ensure
that the number if players on the team never exceeds the maximum.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (119, 1, N'You are a database developer for an investment brokerage company. The company has a database
named Stocks that contains tables named CurrentPrice and PastPrice. The current prices of investment
stocks are stored in the CurrentPrice table. Previous stock prices are stored in the PastPrice table. These
tables are shown in the CurrentPrice and PastPrice Tables exhibit.
A sample of the data contained in thee tables is shown in the Sample Data exhibit.

All of the rows in the CurrentPrice table are updated at the end of the business day, even if the price of
the stock has not changed since the previous update. If the stock price has changed since the previous
update, then a row must also be inserted into the PastPrice table.
You need to design a way for the database to execute this action automatically. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (120, 1, N'You are a database developer for an investment brokerage company. The company has a database
named Stocks that contains tables named CurrentPrice and PastPrice. The current prices of investment
stocks are stored in the CurrentPrice table. Previous stock prices are stored in the PastPrice table. These
tables are shown in the CurrentPrice and PastPrice Tables exhibit.
A sample of the data contained in thee tables is shown in the Sample Data exhibit.

All of the rows in the CurrentPrice table are updated at the end of the business day, even if the price of
the stock has not changed since the previous update. If the stock price has changed since the previous
update, then a row must also be inserted into the PastPrice table.
You need to design a way for the database to execute this action automatically. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (121, 1, N'You are a database developer for Wingtip Toys. The company tracks its inventory in a SQL Server 2000
database. You have several queries and stored procedures that are executed on the database indexes to
support the queries have been created.
As the number of catalogued inventory items has increased, the execution time of some of the stored
procedures has increased significantly. Other queries and procedures that access the same information in
the database have not experienced an increase in execution time.
You must restore the performance of the slow-running stored procedures to their original execution
times. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (122, 1, N'You are a database developer for a marketing firm. You have designed a quarterly sales view. This view
joins several tables and calculates aggregate information. You create a unique index on the view. You
want to provide a parameterized query to access the data contained in your indexed view. The output will
be used in other SELECT lists.
How should you accomplish this goal?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (123, 1, N'You are designing for a large grocery store chain. The partial database schema is shown in the Partial
Database Schema Exhibit.
The script that was used to create the Customers table is shown in the Script for Customers Table
Exhibit.
The store managers want to track customer demographics so they can target advertisements and coupon
promotions to customers. These advertisements and promotions will be based on the past purchases of
existing customers. The advertisements and promotions will target buying patterns by one or more of
these demographics: gender, age, postal code, and region. Most of the promotions will be based on gender
and age. Queries will be used to retrieve the customer demographics information.
You want the query response time to be as fast as possible. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (124, 1, N'You are a database developer for Lucerne Publishing. You are designing a human resources database
that contains tables named Employee and Salary.
You interview users and discover the following information:
.. The Employee table will often be joined with the Salary table on the EmployeeID column.
.. Individual records in the Employee table will be selected by social security number (SSN).
.. A list of employees will be created. The list will be produced in alphabetical order by last name,
and then followed by first name.
You need to design the indexes for the tables while optimizing the performance of the indexes.
Which three scripts should you use? (Each correct answer presents part of the solution. Choose three.)', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (125, 1, N'You are a database developer for a large electric utility company. The company is divided into many
departments, and each employee of the company is assigned to a department. You create a table named
Employee that contains information about all employees, including the department to which they belong.
The script that was used to create the Employee table is shown in the exhibit.
CREATE TABLE Employee
(
EmployeeID uniqueidentifier NOT NULL,
FirstName char (20) NOT NULL,
LastName char (25) NOT NULL,
DepartmentID int NOT NULL,
Salary money NOT NULL,
CONSTRAINT PK_Employee PRIMARY KEY (EmployeeID)
)
Each department manager should be able to view only the information in the Employee table that
pertains to his or her department. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (126, 1, N'You are a database developer for your company''s Human Resources database. This database includes a
table named Employee that contains confidential ID numbers and salaries. The table also includes nonconfidential
information, such as employee names and addresses.
You need to make all the non-confidential information in the Employee table available in XML format to
an external application. The external application should be able to specify the exact format of the XML
data. You also need to hide the existence of the confidential information from the external application.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (127, 1, N'You are a database developer for Tailspin Toys. You have two SQL Server 2000 computers named
CORP1 and CORP2. Both of these computers use SQL Server Authentication. CORP2 stores data that
has been archived from CORP1. At the end of each month, data is removed from CORP1 and
transferred to CORP2.
You are designing quarterly reports that will include data from both CORP1 and CORP2. You want the
distributed queries to execute as quickly as possible.
Which three actions should you take? (Each correct answer presents part of the solution. Choose Three.)', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (129, 1, N'You are a database developer for Proseware, Inc. You are implementing a database for the database of
the company’s human resources department. This database will store employee information. You create
a table named EmployeeContact that contains the following columns:
HomePhone, BusinessPhone, FaxNumber, and EmailAddress
You must ensure that each record contains a value for either the HomePhone column or the
BusinessPhone column. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (130, 1, N'You are designing an inventory and shipping database for Contoso, Ltd. You create the logical database
design shown in the exhibit.
You must ensure that the referential integrity of the database is maintained. Which three types of
constraints should you apply to your design? (Each correct answer presents part of the solution. Choose
all that apply.)', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (131, 1, N'You are a database developer for a SQL Server 2000 database. You have created a stored procedure to
produce the EndOfMonthSales report for the sales department.
You issue the following statement to assign permissions to the EndOfMonthSales report:
GRANT EXECUTE ON EndOfMonthSales TO SalesDept
Andrea has just joined the sales department and is a member of the SalesDept role. Andrea is also a
member of the Marketing role, which has been denied access to the EndOfMonthSales report.
Andrea is unable to execute the stored procedure. No other sales department employees are experiencing
this problem.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (132, 1, N'You are a database developer for a large travel company. You have been granted CREATE VIEW
permissions in the Reservations database. Your co-worker, Eric, has been granted CREATE TABLE
permissions. Neither of you have been given database owner or system permissions, nor have you been
added to any fixed server roles.
Eric has created a table named Traveler that holds information about your company''s customers. This
table is shown in the exhibit. .
Travel agents will connect to the database and view the information stored in this table. The database
logins for the travel agents have been assigned to the Agent database role.
You want the travel agents to be able to view the name and address information from the Traveler table
in two columns instead of six. One column should contain the traveler name and the other column should
contain the address.
Which three actions should you take? (Each correct answer presents part of the solution. Choose three)', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (133, 1, N'You are a database developer for a food wholesaler. Each week, the company fulfills orders from various
customers. Normally, each customer orders the same quantity of certain items each week. Occasionally,
the quantity of an item that a customer orders is significantly less than the customer’s usual quantity.
The information about each order is stored in a table named Invoice, which is located in a SQL Server
2000 database. The script that was used to create this table is shown in the exhibit.
EXHIBIT
CREATE TABLE Invoice
(
InvoiceID int NOT NULL,
InvoiceNumber char(10) NOT NULL,
CustomerName char(30) NOT NULL,
InvoiceAmount money NOT NULL DEFAULT (0),
CONSTRAINT PK_Invoice PRIMARY KEY (InvoiceID)
)
You want to identify any pattern to these unusual orders. To do this, you need to produce a list of the
invoices for each customer that are for a lesser amount than average invoice amount for that customer.
Which query should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (134, 1, N'You are a database developer for Contoso, Ltd. The company stores its sales data in a SQL Server 2000
database. The database contains a table named Customers, which has 500,000 rows. The script that was
used to create the Customers table is shown in the exhibit.
CREATE TABLE Customers
(
CustomerID int IDENTITY NOT NULL,
CompanyName varchar(40) NOT NULL,
ContactName varchar(30) NULL,
ContactTitle varchar(30) NULL,
Address varchar(60) NULL,
City varchar(15) NULL,
Region varchar(15) NULL,
PostalCode varchar(10) NULL,
Country varchar(15) NULL,
Phone varchar(24) NULL,
Fax varchar(24) NULL,
CONSTRAINT PK_Customers PRIMARY KEY CLUSTERED (CustomerID)
)
Many critical queries are executed against the table, which select customer records based on the City and
Region columns. Very few customers live in the same city as each other, but many live in same region as
each other.
How should you optimize the performance of these queries?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[q1] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (135, 1, N'You are a database developer for a SQL Server 2000 database. The database is in the default
configuration. The number of users accessing the database has increased from 100 to 1,000 in the last
month. Users inform you that they are receiving error messages frequently. The following is an example
of an error message that was received:
Transaction (Process ID 56) was deadlocked on [lock] resources with another
process and has been chosen as the deadlock victim. Rerun the transaction.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (1, 1, N'You are a database developer for A Datum Corporation. You are creating a database that will store
statistics for 15 different high school sports. This information will be used by 50 companies that publish
sports information on their web sites. Each company''s web site arranges and displays the statistics in a
different format.
You need to package the data for delivery to the companies. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (2, 1, N'You are a database developer for a mail order company. The company has two SQL Server 2000
computers named CORP1 and CORP2. CORP1 is the online transaction processing server. CORP2
stores historical sales data. CORP2 has been added as a linked server to CORP1.

The manager of the sales department asks you to create a list of customers who have purchased floppy
disks. This list will be generated each month for promotional mailings. Floppy disks are represented in
the database with a category ID of 21.
You must retrieve this information from a table named SalesHistory. This table is located in the Archive
database, which resides on CORP2. You need to execute this query from CORP1.
Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (3, 1, N'You are a database developer for Trey Research. You create two transactions to support the data entry
of employee information into the company''s database. One transaction inserts employee name and
address information into the database. This transaction is important. The other transaction inserts
employee demographics information into the database. This transaction is less important.
The database administrator has notified you that the database server occasionally encounters errors
during periods of high usage. Each time this occurs, the database server randomly terminates one of the
transactions.
You must ensure that when the database server terminates one of these transactions, it never terminates
the more important transaction. What should you do?
The database administrator has notified you that the database server occasionally encounters errors during periods of high usage. Each time this occurs, the database server randomly terminates one of the transactions. 
You must ensure that when the database server terminates one of these transactions, it never terminates the more important transaction. What should you do? 
', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (4, 1, N'You are a database developer for your company''s SQL Server 2000 online transaction processing
database. Many of the tables have 1 million or more rows. All tables have a clustered index. The heavily
accessed tables have at least one non-clustered index. Two RAID arrays on the database server will be
used to contain the data files. You want to place the tables and indexes to ensure optimal I/O
performance.
You create one filegroup on each RAID array. What should you do next?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (5, 1, N'You are a database developer for your company''s SQL Server 2000 database. You update several stored
procedures in the database that create new end-of-month reports for the sales department. The stored
procedures contain complex queries that retrieve data from three or more tables. All tables in the
database have at least one index.
Users have reported that the new end-of-month reports are running much slower than the previous
version of the reports. You want to improve the performance of the reports.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (6, 1, N'You are a database developer for wide world importers. You are creating a database that will store order
information. Orders will be entered in a client/server application. Each time a new order is entered, a
unique order number must be assigned. Order numbers must be assigned in ascending order. An average
of 10, 000 orders will be entered each day.
You create a new table named Orders and add an OrderNumber column to this table. What should you
do next?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (7, 1, N'You are a database developer for a technical training center. Currently, administrative employees keep
records of students, instructors, courses, and classroom assignments only on paper. The training center
wants to eliminate the use of paper to keep records by developing a database to record this information.
You design the tables for this database. Your design is shown in the exhibit.
You want to promote quick response times for queries and minimize redundant data. What should you do?

You want to promote quick response times for queries and minimize redundant data. What should you
do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (8, 1, N'You are designing a database that will contain customer orders. Customers will be able to order multiple products each time they place an order. You review the database design, which is shown in the exhibit.  
 
You want to promote quick response times for queries and minimize redundant data. What should you do? (Each correct answer presents part of the solution. Choose two.)', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (9, 1, N'You are the database developer for a publishing company. You create the following stored procedure to
report the year-to-date sales for a particular book title:
CREATE PROCEDURE get_sales_for_title
%title varchar(80), @ytd_sales int OUTPUT
AS
SELECT @ytd_sales = ytd_sales
FROM titles
WHERE title = @title
IF @@ROWCOUNT = 0
RETURN(-1)
ELSE
RETURN(0)
You are creating a script that will execute this stored procedure. If the stored procedure executes
successfully, it should report the year-to-date sales for the book title. If the stored procedure fails to
execute, it should report the following message:
“No Sales Found”
How should you create the script?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (10, 1, N'You are a database developer for a container manufacturing company. The containers produced by your
company are a number of different sizes and shapes. The tables that store the container information are
shown in the Size, Container, and Shape Tables exhibit.
---
A sample of the data stored in the tables is shown in the Sample Data exhibit.
--
Periodically, the dimensions of the containers change. Frequently, the database users require the volume
of a container. The volume of a container is calculated based on information in the shape and size tables.
You need to hide the details of the calculation so that the volume can be easily accessed in a SELECT
query with the rest of the container information. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (11, 1, N'You are a database developer for a hospital. There are four supply rooms on each floor of the hospital,
and the hospital has 26 floors. You are designing an inventory control database for disposable equipment.
Certain disposable items must be kept stored at all times. As each item is used, a barcode is scanned to
reduce the inventory count in the database. The supply manager should be paged as soon as a supply
room has less than the minimum quantity of an item.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (12, 1, N'You are the developer of a database that supports time reporting for your company. Usually there is an
average of five users accessing this database at one time, and query response times are less than one
second. However, on Friday afternoons and Monday mornings, when most employees enter their
timesheet data, the database usage increases to an average of 50 users at one time. During these times, the
query response times increase to an average of 15 to 20 seconds.
You need to find the source of the slow query response times and correct the problem. What should you
do?
You need to find the source of the slow query response times and correct the problem. What should you do? 
', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (13, 1, N'You are a database developer for an insurance company. The insurance company has a multi-tier
application that is used to enter data about its policies and the owners of the policies. The policy owner
information is stored in a table named Owners. The script that was used to create this table is shown in
the exhibit.
CREATE TABLE Owners
(
OwnerID int IDENTITY (1, 1) NOT NULL,
FirstName char(20) NULL,
LastName char(30) NULL,
BirthDate date NULL,
CONSTRAINT PK_Owners PRIMARY KEY (Owner ID)
)
When information about policy owners is entered, the owner’s birth date is not included; the database
needs to produce a customized error message that can be displayed by the data entry application. You
need to design a way for the database to validate that the birth date is supplied and to produce the error
message if it is not.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (14, 1, N'You are the database developer for a large brewery. Information about each of the brewery’s plants and
the equipment located at each plant is stored in a database named Equipment. The plant information is
stored in a table named Location, and the equipment information is stored in a table named Parts. The
scripts that were used to create these tables are shown in the Location and Parts Scripts exhibit.
CREATE TABLE Location
(
LocationID int NOT NULL,
LocationName char (30) NOT NULL UNIQUE,
CONSTRAINT PK_Location PRIMARY KEY (LocationID)
)
CREATE TABLE Parts
(
PartID int NOT NULL,
LocationID int NOT NULL,
PartName char (30) NOT NULL,
CONSTRAINT PK_Parts PRIMARY KEY (PartID),
CONSTRAINT FK_PartsLocation FOREIGN KEY (Location ID)
REFERENCES Location (LocationID)
)
The brewery is in the process of closing several existing plants and opening several new plants. When a
plant is closed, the information about the plant and all of the equipment at that plant must be deleted
from the database. You have created a stored procedure to perform this operation. The stored procedure
is shown in the Script for sp_DeleteLocation exhibit.
CREATE PROCEDURE sp_DeleteLocation @LocName char(30) AS
BEGIN
DECLARE @PartID int
DECLARE crs_Parts CURSOR FOR
SELECT p.PartID
FROM Parts AS p INNER JOIN Location AS 1
ON p.LocationID = @LocName
WHERE l.LocationName = @LocName
OPEN crs_Parts
FETCH NEXT FROM crs_Parts INTO @PartID
WHILE (@@FETCH_STATUS <> -1)
BEGIN
DELETE Parts WHERE CURRENT OF crs_Parts
FETCH NEXT FROM crs_Parts INTO @PartID
END
CLOSE crs_Parts
DEALLOCATE crs_Parts
DELETE Location WHERE LocationName = @LocName
END
This procedure is taking longer than expected to execute. You need to reduce the execution time of the
procedure.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (15, 1, N'You are a database developer for an insurance company. Information about the company''s insurance
policies is stored in a SQL Server 2000 database. You create a table named Policy for this database by
using the script shown in the exhibit.
CREATE TABLE Policy
(
PolicyNumber int NOT NULL DEFAULT (0),
InsuredLastName char (30) NOT NULL,
InsuredFirstName char (20) NOT NULL,
InsuredBirthDate datetime NOT NULL,
PolicyDate datetime NOT NULL,
FaceAmount money NOT NULL,
CONSTRAINT PK_Policy PRIMARY KEY (PolicyNumber)
)
Each time the company sells a new policy, the policy must be assigned a unique policy number. The
database must assign a new policy number when a new policy is entered.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (16, 1, N'You are a member of a database development team for a telecommunications company. Another
developer on the team, Marc, has created a table named Customers in the Corporate database. Because
the table contains confidential information, he has granted SELECT permissions on the table only to the
other members of your team.
You are developing an application that will allow employees in the marketing department to view some of
the information in the Customers table. These employees are all members of the Marketing database
role. To support this application, you create a view named vwCustomers on the Customers table. After
creating the view, you grant SELECT permissions on the view to the Marketing role.
When members of the Marketing role attempt to retrieve data from the view, they receive the following
error message:
SELECT permission denied on object ‘Customers’, database ‘Corporate’, owner
‘Marc’.
You must ensure that the members of the Marketing role can only use the vwCustomers view to access
the data in the Customers table. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (17, 1, N'You are designing your company''s SQL Server 2000 sales database, which will be accessed by a custom application. Customer service and marketing employees require SELECT, INSERT, and UPDATE permissions on all tables in the Sales database. In addition to using the custom application, the marketing employees will use Microsoft Excel to retrieve data from the sales database to create charts.  

Customer service employees belong to a Microsoft Windows 2000 group named CSR, and marketing employees belong to a Windows 2000 group named Marketing.  
You want the customer service employees to access the sales database only from within the custom application. You want to allow the marketing employees to use both the custom application and Excel to access the sales database. No permissions have been granted in the database.  
What should you do? 
', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (18, 1, N'You are a database developer for an online book retailer. Customers use the company''s web site to place orders for books. As orders are entered, they are inserted into a database named BookOrders. During a nightly batch process, the order information is transferred to a database named Reports.  
The Reports database includes a table named Order and a table named LineItem. The Order table contains basic information about the orders. The LineItem table contains information about the individual items in the orders. The Order and LineItem tables are shown in the exhibit.  
 
Customers must be able to use the company''s web site to view orders stored in the Reports database. Customers should be able to see only their own orders.  
Customers should not be able to modify the orders. The primary key values of the orders are not relevant to the customers and should not be visible. 
What should you do?
', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (19, 1, N'You are a database developer for a large travel company. Information about each of the company''s departments is stored in a table named Department. Data about each of the company''s travel agents and department managers is stored in a table named Employees. The SQLLogin column of the Employees table contains the database login for the travel agent or department manager. The Department and Employees table are shown in the exhibit. 
 
Each department manager has been added to the Managers database role. You need to allow members of this database role to view all of the data in the department table. Members of this role should be able to insert or update only the row that pertains to their department.  
You grant the Managers database role SELECT permissions on the Department table. What should you do next?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (20, 1, N'You are a database developer for your company''s database named Sales. The database contains a table
named Orders. The script that was used to create the table is shown in the Script Orders Table exhibit.
CREATE TABLE Orders
(
OrderID int NOT NULL,
CustomerID char (5) NOT NULL,
OrderDate datetime DEFAULT GETDATE ( ) NULL,
ShippedDate datetime NULL,
Freight money NULL,
ShipName varchar (40) NULL
)
GO
CREATE CLUSTERED INDEX IX_OrderID ON Orders (OrderID)
GO
CREATE NONCLUSTERED INDEX IX_CustomerID ON Orders (CustomerID)
An application will execute queries like the following to retrieve orders for a customer:
SELECT OrderID, CustomerID, OrderDate
FROM Orders WHERE CustomerID = ‘WHITC’
ORDER BY OrderDate DESC
The query execution plan that is generated is shown in the Query Execution Plan exhibit. .
Query Execution Plan

You want this query to execute as quickly as possible. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (21, 1, N'You are database developer for your company''s SQL Server 2000 database named Sales. The company has several custom web-based applications that retrieve data from the Sales database. Some of these applications use the EXECUTE statement to allow users to issue ad hoc queries. As the use of the Web-based applications increases, queries are taking longer to execute.  
You want to discover which applications are sending a high number of these queries to the database server. What should you do? ', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (22, 1, N'You are a database developer for a multinational corporation. The company has a centralized online transaction processing database located on a SQL Server 2000 computer. This database has a table named Sales, which contains consolidated sales information from the company''s offices.  
During the last year, more than 150,000 rows have been added to the Sales table. Users of the database report that performance during the course of the year has steadily decreased.  
You need to improve the performance of queries against the Sales table. In the SQL query analyzer, which script should you execute? ', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (23, 1, N'You are a database developer for your company''s SQL Server 2000 online transaction processing database. You have written several stored procedures that will produce critical sales reports. The stored procedures access existing tables, which are indexed.  
Before you put the stored procedures in the production environment, you want to ensure optimal performance of the new stored procedures. You also want to ensure that daily operations in the database are not adversely affected.  
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (24, 1, N'You are a database developer for an insurance company. You are informed that database operations, such as selects, inserts, and updates, are taking much longer than they were when the database was created a year ago. 

The previous developer added necessary indexes on the tables when the database was created. Since that time, additional tables and stored procedures have been added to the database. In addition, many of the queries are no longer used. 
You want to improve the response time of the database operations as quickly as possible. What should you do? 
', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (25, 1, N'You are a database developer for a sporting goods company. The company has one main office and many regional offices across the United States. A 56-Kbps frame relay network connects the offices. Each office has a SQL Server 2000 database that contains information about the company''s products. The main office SQL Server databases is used to process incremental updates to the regional office databases. Transactional replication is used to perform these updates.  

Each quarter, you create a new snapshot file. You use this snapshot file to replace the regional office databases with the latest product information. This snapshot file is now more than 800 MB in size. You need to apply the snapshot file to the regional office databases. You want to accomplish this by using the least amount of expense. 
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (26, 1, N'26 You are a database developer for your company''s SQL Server 2000 database. This database contains a table named Sales, which has 2 million rows. The Sales table contains sales information for all departments in the company. Each department is identified in the table by the DepartmentID column. Most queries against the table are used to find sales for a single department. 

You want to increase the I/O performance of these queries. However, you do not want to affect the applications that access the table.  
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (27, 1, N'You are a database developer for your company''s SQL Server 2000 database. You are deleting objects in the database that are no longer used. You are unable to drop the 1997Sales view. After investigation, you find that the view has the following characteristics:  

.	o There is a clustered index on the view 
.	o The sales database role has permissions on the view.  
.	o The view uses the WITH SCHEMABINDING option.  
.	o A schema-bound inline function references the view 
.	o An INSTEAD OF trigger is defined on the view 

What should you do before you can drop the view? 
', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (28, 1, N'You are a database developer for Proseware, Inc. You are creating a database named HumanResources for the company. This database will contain all employee records and demographics information. The company has 2,000 employees and experiences a yearly turnover rate of about 2 percent. When employees leave the company, all of their records must be retained for auditing purposes. Employee demographics information changes at a yearly rate of about 9 percent. You do not need to maintain a history of demographics changes.  
The schema for the human resources database is shown in the human resources schema exhibit, and the scripts that will be used to create the indexes are shown in the Index Scripts exhibit.  
 
ALTER TABLE [dbo].[Employee] WITH NOCHECK ADDCONSTRAINT [pk_Employee] PRIMARY KEY CLUSTERED([EmployeeID])WITH FILLFACTOR = 90 
GO 
ALTER TABLE [dbo].[EmployeeDemographics] WITH NOCHECK ADDCONSTRAINT [dbo].[EmployeeDemographics] PRIMARY KEY CLUSTERED([EmployeeID])WITH FILLFACTOR = 90 
GO 
You want to conserve disk space and minimize the number of times that expansion of the database files needs to occur. All varchar columns are 50 percent full.  
Which two parameters should you specify for the CREATE DATABASE statement? (Each correct answer presents part of the solution. Choose two) 
', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (29, 1, N'29 You are a database developer for your company''s SQL Server 2000 database. This database contains a table named Products and a table named Companies. You want to insert new product information from a linked server into the Products table. The Products table has a FOREIGN KEY constraint that references the Companies table. An UPDATE trigger is defined on the Products table.  

You want to load the data as quickly as possible. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (30, 1, N'You are the database developer for your company''s Accounting database. The database contains a table named Employees. Tom is a member of the accounting department. Tom''s database user account has been denied SELECT permissions on the Salary and BonusPercentage columns of the Employees table. Tom has been granted SELECT permissions on all other columns in the table. Tom now requires access to all the data in the Employees table.  
What should you do? ', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (31, 1, N'You are a database developer for a toy manufacturer. Each employee of the company is assigned to either
an executive, administrative, or labor position. The home page of the company intranet displays company
news that is customized for each position type. When an employee logs on to the company intranet, the
home page identifies the employee’s position type and displays the appropriate company news.
Company news is stored in a table named News, which is located in the corporate database. The script
that was used to create the News table is shown in the exhibit.
CREATE TABLE News
(
NewsID int NOT NULL,
NewsText varchar (8000) NOT NULL,
EmployeePositionType char (15) NOT NULL,
DisplayUntil datetime NOT NULL,
DateAdded datetime NOT NULL DEFAULT (getdate( )),
CONSTRAINT PK_News PRIMARY KEY (NewsID)
)
Users of the intranet need to view data in the News table, but do not need to insert, update, or delete data
in the table. You need to deliver only the appropriate data to the intranet, based on the employee’s
position type.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (32, 1, N'You are a database developer for a company that produces an online telephone directory. A table named
PhoneNumbers is shown in the exhibit.
After loading 100,000 names into the table, you create indexes by using the following script:
ALTER TABLE [dbo]. [PhoneNumbers] WITH NOCHECK ADD
CONSTRAINT[PK_PhoneNumbers]PRIMARY KEY CLUSTERED (
[FirstName],
[LastName],
) ON [PRIMARY]
GO
CREATE UNIQUE INDEX
[IX_PhoneNumbers] ON [dbo].[PhoneNumbers](
[PhoneNumberID]
) ON [PRIMARY]
GO
You are testing the performance of the database. You notice that queries such as the following take a long
time to execute:
Return all names and phone numbers for persons who live in a certain city and whose last name begins
with ‘W’
How should you improve the processing performance of these types of queries? (Each correct answer
presents part of the solution. Choose two.)', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (33, 1, N'You are a database developer for an insurance company. You are tuning the performance of queries in
SQL Query Analyzer. In the query pane, you create the following query:
SELECT P.PolicyNumber, P.IssueState, AP.Agent
FROM Policy AS P JOIN AgentPolicy AS AP
ON (P.PolicyNumber = AP.PolicyNumber)
WHERE IssueState = ‘IL’
AND PolicyDate BETWEEN ‘1/1/2000’ AND ‘3/1/2000’
AND FaceAmount > 1000000
You choose “Display estimated execution plan” from the query menu and execute the query. The query
execution plan that is generated is shown in the estimated execution plan exhibit.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (34, 1, N'You are a database developer for a SQL Server 2000 database. You are planning to add new indexes,
drop some indexes, and change other indexes to composite and covering indexes.
For documentation purposes, you must create a report that shows the indexes used by queries before and
after you make changes. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (35, 1, N'You are a database developer for a hospital. You are designing a SQL Server 2000 database that will
contain physician and patient information. This database will contain a table named Physicians and a
table named Patients.
Physicians treat multiple patients. Patients have a primary physician and usually have a secondary
physician. The primary physician must be identified as the primary physician. The Patients table will
contain no more than 2 million rows.
You want to increase I/O performance when data is selected from the tables. The database should be
normalized to the third normal form.
Which script should you use to create the tables?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (36, 1, N'You are the database developer for your company’s SQL Server 2000 database. This database contains a
table named Invoices. You are a member of the db_owner role.
Eric, a member of the HR database role, created the Trey_Research_UpdateInvoices trigger on the
Invoices table. Eric is out of the office, and the trigger is no longer needed. You execute the following
statement in the Sales database to drop the trigger:
DROP TRIGGER Trey_Research_UpdateInvoices
You receive the following error message:
Cannot drop the trigger ‘Trey_Research_UpdateInvoices’, because it does not
exist in the system catalog.
What should you do before you can drop the trigger?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (38, 1, N'You have designed the database for a web site that is used to purchase concert tickets. During a ticket
purchase, a buyer views a list of available tickets, decides whether to buy the tickets, and then attempts to
purchase the tickets. This list of available tickets is retrieved in a cursor.
For popular concerts, thousands of buyers might attempt to purchase tickets at the same time. Because of
the potentially high number of buyers at any one time, you must allow the highest possible level of
concurrent access to the data.
How should you design the cursor?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (39, 1, N'You are a database developer for a company that conducts telephone surveys of consumer music
preferences. As the survey responses are received from the survey participants, they are inserted into a
table named SurveyData. After all of the responses to a survey are received, summaries of the results are
produced.
You have been asked to create a summary by sampling every fifth row of responses for a survey. You
need to produce the summary as quickly as possible.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (40, 1, N'You are a database developer for a lumber company. You are performing a one-time migration from a
flat-file database to SQL Server 2000. You export the flat-file database to a text file in comma-delimited
format. The text file is shown in the Import file exhibit button.
1111, ‘*4 Interior’, 4, ‘Interior Lumber’, 1.12
1112, ‘2*4 Exterior’, 5, ‘Exterior Lumbar’, 1.87
2001, ‘16d galvanized’,2, ‘Bulk Nails’, 2.02
2221, ‘8d Finishing brads’,3, ‘Nails’, 0.01
You need to import this file into SQL Server tables named Product and Category. The product and
category tables are shown in the product and Category Tables exhibit.

You want to import the data using the least amount of administrative effort. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (42, 1, N'You are a database developer for a database named Accounts at Woodgrove Bank. A developer is
creating a multi-tier application for the bank. Bank employees will use the application to manage
customer accounts. The developer needs to retrieve customer names from the accounts database to
populate a drop-down list box in the application. A user of the application will use the list box to locate a
customer account.
The database contains more than 50,000 customer accounts. Therefore, the developer wants to retrieve
only 25 rows as the user scrolls through the list box. The most current list of customers must be available
to the application at all times.
You need to recommend a strategy for the developer to use when implementing the drop-down list box.
What should you recommend?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (43, 1, N'You are a database developer for Litware, Inc. You are restructuring the company’s sales database. The
database contains customer information in a table named Customers. This table includes a character
field named Country that contains the name of the country in which the customer is located.
You have created a new table named Country. The scripts that were used to create the Customers and
Country tables are shown in the exhibit.
CREATE TABLE dbo.Country
(
CountryID int IDENTITY(1,1) NOT NULL,
CountryName char(20) NOT NULL,
CONSTRAINT PK_Country PRIMARY KEY CLUSTERED (CountryID)
)
CREATE TABLE dbo.Customers
(
CustomerID int NOT NULL,
CustomerName char(30) NOT NULL,
Country char(20) NULL,
CONSTRAINT PK_Customers PRIMARY KEY CLUSTERED (CustomerID)
)
You must move the country information from the Customers table into the new Country tables as quickly
as possible.
Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (44, 1, N'You are a database developer for Contoso, Ltd. The company has a database named HumanResources
that contains information about all employees and office locations. The database also contains
information about potential employees and office locations. The tables that contain this information are
shown in the exhibit.
Current employees are assigned to a location, and current locations have one or more employees assigned
to them. Potential employees are not assigned to a location, and potential office locations do not have any
employees assigned to them.
You need to create a report to display all current and potential employees and office locations. The report
should list each current and potential location, followed by any employees who have been assigned to that
location. Potential employees should be listed together.
Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (56, 1, N'You are designing a database for a web-based ticket reservation application. There might be 500 or more
tickets available for any single event. Most users of the application will view fewer than 50 of the
available tickets before purchasing tickets.
However, it must be possible for a user to view the entire list of available tickets. As the user scrolls
through the list, the list should be updated to reflect that tickets have been sold to other users. The user
should be able to select tickets from the list and purchase the tickets.
You need to design a way for the user to view and purchase available tickets. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (57, 1, N'You are a database consultant. You have been hired by a local dog breeder to develop a database. This
database will be used to store information about the breeder’s dogs. You create a table named Dogs by
using the following script:
CREATE TABLE[dbo].[Dogs]
(
[DogID] [int] NOT NULL,
[BreedID] [int] NOT NULL,
[DateofBirth] [datetime] NOT NULL,
[WeightAtBirth] [decimal] (5, 2) NOT NULL,
[NumberOfSiblings] [int] NULL,
[MotherID] [int] NOT NULL,
[FatherID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dogs] WITH NOCHECK ADD
CONSTRAINT [PK_Dogs]PRIMARY KEY CLUSTERED
(
[DogID]
) ON [PRIMARY]
GO
You must ensure that each dog has a valid value for the MotherID and FatherID columns. You want to
enforce this rule while minimizing disk I/O.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (58, 1, N'You are the database developer for a company that provides consulting service. The company maintains
data about its employees in a table named Employee. The script that was used to create the Employee
table is shown in the exhibit.
CREATE TABLE Employee
(
EmployeeID int NOT NULL;
EmpType char (1) NOT NULL,
EmployeeName char (50) NOT NULL,
Address char (50) NULL,
Phone char (20) NULL,
CONSTRAINT PK_Employee PRMARY KEY (Employee ID)
)
The EmpType column in this table is used to identify employees as executive, administrative, or
consultants. You need to ensure that the administrative employees can add, update, or delete data for
non-executive employees only.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (59, 1, N'You are a database developer for an electric utility company. When customers fail to pay the balance on
a billing statement before the statement due date, the balance of the billing statement needs to be
increased by 1 percent each day until the balance is paid. The company needs to track the number of
overdue billing statements. You create a stored procedure to update the balances and to report the
number of billing statements that are overdue. The stored procedure is shown in the exhibit.
Each time the stored procedure executes without error, it reports that zero billing statements are
overdue. However, you observe that balances are being updated by the procedure.
What should you do to correct the problem?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (60, 1, N'You are a database developer for an online electronics company. The company’s product catalog is
contained in a table named Products. The Products table is frequently accessed during normal business
hours. Modifications to the Products table are written to a table named PendingProductUpdate. These
tables are shown in the exhibit.
The PendingProductUpdate table will be used to update the Products table after business hours. The
database server runs SQL Server 2000 and is set to 8.0 compatibility mode.
You need to create a script that will be used to update the products table. Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (61, 1, N'You are the database developer for a sporting goods company that exports products to customers
worldwide. The company stores its sales information in a database named Sales. Customer names are
stored in a table named Customers in this database. The script that was used to create this table is shown
in the exhibit.
CREATE TABLE Customers
(
CustomerID int NOT NULL,
CustomerName varchar(30) NOT NULL,
ContactName varchar(30) NULL,
Phone varchar(20) NULL,
Country varchar(30) NOT NULL,
CONSTRAINT PK_Customers PRIMARY KEY (CustomerID)
)
There are usually only one or two customers per country. However, some countries have as many as 20
customers. Your company’s marketing department wants to target its advertising to countries that have
more than 10 customers.
You need to create a list of these countries for the marketing department. Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (62, 1, N'You are a database developer for a sales organization. Your database has a table named Sales that
contains summary information regarding the sales orders from salespeople. The sales manager asks you
to create a report of the salespeople who had the 20 highest total sales.
Which query should you use to accomplish this?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (63, 1, N'You are a database developer for a travel agency. A table named FlightTimes in the Airlines database
contains flight information for all airlines. The travel agency uses an intranet-based application to
manage travel reservations. This application retrieves flight information for each airline from the
FlightTimes table. Your company primarily works with one particular airline. In the Airlines database,
the unique identifier for this airline is 101.
The application must be able to request flight times without having to specify a value for the airline. The
application should be required to specify a value for the airline only if a different airline’s flight times are
needed.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (64, 1, N'You are a database developer for Wingtip Toys. You have created an order entry database that includes
two tables, as shown in the exhibit.
Users enter orders into an entry application. When a new order is entered, the data is saved to the Order
and LineItem tables in the order entry database.

You must ensure that the entire order is saved successfully. Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (65, 1, N'You are a database developer for a vacuum sales company. The company has a database named Sales
that contains tables named VacuumSales and Employee. Sales information is stored in the VacuumSales
table. Employee information is stored in the Employee table. The Employee table has a bit column named
IsActive. This column indicates whether an employee is currently employed. The Employee table also has
a column named EmployeeID that uniquely identifies each employee. All sales entered into the
VacuumSales table must contain an employee ID of a currently employed employee.
How should you enforce this requirement?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (66, 1, N'You are a database developer for an online brokerage firm. The prices of the stocks owned by customers
are maintained in a SQL Server 2000 database.
To allow tracking of the stock price history, all updates of stock prices must be logged. To help correct
problems regarding price updates, any errors that occur during an update must also be logged. When
errors are logged, a message that identifies the stock producing the error must be returned to the client
application.
You must ensure that the appropriate conditions are logged and that the appropriate messages are
generated. Which procedure should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (67, 1, N'You are a database developer for a company that leases trucks. The company has created a web site that
customer can use to reserve trucks. You are designing the SQL server 2000 database to support the web
site.
New truck reservations are inserted into a table named Reservations. Customers who have reserved a
truck can return to the web site and update their reservation. When a reservation is updated, the entire
existing reservation must be copied to a table named History.
Occasionally, customers will save an existing reservation without actually changing any of the
information about the reservation. In this case, the existing reservation should not be copied to the
History table.
You need to develop a way to create the appropriate entries in the History table.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (68, 1, N'You are a database developer for a company that leases trucks. The company has created a web site that
customer can use to reserve trucks. You are designing the SQL server 2000 database to support the web
site.
New truck reservations are inserted into a table named Reservations. Customers who have reserved a
truck can return to the web site and update their reservation. When a reservation is updated, the entire
existing reservation must be copied to a table named History.
Occasionally, customers will save an existing reservation without actually changing any of the
information about the reservation. In this case, the existing reservation should not be copied to the
History table.
You need to develop a way to create the appropriate entries in the History table.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (69, 1, N'You are a database developer for Proseware, Inc. The company has a database that contains information
about companies located within specific postal codes. This information is contained in the company table
within this database. Currently, the database contains company data for five different postal codes. The
number of companies in a specific postal code currently ranges from 10 to 5,000. More companies and
postal codes will be added to the database over time.
You are creating a query to retrieve information from the database. You need to accommodate new data
by making only minimal changes to the database. The performance of your query must not be affected by
the number of companies returned.
You want to create a query that performs consistently and minimizes future maintenance. What should
you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (70, 1, N'You are a database developer for Woodgrove Bank. You are implementing a process that loads data into
a SQL Server 2000 database. As a part of this process, data is temporarily loaded into a table named
Staging. When the data load process is complete, the data is deleted from this table. You will never need
to recover this deleted data.
You need to ensure that the data from the Staging table is deleted as quickly as possible. What should
you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (71, 1, N'You are a database developer for an automobile dealership. You are designing a database to support a
web site that will be used for purchasing automobiles. A person purchasing an automobile from the web
site will be able to customize his or her order by selecting the model and color.
The manufacturer makes four different models of automobiles. The models can be ordered in any one of
five colors. A default color is assigned to each model.
The models are stored in a table named Models, and the colors are stored in a table named Colors. These
tables are shown in the exhibit.
You need to create a list of all possible model and color combinations. Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (72, 1, N'You are a database developer for Adventure Works. A large amount of data has been exported from a
human resources application to a text file. The format file that was used to export the human resources
data is shown in the Format File exhibit.
Format File
1 SQLINT 0 4 “,” 1 EmployeeID “”
2 SQLCHAR 0 50 “,” 2 Firstname SQL_Latin1_General_CP1_AS
3 SQLCHAR 0 50 “,” 3 Lastname SQL_Latin1_General_CP1_AS
4 SQLCHAR 0 10 “,” 4 SSN SQL_Latin1_General_CP1_AS
5 SQLDATETIME 0 8 “” 5 Hiredate “”
You need to import that data programmatically into a table named Employee. The Employee table is
shown in the exhibit table.
You need to run this import as quickly as possible. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (73, 1, N'You are a database developer for an insurance company. The company has a database named Policies.
You have designed stored procedures for this database that will use cursors to process large result sets.
Analysts who use the stored procedures report that there is a long initial delay before data is displayed to
them.
After the delay, performance is adequate. Only data analysts, who perform data analysis, use the Policies
database.
You want to improve the performance of the stored procedures. Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (74, 1, N'You are a database developer for a bookstore. You are designing a stored procedure to process XML
documents. You use the following script to create the stored procedure:
CREATE PROCEDURE spParseXML (@xmlDocument varchar(1000)) AS
DECLARE @docHandle int
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument
SELECT *
FROM OPENXML (@docHandle, ‘/ROOT/Category/Product’,2)
WITH (ProductID int,
CategoryID int,
CategoryName varchar (50),
[Description] varchar (50))
EXEC sp_xml_removedocument @docHandle
You execute this stored procedure and use an XML documents as the input document. The XML
document is shown in the XML Document exhibit.

XML Document
<ROOT>
<Category CategoryID= “1” CategoryName= “General Books”>
<Product ProductID=“10248” Description=“Cooking for
you”>
</Product>
</Category>
<Category CategoryID= “2” CategoryName= “Videos”>
<Product ProductID= “80248” Description= “7 Minute Abs”>
</Product>
</Category>
<Category CategoryID= “3” CategoryName= “Computer Books”>
<Product ProductID= “12345” Description= “Inside SQL
Server 2000”>
</Product>
<Product ProductID= “22345” Description= “Analysis
Services with SQL Server 2000”>
</Product>
</Category>
<ROOT>
You receive the output shown in the Output exhibit.
Output
ProductID CategoryID CategoryName Description
NULL NULL NULL NULL
NULL NULL NULL NULL
NULL NULL NULL NULL
NULL NULL NULL NULL
(4 row(s) affected)
You need to replace the body of the stored procedure. Which script should you use?
', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (75, 1, N'You are a database developer for Adventure Works. You are designing a script for the human resources
department that will report yearly wage information. There are three types of employee. Some employees
earn an hourly wage, some are salaried, and some are paid commission on each sale that they make. This
data is recorded in a table named Wages, which was created by using the following script:
CREATE TABLE Wages
(
emp_id tinyint identity,
hourly_wage decimal NULL,
salary decimal NULL,
commission decimal NULL,
num_sales tinyint NULL
)
An employee can have only on type of wage information. You must correctly report each employee’s
yearly wage information.
Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (76, 1, N'You are a database developer for an insurance company. The company''s regional offices transmit their
sales information to the company''s main office in XML documents. The XML documents are then stored
in a table named SalesXML, which is located in a SQL Server 2000 database. The data contained in the
XML documents includes the names of insurance agents, the names of insurance policy owners,
information about insurance policy beneficiaries, and other detailed information about the insurance
policies. You have created tables to store information extracted from the XML documents.
You need to extract this information from the XML documents and store it in the tables. What should
you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (77, 1, N'You are a database developer for an insurance company. You create a table named Insured, which will
contain information about persons covered by insurance policies. You use the script shown in the exhibit
to create this table.
CREATE TABLE dbo.Insured (
InsuredID int IDENTITY (1, 1) NOT NULL,
PolicyID int NOT NULL,
InsuredName char(30) NOT NULL,
InsuredBirthDate datetime NOT NULL,
CONSTRAINT PK_Insured PRIMARY KEY CLUSTERED
(
InsuredID
),
CONSTRAINT FK_Insured_Policy FOREIGN KEY
(
PolicyID
) REFERENCES dbo.Policy(
PolicyID
)
)
A person covered by an insurance policy is uniquely identified by his or her name and birth date. An
insurance policy can cover more than one person. A person cannot be covered more than once by the
same insurance policy.
You must ensure that the database correctly enforces the relationship between insurance policies and the
persons covered by insurance policies. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (78, 1, N'You are designing a database for Tailspin Toys. You review the database design, which is shown in the
exhibit.
You want to promote quick response times for queries and minimize redundant data. What should you
do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (79, 1, N'You are a database developer for an automobile dealership. The company stored its automobiles
inventory data in a SQL Server 2000 database. Many of the critical queries in the database join three
tables named Make, Model, and Manufacturer. These tables are updated infrequently.
You want to improve the response time of the critical queries. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (80, 1, N'You are a database developer for an insurance company. The company has one main office and 18
regional offices. Each office has one SQL Server 2000 database. The regional offices are connected to the
main office by a high-speed network.
The main office database is used to consolidate information from the regional office databases. The tables
in the main office database are partitioned horizontally. The regional office location is used as part of the
primary key for the main office database. You are designing the physical replication model.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (81, 1, N'You are a database developer for a clothing retailer. The company has a database named Sales. This
database contains a table named Inventory. The Inventory table contains the list of items for sale and the
quantity available for each of those items. When sales information is inserted into the database, this table
is updated. The stored procedure that updates the Inventory table is shown in the exhibit.
CREATE PROCEDURE UpdateInventory @IntID int
AS
BEGIN
DECLARE @Count int
BEGIN TRAN
SELECT @Count = Available
FROM Inventory WITH (HOLDLOCK)
WHERE InventoryID = @IntID
IF (@Count > 0)
UPDATE Inventory SET Available = @Count – 1
WHERE InventoryID = @IntID
COMMIT TRAN
END
When this procedure executes, the database server occasionally returns the following error message:
Transaction (Process ID 53) was deadlocked on {lock} resources with another
process and has been chosen as the deadlock victim. Rerun the transaction.
You need to prevent the error message from occurring while maintaining data integrity. What should
you do?
', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (82, 1, N'You are a database developer for Wide World Importers. The company tracks its order information in a
SQL Server 2000 database. The database includes two tables that contain order details. The tables are
named Order and LineItem. The script that was used to create these tables is shown in the exhibit.
CREATE TABLE dbo.Order
(
OrderID int NOT NULL,
CustomerID int NOT NULL,
OrderDate datetime NOT NULL,
CONSTRAINT DF_Order_OrderDate DEFAULT (getdate())FOR OrderDate,
CONSTRAINT PK_Order PRIMARY KEY CLUSTERED (OrderID)
)
CREATE TABLE dbo.LineITEM
(
ItemID int NOT NULL,
OrderID INT NOT NULL,
ProductID int NOT NULL,
Price money NOT NULL,
CONSTRAINT PK_LineITEM PRIMARY KEY CLUSTERED (ItemID),
CONSTRAINT FK_LineITEM_Order FOREIGN KEY (OrderID)
REFERENCES dbo.Order (OrderID)
)
The company''s auditors have discovered that every item that was ordered on June 1, 2000, was entered
with a price that was $10 more than its actual price. You need to correct the data in the database as
quickly as possible.
Which script should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (83, 1, N'You are a database developer for a bookstore. Each month, you receive new supply information from
your vendors in the form of an XML document. The XML document is shown in the XML Document
exhibit.
XML Document
<ROOT>
<CategoryID= “2” CategoryName= “Videos”>
<Product ProductID= “80248” Description= “7 Minute Abs”>
</Product>
</Category>
<Category CategoryID= “3” CategoryName= “Computer Books”>
<Product ProductID= “12345” Description= “Inside SQL Server 2000”>
</Product>
</Category>
<Category CategoryID= “3” CategoryName= “Computer Books”>
<Product ProductID= “22345” Description= “Analysis Services with SQL
Server 2000”>
</Product>
</Category>
<ROOT>
You are designing a stored procedure to read the XML document and to insert the data into a table
named Products. The Products table is shown in the Products Table exhibit.

Which script should you use to create this stored procedure?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (84, 1, N'You are a database developer for Trey Research. You are designing a SQL Server 2000 database that will
be distributed with an application to numerous companies. You create several stored procedures in the
database that contain confidential information. You want to prevent the companies from viewing this
confidential information.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (100, 1, N'You are a database developer for Southridge Video. The company stores its sales information in an SQL
Server 2000 database. You are asked to delete order records from this database that are more than five
years old. To delete the records, you execute the following statement in SQL Query Analyzer:
DELETE FROM Orders WHERE OrderDate < (DATEADD (year, -5, getdate()))
You close SQL Query Analyzer after you receive the following message:
(29979 row(s) affected)
You examine the table and find that the old records are still in the table. The current connection
properties are shown in the exhibit.

What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (101, 1, N'You are a database developer for a telemarketing company. You are designing a database named
CustomerContacts. This database will be updated frequently. The database will be about 1 GB in size.
You want to achieve the best possible performance for the database. You have 5 GB of free space on
drive C.
Which script should you use to create the database?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (102, 1, N'You are a database developer for Woodgrove Bank. The company stores its sales data in a SQL Server
2000 database. You want to create an indexed view in this database. To accomplish his, you execute the
script shown in the exhibit.
Set NUMERIC_ROUNDABORT OFF
GO
CREATE VIEW Sales
AS
SELECT SUM(UnitPrice*Quantity*(1.00-Discount))AS Revenue,
OrderDate, ProductID, COUNT_BIG(*) AS COUNT
FROM dbo.OrderDetails AS OD JOIN dbo.Orders AS O
ON OD.OrderID = O.OrderID
GROUP BY O.OrderDate, OD.ProductID
GO
CREATE UNIQUE CLUSTERED INDEX IX_Sales ON Sales (OrderDate,
ProductID)
GO
The index creation fails, and you receive an error message. You want to eliminate the error message and
create the index.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (103, 1, N'You are a database developer for your company''s SQL Server 2000 database. Another database
developer named Andrea needs to be able to alter several existing views in the database. However, you
want to prevent her form viewing or changing any of the data in the tables. Currently, Andrea belongs
only to the Public database role.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (104, 1, N'You are a database developer for a rapidly growing company. The company is expanding into new sales
regions each month. As each new sales region is added, one or more sales associates are assigned to the
new region. Sales data is inserted into a table named RegionSales, which is located in the Corporate
database. The RegionSales table is shown in the exhibit.
Each sales associate should be able to view and modify only the information in the RegionSales table that
pertains to his or her regions. It must be as easy as possible to extend the solution as new regions and
sales associates are added.', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (105, 1, N'You are a database developer for a toy company. Another developer, Marie, has created a table named
ToySales. Neither you nor Marie is a member of the sysadmin fixed server role, but you are both
members of the db_owner database role. The ToySales table stores the sales information for all
departments in the company. This table is shown in the exhibit.
You have created a view under your database login named vwDollSales to display only the information
from the ToySales table that pertains to sales of dolls. Employees in the dolls department should be given
full access to the data. You have also created a view named vwActionFigureSales to display only the
information that pertains to sales of action figures. Employees in the action figures department should be
given full access each other’s data. The two departments currently have no access to the data.
Employees in the data department are associated with the Doll database role. Employees in the action
figures department are associated with the ActionFigure database role.
You must ensure that the two departments can view only their own data. Which three actions should you
take? (Each correct answer presents part of the solution. Choose three)', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (106, 1, N'You are a database developer for your company''s SQL Server 2000 database. The database is installed
on a Microsoft Windows 2000 Server computer. The database is in the default configuration. All tables in
the database have at least one index. SQL Server is the only application running on the server.
The database activity peaks during the day, when sales representatives enter and update sales
transactions. Batch reporting is performed after business hours. The sales representatives report slow
updates and inserts.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (107, 1, N'You are a database developer for a shipping company. You have a SQL Server 2000 database that stores
order information. The database contains tables named Order and OrderDetails. The database resides on
a computer that has four 9-GB disk drives available for data storage. The computer has two disk
controllers. Each disk controller controls two of the drives. The Order and OrderDetail tables are often
joined in queries.
You need to tune the performance of the database. What should you do? (Each correct answer presents
part of the solution. Choose two.)', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (108, 1, N'You are the database developer for a brokerage firm. The database contains a table named Trades. The
script that was used to create this table is shown in the Script for Trades Table exhibit.
CREATE TABLE Trades
(
TradeID int IDENTITY(1,1)PRIMARY KEY NONCLUSTERED NOT NULL,
TradeDate datetime NULL,
SettlementDate datetime NULL,
Units decimal(18, 4) NULL,
Symbol char(5) NULL,
ClientID int NULL,
BrokerID int NULL
)
GO
CREATE CLUSTERED INDEX c_symbol ON Trades (Symbol)
The Trades table has frequent inserts and updates during the day. Reports are run against the table each
night. You execute the following statement in the SQL Query Analyzer:
DBCC SHOWCONTIG (Trades)
The output for the statement is shown in the DBCC Statement Output exhibit.
DBCC Statement Output
DBCC SHOWCONTIG scanning ‘Trades’ table. . . . .
Table: ‘Trades’(1621580815); index ID:1, database ID:12
Table level scan performed.
-Pages Scanned-----------------------------------------:104
-Extents Scanned---------------------------------------:16
-Extent Switches----------------------------------------:24
-Avg. Pages per Extent-------------------------------:6.5
-Scan Density[Best Count:Actual Count]-----------:52.00%[13:25]
-Logical Scan Fragmentation-------------------------:7.69%
-Extent Scan Fragmentation---------------------------:43.75%
-Avg. Bytes Free per page-----------------------------:460.1
-Avg. Page Density (full)------------------------------:94.32%
DBCC execution completed. If DBCC printed error messages, contact
your system
You want to ensure optional performance for the insert and select operations on the Trades table. What
should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (109, 1, N'You are the developer of a database named Inventory. You have a list of reports that you must create.
These reports will be run at the same time.
You write queries to create each report. Based on the queries, you design and create the indexes for the
database tables.
You want to ensure that you have created useful indexes. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (110, 1, N'You are a database developer for your company''s SQL server 2000 database. You use the following
script to create a view named Employee in the database:
CREATE VIEW Employee AS
SELECT P.SSN, P.LastName, P.FirstName, P.Address, P.City, P.State,
P.Birthdate, E.EmployeeID, E.Department, E.Salary
FROM Person AS P JOIN Employees AS E ON (P.SSN = E.SSN)
The view will be used by an application that inserts records in both the Person and Employees tables. The
script that was used to create these tables is shown in the exhibit.
CREATE TABLE Person
(
SSN char(11) NOT NULL PRIMARY KEY
LastName varchar (50) NOT NULL,
FirstName varchar (50) NOT NULL,
Address varchar (100) NOT NULL,
City varchar (50) NOT NULL,
State char (2) NOT NULL,
Birthdate datetime NOT NULL
)
GO
CREATE TABLE Employees
(
EmployeeID int NOT NULL PRIMARY KEY,
SSN char (11) UNIQUE NOT NULL,
Department varchar (10) NOT NULL,
Salary money NOT NULL,
CONSTRAINT FKEmpPER FOREIGN KEY (SSN)REFERENCES Person (SSN)
)
You want to enable the application to issue INSERT statements against the view. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (111, 1, N'You are a database developer for Wide World Importers. You are creating a table named Orders for the
company’s SQL Server 2000 database. Each order contains an OrderID, an OrderDate, a CustomerID, a
ShipperID, and a ShipDate.
Customer services representatives who take the orders must enter the OrderDate, CustomerID, and
ShipperID when the order is taken. The OrderID must be generated automatically by the database and
must be unique. Orders can be taken from existing customers only. Shippers can be selected only from an
existing set of shippers. After the customer service representatives complete the order, the order is sent to
the shipping department for final processing. The shipping department enters the ship date when the
order is shipped.
Which script should you use to create the Orders table?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (112, 1, N'You are a database developer for Lucerne Publishing. The company stores its sales data in a SQL Server
2000 database. This database contains a table named Orders. There is currently a clustered index on the
table, which is generated by using a customer’s name and the current date.
The orders table currently contains 750,000 rows, and the number of rows increased by 5 percent each
week. The company plans to launch a promotion next week that will increase the volume of inserts to the
Orders table by 50 percent.
You want to optimize inserts to the Orders table during the promotion. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (113, 1, N'You are designing your company''s Sales database. The database will be used by three custom
applications. Users who require access to the database are currently members of Microsoft Windows
2000 groups. Users were placed in the Windows 2000 groups according to their database access
requirements. The custom applications will connect to the sales database through the sales database
through application roles that exist for each application. Each application role was assigned a password.
All users should have access to the sales database only through the custom applications. No permissions
have been granted in the database.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (114, 1, N'You are a database developer for your company''s database named Insurance. You execute the following
script in SQL Query Analyzer to retrieve agent and policy information:
SELECT A.LastName, A.FirstName, A.CompanyName, P.PolicyNumber
FROM Policy AS P JOIN AgentPolicy AS AP
ON (P.PolicyNumber = AP.PolicyNumber)
JOIN Agents AS A ON (A.AgentID= AP.AgentID)
The query execution plan that is generated is shown in the Query Execution Plan exhibit:

The information received when you move the pointer over the Table Scan icon is shown in the Table Scan
Information exhibit:
You want to improve the performance of this query. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (115, 1, N'You are a database developer for Wingtip Toys. The company stores its sales information in a SQL
Server 2000 database. This database contains a table named Orders. You want to move old data from the
orders table to an archive table. Before implementing this process, you want to identify how the query
optimizer will process the INSERT statement.
You execute the following script in SQL Query Analyzer:
SET SHOWPLAN_TEXT ON
GO
CREATE TABLE Archived_Orders_1995_1999
(
OrderID int,
CustomerID char (5),
EmployeeID int,
OrderDate datetime,
ShippedDate datetime
)
INSERT INTO Archived_Orders_1995_1999
SELECT OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate
FROM SalesOrders
WHERE ShippedDate < DATEADD (year, -1, getdate())
You receive the following error message:
Invalid object name ‘Archived_Orders_1995_1999’.
What should you do to resolve the problem?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (116, 1, N'You are a database developer for Wingtip Toys. The company stores its sales information in a SQL
Server 2000 database. This database contains a table named Orders. You want to move old data from the
orders table to an archive table. Before implementing this process, you want to identify how the query
optimizer will process the INSERT statement.
You execute the following script in SQL Query Analyzer:
SET SHOWPLAN_TEXT ON
GO
CREATE TABLE Archived_Orders_1995_1999
(
OrderID int,
CustomerID char (5),
EmployeeID int,
OrderDate datetime,
ShippedDate datetime
)
INSERT INTO Archived_Orders_1995_1999
SELECT OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate
FROM SalesOrders
WHERE ShippedDate < DATEADD (year, -1, getdate())
You receive the following error message:
Invalid object name ‘Archived_Orders_1995_1999’.
What should you do to resolve the problem?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (117, 1, N'You are a database developer for Woodgrove Bank. The company has a database that contains human
resources information. You are designing transactions to support data entry into this database. Scripts
for two of the transactions that you designed are shown in the exhibit.
Transaction 1 Transaction 2
BEGIN TRANSACTION
UPDATE Customer
SET CustomerName=@Name
WHERE
CustomerID=@CustID
UPDATE CustomerPhone
SET PhoneNumber=@Phone
WHERE
CustomerID=@CustID
AND PhoneType=@PType
COMMIT TRANSACTION
BEGIN TRANSACTION
UPDATE CustomerPhone SET
PhoneNumber=@Phone
WHERE CustomerID=@CustID
AND PhoneType = @PType
UPDATE CustomerAddress SET Street =
@Street
WHERE CustomerID=@CustID
AND AddressType=@AType
UPDATE Customer SET CustomerName =
@Name
WHERE CustomerID = @CustID
COMMIT TRANSACTION
While testing these scripts, you discover that the database server occasionally detects a deadlock
condition. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (118, 1, N'You are a database developer for a company that compiles statistics for baseball teams. These statistics
are stored in a database named Statistics. The Players of each team are entered in a table named Rosters
in the Statistics database. The script that was used to create the Rosters table is shown in the exhibit.
CREATE TABLE Rosters
(
RosterID int NOT NULL,
TeamID int NOT NULL,
FirstName char(20) NOT NULL,
LastName char(20) NOT NULL,
CONSTRAINT PK_Rosters PRIMARY KEY (RosterID),
CONSTRAINT FK_TeamRoster FOREIGN KEY (TeamID)
REFERENCES Team (TeamID)
)
Each baseball team can have a maximum of 24 players on the roster at any one time. You need to ensure
that the number if players on the team never exceeds the maximum.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (119, 1, N'You are a database developer for an investment brokerage company. The company has a database
named Stocks that contains tables named CurrentPrice and PastPrice. The current prices of investment
stocks are stored in the CurrentPrice table. Previous stock prices are stored in the PastPrice table. These
tables are shown in the CurrentPrice and PastPrice Tables exhibit.
A sample of the data contained in thee tables is shown in the Sample Data exhibit.

All of the rows in the CurrentPrice table are updated at the end of the business day, even if the price of
the stock has not changed since the previous update. If the stock price has changed since the previous
update, then a row must also be inserted into the PastPrice table.
You need to design a way for the database to execute this action automatically. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (120, 1, N'You are a database developer for an investment brokerage company. The company has a database
named Stocks that contains tables named CurrentPrice and PastPrice. The current prices of investment
stocks are stored in the CurrentPrice table. Previous stock prices are stored in the PastPrice table. These
tables are shown in the CurrentPrice and PastPrice Tables exhibit.
A sample of the data contained in thee tables is shown in the Sample Data exhibit.

All of the rows in the CurrentPrice table are updated at the end of the business day, even if the price of
the stock has not changed since the previous update. If the stock price has changed since the previous
update, then a row must also be inserted into the PastPrice table.
You need to design a way for the database to execute this action automatically. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (121, 1, N'You are a database developer for Wingtip Toys. The company tracks its inventory in a SQL Server 2000
database. You have several queries and stored procedures that are executed on the database indexes to
support the queries have been created.
As the number of catalogued inventory items has increased, the execution time of some of the stored
procedures has increased significantly. Other queries and procedures that access the same information in
the database have not experienced an increase in execution time.
You must restore the performance of the slow-running stored procedures to their original execution
times. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (122, 1, N'You are a database developer for a marketing firm. You have designed a quarterly sales view. This view
joins several tables and calculates aggregate information. You create a unique index on the view. You
want to provide a parameterized query to access the data contained in your indexed view. The output will
be used in other SELECT lists.
How should you accomplish this goal?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (123, 1, N'You are designing for a large grocery store chain. The partial database schema is shown in the Partial
Database Schema Exhibit.
The script that was used to create the Customers table is shown in the Script for Customers Table
Exhibit.
The store managers want to track customer demographics so they can target advertisements and coupon
promotions to customers. These advertisements and promotions will be based on the past purchases of
existing customers. The advertisements and promotions will target buying patterns by one or more of
these demographics: gender, age, postal code, and region. Most of the promotions will be based on gender
and age. Queries will be used to retrieve the customer demographics information.
You want the query response time to be as fast as possible. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (124, 1, N'You are a database developer for Lucerne Publishing. You are designing a human resources database
that contains tables named Employee and Salary.
You interview users and discover the following information:
.. The Employee table will often be joined with the Salary table on the EmployeeID column.
.. Individual records in the Employee table will be selected by social security number (SSN).
.. A list of employees will be created. The list will be produced in alphabetical order by last name,
and then followed by first name.
You need to design the indexes for the tables while optimizing the performance of the indexes.
Which three scripts should you use? (Each correct answer presents part of the solution. Choose three.)', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (125, 1, N'You are a database developer for a large electric utility company. The company is divided into many
departments, and each employee of the company is assigned to a department. You create a table named
Employee that contains information about all employees, including the department to which they belong.
The script that was used to create the Employee table is shown in the exhibit.
CREATE TABLE Employee
(
EmployeeID uniqueidentifier NOT NULL,
FirstName char (20) NOT NULL,
LastName char (25) NOT NULL,
DepartmentID int NOT NULL,
Salary money NOT NULL,
CONSTRAINT PK_Employee PRIMARY KEY (EmployeeID)
)
Each department manager should be able to view only the information in the Employee table that
pertains to his or her department. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (126, 1, N'You are a database developer for your company''s Human Resources database. This database includes a
table named Employee that contains confidential ID numbers and salaries. The table also includes nonconfidential
information, such as employee names and addresses.
You need to make all the non-confidential information in the Employee table available in XML format to
an external application. The external application should be able to specify the exact format of the XML
data. You also need to hide the existence of the confidential information from the external application.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (127, 1, N'You are a database developer for Tailspin Toys. You have two SQL Server 2000 computers named
CORP1 and CORP2. Both of these computers use SQL Server Authentication. CORP2 stores data that
has been archived from CORP1. At the end of each month, data is removed from CORP1 and
transferred to CORP2.
You are designing quarterly reports that will include data from both CORP1 and CORP2. You want the
distributed queries to execute as quickly as possible.
Which three actions should you take? (Each correct answer presents part of the solution. Choose Three.)', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (128, 1, N'You are a database developer for an IT consulting company. You are designing a database to record
information about potential consultants. You create a table named CandidateSkills for the database. The
table is shown in the exhibit.
How should you uniquely identify the skills for each consultant?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (129, 1, N'You are a database developer for Proseware, Inc. You are implementing a database for the database of
the company’s human resources department. This database will store employee information. You create
a table named EmployeeContact that contains the following columns:
HomePhone, BusinessPhone, FaxNumber, and EmailAddress
You must ensure that each record contains a value for either the HomePhone column or the
BusinessPhone column. What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (130, 1, N'You are designing an inventory and shipping database for Contoso, Ltd. You create the logical database
design shown in the exhibit.
You must ensure that the referential integrity of the database is maintained. Which three types of
constraints should you apply to your design? (Each correct answer presents part of the solution. Choose
all that apply.)', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (131, 1, N'You are a database developer for a SQL Server 2000 database. You have created a stored procedure to
produce the EndOfMonthSales report for the sales department.
You issue the following statement to assign permissions to the EndOfMonthSales report:
GRANT EXECUTE ON EndOfMonthSales TO SalesDept
Andrea has just joined the sales department and is a member of the SalesDept role. Andrea is also a
member of the Marketing role, which has been denied access to the EndOfMonthSales report.
Andrea is unable to execute the stored procedure. No other sales department employees are experiencing
this problem.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (132, 1, N'You are a database developer for a large travel company. You have been granted CREATE VIEW
permissions in the Reservations database. Your co-worker, Eric, has been granted CREATE TABLE
permissions. Neither of you have been given database owner or system permissions, nor have you been
added to any fixed server roles.
Eric has created a table named Traveler that holds information about your company''s customers. This
table is shown in the exhibit. .
Travel agents will connect to the database and view the information stored in this table. The database
logins for the travel agents have been assigned to the Agent database role.
You want the travel agents to be able to view the name and address information from the Traveler table
in two columns instead of six. One column should contain the traveler name and the other column should
contain the address.
Which three actions should you take? (Each correct answer presents part of the solution. Choose three)', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (133, 1, N'You are a database developer for a food wholesaler. Each week, the company fulfills orders from various
customers. Normally, each customer orders the same quantity of certain items each week. Occasionally,
the quantity of an item that a customer orders is significantly less than the customer’s usual quantity.
The information about each order is stored in a table named Invoice, which is located in a SQL Server
2000 database. The script that was used to create this table is shown in the exhibit.
EXHIBIT
CREATE TABLE Invoice
(
InvoiceID int NOT NULL,
InvoiceNumber char(10) NOT NULL,
CustomerName char(30) NOT NULL,
InvoiceAmount money NOT NULL DEFAULT (0),
CONSTRAINT PK_Invoice PRIMARY KEY (InvoiceID)
)
You want to identify any pattern to these unusual orders. To do this, you need to produce a list of the
invoices for each customer that are for a lesser amount than average invoice amount for that customer.
Which query should you use?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (134, 1, N'You are a database developer for Contoso, Ltd. The company stores its sales data in a SQL Server 2000
database. The database contains a table named Customers, which has 500,000 rows. The script that was
used to create the Customers table is shown in the exhibit.
CREATE TABLE Customers
(
CustomerID int IDENTITY NOT NULL,
CompanyName varchar(40) NOT NULL,
ContactName varchar(30) NULL,
ContactTitle varchar(30) NULL,
Address varchar(60) NULL,
City varchar(15) NULL,
Region varchar(15) NULL,
PostalCode varchar(10) NULL,
Country varchar(15) NULL,
Phone varchar(24) NULL,
Fax varchar(24) NULL,
CONSTRAINT PK_Customers PRIMARY KEY CLUSTERED (CustomerID)
)
Many critical queries are executed against the table, which select customer records based on the City and
Region columns. Very few customers live in the same city as each other, but many live in same region as
each other.
How should you optimize the performance of these queries?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (135, 1, N'You are a database developer for a SQL Server 2000 database. The database is in the default
configuration. The number of users accessing the database has increased from 100 to 1,000 in the last
month. Users inform you that they are receiving error messages frequently. The following is an example
of an error message that was received:
Transaction (Process ID 56) was deadlocked on [lock] resources with another
process and has been chosen as the deadlock victim. Rerun the transaction.
What should you do?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (136, 2, N'What is MS Word?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (137, 2, N'What is the shortcut key to copy text.', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (138, 2, N'What is Maximum font size in MS Word ?', N'SINGLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[question_master] ([q_id], [q_exam_id], [q_text], [q_type], [q_active], [q_create_by], [q_create_date]) VALUES (139, 2, N'Featurs avaiable in MS Word?', N'MULTIPLE', 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[test_master] ON 

INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (1, 1, 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 20, 17, 3, 15, 2, 100, 70, 10)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (2, 1, 1, CAST(N'2021-06-17T00:06:38.000' AS DateTime), 10, 0, 10, 0, 10, 100, 0, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (3, 1, 1, CAST(N'2021-06-17T00:22:15.000' AS DateTime), 10, 0, 10, 0, 10, 100, 0, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (4, 1, 1, CAST(N'2021-06-17T00:22:18.000' AS DateTime), 10, 0, 10, 0, 10, 100, 0, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (5, 1, 1, CAST(N'2021-06-17T20:49:07.000' AS DateTime), 10, 0, 10, 0, 10, 100, 0, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (6, 1, 1, CAST(N'2021-06-17T20:49:09.000' AS DateTime), 10, 0, 10, 0, 10, 100, 0, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (7, 1, 1, CAST(N'2021-06-17T20:53:52.000' AS DateTime), 10, 0, 10, 0, 10, 100, 0, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (8, 1, 1, CAST(N'2021-06-17T20:53:54.000' AS DateTime), 10, 0, 10, 0, 10, 100, 0, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (9, 1, 1, CAST(N'2021-06-17T20:55:37.000' AS DateTime), 10, 0, 10, 0, 10, 100, 0, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (10, 1, 1, CAST(N'2021-06-17T20:55:39.000' AS DateTime), 10, 0, 10, 0, 10, 100, 0, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (11, 1, 1, CAST(N'2021-06-17T21:00:18.000' AS DateTime), 10, 0, 10, 0, 10, 100, 0, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (12, 1, 1, CAST(N'2021-06-17T21:00:23.000' AS DateTime), 10, 0, 10, 0, 10, 100, 0, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (13, 1, 1, CAST(N'2021-06-17T21:10:16.000' AS DateTime), 10, 0, 10, 0, 10, 100, 0, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (14, 1, 1, CAST(N'2021-06-17T21:10:17.000' AS DateTime), 10, 0, 10, 0, 10, 100, 0, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (15, 1, 1, CAST(N'2021-06-17T21:34:35.000' AS DateTime), 10, 0, 10, 0, 10, 100, 0, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (16, 1, 1, CAST(N'2021-06-17T21:42:36.000' AS DateTime), 10, 107, -97, 3, 7, 100, 30, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (17, 1, 1, CAST(N'2021-06-17T21:54:56.000' AS DateTime), 10, 97, -87, 4, 6, 100, 40, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (18, 1, 1, CAST(N'2021-06-17T21:56:05.000' AS DateTime), 10, 97, -87, 4, 6, 100, 40, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (19, 1, 1, CAST(N'2021-06-19T01:46:16.000' AS DateTime), 20, 95, -75, 2, 18, 100, 10, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (20, 1, 1, CAST(N'2021-06-19T01:46:32.000' AS DateTime), 20, 95, -75, 2, 18, 100, 10, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (21, 1, 1, CAST(N'2021-06-19T01:50:11.000' AS DateTime), 20, 87, -67, 5, 15, 100, 25, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (22, 1, 1, CAST(N'2021-06-19T01:50:50.000' AS DateTime), 20, 87, -67, 5, 15, 100, 25, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (23, 3, 1, CAST(N'2021-06-21T00:46:41.000' AS DateTime), 20, 107, -87, 0, 20, 100, 0, 0)
INSERT [dbo].[test_master] ([t_id], [t_mem_id], [t_exam_id], [t_exam_date], [t_total_qst], [t_total_attempt], [t_not_atempt], [t_total_right], [t_total_wrong], [t_total_marks], [t_marks_get], [t_percent]) VALUES (24, 3, 1, CAST(N'2021-06-21T00:52:17.000' AS DateTime), 20, 87, -67, 5, 15, 100, 25, 0)
SET IDENTITY_INSERT [dbo].[test_master] OFF
GO
INSERT [dbo].[user_master] ([u_id], [u_name], [u_type], [u_password], [u_create_date], [u_changepassword_date], [u_lastogin_date], [u_login_ip]) VALUES (1, N'admin', N'admin', N'1', CAST(N'2009-01-01T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
ALTER TABLE [dbo].[answer_master] ADD  CONSTRAINT [DF_answer_master_a_rightanswer]  DEFAULT ((0)) FOR [a_rightanswer]
GO
ALTER TABLE [dbo].[answer_master] ADD  CONSTRAINT [DF_answer_master_a_create_by]  DEFAULT ((0)) FOR [a_create_by]
GO
ALTER TABLE [dbo].[exam_master] ADD  CONSTRAINT [DF_exam_master_e_total_time]  DEFAULT ((0)) FOR [e_total_time]
GO
ALTER TABLE [dbo].[exam_master] ADD  CONSTRAINT [DF_exam_master_e_no_of_question]  DEFAULT ((0)) FOR [e_no_of_question]
GO
ALTER TABLE [dbo].[exam_master] ADD  CONSTRAINT [DF_exam_master_e_max_marks]  DEFAULT ((0)) FOR [e_max_marks]
GO
ALTER TABLE [dbo].[exam_master] ADD  CONSTRAINT [DF_exam_master_e_pass_marks]  DEFAULT ((0)) FOR [e_pass_marks]
GO
ALTER TABLE [dbo].[exam_master] ADD  CONSTRAINT [DF_exam_master_e_active]  DEFAULT ((0)) FOR [e_active]
GO
ALTER TABLE [dbo].[exam_master] ADD  CONSTRAINT [DF_exam_master_e_create_by]  DEFAULT ((0)) FOR [e_create_by]
GO
ALTER TABLE [dbo].[member_master] ADD  CONSTRAINT [DF_member_master_m_active]  DEFAULT ((0)) FOR [m_active]
GO
ALTER TABLE [dbo].[test_master] ADD  CONSTRAINT [DF_test_master_t_total_qst]  DEFAULT ((0)) FOR [t_total_qst]
GO
ALTER TABLE [dbo].[test_master] ADD  CONSTRAINT [DF_test_master_t_total_attempt]  DEFAULT ((0)) FOR [t_total_attempt]
GO
ALTER TABLE [dbo].[test_master] ADD  CONSTRAINT [DF_test_master_t_not_atempt]  DEFAULT ((0)) FOR [t_not_atempt]
GO
ALTER TABLE [dbo].[test_master] ADD  CONSTRAINT [DF_test_master_t_total_right]  DEFAULT ((0)) FOR [t_total_right]
GO
ALTER TABLE [dbo].[test_master] ADD  CONSTRAINT [DF_test_master_t_total_wrong]  DEFAULT ((0)) FOR [t_total_wrong]
GO
ALTER TABLE [dbo].[test_master] ADD  CONSTRAINT [DF_test_master_t_total_marks]  DEFAULT ((0)) FOR [t_total_marks]
GO
ALTER TABLE [dbo].[test_master] ADD  CONSTRAINT [DF_test_master_t_marks_get]  DEFAULT ((0)) FOR [t_marks_get]
GO
ALTER TABLE [dbo].[test_master] ADD  CONSTRAINT [DF_test_master_t_percent]  DEFAULT ((0)) FOR [t_percent]
GO
ALTER TABLE [dbo].[answer_master]  WITH NOCHECK ADD  CONSTRAINT [FK_answer_master_qusetion_master] FOREIGN KEY([a_qusetion_id])
REFERENCES [dbo].[question_master] ([q_id])
GO
ALTER TABLE [dbo].[answer_master] CHECK CONSTRAINT [FK_answer_master_qusetion_master]
GO
ALTER TABLE [dbo].[answer_master]  WITH NOCHECK ADD  CONSTRAINT [FK_answer_master_qusetion_master1] FOREIGN KEY([a_qusetion_id])
REFERENCES [dbo].[question_master] ([q_id])
GO
ALTER TABLE [dbo].[answer_master] CHECK CONSTRAINT [FK_answer_master_qusetion_master1]
GO
ALTER TABLE [dbo].[answer_master]  WITH NOCHECK ADD  CONSTRAINT [FK_answer_master_user_master] FOREIGN KEY([a_create_by])
REFERENCES [dbo].[user_master] ([u_id])
GO
ALTER TABLE [dbo].[answer_master] CHECK CONSTRAINT [FK_answer_master_user_master]
GO
ALTER TABLE [dbo].[exam_master]  WITH NOCHECK ADD  CONSTRAINT [FK_exam_master_user_master] FOREIGN KEY([e_create_by])
REFERENCES [dbo].[user_master] ([u_id])
GO
ALTER TABLE [dbo].[exam_master] CHECK CONSTRAINT [FK_exam_master_user_master]
GO
ALTER TABLE [dbo].[question_master]  WITH NOCHECK ADD  CONSTRAINT [FK_qusetion_master_exam_master] FOREIGN KEY([q_exam_id])
REFERENCES [dbo].[exam_master] ([e_id])
GO
ALTER TABLE [dbo].[question_master] CHECK CONSTRAINT [FK_qusetion_master_exam_master]
GO
ALTER TABLE [dbo].[question_master]  WITH NOCHECK ADD  CONSTRAINT [FK_qusetion_master_user_master] FOREIGN KEY([q_create_by])
REFERENCES [dbo].[user_master] ([u_id])
GO
ALTER TABLE [dbo].[question_master] CHECK CONSTRAINT [FK_qusetion_master_user_master]
GO
ALTER TABLE [dbo].[test_master]  WITH NOCHECK ADD  CONSTRAINT [FK_test_master_exam_master] FOREIGN KEY([t_exam_id])
REFERENCES [dbo].[exam_master] ([e_id])
GO
ALTER TABLE [dbo].[test_master] CHECK CONSTRAINT [FK_test_master_exam_master]
GO
ALTER TABLE [dbo].[test_master]  WITH NOCHECK ADD  CONSTRAINT [FK_test_master_member_master] FOREIGN KEY([t_mem_id])
REFERENCES [dbo].[member_master] ([m_id])
GO
ALTER TABLE [dbo].[test_master] CHECK CONSTRAINT [FK_test_master_member_master]
GO
USE [master]
GO
ALTER DATABASE [eExam] SET  READ_WRITE 
GO
