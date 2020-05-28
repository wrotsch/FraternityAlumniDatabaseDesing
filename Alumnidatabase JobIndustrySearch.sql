use alumnidatabaseks;

SELECT BROTHERS.FirstName, BROTHERS.LastName, BROTHERS.GraduationYear, BROTHERS.PhoneNumber, JOBS.JobTitle, JOBS.Company, JOBS.StartDate, JOBS.EndDate
FROM BROTHERS INNER JOIN JOBS ON BROTHERS.BrotherID = JOBS.BrotherID
WHERE (((JOBS.Industry)='Medicine') AND ((BROTHERS.State)='NC'));