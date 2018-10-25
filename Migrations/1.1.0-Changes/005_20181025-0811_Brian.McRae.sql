-- <Migration ID="42aaaaf4-2900-4300-b0c9-f5333ff338e3" />
GO

PRINT N'Altering [Person].[AddressType]'
GO
ALTER TABLE [Person].[AddressType] DROP
COLUMN [Comments2]
GO
