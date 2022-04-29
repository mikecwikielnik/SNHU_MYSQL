/* 
CREATED BY: Mike Cwikielnik
DESCRIPTION: Code from Chapter 10,
SQL Quickstart Guide
*/

-- INSERTING DATA INTO A DATABASE

INSERT INTO
artists (NAME)
VALUES ('Bob Marley')

SELECT 
	name
FROM
	artists
WHERE
	name like 'Bo%'
	
INSERT INTO
artists (NAME)
VALUES ('Pink Floyd')

SELECT
	name
FROM
	artists
WHERE
	name like 'Pi%'
	
INSERT INTO
employees
VALUES ('9', 'Martin', 'Ricky', 'Sales Support Agent', '2', '1975-02-07',
'2018-01-05', '123 Houston St', 'NYC', 'NY', 'USA', '11201',
'(555)-555-5555', '', 'none@none.com')
	
-- UPDATING DATA AND THE SET KEYWORD

UPDATE
employees
SET PostalCode = '11202'
WHERE
	EmployeeId = 9
	
UPDATE
employees
SET Email = 'none@gmail.com'
WHERE
	EmployeeId = 9 
	
-- DELETING DATA

SELECT
	*
FROM
	employees
WHERE
	EmployeeId = 9
	
DELETE FROM	
employees
WHERE
	EmployeeId = 9

SELECT
	*
FROM
	employees
WHERE
	Title = 'Sales Support Agent'

DELETE FROM
employees
WHERE
	Title = 'Sales Support Agent'









