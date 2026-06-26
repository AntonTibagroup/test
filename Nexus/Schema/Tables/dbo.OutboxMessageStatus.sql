CREATE TABLE [dbo].[OutboxMessageStatus]
( 
	[OutboxMessageStatusId] integer  NOT NULL ,
	[Description]        varchar(50)  NOT NULL ,
	CONSTRAINT [PKOutboxMessageStatus] PRIMARY KEY  CLUSTERED ([OutboxMessageStatusId] ASC)
)

GO
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'Lookup table for status of messages for the Outbox table. Ex:',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'OutboxMessageStatus'
