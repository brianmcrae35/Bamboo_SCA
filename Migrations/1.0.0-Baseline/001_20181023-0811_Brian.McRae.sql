-- <Migration ID="c736596a-beac-4aba-bdd4-078b952ed880" />
GO

PRINT N'Creating schemas'
GO
CREATE SCHEMA [Person]
AUTHORIZATION [dbo]
GO
PRINT N'Creating [Person].[Person]'
GO
CREATE TABLE [Person].[Person]
(
[PersonID] [int] NOT NULL,
[LastName] [varchar] (255) NULL,
[FirstName] [varchar] (255) NULL,
[SSN] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_Person_ID] on [Person].[Person]'
GO
ALTER TABLE [Person].[Person] ADD CONSTRAINT [PK_Person_ID] PRIMARY KEY CLUSTERED  ([PersonID])
GO
PRINT N'Creating [Person].[usp_GetPerson]'
GO
CREATE PROCEDURE [Person].[usp_GetPerson]
AS
SELECT * FROM Person
GO
PRINT N'Creating [Person].[Address]'
GO
CREATE TABLE [Person].[Address]
(
[AddressID] [int] NOT NULL IDENTITY(1, 1),
[AddressLine1] [nvarchar] (60) NOT NULL,
[AddressLine2] [nvarchar] (60) NULL,
[City] [nvarchar] (30) NULL,
[State] [varchar] (50) NULL,
[ZIP] [nvarchar] (15) NULL
)
GO
PRINT N'Creating [Person].[usp_GetAddressData]'
GO
CREATE PROCEDURE [Person].[usp_GetAddressData] AS
BEGIN
SELECT * FROM Person.Address
END

GO
PRINT N'Creating [Person].[AddressType]'
GO
CREATE TABLE [Person].[AddressType]
(
[AddressTypeID] [int] NOT NULL IDENTITY(1, 1),
[Name] [varchar] (250) NOT NULL,
[Comments] [varchar] (100) NULL
)
GO
PRINT N'Creating primary key [PK_AddressType_ID] on [Person].[AddressType]'
GO
ALTER TABLE [Person].[AddressType] ADD CONSTRAINT [PK_AddressType_ID] PRIMARY KEY CLUSTERED  ([AddressTypeID])
GO
PRINT N'Creating [Person].[usp_GetAddressTypeData]'
GO

CREATE PROCEDURE [Person].[usp_GetAddressTypeData]
AS
SELECT Name FROM Person.AddressType
GO
