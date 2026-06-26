

CREATE TABLE [dbo].[Country](
[CountryCode] [char](3) NOT NULL,
[Name] [varchar](70) NULL,
[ISO2] [char](2) NULL,
CONSTRAINT [PKcountry] PRIMARY KEY CLUSTERED ([CountryCode])
)
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains list of country codes from ISO 3166' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Country'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Three character country code' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Country', 
@level2type=N'COLUMN',@level2name=N'CountryCode'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country name' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Country', 
@level2type=N'COLUMN',@level2name=N'Name'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Two character country code' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Country', 
@level2type=N'COLUMN',@level2name=N'ISO2'
go