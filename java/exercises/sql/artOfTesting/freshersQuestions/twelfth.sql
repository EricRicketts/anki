-- Ques.12. Write an SQL query to fetch common records between two tables.
SELECT *
FROM EmployeeDetails
WHERE EmpId IN (SELECT EmplId FROM EmployeeSalary);
-- MySQL does not have INTERSECT