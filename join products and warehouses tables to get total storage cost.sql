
SELECT
    p.productCode,
    p.productName,
    p.quantityInStock,
    w.warehouseName,
    w.warehousePctCap
FROM
   mintclassics.products p
JOIN
   mintclassics.warehouses w ON p.warehouseCode = w.warehouseCode;
