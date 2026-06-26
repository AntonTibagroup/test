PRINT N'Filling table Program';
SET identity_insert dbo.Program ON;
MERGE dbo.Program AS target
USING (VALUES
      (1,'', 'CHM Gold', '1980-01-01', '9999-01-01', 299.00,
        'Highest tier of program coverage.')
    , (2,'', 'CHM Silver', '1980-01-01', '9999-01-01', 169.00,
        'Middle tier of program coverage.')
    , (3,'', 'CHM Bronze', '1980-01-01', '9999-01-01', 115.00,
        'Lowest tier of program coverage.')
    , (4,'', 'CHM SeniorShare', '2023-12-01', '9999-01-01', 119.00,
        'Program for Medicare age members and those with early Medicare.')
) AS source (ProgramId,ProgramCode, Name, StartDate, EndDate, Price, Description)

ON target.ProgramId = source.ProgramId

WHEN MATCHED THEN 
    UPDATE SET 
        Name        = source.Name,
        StartDate   = source.StartDate,
        EndDate     = source.EndDate,
        Price       = source.Price,
        Description = source.Description

WHEN NOT MATCHED THEN
    INSERT (ProgramId,ProgramCode, Name, StartDate, EndDate, Price, Description)
    VALUES (source.ProgramId, source.ProgramCode, source.Name, source.StartDate, source.EndDate, source.Price, source.Description);
set identity_insert dbo.Program OFF;
go