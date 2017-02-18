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

CREATE TABLE employee_hobby (
);

-- ...
