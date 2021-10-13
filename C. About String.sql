
-- 1. Concatenations (to connect item)
-- SQLITE: ||
-- SELECT 'W3Schools' + '.com';--------SQL:+
--EXAMPLE:
SELECT customerid, firstname || lastName AS fullname,
       address, UPPER(City || Country) AS cityandcountry
FROM customers


-- 2. Trimming Strings(trailing space from a string)
-- Trim() / RTRIM() / LTRIM()
SELECT TRIM (' you the best. ') AS TrimmedSring;



-- 3. Substring (return the specificed number of characters)
SELECT first_name, SUBSTR(first_name,2,3)
-- (string name, starting position, number of return)
FROM employees
WHERE department_id = 60;



--4. UPPER/LOWER/UCASE
SELECT UPPER(column_name)
FROM table_name;

--Example(form a new name)
SELECT firstname, lastname,
LOWER(SUBSTR(firstname,1,4)) || LOWER(SUBSTR(lastname,1,2)) AS newnmae

FROM employees;
