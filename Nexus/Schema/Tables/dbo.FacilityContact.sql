

CREATE TABLE [dbo].[FacilityContact]
( 
	[ContactId]          integer  NOT NULL ,
	[ContactRoleId]      integer  NOT NULL ,
	[FacilityId]         integer  NOT NULL ,
	CONSTRAINT [PKFacilityContact] PRIMARY KEY  CLUSTERED ([ContactId] ASC,[ContactRoleId] ASC,[FacilityId] ASC),
)

GO
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field for each contact',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'FacilityContact',
@level2type = 'COLUMN', @level2name = 'ContactId'
go
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field for each contact role',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'FacilityContact',
@level2type = 'COLUMN', @level2name = 'ContactRoleId'
go