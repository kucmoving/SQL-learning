-- Wildcards take longer time to run, better to use others

-- 1.% (operator with LIKE, use in string^^, but not match null
where size Like '%pizza'
-- other actions '%Pizza', 'Pizza%', '%Pizza%', 'Piz%za'

-- full example
Select pay_type
FROM salary_range_by_job_classification
WHERE job_code Like '03%'

-- 2. _ matches a single character, not supported DB2
Where size Like '_pizza'



-- 3. [] not supported SQLite, but represent a set of characters



