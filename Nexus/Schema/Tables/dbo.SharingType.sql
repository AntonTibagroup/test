CREATE TABLE [dbo].[SharingType](
	[SharingTypeId] [integer]  IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[isActive] [bit] NOT NULL CONSTRAINT DFSharingTypeisActive DEFAULT(1),
 CONSTRAINT [PKSharingType] PRIMARY KEY CLUSTERED (	[SharingTypeId] ASC)
)

GO
EXEC sys.sp_addextendedproperty
@name = 'MS_Description', @value = 'To set special sharing types. For example: Maryland where the members reimburse each other directly.',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'SharingType'
GO
