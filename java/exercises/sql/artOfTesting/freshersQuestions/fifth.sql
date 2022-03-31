-- Ques.5. Write an SQL query to find the employee id and salary whose salary lies in the range of 9000 and 15000.
SELECT EmpId, Salary
FROM EmployeeSalary
WHERE Salary BETWEEN 9000 AND 15000;
-- or WHERE Salary >= 9000 AND Salary <= 15000;