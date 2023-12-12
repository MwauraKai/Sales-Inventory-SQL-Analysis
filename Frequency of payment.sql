SELECT customerNumber, COUNT(checkNumber) AS paymentCount
FROM mintclassics.payments
GROUP BY customerNumber;
