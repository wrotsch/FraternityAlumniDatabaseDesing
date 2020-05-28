use alumnidatabaseks;

SELECT count(Donations.DonationDate) AS TotalDonations, SUM(DONATIONS.DonationAmount) AS TotalDonationAmount, format(avg(DONATIONS.DonationAmount), 2) AS AverageDonation, date_format(Donations.DonationDate, '%Y') AS Year
FROM DONATIONS
GROUP BY date_format(DONATIONS.DonationDate, '%y');