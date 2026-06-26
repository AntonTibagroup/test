

CREATE TABLE [dbo].[ProposalCommunicationRequest](
	[ProposalCommunicationRequestId] [integer]  IDENTITY(1,1) NOT NULL,
	[SignOffDate] [date] NULL,
	[CreateDateTimeOffset] [datetimeoffset](3) NOT NULL CONSTRAINT DFProposalCommunicationRequestCreateDateTimeOffset DEFAULT (SYSUTCDATETIME()),
	[CommunicationId] [int] NOT NULL,
	[AppUserId] [int] NOT NULL,
 	CONSTRAINT [PKProposalCommunicationRequest] PRIMARY KEY CLUSTERED ([ProposalCommunicationRequestId] ASC)
)
