IF OBJECT_ID('[Person].[GetPersonTwitter2]') IS NOT NULL
	DROP PROCEDURE [Person].[GetPersonTwitter2];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE PROCEDURE [Person].[GetPersonTwitter2]
AS
SELECT * FROM Person.Person
GO
