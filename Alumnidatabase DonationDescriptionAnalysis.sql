use alumnidatabaseks;

SELECT DONATIONS.DonationDescription, Count(DONATIONS.DonationDescription) AS CountofDonationDescription, Sum(DONATIONS.DonationAmount) AS SumOfDonationAmount, format(Avg(DONATIONS.DonationAmount), 2) AS AvgOfDonationAmount
FROM DONATIONS
GROUP BY DONATIONS.DonationDescription
ORDER BY CountofDonationDescription DESC;