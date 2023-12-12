SELECT
    c.city,
    c.state,
    c.postalCode,
    c.country,
    YEAR(p.paymentDate) AS paymentYear,
    MONTH(p.paymentDate) AS paymentMonth,
    SUM(p.amount) AS totalAmount
FROM
    mintclassics.payments p
JOIN
    mintclassics.customers c ON p.customerNumber = c.customerNumber
GROUP BY
    c.city, c.state, c.postalCode, c.country, paymentYear, paymentMonth
ORDER BY
    paymentYear, paymentMonth, totalAmount DESC;

