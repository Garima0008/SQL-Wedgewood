/******************************** View of employees Total worked hours *************************/
CREATE VIEW wpdatabase.TotalWorkedHours AS
SELECT FirstName, LastName, SUM(HoursWorked) AS TotalHoursWorked
FROM EMPLOYEE AS E JOIN ASSIGNMENT AS A
ON E.EmployeeNumber = A.EmployeeNumber
GROUP BY LastName, FirstName
ORDER BY LastName, FirstName;

SELECT * 
FROM TotalWorkedHours;