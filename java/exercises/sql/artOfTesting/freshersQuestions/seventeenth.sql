-- Ques.17. Write an SQL query to fetch the position of a given character(s) in a field.
-- Select "Snow" from FullName EmployeeDetails
SELECT INSTR(FullName, 'Snow') AS MatchPosition;
FROM EmployeeDetails;