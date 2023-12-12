USE mintclassics;

DESCRIBE warehouses;
-- retrive relevant data
SELECT warehouseCode, warehouseName, warehousePctCap
FROM warehouses;
-- calculate storage cost for each product
SELECT p.productCode, p.productName, w.warehouseCode, w.warehouseName,
       p.quantityInStock, w.warehousePctCap,
       p.quantityInStock * w.warehousePctCap AS totalStorageCost
FROM products p
JOIN warehouses w ON p.warehouseCode = w.warehouseCode;
-- Summarize or Analyze Storage Costs:
SELECT productCode, productName, SUM(quantityInStock * warehousePctCap) AS totalStorageCost
FROM products p
JOIN warehouses w ON p.warehouseCode = w.warehouseCode
GROUP BY productCode, productName;




