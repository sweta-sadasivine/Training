/* Question 2 */
DECLARE
    getChar CHAR(1) := 'v';
BEGIN
    IF getChar BETWEEN '0' AND '9' THEN
        DBMS_OUTPUT.PUT_LINE ('The given character is a number');
    ELSIF (( getChar >= 'A' AND getChar <= 'Z' ) OR ( getChar >= 'a' AND getChar <= 'z' )) THEN
        DBMS_OUTPUT.PUT_LINE ('The given character is a letter');
    END IF;
END; 


/* Question 3 */
DECLARE
    d DATE := '03/05/2023';
    dayName VARCHAR2(15);

BEGIN
    dayName := TO_CHAR(d, 'DAY');

    IF dayName IN ('SATURDAY', 'SUNDAY') THEN
        DBMS_OUTPUT.PUT_LINE ('Day is '||dayName||' and its a weekend');
    ELSE
        DBMS_OUTPUT.PUT_LINE ('Day is '||dayName||' and its a weekday');
    END IF;
END;


/* Question 4 */
DECLARE
    numeral NUMBER := 0;

BEGIN
    
    IF numeral > 0 THEN
        DBMS_OUTPUT.PUT_LINE ('Number is positive number');
    ELSIF numeral = 0 THEN
        DBMS_OUTPUT.PUT_LINE ('Its zero');
    ELSE
        DBMS_OUTPUT.PUT_LINE ('Number is negative number');
    END IF;
END;


/* Question 5 */
DECLARE
    str  VARCHAR(20) := 'madm';
    len  NUMBER;
    str1 VARCHAR(20);
BEGIN
    len := Length(str);
  
    FOR i IN REVERSE 1.. len LOOP              
        str1 := str1|| Substr(str, i, 1);
    END LOOP;
  
    IF str = str1 THEN
        DBMS_OUTPUT.PUT_LINE('Its a palindrome');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Its not a palindrome');
    END IF;
END;



/* Question 6 */
DECLARE

BEGIN
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(SYSDATE, 'DD-MM-YYYY HH24:MI:SS'));
END;



/* Question 7 */
DECLARE
    len NUMBER := '&Add_Length';
    bth NUMBER := '&Add_Breadth';

BEGIN
    DBMS_OUTPUT.PUT_LINE ('Area = ' || len * bth);
END;


/* Question 8 */
DECLARE
    even NUMBER := 2;
BEGIN
    FOR i IN 1.. 10 LOOP              
        DBMS_OUTPUT.PUT_LINE(even * i);
    END LOOP;
END;   
    