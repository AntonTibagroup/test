PRINT N'Filling table AddOn';
SET IDENTITY_INSERT [dbo].[AddOn] ON;
MERGE dbo.AddOn AS target
USING (VALUES
    (1,'test', 'CHM+', '2026-05-18', '9999-01-01', 42.00,
     'Takes care of medical bills that exceed the $125,000 limit per illness specified in the CHM Guidelines.')
) AS source (AddOnId,AddOnCode, Name, StartDate, EndDate, Price, Description)

ON target.AddOnId = source.AddOnId

WHEN MATCHED THEN 
    UPDATE SET 
        Name        = source.Name,
        StartDate   = source.StartDate,
        EndDate     = source.EndDate,
        Price       = source.Price,
        Description = source.Description

WHEN NOT MATCHED THEN
    INSERT (AddOnId, AddOnCode,Name, StartDate, EndDate, Price, Description)
    VALUES (source.AddOnId, source.AddOnCode, source.Name, source.StartDate, source.EndDate, source.Price, source.Description);
    SET IDENTITY_INSERT [dbo].[AddOn] OFF;
    go