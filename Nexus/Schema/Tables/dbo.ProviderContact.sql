

CREATE TABLE [dbo].[ProviderContact]
( 
	[ProviderId]         integer  NOT NULL ,
	[ContactId]          integer  NOT NULL ,
	[ContactRoleId]      integer  NOT NULL ,
	CONSTRAINT [PKProviderContact] PRIMARY KEY  CLUSTERED ([ProviderId] ASC,[ContactId] ASC,[ContactRoleId] ASC)
)
