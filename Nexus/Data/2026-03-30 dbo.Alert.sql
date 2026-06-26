PRINT N'Filling table Alert';

MERGE INTO [dbo].[Alert] AS target
USING (
    VALUES 
    ('Delinquent Hold', '1'),
    ('Litigation Hold', '1'),
    ('Overshare Hold', '1')
) AS source (Description, PriorityLevel)
ON target.Description = source.Description
WHEN NOT MATCHED THEN
    INSERT (Description, PriorityLevel)
    VALUES (source.Description, source.PriorityLevel);
GO
