-- <Migration ID="4bae067e-bdcd-4381-ba7b-89513632c234" />
GO

PRINT N'Creating [dbo].[AddTestTable]...';


GO
CREATE TABLE [dbo].[AddTestTable] (
    [Id]   INT            NOT NULL,
    [Col1] NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_AddTestTable] PRIMARY KEY CLUSTERED ([Id] ASC)
);

