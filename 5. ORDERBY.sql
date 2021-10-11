-- Sorting data can keep information u want on top

SELECT Column_yw
FROM Spec_table
ORDER BY characteristic

-- ORDER BY(can take more columns , must be the last clause)
-- DESC = descending order, ASC = ascending order

Select Biweekly_Low_Rate
FROM salary_range_by_job_classification
ORDER BY Biweekly_Low_Rate ASC