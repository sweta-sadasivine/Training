
/* Question 3 */
-----------------------------------------
CREATE OR REPLACE PROCEDURE SP_EMP_DATE_PARAM(startDate in date, endDate in date)IS
BEGIN
  FOR I IN (SELECT empid, 
                   empfname,
                   emplname,
                   department,
                   project,
                   address,
                   dob,
                   gender
            FROM sweta_employeeinfo
            WHERE dob between startDate and endDate
          )
   LOOP
     DBMS_OUTPUT.PUT_LINE('EMPLOYEE -> '||I.empid||' -> NAME -> '||I.empfname||' '||I.emplname||' -> DEPARTMENT -> '||I.department||' BIRTH_DATE -> '||I.dob||' -> GENDER -> '||I.gender);
   END LOOP;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('ERROR');
END;
/

BEGIN
SP_EMP_DATE_PARAM('01/01/1992','01/12/1995');
END;
/

/* Question 4 */
-----------------------------------
CREATE OR REPLACE FUNCTION revStr(str IN VARCHAR2) RETURN VARCHAR2
IS
strRev VARCHAR2(255);
BEGIN
    FOR i IN REVERSE 1.. Length(str) LOOP              
        strRev := strRev|| Substr(str, i, 1);
    END LOOP;
    RETURN strRev;
END revStr;

/

DECLARE    
    strrev VARCHAR2(50);    
BEGIN    
   strrev := revStr('sweta');    
   dbms_output.put_line(strrev);    
END;  

/


/* Question 5 */
CREATE TABLE sweta_emplog (
    createDate        DATE,
    description        VARCHAR2(30)
);
CREATE OR REPLACE TRIGGER emp_audit_trig
    AFTER INSERT ON sweta_employeeinfo
    FOR EACH ROW
DECLARE
    empno         sweta_employeeinfo.empid%TYPE;
BEGIN
    empno := :NEW.empid;
	
    INSERT INTO sweta_emplog VALUES (SYSDATE, 'Added employee # ' || empno);
		
EXCEPTION
    WHEN OTHERS
    THEN DBMS_OUTPUT.PUT_LINE('Error occured');		
END;
/
ALTER TRIGGER  "emp_audit_trig" ENABLE;
/


Select * From sweta_emplog;

INSERT INTO sweta_employeeInfo (EmpID, EmpFname, EmpLname, Department, Project, Address, DOB, Gender) 
VALUES (11, 'Janny', 'Doe', 'HR', 'P1', 'Hyderabad(HYD)', '01/12/1976', 'F');
