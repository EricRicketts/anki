-- Ques.28. Write an SQL query to fetch project-wise count of employees sorted
-- by project’s count in descending order.
SELECT Project, COUNT(EmpId) AS EmployeeCount
FROM EmployeeSalary
GROUP BY Project
ORDER BY EmployeeCount DESC;
-- this this query breaks the search up by groups, in this case distinct project groups
-- and within each project group we count the number of employees
-- but the whole query gets ordered by the number of employees from largest to smallest
-- So if P1 has more employees than P2 it shows up first in the results