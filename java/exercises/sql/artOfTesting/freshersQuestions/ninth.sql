-- Ques.9. Write an SQL query to display the total salary of each employee adding the Salary with Variable value.
-- (EmpId)
SELECT EmpId, (Salary + Variable) AS totalCompensation
FROM EmployeeSalary;