-- Analyze inventory numbers in relation to sales figures
SELECT p.productName, p.quantityInStock, SUM(od.quantityOrdered) as totalSales
FROM mintclassics.products p
JOIN mintclassics.orderdetails od ON p.productCode = od.productCode
GROUP BY p.productCode
LIMIT 0, 50000;



