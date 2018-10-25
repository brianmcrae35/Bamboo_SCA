-- <Migration ID="58640661-9b7a-4de2-9a40-5dbc0a62688e" />
GO

PRINT N'Altering [Person].[AddressType]'
GO
ALTER TABLE [Person].[AddressType] ADD
[Comments2] [nvarchar] (255) NULL
GO
