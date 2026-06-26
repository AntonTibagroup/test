CREATE TABLE [dbo].[NDCCode]
( 
	[ProductNDC]         varchar(11)  NOT NULL ,
	[ProductTypeName]    varchar(50)  NULL ,
	[ProprietaryName]    varchar(500)  NULL ,
	[NonProprietaryName] varchar(500)  NULL ,
	[DosageFormName]     varchar(25)  NULL ,
	[RouteName]          varchar(50)  NULL ,
	[StartMarketingDate] datetime  NULL ,
	[EndMarketingDate]   datetime  NULL ,
	[SubstanceName]      varchar(200)  NULL ,
	[ActiveNumeratorStrength] varchar(500)  NULL ,
	[ActiveIngredientUnit] varchar(500)  NULL ,
	[PharmacyClasses]    varchar(200)  NULL ,
	CONSTRAINT [PKNDCCode] PRIMARY KEY  CLUSTERED ([ProductNDC] ASC)
)
