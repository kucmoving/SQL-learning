-- CREATE a view
CREATE VIEW my_view AS
SELECT t. description, e.lastname
FROM territories t
INNER JOIN employees e
ON e.employeeid = t.employeeid

--to form a table
SELECT *
FROM　my_view;

--to delete
DROP VIEW my_view;