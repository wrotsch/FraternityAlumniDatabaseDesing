use alumnidatabaseks;

SELECT concat(little.FirstName, ' ', little.LastName) as LittleName, concat(big.FirstName, ' ', big.LastName) AS BigName, little.InitiationYear AS LittleInitiationYear
FROM BROTHERS big INNER JOIN (GREEK_FAMILY INNER JOIN BROTHERS little ON GREEK_FAMILY.GreekFamilyID = little.GreekFamilyID) ON big.greekfamilyID = greek_family.greekfamilyID
WHERE little.BigBrotherID=big.BrotherID And (GREEK_FAMILY.FamilyName)='Greek Gods'
ORDER BY little.InitiationYear ASC;