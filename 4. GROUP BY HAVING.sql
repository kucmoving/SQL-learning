--Grouping data, to summarize subsets of data(can contain multiple columns)
--selection with GROUP BY or aggregated calculations
--not clause not where but --> having(optional)

-- 同一次的數值出現了多少次
SELECT
CustomerID
,COUNT (*) AS orders
-- 點算項目數量成為 orders
FROM Orders
GROUP BY CustomerID
-- 再由customerid 作索引
HAVING COUNT (*) >=2;
-- 只抽取大於2的

--example
SELECT Albumid ,COUNT(*) AS New_Tracks
FROM TRACKS
GROUP BY Albumid
Having COUNT(*) >= 12;

-- where = before data is grouped
-- having = after data is grouped
SELECT SupplierID
,COUNT(*) AS NUM_Prod
FROM Products
Where UnitPrice >= 4
Group BY SupplierID
Having COUNT (*) >=2; 