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

-- subqueries for calclations
