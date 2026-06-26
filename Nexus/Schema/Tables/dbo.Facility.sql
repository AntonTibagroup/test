

CREATE TABLE [dbo].[Facility]
( 
	[FacilityId]         integer  IDENTITY ( 1,1 )  NOT NULL ,
	[FacilityName]       varchar(50)  NOT NULL ,
	[TIN]                integer  NULL ,
	[ProviderId]         integer  NOT NULL ,
	[Latitude]           decimal(10,6)  NULL ,
	[Website]            varchar(100)  NULL ,
	[Longitude]          decimal(10,6)  NULL ,
	CONSTRAINT [PKFacility] PRIMARY KEY  CLUSTERED ([FacilityId] ASC)
)

GO
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'This is the facilities for each provider.  The Cleveland Clinic on Wooster Rd. These will all have a main provider attached and will be linked to the address.  Every provider must have a facility.',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'Facility'
