-- Calculate percentage of storage used and percentage of total storage cost
SELECT
    productCode,
    productName,
    warehouseCode,
    warehouseName,
    quantityInStock,
    warehousePctCap,
    totalStorageCost,
    ROUND((quantityInStock / warehousePctCap) * 100, 2) AS storageUsedPercentage,
    ROUND((totalStorageCost / SUM(totalStorageCost) OVER (PARTITION BY warehouseCode)) * 100, 2) AS totalCostPercentage
FROM
    (
        -- Subquery to calculate total storage cost per warehouse
        SELECT
            p.productCode,
            p.productName,
            w.warehouseCode,
            w.warehouseName,
            p.quantityInStock,
            w.warehousePctCap,
            (p.quantityInStock * w.warehousePctCap) AS totalStorageCost
        FROM
            products p
        JOIN
            warehouses w ON p.warehouseCode = w.warehouseCode
    ) AS product_warehouse;
