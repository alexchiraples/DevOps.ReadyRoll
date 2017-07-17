IF OBJECT_ID('tempdb..#MIG001_Address') IS NOT NULL
    DROP TABLE #MIG001_Address

SELECT *
INTO #MIG001_Address
FROM Person.Address
