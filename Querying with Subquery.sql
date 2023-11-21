
/******************  Querying with SUBQUERIES *********************************/
/* querying employee name where emmployee number lies in these specific numbers.*/
SELECT FirstName, LastName
FROM EMPLOYEE
WHERE EmployeeNumber IN (6, 10, 11, 16, 17);

/********************************************************************************/
/* showing names of those employees who worked more than 50 hours*/
SELECT FirstName, LastName
FROM EMPLOYEE
WHERE EmployeeNumber IN (SELECT DISTINCT EmployeeNumber FROM ASSIGNMENT WHERE HoursWorked > 60);

/********************************************************************************/
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM EMPLOYEE, ASSIGNMENT
WHERE EMPLOYEE.EmployeeNumber = ASSIGNMENT.EmployeeNumber;

/********************************************************************************/
/*Showing information of employees name along with their working hours grouping them by there names.*/
SELECT FirstName, LastName, SUM(HoursWorked) AS TotalHoursWorked
FROM EMPLOYEE AS E JOIN ASSIGNMENT AS A
ON E.EmployeeNumber = A.EmployeeNumber
GROUP BY LastName, FirstName
ORDER BY LastName, FirstName;

/********************************************************************************/
/*Showing information of employees name along with their working hours ordered by there names.*/
SELECT FirstName, LastName, HoursWorked
FROM EMPLOYEE AS E JOIN ASSIGNMENT AS A
ON E.EmployeeNumber = A.EmployeeNumber
ORDER BY LastName, FirstName;

/*************************** update  *****************************/
UPDATE EMPLOYEE
SET OfficePhone = '360-285-8620'
WHERE EmployeeNumber = 13;

SELECT *
FROM EMPLOYEE
WHERE EmployeeNumber = 13;

/*************************** drop  *****************************/
/*DROP TABLE ASSIGNMENT;*/