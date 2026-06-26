
ALTER TABLE [dbo].[PhoneNumber] ADD CONSTRAINT [FKPhoneNumberMember] FOREIGN KEY([MemberId]) REFERENCES [dbo].[Member] ([MemberId]);
GO