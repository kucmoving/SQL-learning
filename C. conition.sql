--Case Statement, can be used in SELECT, INSERT, UPDATE and DELETE
--to set a condition to the next column
SELECT firstname, lastname, city
Case City
     WHEN 'Calgary' THEN 'Calgary'
     ELSE 'Other'
     END calgary
FROM Employees
ORDER BY lastname, firstname;
---------------------------------------
SELECT trackid, name, bytes
,CASE
     WHEN bytes < 300000 THEN 'small'
     WHEN bytes >= 300001 AND bytes <= 500000 THEN' medium'
     WHEN bytes >= 500001 THEN 'large'
     ELSE 'Other'
END bytescategory
FROM tracks;


