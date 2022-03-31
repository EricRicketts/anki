-- Ques.10. Write an SQL query to fetch the employees whose name begins with any two characters,
-- followed by a text “hn” and ending with any sequence of characters (FullName)
SELECT FullName
FROM EmployeeDetails
WHERE FullName LIKE '__hn%';