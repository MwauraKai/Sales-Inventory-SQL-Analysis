SELECT 
    customerNumber, 
    AVG(DATEDIFF(paymentDate, prevPaymentDate)) AS avgPaymentInterval
FROM (
    SELECT 
        customerNumber, 
        paymentDate, 
        LAG(paymentDate) OVER (PARTITION BY customerNumber ORDER BY paymentDate) AS prevPaymentDate
    FROM mintclassics.payments
) AS subquery
GROUP BY customerNumber;
