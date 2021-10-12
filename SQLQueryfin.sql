CREATE TABLE [dbo].[Adminn]
(  
    [AdminID] INT IDENTITY(1,1) PRIMARY KEY,
	[UserName] NVARCHAR(50),
    [UserPass] NVARCHAR(50) NOT NULL,
	[UserEmail] NVARCHAR(50) NOT NULL,	

)

CREATE TABLE [dbo].[JobFinder]
(  
    [JobFindID] INT IDENTITY(1,1) PRIMARY KEY,
	[UserName] NVARCHAR(50),
    [UserPass] NVARCHAR(50) NOT NULL,
	[Address] NVARCHAR(100),
	[UserEmail] NVARCHAR(50) NOT NULL,
	[ConNumber] BIGINT NOT NULL,
	[College] NVARCHAR(100) NULL,
	[University] NVARCHAR(100) NULL,
	[Experience] TEXT NULL,
	[Resume] VARBINARY(MAX) NULL,

)

CREATE TABLE [dbo].[JobPoster]
(  
    [JobPostID] INT IDENTITY(1,1) PRIMARY KEY,
	[UserName] NVARCHAR(50),
    [UserPass] NVARCHAR(50) NOT NULL,
	[JobName] NVARCHAR(100) NOT NULL,		
    [JobDesc] TEXT NULL,
	[WorkDays] SMALLINT NOT NULL,
	[Salary] BIGINT NOT NULL,
	[Skills] TEXT NOT NULL,
	[Age] SMALLINT NULL,
	[Gender] NVARCHAR(50) NULL,
	[Email] NVARCHAR(50),
    [ConNumber] BIGINT NOT NULL,

)


CREATE TABLE [dbo].[Support]
(  
     [SupportID] INT IDENTITY(1,1) PRIMARY KEY,
	 [Name] NVARCHAR(50) NULL,
	 [EMAIL] NVARCHAR(50) NOT NULL,
	 [Subject] NVARCHAR(100) NOT NULL,
	 [Message] TEXT NOT NULL,
)

CREATE TABLE [dbo].[Apply]
(
    [ApplyID] INT IDENTITY(1,1) PRIMARY KEY,
	[ApplyName] NVARCHAR(100) NULL,
	[JobFindID] INT NOT NULL FOREIGN KEY REFERENCES JobFinder(JobFindID),
	[JobPostID] INT NOT NULL FOREIGN KEY REFERENCES JobPoster(JobPostID),
)
