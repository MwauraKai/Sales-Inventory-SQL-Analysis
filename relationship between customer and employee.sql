SELECT c.*, e.*
FROM mintclassics.customers c
JOIN mintclassics. employees e ON c.salesRepEmployeeNumber = e.employeeNumber;
