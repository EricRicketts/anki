-- Ques.22. Write an SQL query to update the employee names by removing leading and trailing spaces.
UPDATE EmployeeDetails
SET FullName = TRIM(FullName);
-- another optios
UPDATE EmployeeDetails
SET FullName = LTRIM(RTRIM(FullName));