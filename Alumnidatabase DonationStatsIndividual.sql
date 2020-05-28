use alumnidatabaseks;

SELECT BROTHERS.FirstName, Brothers.LastName, BROTHERS.GraduationYear, Count(DONATIONS.DonationDate) AS NumDonations, Format(Avg(DONATIONS.DonationAmount), 2) AS AverageDonation
FROM BROTHERS INNER JOIN DONATIONS ON BROTHERS.BrotherID = DONATIONS.BrotherID
GROUP BY BROTHERS.FirstName, BROTHERS.LastName, BROTHERS.GraduationYear, BROTHERS.BrotherID
HAVING (BrotherID = 12);