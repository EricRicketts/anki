-- Ques.27. Write an SQL query to fetch all employee records from EmployeeDetails table
-- who have a salary record in EmployeeSalary table.
SELECT *
FROM EmployeeDetails
WHERE EXISTS (SELECT * FROM EmployeeSalary WHERE EmployeeDetails.EmpId = EmployeeSalary.EmpId);
-- this works because EXISTS only return if any rows exist at all, even if they are all NULL