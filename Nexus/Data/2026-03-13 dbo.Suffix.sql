PRINT N'Filling table Suffix';
MERGE INTO [dbo].[Suffix] AS s
USING (VALUES 
    ('01', 'Jr'  ),
    ('02', 'Sr'  ),
    ('03', 'I'   ),
    ('04', 'II'  ),
    ('05', 'III' ),
    ('06', 'IV'  ),
    ('07', 'V'   ),
    ('08', 'VI'  ),
    ('09', 'VII' ),
    ('10', 'VIII'),
    ('11', 'IX'  ),
    ('12', 'X'   ),
    ('13', 'MD'  )
) AS i (SuffixCode, Name)
ON s.SuffixCode = i.SuffixCode
WHEN NOT MATCHED BY TARGET THEN
    INSERT (SuffixCode, Name) VALUES (i.SuffixCode, i.Name);
    go