SELECT employee_id,
first_name,
last_name,
salary
FROM employee
WHERE salary > (
    SELECT AVG (salary)
    FROM employee
);

BEGIN TRANSACTION;

/* Create a table called NAMES */
CREATE TABLE NAMES(Id integer PRIMARY KEY, Name text);

/* Create few records in this table */
INSERT INTO NAMES VALUES(1,'Tom');
INSERT INTO NAMES VALUES(2,'Lucy');
INSERT INTO NAMES VALUES(3,'Frank');
INSERT INTO NAMES VALUES(4,'Jane');
INSERT INTO NAMES VALUES(5,'Robert');
COMMIT;

/* Display all the records from the table */
SELECT * FROM NAMES;