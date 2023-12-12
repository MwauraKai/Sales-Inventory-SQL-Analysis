-- Identify slow-moving items using the 'orders' table
SELECT p.productName, p.quantityInStock, COUNT(o.orderNumber) as totalSales
FROM mintclassics.products p
JOIN mintclassics.orderdetails od ON p.productCode = od.productCode
JOIN mintclassics.orders o ON od.orderNumber = o.orderNumber
GROUP BY p.productCode
HAVING totalSales < 50; -- Adjust the threshold based on your analysis

