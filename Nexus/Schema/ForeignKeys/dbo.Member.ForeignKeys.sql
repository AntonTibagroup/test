
ALTER TABLE [dbo].[Member] ADD CONSTRAINT [FKMemberEmail] FOREIGN KEY([EmailId]) REFERENCES [dbo].[Email] ([EmailId]);
GO

ALTER TABLE [dbo].[Member] ADD CONSTRAINT [FKMemberGender] FOREIGN KEY([GenderCode]) REFERENCES [dbo].[Gender] ([GenderCode]);
GO

ALTER TABLE [dbo].[Member] ADD CONSTRAINT [FKMemberLanguage] FOREIGN KEY([LanguageCode]) REFERENCES [dbo].[Language] ([LanguageCode]);
GO

ALTER TABLE [dbo].[Member] ADD CONSTRAINT [FKMemberSuffix] FOREIGN KEY([SuffixCode]) REFERENCES [dbo].[Suffix] ([SuffixCode]);
GO

ALTER TABLE [dbo].[Member] ADD CONSTRAINT [FKMemberDropReason] FOREIGN KEY ([DropReasonId]) REFERENCES [DropReason]([DropReasonId]);
GO