-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
id int NOT NULL,
first_name varchar(100) NOT NULL,
last_name varchar(100) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE employee_department (
id int NOT NULL, 
name varchar(100) NOT NULL, 
description varchar(250), 
PRIMARY KEY (id)
);
ALTER TABLE employee ADD department int; 
ALTER TABLE employee ADD FOREIGN KEY (department) REFERENCES employee_department(id);

INSERT INTO employee_department VALUES (1,'develop','the develop department');
INSERT INTO employee_department VALUES (2,'marketing','the marketing department');
INSERT INTO employee_department VALUES (3,'enconomy','the economy department');
INSERT INTO employee_department VALUES (4,'food','the food department');
INSERT INTO employee_department VALUES (5,'human resources','the human resources department');
INSERT INTO employee_department VALUES (6,'test','the test department');

INSERT INTO employee VALUES (1,'Aaron','Negrete',1); 
INSERT INTO employee VALUES (2,'Jose','Perez',2);
INSERT INTO employee VALUES (3,'Jua','Martinez',3);
INSERT INTO employee VALUES (4,'Maricela','Gomez',5);

CREATE TABLE employee_hobby (id int NOT NULL, 
name varchar(50) NOT NULL, 
description varchar(250), 
PRIMARY KEY (id)
);

INSERT INTO employee_hobby VALUES (1,'reading','this person wants to read');
INSERT INTO employee_hobby VALUES (2,'coding','this person wants to code');
INSERT INTO employee_hobby VALUES (3,'play music','this person wants to play music');

CREATE TABLE hobby_relation (employee int,hobby int);
ALTER TABLE hobby_relation ADD FOREIGN KEY (employee) REFERENCES employee(id);
ALTER TABLE hobby_relation ADD FOREIGN KEY (hobby) REFERENCES employee_hobby (id);

INSERT INTO hobby_relation VALUES(1,1);
INSERT INTO hobby_relation VALUES(1,2);
INSERT INTO hobby_relation VALUES(2,1);
INSERT INTO hobby_relation VALUES(2,3);
INSERT INTO hobby_relation VALUES(3,2);
INSERT INTO hobby_relation VALUES(3,3);
INSERT INTO hobby_relation VALUES(4,1);
INSERT INTO hobby_relation VALUES(4,2);
-- ...
