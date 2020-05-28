use alumnidatabaseks;

SELECT Concat(BROTHERS.FirstName, ' ', BROTHERS.LastName) as BrotherName, GREEK_FAMILY.FamilyName, BROTHERS.InitiationYear
FROM GREEK_FAMILY INNER JOIN BROTHERS ON GREEK_FAMILY.GreekFamilyID = BROTHERS.GreekFamilyID
WHERE (((GREEK_FAMILY.GreekFamilyID)=1))
ORDER BY BROTHERS.initiationyear ASC;