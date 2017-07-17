CREATE SCHEMA [__Migration]
    AUTHORIZATION [dbo];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Contains objects related to migrations', @level0type = N'SCHEMA', @level0name = N'__Migration';

