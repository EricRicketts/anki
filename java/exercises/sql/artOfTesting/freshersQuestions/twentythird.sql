-- Ques.23. Fetch all the employees who are not working on any project.
SELECT EmpId, Salary, Variable
FROM EmployeeSalary
WHERE Project IS NULL;