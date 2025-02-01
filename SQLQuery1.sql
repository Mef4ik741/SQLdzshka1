IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'Academy')
    CREATE DATABASE Academy
	
GO

USE Academy

CREATE Table Groups
(
	[Id] int identity(1,1) NOT NULL PRIMARY KEY,
	[Name] nvarchar(10) NOT NULL UNIQUE,
	[Rating] int NOT NULL CHECK ([Rating] >= 0 and [Rating] <= 5),
	[Year] int NOT NULL CHECK ([Year] >= 1 and [Year] <= 5)
);

CREATE Table Departments
(
	[Id] int identity(1,1) NOT NULL PRIMARY KEY,
	[Financing] money NOT NULL DEFAULT 0 CHECK ([Financing] > 0),
	[Name] nvarchar(100) NOT NULL UNIQUE, 
);

CREATE Table Faculties
(
	[Id] int identity(1,1) NOT NULL PRIMARY KEY,
	[Name] nvarchar(100) NOT NULL UNIQUE, 
);

CREATE Table Teachers
(
	[Id] int identity(1,1) NOT NULL PRIMARY KEY,
	[EmploymentDate] date NOT NULL CHECK ([EmploymentDate] >= '01.01.1990'),
	[Name] nvarchar(max) NOT NULL,
	[Premium] money NOT NULL DEFAULT 0 CHECK([Premium] > 0),
	[Salary] money NOT NULL CHECK([Salary] >= 0),
	[Surname] nvarchar(max) NOT NULL
);