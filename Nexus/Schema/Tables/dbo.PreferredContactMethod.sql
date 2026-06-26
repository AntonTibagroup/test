CREATE TABLE [dbo].[PreferredContactMethod]
( 
	[PreferredContactMethodId] [integer]  IDENTITY(1,1) NOT NULL ,
	[Description]              [varchar](50) NOT NULL,
	CONSTRAINT [PKPreferredContactMethod] PRIMARY KEY  CLUSTERED ([PreferredContactMethodId] ASC))
