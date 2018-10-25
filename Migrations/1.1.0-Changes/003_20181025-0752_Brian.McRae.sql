-- <Migration ID="53f6308c-050c-49e4-8024-a5c99d3fba0f" />
GO


SET DATEFORMAT YMD;


GO
PRINT (N'Delete 1 row from [Person].[AddressType]');

DELETE [Person].[AddressType]
WHERE  [AddressTypeID] = 11;


GO