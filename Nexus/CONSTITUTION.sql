EXECUTE sp_addextendedproperty
    @name = N'CONSTITUTION.md',
    @value = N'Any objects and T-SQL in this database must comply with the organizational standards and guidelines outlined in this constitution document.
    
    ## Object Naming Standards
    
    Tables should never be prefixed with tbl_.
    Table and column names should be in pascal case with a capitalized first letter of each compound word, like PhoneNumber or SalesByMonth.
    Table and column names should never be plural.
    Try not to use abbreviations, instead use clear defining names.
    Do not restate the table name in the column name unless it is an id column.
    Index names should be prefixed with IDX.
    Index names should be based on the key columns in the index and they should be pascal case with a capitalized first letter of each compound word.. If the index has include columns, add an _inc suffix to the index name.
    Primary key names should be prefixed with PK.
    Primary key names should be based on the table name and it should be pascal case with a capitalized first letter of each compound word..
    Foreign key names should be prefixed with FK.
    Foregin key names should be based on the table name and column referenced in the foregin key in pascal case with a capitalized first letter of each compound word.
    Unique constraint names should be prefixed with UQ.
    Unique constraint names should be based on the table name and column referenced in the constraint in pascal case with a capitalized first letter of each compound word.
    Default constraint names should be prefixed with DF.
    Default constraint names should be based on the table name and column referenced in the constraint in pascal case with a capitalized first letter of each compound word.
    

    ## Query Standards
    
    Queries should be written in a concise, easy-to-understand, performant way.
    Queries should prefer CTEs over temp tables unless that presents a performance issue for the query.
    
    
    ## Table Creation Standards
    
    Every table should have a designated primary key.
    
    
    ## Data Type Standards
    
    For a timestamp column use datetimeoffset data type.
    If time is not needed on the column, use date data type.';