

CREATE TABLE [dbo].[DocumentIncident]
( 
	[DocumentId]         [integer]  NOT NULL ,
	[IncidentId]         [integer]  NOT NULL ,
	CONSTRAINT [PKDocumentIncident] PRIMARY KEY  CLUSTERED ([DocumentId] ASC,[IncidentId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to connect Documents to Incidents' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentIncident'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Document table on DocumentId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentIncident', 
@level2type=N'COLUMN',@level2name=N'DocumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Incident table on IncidentId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentIncident', 
@level2type=N'COLUMN',@level2name=N'IncidentId'
GO
