

CREATE TABLE [dbo].[MembershipCommunicationRequest](
	[MembershipCommunicationRequestId] [integer]  IDENTITY(1,1) NOT NULL,
	[SignOffDate] [date] NULL,
	[CreateDateTimeOffset] [datetimeoffset](3) NOT NULL CONSTRAINT DFMembershipCommunicationRequestCreateDateTimeOffset DEFAULT (SYSUTCDATETIME()),
	[CommunicationId] [int] NOT NULL,
	[AppUserId] [int] NOT NULL,
 	CONSTRAINT [PKMembershipCommunicationRequest] PRIMARY KEY CLUSTERED ([MembershipCommunicationRequestId] ASC)
 )
