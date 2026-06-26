PRINT N'Filling table AuthRepRelationship';

SET IDENTITY_INSERT [dbo].[AuthRepRelationship] ON;

MERGE INTO [dbo].[AuthRepRelationship] AS target
USING (
	VALUES
		(1, 'Spouse'),
		(2, 'Ex-Spouse'),
		(3, 'Secretary/Assistant'),
		(4, 'Parent'),
		(5, 'Child'),
		(6, 'Friend'),
		(7, 'Church (Treasurer, Elder, Pastor)'),
		(8, 'Employer')
) AS source (AuthRepRelationshipId, Description)
ON target.AuthRepRelationshipId = source.AuthRepRelationshipId
WHEN MATCHED THEN
	UPDATE SET
		Description = source.Description
WHEN NOT MATCHED THEN
	INSERT (AuthRepRelationshipId, Description)
	VALUES (source.AuthRepRelationshipId, source.Description);

SET IDENTITY_INSERT [dbo].[AuthRepRelationship] OFF;

go
