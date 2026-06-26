

CREATE TABLE [dbo].[PlaceOfService](
[PlaceOfServiceId] [char](2) NOT NULL,
[Name] [varchar](50) NULL,
[isActive] [bit] NULL CONSTRAINT [DFplaceofserviceIsActive] DEFAULT ((1)),
CONSTRAINT [PKPlaceOfService] PRIMARY KEY CLUSTERED ([PlaceOfServiceId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains X12 Code set for place of service' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PlaceOfService'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field char(2), contains not only integer values ' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PlaceOfService', 
@level2type=N'COLUMN',@level2name=N'PlaceOfServiceID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name for the Place of Service' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PlaceOfService', 
@level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Active flag for the place of service' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PlaceOfService', 
@level2type=N'COLUMN',@level2name=N'isActive'
GO
