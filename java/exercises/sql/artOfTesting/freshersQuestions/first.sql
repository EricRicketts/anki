-- Ques.1. Write an SQL query to fetch the EmpId and FullName of all the employees
-- working under Manager with id – ‘986’.
SELECT EmpId, FullName
FROM EmployeeDetails
WHERE ManagerId = 986;