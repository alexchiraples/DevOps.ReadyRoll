UPDATE P
    SET P.AddressLine3 = SUBSTRING(M.AddressLine1, 2, LEN(M.AddressLine1) - 1)
FROM Person.Address P
    INNER JOIN #MIG001_Address M ON M.AddressID = P.AddressID