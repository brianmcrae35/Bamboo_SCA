-- <Migration ID="b121a155-d62d-4cca-8de3-9082d7cf499c" />
GO

PRINT N'Altering [Person].[Person]'
GO
ALTER TABLE [Person].[Person] ADD
[twitter] [varchar] (100) NULL
GO

SET IMPLICIT_TRANSACTIONS, NUMERIC_ROUNDABORT OFF;
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, NOCOUNT, QUOTED_IDENTIFIER ON;

SET DATEFORMAT YMD;


GO
PRINT (N'Add 2 rows to [Person].[AddressType]');

SET IDENTITY_INSERT [Person].[AddressType] ON;

INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [Comments])
VALUES                             (12, 'Regional Office', 'SomeText');

INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [Comments])
VALUES                             (13, 'Regional Office', 'SomeText');

SET IDENTITY_INSERT [Person].[AddressType] OFF;


GO