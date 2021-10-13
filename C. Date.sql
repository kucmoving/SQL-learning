SELECT Birthdate
,STRFTIME('%Y, Birthdate') AS Year,
,STRFTIME('%m, Birthdate') AS Month,
,STRFTIME('%d, Birthdate') AS Day,
From employees

-- Current time
SELECT DATE('now')
SELECT STRFTIME('%y %m %d', 'now')
SELECT STRFTIME('%H %M %S %s', 'now')