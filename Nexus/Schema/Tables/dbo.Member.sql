

CREATE TABLE [dbo].[Member](
[MemberId] [int] IDENTITY(1,1) NOT NULL,
[FirstName] [varchar](50) NOT NULL,
[LastName] [varchar](50) NOT NULL,
[MiddleName] [varchar](50) NULL,
[SuffixCode] [char](2) NULL,
[DOB] [date] NOT NULL,
[DOD] [date] NULL,
[PreferredName] [varchar](25) NULL,
[Last4SSN] [numeric](4, 0) NULL,
[LanguageCode] [char](2) NOT NULL CONSTRAINT [DFmemberLanguageCode] DEFAULT ('EN'),
[CreateDateTimeOffset] [DATETIMEOFFSET](3) NOT NULL CONSTRAINT [DFMemberCreateDateTimeOffset] DEFAULT (SYSUTCDATETIME()),
[OneTimeException] [bit] NULL,
[GenderCode] [char](1) NOT NULL,
[EmailId] [int] NULL,
[CorrelationId] varchar(36) NOT NULL,
[DropReasonId] [integer]  NULL, 
CONSTRAINT [PKMember] PRIMARY KEY CLUSTERED ([MemberId]),
CONSTRAINT [UQMemberCorrelationId] UNIQUE ([CorrelationId]),
CONSTRAINT [CKMemberCreateDateTimeOffsetUTC] 
	CHECK (DATEPART(TZOFFSET, CreateDateTimeOffset) = 0)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains members which are defined as the participating individual(s) within a membership.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Member'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Member', 
@level2type=N'COLUMN',@level2name=N'MemberID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First name of the member' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Member', 
@level2type=N'COLUMN',@level2name=N'FirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last name or Surname of the member' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Member', 
@level2type=N'COLUMN',@level2name=N'LastName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Middle name of the member' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Member', 
@level2type=N'COLUMN',@level2name=N'MiddleName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the Suffix table, links to the suffix code, will be the suffix for the member', 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Member', 
@level2type=N'COLUMN',@level2name=N'SuffixCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date of Birth for the member' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Member', 
@level2type=N'COLUMN',@level2name=N'DOB'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date of death for the member if the member has died' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Member', 
@level2type=N'COLUMN',@level2name=N'DOD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If the member has a preferred name to go by or a nickname' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Member', 
@level2type=N'COLUMN',@level2name=N'PreferredName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last 4 digits of the Social Security Number, this should not be a fake number' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Member', 
@level2type=N'COLUMN',@level2name=N'Last4SSN'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the Language table, links to LanguageCode, this is the native language of the member, defaults to English' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Member', 
@level2type=N'COLUMN',@level2name=N'LanguageCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date that the member was added to the system, defaults to today''s date' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Member', 
@level2type=N'COLUMN',@level2name=N'CreateDateTimeOffset'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is the flag for the One Time Exception rule' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Member', 
@level2type=N'COLUMN',@level2name=N'OneTimeException'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the Gender table, links to GenderCode field, will be the gender for the member' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Member', 
@level2type=N'COLUMN',@level2name=N'GenderCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the Email table, links to the EmailID field, this will be the email address for the member' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Member', 
@level2type=N'COLUMN',@level2name=N'EmailID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Application-generated UUIDv7. While unique, do not use as a foreign key.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Member', 
@level2type=N'COLUMN',@level2name=N'CorrelationId'
GO
