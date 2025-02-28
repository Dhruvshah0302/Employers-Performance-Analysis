use employee;
select EMP_ID,FIRST_NAME,LAST_NAME,GENDER,DEPT from emp_record_table;

Select EMP_ID,FIRST_NAME,LAST_NAME,GENDER,DEPT,EMP_RATING from emp_record_table where EMP_RATING < 2 or EMP_RATING > 4 or 
EMP_RATING between 2 and 4;

select concat(FIRST_NAME,' ',LAST_NAME) as NAME from emp_record_table where DEPT='FINANCE';

SELECT 
    MANAGER_ID AS EMP_ID, 
    GROUP_CONCAT(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS NAME, 
    COUNT(EMP_ID) AS REPORTER_COUNT
FROM emp_record_table WHERE MANAGER_ID IS NOT NULL GROUP BY MANAGER_ID ORDER BY REPORTER_COUNT DESC LIMIT 0, 1000;


Select EMP_ID,FIRST_NAME,LAST_NAME,DEPT from emp_record_table where DEPT='FINANCE'
UNION
Select EMP_ID,FIRST_NAME,LAST_NAME,DEPT from emp_record_table where DEPT='HEALTHCARE';

Select EMP_ID,FIRST_NAME,LAST_NAME,ROLE,DEPT,EMP_RATING,max(EMP_RATING) OVER (PARTITION BY DEPT) As MAX_EMP_RATING 
from emp_record_table Order by DEPT,EMP_RATING DESC;

SELECT ROLE,MIN(SALARY) AS MIN_SALARY, MAX(SALARY) AS MAX_SALARY
FROM emp_record_table GROUP BY ROLE ORDER BY ROLE;

select EMP_ID,concat(FIRST_NAME,' ',LAST_NAME) as NAME,EXP, RANK() OVER (ORDER BY EXP DESC) from emp_record_table;

CREATE VIEW EMPOLYEE_6000 AS 
SELECT * FROM emp_record_table WHERE SALARY > 6000;

SHOW FULL TABLES WHERE TABLE_TYPE = 'VIEW';
SELECT * FROM EMP_6000;

Select EMP_ID,concat(FIRST_NAME,' ',LAST_NAME) as Full_Name,EXP from emp_record_table where EXP > 10;

DELIMITER $$
CREATE PROCEDURE GETEMPEXP()
BEGIN
    SELECT 
        EMP_ID, 
        CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME, 
        EXP 
    FROM 
        emp_record_table
    WHERE 
        EXP > 3;
END$$
DELIMITER ;
call GETEMPEXP();



DELIMITER $$
CREATE FUNCTION CheckRoleBasedOnExperience2(exp INT, role TEXT) 
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    DECLARE expected_role TEXT;

    IF exp <= 2 THEN
        SET expected_role = 'JUNIOR DATA SCIENTIST';
    ELSEIF exp > 2 AND exp <= 5 THEN
        SET expected_role = 'ASSOCIATE DATA SCIENTIST';
    ELSEIF exp > 5 AND exp <= 10 THEN
        SET expected_role = 'SENIOR DATA SCIENTIST';
    ELSEIF exp > 10 AND exp <= 12 THEN
        SET expected_role = 'LEAD DATA SCIENTIST';
    ELSEIF exp > 12 AND exp <= 16 THEN
        SET expected_role = 'MANAGER';
    ELSE
        SET expected_role = 'UNASSIGNED';
    END IF;

    RETURN expected_role = role;
END$$

DELIMITER ;
SELECT EMP_ID,FIRST_NAME,LAST_NAME,EXP,ROLE,CheckRoleBasedOnExperience2(EXP, ROLE) AS is_role_correct
FROM data_science_team
WHERE DEPT = 'RETAIL';

create index FN1 on emp_record_table(FIRST_NAME(50));
EXPLAIN SELECT * FROM emp_record_table WHERE FIRST_NAME = 'Eric';
SELECT * FROM emp_record_table WHERE FIRST_NAME = 'Eric';

SELECT FIRST_NAME,LAST_NAME,EMP_RATING,SALARY,(0.05*SALARY*EMP_RATING) AS BONUS FROM emp_record_table; 

SELECT CONTINENT,COUNTRY, AVG(SALARY) AS AVERAGE_SALARY
FROM EMP_RECORD_TABLE
GROUP BY CONTINENT,COUNTRY
ORDER BY CONTINENT,COUNTRY
LIMIT 0, 1000;

