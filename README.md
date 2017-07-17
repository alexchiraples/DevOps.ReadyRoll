# DevOps.ReadyRoll

```
MS Deploy (replace parameters with actual values)
C:\Windows\Microsoft.NET\Framework\v4.0.30319\MsBuild.exe "DevOps.ReadyRoll.sqlproj" /p:TargetDatabase="AdventureWorks2012_SYS" /p:TargetServer="SERVER\INSTANCE" /p:DBDeployOnBuild=True
```

# DevOps.Database

Install DacFx 17.1
https://www.microsoft.com/en-us/download/details.aspx?id=55255


```
"C:\Program Files\Microsoft SQL Server\140\DAC\bin\SqlPackage.exe" /Action:Publish /SourceFile:"DevOps.Database.dacpac" /TargetDatabaseName:AW2012_VS_TEST /TargetServerName:"localhost\sqlexpress" /p:IgnoreColumnOrder=True /p:BlockOnPossibleDataLoss=False
```

### Sample output
```
"C:\Program Files\Microsoft SQL Server\140\DAC\bin\SqlPackage.exe" /Action:Publish /SourceFile:"DevOps.Database.dacpac" /TargetDatabaseName:AW2012_VS_TEST /TargetServerName:"localhost\sqlexpress" /p:IgnoreColumnOrder=True /p:BlockOnPossibleDataLoss=False
Publishing to database 'AW2012_VS_TEST' on server 'localhost\sqlexpress'.
Initializing deployment (Start)
*** The column [Person].[Address].[AddressLine1] is being dropped, data loss could occur.
Initializing deployment (Complete)
Analyzing deployment plan (Start)
Analyzing deployment plan (Complete)
Updating database (Start)
Applying migration '0001 Split Column prepare'
Dropping [Person].[Address].[IX_Address_AddressLine1_AddressLine2_City_StateProvinceID_PostalCode]...
Altering [Person].[Address]...
Creating [dbo].[TestAddVS]...
Altering [HumanResources].[vEmployee]...
Altering [Sales].[vIndividualCustomer]...
Altering [Sales].[vSalesPerson]...
Altering [Sales].[vStoreWithAddresses]...
Altering [Purchasing].[vVendorWithAddresses]...
Creating [Person].[Address].[AddressLine3].[MS_Description]...
Applying migration '0001 Split column'
Update complete.
Updating database (Complete)
Successfully published database.
```

### TODO
- add version & type of script to the Migration table
