CREATE TABLE [Person].[AddressType]
(
[AddressTypeID] [int] NOT NULL IDENTITY(1, 1),
[Name] [varchar] (250) NOT NULL,
[Comments] [varchar] (100) NULL
)
GO
ALTER TABLE [Person].[AddressType] ADD CONSTRAINT [PK_AddressType_ID] PRIMARY KEY CLUSTERED  ([AddressTypeID])
GO
