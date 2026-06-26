
ALTER TABLE [dbo].[MemberPreviousCondition] ADD CONSTRAINT [FKMemberPreviousConditionPreviousCondition] FOREIGN KEY ([PreviousConditionId]) REFERENCES [PreviousCondition]([PreviousConditionId]);
GO

ALTER TABLE [dbo].[MemberPreviousCondition] ADD CONSTRAINT [FKMemberPreviousConditionMember] FOREIGN KEY ([MemberId]) REFERENCES [Member]([MemberId]);
GO