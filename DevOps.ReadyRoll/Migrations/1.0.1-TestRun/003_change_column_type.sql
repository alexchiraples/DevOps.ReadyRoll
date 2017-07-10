-- <Migration ID="1bddf54e-9e08-48d5-b417-90b9118bc5fc" />
GO


GO
PRINT N'Altering [HumanResources].[Department]...';


GO
ALTER TABLE [HumanResources].[Department] ALTER COLUMN [GroupName] NVARCHAR (100) NOT NULL;


GO

