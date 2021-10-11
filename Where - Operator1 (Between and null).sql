-- where clause operators
SELECT Columns_want
,Columns_want2
FROM Spec_table;
WHERE Columns_want operator_value;

-- operator(=, <>, >, <, >=, <=, BETWEEN, IS NULL)

--3.1 Single Condition
SELECT ProductName
,UnitPrice
,SupplierID
FROM Products
WHERE ProductName = 'Tofu';

SELECT ProductName
,UnitPrice
,SupplierID
FROM Products
WHERE UnitPrice >= 75;

SELECT ProductName
,UnitPrice
,SupplierID
FROM Products
WHERE UnitPrice IS NULL;

SELECT
ProductID
,UnitPrice
,SupplierID
FROM Products
WHERE SupplierID IN (9, 10, 11);