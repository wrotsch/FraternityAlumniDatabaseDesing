use alumnidatabaseks;

SELECT Concat(BROTHERS.FirstName, " ", BROTHERS.LastName) AS Name, AWARDS.AwardName,
AWARDS.AwardNumber, AWARDS.Organization, AWARDS.DateAwarded, AWARDS.CashAward
FROM BROTHERS INNER JOIN AWARDS ON BROTHERS.BrotherID = AWARDS.BrotherID
GROUP BY Name, AWARDS.AwardName, AWARDS.AwardNumber, AWARDS.Organization, 
AWARDS.DateAwarded, AWARDS.CashAward, BROTHERS.BrotherID;