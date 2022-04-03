-- Ques.34. Write an SQL query to fetch only odd rows from the table.
-- If we have a case of an autoincrement EmpId
SELECT *
FROM EmployeeDetails
WHERE MOD(EmpId, 2) <> 0;
-- If the rows are not auto-incrementing
