IF OBJECT_ID('[Person].[GetPersonTwitter]') IS NOT NULL
	DROP PROCEDURE [Person].[GetPersonTwitter];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE PROCEDURE [Person].[GetPersonTwitter]
AS
SELECT * FROM Person.Person
GO
