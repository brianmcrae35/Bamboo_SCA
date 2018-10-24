-- <Migration ID="de8a8ac5-72aa-423a-9c62-fb60077da6ac" />
GO

PRINT N'Altering [Person].[Person]'
GO
ALTER TABLE [Person].[Person] DROP
COLUMN [twitter]
GO
