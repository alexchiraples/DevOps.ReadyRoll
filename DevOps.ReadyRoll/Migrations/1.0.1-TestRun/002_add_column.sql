-- <Migration ID="5b24ac53-7423-4b56-ba0e-b2cff33dc817" />
GO

PRINT N'Disabling DDL triggers'
GO
DISABLE TRIGGER ALL ON DATABASE
GO
PRINT N'Altering [dbo].[AddTestTable]'
GO
ALTER TABLE [dbo].[AddTestTable] ADD
[Col2] [nvarchar] (100) NULL CONSTRAINT [DF__tmp_ms_xx___Col2__0BB1B5A5] DEFAULT (NULL)
GO
PRINT N'Re-enabling DDL triggers'
GO
