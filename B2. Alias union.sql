
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

--example(Use a UNION to create a list of all the employee's and customer's first names and last names ordered by the last name in descending order.)
SELECT c.lastname
FROM customers c
UNION
SELECT e.lastname
FROM employees e

ORDER BY c.lastname DESC

