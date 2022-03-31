-- Ques.3. Write an SQL query to fetch the count of employees working in project ‘P1’.
SELECT COUNT(*)
FROM EmpolyeeSalary
WHERE Project = 'P1';