
ALTER TABLE [dbo].[EligibleMedicalExpense] ADD CONSTRAINT [FKEligibleMedicalExpenseBenefitPlaceElig] FOREIGN KEY ([BenefitCodeId],[PlaceOfServiceId],[ProgramId],[StartDate]) REFERENCES [dbo].[BenefitPlaceElig]([BenefitCodeId],[PlaceOfServiceId],[ProgramId],[StartDate]);
GO