-- Ques.24. Write an SQL query to fetch employee names having a salary greater than or equal to
-- 5000 and less than or equal to 10000.
SELECT FullName
FROM EmployeeSalary
WHERE EmpId IN (SELECT EmpId FROM EmployeeSalary WHERE Salary BETWEEN 5000 AND 10000);