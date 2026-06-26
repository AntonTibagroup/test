CREATE TABLE [dbo].[Provider]
( 
	[ProviderId]         integer  IDENTITY ( 1,1 )  NOT NULL ,
	[ProviderName]       varchar(100)  NOT NULL ,
	[isActive]           bit  NOT NULL 	CONSTRAINT [DFProviderisActive]	 DEFAULT  1,
	[TIN]                integer  NULL ,
	[Preferred]          bit  NULL ,
	[TaxExempt]          bit  NULL ,
	[MOU]                bit  NULL ,
	[Website]            varchar(100)  NULL ,
	[Specialty]          varchar(100)  NULL ,
	[NPI]                varchar(10)  NULL 
	CONSTRAINT [PKProvider] PRIMARY KEY  CLUSTERED ([ProviderId] ASC)
)

GO
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'Main provider table, this is where most providers will be listed.  The main locations, such as Cleveland Clinic or a private practice.  The locations of the facilities for each Cleveland Clinic will be linked and listed in the Facility table. Every provider must have a record in the Facility table.',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'Provider'
