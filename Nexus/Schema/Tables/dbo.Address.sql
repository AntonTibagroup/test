

CREATE TABLE [dbo].[Address](
[AddressId] [int] IDENTITY(1,1) NOT NULL,
[AddressTypeId] [int] NULL,
[Address1] [varchar](50) NOT NULL,
[Address2] [varchar](50) NULL,
[City] [varchar](100) NOT NULL,
[StateCode] [char](2) NOT NULL,
[PostalCode] [char](5) NOT NULL,
[StartDate] [date] NULL CONSTRAINT [DFAddressStartDate]  DEFAULT (CAST(GETUTCDATE() AS DATE)),
[EndDate] [date] NULL,
[CountryCode] [char](3) NOT NULL CONSTRAINT [DFaddressCountryCode]  DEFAULT ('USA'),
[Address3]  [varchar](50) NULL,
CONSTRAINT [PKaddress] PRIMARY KEY CLUSTERED ([AddressId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mailing, Physical, Business or Other Address' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Address'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Address', 
@level2type=N'COLUMN',@level2name=N'AddressID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of address, whether mailing, physical or other' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Address', 
@level2type=N'COLUMN',@level2name=N'AddressTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Line 1 for the address, typically the street number and name' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Address', 
@level2type=N'COLUMN',@level2name=N'Address1'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Line 2 for the address, possibly a suite number or other directions' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Address', 
@level2type=N'COLUMN',@level2name=N'Address2'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'City for the address' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Address', 
@level2type=N'COLUMN',@level2name=N'City'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to State table, links to StateCode field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Address', 
@level2type=N'COLUMN',@level2name=N'StateCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Five character postal code' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Address', 
@level2type=N'COLUMN',@level2name=N'PostalCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date that the address is active' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Address', 
@level2type=N'COLUMN',@level2name=N'StartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date that the address is no longer active' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Address', 
@level2type=N'COLUMN',@level2name=N'EndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to Country table, links to CountryCode field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Address', 
@level2type=N'COLUMN',@level2name=N'CountryCode'
GO
