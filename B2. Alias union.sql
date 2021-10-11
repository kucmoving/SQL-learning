
--Alias, can rename table to be a shorter name
SELECT o.Product, SUM(o.Quantity) AS Total
FROM orders AS o
GROUP BY o.Product;

--Union(to combine two result)
SELECT name, gender
FROM class1a
WHERE gender = 'male'
UNION
SELECT name, gender
FROM class1b
WHERE gender = 'male'
UNION
ORDER BY name

