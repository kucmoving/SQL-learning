--***Join Temple(INNER JOIN, LEFT JOIN,
-- SELECT 第一個表項目, 第二個表項目, 第三個表項目...
-- FROM 第一個表
-- INNER JOIN 第二個表
-- ON 一表.KEY = 二表.KEY
-- INNER JOIN 第三個表
-- ON 一表.KEY = 三表.KEY
-- WHERE 一表傾件
-- ORDER BY ....

--Inner Join(table.name)
SELECT student_name, class_name
FROM student
INNER JOIN class
ON class.class_id = student.class_id
WHERE class.class_id = 1;

--EXAMPLE(key should not be selected !! key can be T1=T2, T2=T3)
SELECT tracks.unitPrice, albums.title, artists.name
FROM Tracks
INNER JOIN albums
ON tracks.albumid = albums.albumid
INNER JOIN artists
ON albums.artistid = artists.artistid
Where artists.name = "Audioslave";


--Self Join(由兩個表，方便找出ANS)
SELECT column_name(s)
FROM table a, table b
WHERE condition;
ORDER BY condition;

--Left Join
SELECT student_name, class_name
FROM table student
LEFT JOIN class
ON class.class_id = student.class_id
ORDER BY student_name;

--Full Outer Join
SELECT student_name, class_name
FROM table student
FULL OUTER JOIN class
ON class.class_id = student.class_id
ORDER BY student_name;

-- Cartesian(Cross) Join Example
--29 ** 77 = 2233
--not frequently used
SELECT product_name
,unit_price
,company_name
FROM suppliers CROSS JOIN products;
