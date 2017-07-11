-- <Migration ID="563025d4-c167-49f2-b7fd-67967979704e" />
GO

PRINT N'Creating [dbo].[AddTestTable]...';


GO
CREATE TABLE [dbo].[AddTestTable_new] (
    [Id]   INT            NOT NULL,
    [Col1] NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_AddTestTable] PRIMARY KEY CLUSTERED ([Id] ASC)
);

