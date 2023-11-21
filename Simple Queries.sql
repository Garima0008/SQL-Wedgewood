/* Selecting all columns from the tables to see the values*/
SELECT * FROM DEPARTMENT;
SELECT * FROM EMPLOYEE;
SELECT * FROM PROJECT;
SELECT * FROM ASSIGNMENT;

/* QUERIES */

/* Selecting the departments from the Project table*/
SELECT DEPARTMENT
FROM PROJECT;

/*********************************************/
/* Selecting the ProjectId from the Project table*/
SELECT ProjectID 
FROM PROJECT;

/*********************************************/
/*Selecting all columns from the project table where department is 'Accounting'*/
SELECT * 
FROM PROJECT
WHERE Department = 'Accounting';

/*********************************************/
/*Selecting all columns from the Project table where an employee worked for more than 120 hours */
SELECT * 
FROM PROJECT
WHERE  MaxHours > 120;

/*********************************************/
/* Selecting the names, departments and office phone nuber from Employee table where department is Accounting*/ 
SELECT FirstName, LastName, Department, OfficePhone 
FROM EMPLOYEE
WHERE  Department = 'Accounting';

/*********************************************/
/* Selecting the names, departments and office phone nuber from Employee table where data is ordered by department names.*/ 
SELECT FirstName, LastName, Department, OfficePhone 
FROM EMPLOYEE
ORDER BY Department;

/*********************************************/
/* Selecting the names, departments and office phone nuber from Employee table where data is ordered by department names in descending order.*/ 
SELECT FirstName, LastName, Department, OfficePhone 
FROM EMPLOYEE
ORDER BY Department DESC;

/*********************************************/
/* Selecting the names, departments and office phone nuber from Employee table where data is ordered by department names in descending order and last name bt ascending order.*/ 
SELECT FirstName, LastName, Department, OfficePhone 
FROM EMPLOYEE
ORDER BY Department DESC, LastName ASC;

/*********************************************/
/* Selecting the names, departments and office phone nuber from Employee table where department is Accounting and Office Phone number is '360-285-8430'.*/ 
SELECT FirstName, LastName, Department, OfficePhone 
FROM EMPLOYEE
WHERE Department = 'Accounting'
AND OfficePhone = '360-285-8430'; 

/*********************************************/
/* Selecting the names, departments and office phone nuber from Employee table where Employee Number lies between 3 to 5.*/ 
SELECT FirstName, LastName, Department, OfficePhone 
FROM EMPLOYEE
WHERE EmployeeNumber >= 3
AND EmployeeNumber <= 5;

/*********************************************/
SELECT FirstName, LastName, Department, OfficePhone 
FROM EMPLOYEE
WHERE EmployeeNumber BETWEEN 2 AND 5;

/*********************************************/
/* SElecting all column from project table with project name could be similar to "2019 Q_ Portfolio Analysis"*/
SELECT *
FROM PROJECT
WHERE ProjectName LIKE '2019 Q_ Portfolio Analysis';

/*********************************************/
/* Getting information where office phone starts with "360-285-88"*/
SELECT *
FROM EMPLOYEE
WHERE OfficePhone LIKE '360-285-88__';

/*********************************************/
/* Getting information where office phone is missing*/
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE OfficePhone IS NULL;

/*********************************************/
/* Getting information where office phone is not null*/
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE OfficePhone IS NOT NULL;

/************* COUNT OPERATIONS  ***************************/
/* Showing number of projects by projectID*/
SELECT COUNT(*) AS NumberOfProjects
FROM PROJECT;

/*********************************************************/
/* Showing number of departments*/
SELECT COUNT(Department) AS NumberOfDepartments
FROM PROJECT;

/*********************************************************/
SELECT COUNT(DISTINCT Department) AS NumberOfDepartments
FROM PROJECT;

/*********************************************************/
/* Presenting information on total maximum hours aog with average, minimum and maximum hours where projectDI is less than and equal to 1200*/ 
SELECT SUM(MaxHours) AS TotalMaxHours,
       AVG(MaxHours) AS AverageMaxHours,
       MIN(MaxHours) AS MinimumMaxHours,
       MAX(MaxHours) AS MaximumMaxHours
FROM PROJECT
WHERE ProjectID <= 1200;

/*********************************************************/
/*Providing information of project along with cost of project with max hours*/
SELECT ProjectID, ProjectName, MaxHours, (24.50*MaxHours) AS MaxProjectCost
FROM PROJECT;

/*********************************************************/
/* showing number of employees work in each department*/
SELECT Department, COUNT(*) AS NumberOfEmployees
FROM EMPLOYEE
GROUP BY Department;

/*********************************************************/
/* showing number of employees work in each department where minimum valeu is more than 1*/
SELECT Department, COUNT(*) AS NumberOfEmployees
FROM EMPLOYEE
GROUP BY Department
HAVING COUNT(*) > 1;

/*********************************************************/
SELECT *
FROM EMPLOYEE
WHERE OfficePhone LIKE '360-285-88%';

/*********************************************************/
/* Selecting infromation based on departments ending with ing*/
SELECT *
FROM EMPLOYEE
WHERE Department LIKE '%ing';
