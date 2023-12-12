
USE mintclassics;
-- Identify products with consistently low or zero sales
SELECT
    p.productCode,
    p.productName,
    COALESCE(SUM(od.quantityOrdered), 0) AS totalSales
FROM
    products p
LEFT JOIN
    orderdetails od ON p.productCode = od.productCode
GROUP BY
    p.productCode, p.productName
HAVING
    totalSales < 10; -- You can adjust the threshold as needed
