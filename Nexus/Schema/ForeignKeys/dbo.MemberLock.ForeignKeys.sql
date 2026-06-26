
ALTER TABLE [dbo].[MemberLock] ADD CONSTRAINT [FKMemberLockMember] FOREIGN KEY ([MemberId]) REFERENCES [Member]([MemberId]);
GO

ALTER TABLE [dbo].[MemberLock] ADD CONSTRAINT [FKMemberLockAppUser] FOREIGN KEY ([AppUserId]) REFERENCES [AppUser]([AppUserId]);
GO