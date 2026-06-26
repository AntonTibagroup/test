

CREATE TABLE [dbo].[ClaimPrescriptionLineItem]
( 
	[PharmacyClaimLineItemId] varchar(25)  NOT NULL ,
	[DateFilled]         varchar(25)  NULL ,
	[AmountFilled]       varchar(25)  NULL ,
	[Amount]             varchar(25)  NULL ,
	[ClaimId]            integer  NULL ,
	[ReductionCodeId]    char(2)  NULL ,
	[ProductNDC]         varchar(11)  NULL ,
	CONSTRAINT [PKClaimPrescriptionLineItem] PRIMARY KEY  CLUSTERED ([PharmacyClaimLineItemId] ASC)
	)
