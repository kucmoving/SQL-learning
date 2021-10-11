--Combined for a subquery,
-- 1) innermost select first
-- 2) no limit but not too deep
-- 3) single coloumn

SELECT
CustomerID
,CompanyName
,Region
FROM Customers
WHERE customerID in (SELECT
customerID
       FROM Orders
       WHERE Freight > 100 );

-- 1. toothbrush--> ID-->information
SELECT Customer_name, Customer_contact
FROM Customers
WHERE cust_id IN
    SELECT customer_id
    FROM Orders
    WHERE order_number IN (SELECT order_number
        FROM OrderItems
        WHERE prod_name = 'Toothbrush');

--EXAMPLE
/* How many albums does the artist Led Zepplin have? */
SELECT COUNT(a.Albumid)
FROM albums a
WHERE a.artistid in (SELECT
r.artistid
       FROM artists r
       WHERE r.name = 'Led Zeppelin' );
