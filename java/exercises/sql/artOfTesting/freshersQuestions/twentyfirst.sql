-- Ques.21. Write an SQL query to find the count of the total occurrences of a particular
-- character – ‘n’ in the FullName field.
SELECT LENGTH(FullName) - LENGTH(REPLACE(FullName, 'n', '')) AS CountOfLetterN
FROM EmployeeDetails;