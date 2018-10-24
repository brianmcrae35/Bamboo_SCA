-- <Migration ID="3ae99a11-74e5-4610-a492-30bf04beb302" />
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
IF (SELECT COUNT(*)
    FROM   [Person].[AddressType]) = 0
    BEGIN
        PRINT (N'Add 7 rows to [Person].[AddressType]');
        SET IDENTITY_INSERT [Person].[AddressType] ON;
        INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [Comments])
        VALUES                             (1, 'Billing', NULL);
        INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [Comments])
        VALUES                             (2, 'Home', NULL);
        INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [Comments])
        VALUES                             (3, 'Main Office', NULL);
        INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [Comments])
        VALUES                             (4, 'Primary', NULL);
        INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [Comments])
        VALUES                             (5, 'Shipping', NULL);
        INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [Comments])
        VALUES                             (6, 'Archive', NULL);
        INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [Comments])
        VALUES                             (11, 'Regional Office', 'SomeText');
        SET IDENTITY_INSERT [Person].[AddressType] OFF;
    END


GO