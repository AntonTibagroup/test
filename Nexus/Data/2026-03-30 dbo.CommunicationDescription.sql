PRINT N'Filling table CommunicationDescription';
delete CommunicationDescription;
go
SET IDENTITY_INSERT [dbo].CommunicationDescription ON;
go
INSERT INTO CommunicationDescription (CommunicationDescriptionId,Description)
Values (1,'Dependent Form Request')
go
INSERT INTO CommunicationDescription (CommunicationDescriptionId,Description)
Values (2,'Checklist of Understanding Request')
go
INSERT INTO CommunicationDescription (CommunicationDescriptionId,Description)
Values (3,'Sharing Form Request')
go
INSERT INTO CommunicationDescription (CommunicationDescriptionId,Description)
Values (4,'Letter of Explanation Request')
go
INSERT INTO CommunicationDescription (CommunicationDescriptionId,Description)
Values (5,'Medical Record Request')
go
INSERT INTO CommunicationDescription (CommunicationDescriptionId,Description)
Values (6,'HIPAA Form Request')
go
INSERT INTO CommunicationDescription (CommunicationDescriptionId,Description)
Values (7,'Itemized Bill Request')
go
INSERT INTO CommunicationDescription (CommunicationDescriptionId,Description)
Values (8,'Medicare Summary Request')
go
SET IDENTITY_INSERT [dbo].CommunicationDescription OFF;
go
