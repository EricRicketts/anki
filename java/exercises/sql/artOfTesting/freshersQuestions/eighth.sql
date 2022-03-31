-- Ques.8. Write an SQL query to fetch all those employees who work on Project other than P1. (
-- (EmpId)
SELECT EmpId
FROM EmployeeSalary
WHERE NOT Project = 'P1';
-- WHERE Project <> 'P1';