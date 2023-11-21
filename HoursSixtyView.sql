/******************************** View of employees who worked more than 60 hours *************************/
CREATE VIEW wpdatabase.HoursSixty AS
SELECT FirstName, LastName
FROM EMPLOYEE
WHERE EmployeeNumber IN (SELECT DISTINCT EmployeeNumber FROM ASSIGNMENT WHERE HoursWorked > 60);

SELECT * 
FROM HoursSixty;