CREATE TABLE sweta_employeeInfo (
EmpID NUMBER(2) not null,
EmpFname VARCHAR2(200),
EmpLname VARCHAR2(200),
Department VARCHAR2(200),
Project VARCHAR2(200),
Address VARCHAR2(200),
DOB DATE,
Gender VARCHAR2(20),
CONSTRAINT primeKey PRIMARY KEY (EmpID)
);



INSERT ALL 
INTO sweta_employeeInfo (EmpID, EmpFname, EmpLname, Department, Project, Address, DOB, Gender) VALUES (1, 'Sanjay', 'Mehra', 'HR', 'P1', 'Hyderabad(HYD)', '01/12/1976', 'M')
INTO sweta_employeeInfo (EmpID, EmpFname, EmpLname, Department, Project, Address, DOB, Gender) VALUES (2, 'Ananya', 'Mishra', 'Admin', 'P2', 'Delhi(DEL)', '02/05/1968', 'F')
INTO sweta_employeeInfo (EmpID, EmpFname, EmpLname, Department, Project, Address, DOB, Gender) VALUES (3, 'ROHAN', 'Diwan', 'Account', 'P3', 'Mumbai(BOM)', '01/01/1980', 'M')
INTO sweta_employeeInfo (EmpID, EmpFname, EmpLname, Department, Project, Address, DOB, Gender) VALUES (4, 'Sonia', 'Kulkarni', 'HR', 'P1', 'Hyderabad(HYD)', '02/05/1992', 'F')
INTO sweta_employeeInfo (EmpID, EmpFname, EmpLname, Department, Project, Address, DOB, Gender) VALUES (5, 'Ankit','Kapoor', 'Admin', 'P2', 'Delhi(DEL)', '03/07/1994', 'M')
SELECT * FROM dual;

Select * from sweta_employeeinfo;


INSERT INTO sweta_EmployeeInfo (EmpID, EmpFname, EmpLname, Department, Project, Address, DOB, Gender) 
VALUES (6, 'Ankit','Kapoor', 'Admin', 'P2', 'Delhi(DEL)', '03/07/1994', 'M');


CREATE TABLE sweta_EmployeePosition (
EmpID Number(2),
EmpPosition VARCHAR2(50),
DateOfJoining DATE,
Salary NUMBER
);


SELECT * FROM sweta_EmployeePosition;

INSERT ALL
INTO sweta_EmployeePosition (EmpID, EmpPosition, DateOfJoining, Salary) VALUES (1, 'Manager', '01/05/2022', 500000)
INTO sweta_EmployeePosition (EmpID, EmpPosition, DateOfJoining, Salary) VALUES (2, 'Executive', '02/05/2022', 75000)
INTO sweta_EmployeePosition (EmpID, EmpPosition, DateOfJoining, Salary) VALUES (3, 'Manager', '01/05/2022', 90000)
INTO sweta_EmployeePosition (EmpID, EmpPosition, DateOfJoining, Salary) VALUES (2, 'Lead', '02/05/2022', 85000)
INTO sweta_EmployeePosition (EmpID, EmpPosition, DateOfJoining, Salary) VALUES (1, 'Executive', '01/05/2022', 300000)
SELECT * FROM dual;


/* Question 1 */
SELECT UPPER(EmpFname) AS EmpName
FROM sweta_EmployeeInfo;

/* Question 2 */
SELECT COUNT(sei.EmpID)
FROM sweta_EmployeeInfo sei
WHERE sei.Department = 'HR';

/* Question 3 */
SELECT SUBSTR(sei.EmpLname,0,4)
FROM sweta_EmployeeInfo sei;

/* Question 4 */
CREATE TABLE copy_sweta_EmployeeInfo AS SELECT * FROM sweta_EmployeeInfo;

SELECT * FROM sweta_EmployeeInfo;


/* Question 5 */
SELECT EmpFname || ' ' || EmpLname AS FullName
FROM sweta_EmployeeInfo;


/* Question 6 */
SELECT sei.Department
FROM sweta_EmployeeInfo sei
GROUP BY sei.department
HAVING COUNT(sei.EmpID) < 2;


/* Question 7 */
SELECT Salary
FROM (SELECT Salary FROM sweta_EmployeePosition 
ORDER BY Salary DESC)
WHERE rownum =2;

SELECT Salary FROM (SELECT Salary, RANK() over (order by salary desc) r FROM sweta_EmployeePosition)
WHERE r = 3;

SELECT MIN(salary) FROM   
(SELECT DISTINCT Salary FROM sweta_EmployeePosition ORDER BY salary DESC)   
WHERE ROWNUM < 3;

/* Question 8*/
SELECT MIN(salary) FROM   
(SELECT DISTINCT Salary FROM sweta_EmployeePosition ORDER BY salary DESC)   
WHERE ROWNUM < 4;

/* Question 9 */
SELECT *
FROM sweta_EmployeeInfo
FETCH FIRST 50 PERCENT ROWS ONLY;

/* Question 10 */
SELECT EmpFname, EmpLname, Count (*)
FROM sweta_EmployeeInfo
GROUP BY EmpFname, EmpLname;


SELECT Salary
FROM (
  SELECT Salary, RANK() OVER (ORDER BY Salary DESC) AS salary_rank
  FROM sweta_EmpPosition
)
WHERE salary_rank = 3;
