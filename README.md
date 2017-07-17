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
