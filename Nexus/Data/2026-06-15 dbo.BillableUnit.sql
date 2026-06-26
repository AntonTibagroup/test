PRINT N'Filling table BillableUnit';
SET IDENTITY_INSERT dbo.BillableUnit ON;
MERGE dbo.BillableUnit AS target
USING (VALUES
      (1, 'First Adult')
    , (2, 'Second Adult')
    , (3, 'Dependent')
) AS source (BillableUnitId, Description)

ON target.BillableUnitId = source.BillableUnitId

WHEN MATCHED THEN 
    UPDATE SET 
        Description = source.Description

WHEN NOT MATCHED THEN
    INSERT (BillableUnitId, Description)
    VALUES (source.BillableUnitId, source.Description);
SET IDENTITY_INSERT dbo.BillableUnit OFF;
go
