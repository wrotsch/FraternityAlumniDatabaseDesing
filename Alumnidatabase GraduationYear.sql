use alumnidatabaseks;

SELECT BROTHERS.FirstName, BROTHERS.LastName, BROTHERS.InitiationYear
FROM BROTHERS
WHERE BROTHERS.GraduationYear="2012"
ORDER BY BROTHERS.InitiationYear ASC;

