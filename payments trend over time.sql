SELECT YEAR(paymentDate) AS paymentYear, MONTH(paymentDate) AS paymentMonth, SUM(amount) AS totalAmount
FROM  mintclassics.payments
GROUP BY YEAR(paymentDate), MONTH(paymentDate)
ORDER BY paymentYear, paymentMonth;
