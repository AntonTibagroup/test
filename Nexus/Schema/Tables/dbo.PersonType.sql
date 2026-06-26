CREATE TABLE [dbo].[PersonType]
( 
	[PersonTypeId]       integer  IDENTITY ( 1,1 )  NOT NULL ,
	[Description]        varchar(25)  NULL ,
	CONSTRAINT [PKPersonType] PRIMARY KEY  CLUSTERED ([PersonTypeId] ASC)
)

GO
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'List of available person types. EX: Adult or dependent',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'PersonType'
