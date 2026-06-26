
ALTER TABLE [dbo].[Outbox] ADD CONSTRAINT [FKOutboxOutboxMessageType] FOREIGN KEY ([OutboxMessageTypeId]) REFERENCES [OutboxMessageType]([OutboxMessageTypeId]);
GO

ALTER TABLE [dbo].[Outbox] ADD CONSTRAINT [FKOutboxOutboxMessageStatus] FOREIGN KEY ([OutboxMessageStatusId]) REFERENCES [OutboxMessageStatus]([OutboxMessageStatusId]);
GO