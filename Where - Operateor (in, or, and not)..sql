-- be care 'test' , (num1,numb2,num3)

--In : long list of option
SELECT
Column_want
,Column_want2
,Column_want3
From Spec_Table
WHERE Column_want3 IN (9, 10, 11);

--Example
SELECT FirstName
,LastName
,Company
,State
FROM Customers
WHERE State IN ('RJ', 'DF', 'AB', 'BC', 'CA', 'WA', 'NY')

--Or: is special in SQL, like "ry,except" in python, only 2 option
SELECT
Column_want
,Column_want2
,Column_want3
From Spec_Table
WHERE Column_want3 = 'Tofu' OR 'Konbu';

--AND: be care using OR with And with (), () is the first
SELECT
Column_want
,Column_want2
,Column_want3
From Spec_Table
WHERE (Column_want3 = 9 OR Column_want2 = 11)
AND Column_want > 15;

-- NOT: can use AND together
SELECT *
FROM Spec_Table
WHERE NOT City = 'London' AND NOT City ='Seattle';