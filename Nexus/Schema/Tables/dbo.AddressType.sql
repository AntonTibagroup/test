CREATE TABLE dbo.AddressType(
[AddressTypeId] [integer]  IDENTITY(1,1) NOT NULL,
[Description] [varchar](25),
CONSTRAINT [PKAddressType] PRIMARY KEY CLUSTERED ([AddressTypeId])
);
go

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mailing, Physical, Business or Other Address' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AddressType'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AddressType', 
@level2type=N'COLUMN',@level2name=N'AddressTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description for the type of address' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AddressType', 
@level2type=N'COLUMN',@level2name=N'Description'
GO
