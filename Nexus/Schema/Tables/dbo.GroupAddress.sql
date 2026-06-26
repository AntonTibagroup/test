

CREATE TABLE [dbo].[GroupAddress](
	[GroupId] [int] NOT NULL,
	[AddressId] [int] NOT NULL,
	CONSTRAINT [PKgroupaddress] PRIMARY KEY CLUSTERED ([GroupId],[AddressId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address(es) that belong to the Group' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'GroupAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the Group table, GroupId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'GroupAddress', 
@level2type=N'COLUMN',@level2name=N'GroupID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the Address table, AddressId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'GroupAddress', 
@level2type=N'COLUMN',@level2name=N'AddressID'
GO
