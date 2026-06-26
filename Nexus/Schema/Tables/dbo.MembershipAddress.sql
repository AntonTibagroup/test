

CREATE TABLE [dbo].[MembershipAddress](
	[AddressId] [int] NOT NULL,
	[MembershipId] [int] NOT NULL,
	CONSTRAINT [PKMembershipAddress] PRIMARY KEY CLUSTERED ([AddressId],[MembershipId])
) 

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address(es) that belong to the Membership, cross reference table' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MembershipAddress'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address ID field, foreign keys to Address table' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MembershipAddress', 
@level2type=N'COLUMN',@level2name=N'AddressID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Membership ID field, foreign keys to Membership table' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MembershipAddress', 
@level2type=N'COLUMN',@level2name=N'MembershipID'
GO
