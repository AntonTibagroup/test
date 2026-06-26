CREATE TABLE [dbo].[OutboxMessageType]
( 
	[OutboxMessageTypeId] integer  NOT NULL ,
	[Description]        varchar(50)  NOT NULL ,
	CONSTRAINT [PKOutboxMessageType] PRIMARY KEY  CLUSTERED ([OutboxMessageTypeId] ASC)
)

GO
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'Lookup table for types of messages in the Outbox table. Ex:',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'OutboxMessageType'
