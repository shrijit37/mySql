
-- CREATING FIRST TABLE
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL
);

-- insert
INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales');
INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Accounting');
INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales');

-- fetch 
SELECT * FROM EMPLOYEE;





--  CREATE SECOND TABLE 

CREATE TABLE SALARY(
    empId INT,
    salary INTEGER
);

INSERT INTO SALARY VALUES (0001, 15000);
INSERT INTO SALARY VALUES (0002, 12000);
INSERT INTO SALARY VALUES (0003, 15000);



SELECT * FROM SALARY;

-- to show information about table
SHOW tables;


-- to add columns -------------------------------

ALTER table EMPLOYEE add email varchar(100);

INSERT INTO EMPLOYEE VALUES (0004, 'Emma', 'Marketing', 'emma.marketing@company.com');
INSERT INTO EMPLOYEE VALUES (0005, 'John', 'IT', 'john.it@company.com');
INSERT INTO EMPLOYEE VALUES (0006, 'Olivia', 'HR', 'olivia.hr@company.com');
INSERT INTO EMPLOYEE VALUES (0007, 'Liam', 'Sales', 'liam.sales@company.com');
INSERT INTO EMPLOYEE VALUES (0008, 'Sophia', 'Accounting', 'sophia.accounting@company.com');
INSERT INTO EMPLOYEE VALUES (0009, 'Mason', 'Marketing', 'mason.marketing@company.com');
INSERT INTO EMPLOYEE VALUES (0010, 'Isabella', 'IT', 'isabella.it@company.com');
INSERT INTO EMPLOYEE VALUES (0011, 'Lucas', 'Sales', 'lucas.sales@company.com');
INSERT INTO EMPLOYEE VALUES (0012, 'Mia', 'HR', 'mia.hr@company.com');
INSERT INTO EMPLOYEE VALUES (0013, 'Ethan', 'Accounting', 'ethan.accounting@company.com');
SELECT * FROM EMPLOYEE;

-- to delete table--------------

-- DROP table EMPLOYEE;
-- SHOW tables



-- to insert data to the tables----------------

INSERT INTO EMPLOYEE VALUES (14,'Shrijit','IT',"shrijitsrivastav@gmail.com");

SELECT * FROM EMPLOYEE;

-- querying data---------------------------

-- SELECT email from EMPLOYEE;
-- SELECT empId , dept from EMPLOYEE;


-- delete table data--------------------------------------------

SET SQL_SAFE_UPDATES = 0;
delete from SALARY;
DESC SALARY;

-- INSERT INTO SALARY VALUES (0001, 15000); -- CAN ADD VALUES
SELECT * FROM SALARY;

SHOW tables;


-- delete the whole table from the database

-- TRUNCATE TABLE SALARY;
-- INSERT INTO SALARY VALUES (0001, 15000);  -- CANT ADD VALUES
-- SELECT * SALARY;


-- CREATING SALARY TABLE AGAIN
-- CREATE TABLE SALARY(
--     empId INT,
--     salary INTEGER
-- );

INSERT INTO SALARY VALUES (0001, 15000);
INSERT INTO SALARY VALUES (0002, 12000);
INSERT INTO SALARY VALUES (0003, 9000);



SELECT * FROM SALARY;


-- updating table

UPDATE EMPLOYEE SET email = 'Clark@sales.gmail.com' WHERE empId='0001'; 

-- OPERATORS (CONDITIONAL PRINTING)------------------------

-- SELECT * from EMPLOYEE where dept = 'sales';

-- SELECT * from SALARY where salary >= 11000;

-- SELECT * from EMPLOYEE where dept = 'sales' AND empId = 3;

-- SELECT * from EMPLOYEE where dept = 'sales' AND empId = 3 AND email = "sdf";  --nothing is printed since it didnt satisfied the CONDITIONAL
  


-- SELECT * from SALARY where salary between 12000 and 15000;  --between the range



-- Patern matching 

SELECT * from EMPLOYEE where email LIKE 'e%';  -- gives email starting with e 

SELECT * from EMPLOYEE where email LIKE '%n%';  -- gives email with consists of the letter n

SELECT * from EMPLOYEE where email LIKE '%gmail.com';  -- gives email ending with gmail.com


SELECT * from EMPLOYEE where email is NULL;  -- gives email is NULL



-- SELECT * from EMPLOYEE;


