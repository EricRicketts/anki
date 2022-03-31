-- Ques.14. Write an SQL query to fetch the EmpIds that are present in both the tables –
-- ‘EmployeeDetails’ and ‘EmployeeSalary.
SELECT EmpId
FROM EmployeeDetails
WHERE EmpID IN (SELECT EmpId FROM EmployeeSalar);