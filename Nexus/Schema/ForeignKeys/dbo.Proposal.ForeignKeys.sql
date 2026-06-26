
ALTER TABLE [dbo].[Proposal] ADD CONSTRAINT [FKProposalMember] FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Member]([MemberId]);
GO

ALTER TABLE [dbo].[Proposal] ADD CONSTRAINT [FKProposalProvider] FOREIGN KEY ([ProviderId]) REFERENCES [dbo].[Provider]([ProviderId]);
GO