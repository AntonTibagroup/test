

CREATE TABLE [dbo].[Gender](
[GenderCode] [char](1) NOT NULL,
[Name] [varchar](10) NULL,
CONSTRAINT [PKgender] PRIMARY KEY CLUSTERED ([GenderCode])
)
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains list of allowed gender values' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Gender'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'One character code for the gender, M or F' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Gender', 
@level2type=N'COLUMN',@level2name=N'GenderCode'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name matching the code value for the gender' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Gender', 
@level2type=N'COLUMN',@level2name=N'Name'
go