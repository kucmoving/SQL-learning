
--1.1 to select single column
SELECT Columns_want
FROM　Spec_table;
--1.2 to select multi columns
SELECT Columns_want
       ,Columns_want2
       ,Columns_want3
FROM Spec_table;
--1.3 to select all columns
SELECT *
FROM Spec_table;

--1.4 limit columns
SELECT Columns_want
FROM Spec_table;
--(SQLite>>>LIMIT 5;)
--(Oracle>>>WHERE ROWNUM <=5;)
--(DB2>>>FETCH FIRST 5 ROWS ONLY;)


