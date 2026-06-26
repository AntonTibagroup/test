

CREATE TABLE [dbo].[Incident](
	[IncidentId] INT IDENTITY(1,1) NOT NULL,
	[Description] VARCHAR(50) NULL,
	[IllnessId] INT NOT NULL,
	[PREffectiveDate] DATE NOT NULL,
	[ICDCode] VARCHAR(7) NOT NULL,
	[SharingRuleSetId]   integer  NULL 
	CONSTRAINT [PKIncident] PRIMARY KEY CLUSTERED ([IncidentId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table for Incidents that belong to a member. An incident is the middle tier of a medical issue in the hierarchy. An
															incident belongs to an illness and contains claims.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Incident'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Incident', 
@level2type=N'COLUMN',@level2name=N'IncidentId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the Incident' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Incident', 
@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the Illness table, links to the IllnessId, will be the IllnessId for the incident' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Incident', 
@level2type=N'COLUMN',@level2name=N'IllnessId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the Personal Responsibility starts taking effect or is applied for this incident ' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Incident', 
@level2type=N'COLUMN',@level2name=N'PREffectiveDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the ICDCode table, links to the ICDCode, will be the ICDCode for the incident' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Incident', 
@level2type=N'COLUMN',@level2name=N'ICDCode'
GO
