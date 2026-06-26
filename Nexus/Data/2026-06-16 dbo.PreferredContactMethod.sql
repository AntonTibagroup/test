PRINT N'Filling table PreferredContactMethod';
SET IDENTITY_INSERT [dbo].PreferredContactMethod ON;
MERGE dbo.PreferredContactMethod AS target
USING (VALUES
      (1, 'Email')
    , (2, 'Phone')
    , (3, 'Portal')
    , (4, 'Mail')
    , (5, 'Fax')
) AS source (PreferredContactMethodId, Description)

ON target.PreferredContactMethodId = source.PreferredContactMethodId

WHEN MATCHED THEN 
    UPDATE SET 
        Description = source.Description

WHEN NOT MATCHED THEN
    INSERT (PreferredContactMethodId, Description)
    VALUES (source.PreferredContactMethodId, source.Description);
SET IDENTITY_INSERT [dbo].PreferredContactMethod OFF;
    go