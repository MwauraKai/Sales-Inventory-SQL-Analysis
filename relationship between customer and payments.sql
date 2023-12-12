SELECT p.*, c.*
FROM mintclassics.payments p
JOIN mintclassics.customers c ON p.customerNumber = c.customerNumber;
