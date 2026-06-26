
ALTER TABLE [dbo].[BenefitPlaceElig] ADD CONSTRAINT [FKBenefitPlaceEligBenefitCode] FOREIGN KEY([BenefitCodeId]) REFERENCES [dbo].[BenefitCode] ([BenefitCodeId]);
GO

ALTER TABLE [dbo].[BenefitPlaceElig] ADD CONSTRAINT [FKBenefitPlaceEligPlaceOfService] FOREIGN KEY([PlaceOfServiceId]) REFERENCES [dbo].[PlaceOfService] ([PlaceOfServiceId]);
GO

ALTER TABLE [dbo].[BenefitPlaceElig] ADD CONSTRAINT [FKBenefitPlaceEligProgram] FOREIGN KEY([ProgramId]) REFERENCES [dbo].[Program] ([ProgramId]);
GO