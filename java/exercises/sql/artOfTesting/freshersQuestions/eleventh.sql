-- Ques.11. Write an SQL query to fetch all the EmpIds which are present in either of
-- the tables – ‘EmployeeDetails’ and ‘EmployeeSalary’.
SELECT EmpId
FROM EmployeeDetails
UNION
SELECT EmpId
FROM EmployeeSalary;