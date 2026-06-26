
ALTER TABLE [dbo].[UserFunction] ADD CONSTRAINT FKUserFunctionAppUser FOREIGN KEY (AppUserId) REFERENCES dbo.AppUser(AppUserId);
GO

ALTER TABLE [dbo].[UserFunction] ADD CONSTRAINT FKUserFunctionAppFunction FOREIGN KEY (AppFunctionId) REFERENCES dbo.AppFunction(AppFunctionId);
GO