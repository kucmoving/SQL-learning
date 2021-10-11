-- Math operator (+, -, *, /)
SELECT
Column_yw
,Column_yw2
,Column_yw3
,(Column_yw2 - Column_yw3)/Column_yw4 AS
Column_yw4
FROM Spec_table;

--Aggregate Function(AVG(), COUNT(), MIN(), MAX(), SUM() )
--SELECT Function() As Column_yw2 FROM Spec_table
SELECT COUNT(Customer) AS
Total_customers
From Customers;

--Example
SELECT InvoiceId
,COUNT (Total) AS Spec_Total
FROM Invoices
WHERE Total Between 5 and 15

--DISTINCT can count value that not repeated)
SELECT DISTINCT Customer AS
Total_customers
From Customers;
