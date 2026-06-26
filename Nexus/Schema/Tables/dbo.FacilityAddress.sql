

CREATE TABLE [FacilityAddress]
( 
	[FacilityId]         integer  NOT NULL ,
	[AddressId]          integer  NOT NULL ,
	CONSTRAINT [PKFacilityAddress] PRIMARY KEY  CLUSTERED ([FacilityId] ASC,[AddressId] ASC)
)
