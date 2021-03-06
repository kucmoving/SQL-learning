--***Join Temple(INNER JOIN, LEFT JOIN,
-- SELECT 第一個表項目, 第二個表項目, 第三個表項目... (remeber to name like a.name, b.class, c. gender...
-- FROM 第一個表                                    (remeber to name like name a...
-- INNER JOIN 第二個表
-- ON 一表.KEY = 二表.KEY
-- INNER JOIN 第三個表
-- ON 一表.KEY = 三表.KEY
-- WHERE 一表傾件
-- ORDER BY ....

--Inner Join(table.name)
SELECT c.FirstName, c.LastName, i.InvoiceId
From customers c
LEFT JOIN invoices i 
ON c.Customerid = i.Customerid
WHERE i.InvoiceId is NULL

--multi inner join EXAMPLE(key should not be selected !! key can be T1=T2, T2=T3)
SELECT t.unitPrice, al.title, ar.name
FROM Tracks t
INNER JOIN albums al
ON t.albumid = al.albumid
INNER JOIN artists ar
ON al.artistid = ar.artistid
Where ar.name = "Audioslave";

--Self Join(由兩個表，方便找出ANS)
SELECT m.lastName as manager, e.lastName as employee  
FROM employees e 
INNER JOIN employees m 
ON e.reportsTo = m.employeeID

--Left Join
SELECT ar.name, ar.artistid, al.albumid
FROM artists ar
LEFT JOIN albums al
ON ar.artistid = al.artistid
WHERE al.albumid is null

--Full Outer Join
SELECT c.firstname, c.lastname, c.city, i.billingcity
FROM customers c
INNER JOIN invoices i
ON c.customerid = i.customerid
WHERE c.city != i.billingcity

-- EXAMPLE How many records are created when you apply a Cartesian join to the invoice and invoice items table? 
SELECT COUNT(*) AS TotalRecords 
FROM Invoices cross JOIN invoice_items 
