/*creating schema wedgewood*/
/*CREATE SCHEMA `wpdatabase`;*/

/*using wedgewood database*/
USE wpdatabase;


/* Department table created*/
CREATE TABLE DEPARTMENT(
	DepartmentName		Char(35)		NOT NULL,
	BudgetCode			Char(30)		NOT NULL,
	OfficeNumber		Char(15)		NOT NULL,
	DepartmentPhone		Char(12)		NOT NULL,
	CONSTRAINT 			DEPARTMENT_PK 	PRIMARY KEY(DepartmentName)
	);
    
     /*Employee table created*/
CREATE TABLE EMPLOYEE(
	EmployeeNumber		Int		        NOT NULL AUTO_INCREMENT,
	FirstName			Char(25)		NOT NULL,
	LastName     		Char(25)		NOT NULL,
	Department  		Char(35)		NOT NULL DEFAULT 'Human Resources',
    Position            Char(35)        NULL,
    Supervisor          Int             NULL,
    OfficePhone         Char(12)        NULL,
    EmailAddress        varchar(100)       NOT NULL UNIQUE,
	CONSTRAINT 			EMPLOYEE_PK 	      PRIMARY KEY(EmployeeNumber),
    CONSTRAINT          EMPLOYEE_DEPART_FK    FOREIGN KEY(Department)
                                              REFERENCES DEPARTMENT(DepartmentName)
                                              ON UPDATE CASCADE,
    CONSTRAINT          EMPLOYEE_SUPER_FK     FOREIGN KEY(Supervisor)
    REFERENCES EMPLOYEE(EmployeeNumber)
	);
    
     /*PROJECT table created*/
CREATE TABLE PROJECT(
	ProjectID		    Int		        NOT NULL,
	ProjectName			Char(50)		NOT NULL,
	Department     		Char(35)		NOT NULL,
	MaxHours    		Numeric(8,2)	NOT NULL DEFAULT '100',
    StartDate           Date            NULL,
    EndDate             Date            NULL,
	CONSTRAINT 			PROJECT_PK 	      PRIMARY KEY(ProjectID),
    CONSTRAINT          PROJECT_DEPART_FK    FOREIGN KEY(Department)
                                              REFERENCES DEPARTMENT(DepartmentName)
                                              ON UPDATE CASCADE
	);
    
        /*ASSIGNMENT table created*/
CREATE TABLE ASSIGNMENT(
	ProjectID    		Int		        NOT NULL,
	EmployeeNumber		Int      		NOT NULL,
	HoursWorked     	Numeric(6,2)	NULL,
	CONSTRAINT 			ASSIGNEMENT_PK 	      PRIMARY KEY(ProjectID, EmployeeNumber),
    CONSTRAINT          ASSIGNMENT_PROJID_FK    FOREIGN KEY(ProjectID)
                                              REFERENCES PROJECT(ProjectID)
                                              ON UPDATE NO ACTION
								              ON DELETE CASCADE,
    CONSTRAINT          ASSIGNMENT_EMPNUM_FK    FOREIGN KEY(EmployeeNumber)
                                              REFERENCES EMPLOYEE(EmployeeNumber)
                                              ON UPDATE NO ACTION
								              ON DELETE NO ACTION
	);

