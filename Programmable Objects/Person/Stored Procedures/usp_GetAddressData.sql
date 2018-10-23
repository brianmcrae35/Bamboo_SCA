IF OBJECT_ID('[Person].[usp_GetAddressData]') IS NOT NULL
	DROP PROCEDURE [Person].[usp_GetAddressData];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [Person].[usp_GetAddressData] AS
BEGIN
SELECT * FROM Person.Address
END

GO
