

CREATE TABLE [dbo].[Outbox]
( 
	[OutboxId]           int  IDENTITY ( 1,1 )  NOT NULL ,
	[MessageId]          varchar(36)  NOT NULL ,
	[Payload]            varchar(max)  NOT NULL ,
	[CreateDatetime]     Datetimeoffset(3)  NOT NULL ,
	[Attempts]           integer  NOT NULL ,
	[LastAttemptDatetime] Datetimeoffset(3)  NULL ,
	[LastErrorMessage]   varchar(max)  NULL ,
	[OutboxMessageTypeId] integer  NOT NULL ,
	[OutboxMessageStatusId] integer  NOT NULL ,
	CONSTRAINT [PKOutbox] PRIMARY KEY  CLUSTERED ([OutboxId] ASC)
)
