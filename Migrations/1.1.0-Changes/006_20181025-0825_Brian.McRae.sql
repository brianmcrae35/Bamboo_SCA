-- <Migration ID="5bab5c01-dab3-455f-ab83-89c05044fa48" />
GO

PRINT N'Altering [Person].[Address]'
GO
ALTER TABLE [Person].[Address] ADD
[Comments] [nvarchar] (255) NULL
GO
