
ALTER TABLE [dbo].[RoleFunction] ADD CONSTRAINT FKRoleFunctionAppRole FOREIGN KEY (AppRoleId) REFERENCES dbo.AppRole(AppRoleId);
GO

ALTER TABLE [dbo].[RoleFunction] ADD CONSTRAINT FKRoleFunctionAppFunction FOREIGN KEY (AppFunctionId) REFERENCES dbo.AppFunction(AppFunctionId);
GO