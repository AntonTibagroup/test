
ALTER TABLE [dbo].[DocumentProposal] ADD CONSTRAINT [FKDocumentProposalDocument] FOREIGN KEY ([DocumentId]) REFERENCES [Document]([DocumentId]);
GO

ALTER TABLE [dbo].[DocumentProposal] ADD CONSTRAINT [FKDocumentProposalProposal] FOREIGN KEY ([ProposalId]) REFERENCES [dbo].[Proposal]([ProposalId]);
GO