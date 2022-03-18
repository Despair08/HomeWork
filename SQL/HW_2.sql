/*Создать таблицу employees, 
	- id. serial, primary key,
	- employee name varchar(50) not null
*/
CREATE TABLE employees (
	id SERIAL PRIMARY KEY,
	employee_name VARCHAR(50) NOT NULL
);
SELECT * FROM employees;

--Заполнить таблицу 70 Записями
INSERT INTO employees (
	employee_name
)
VALUES ('Richard Thomas'),
	('John Cummings'),
	('Bruce Phillips'),
	('Kenneth Graham'),
	('Michelle Gardner'),
	('Kenneth Gray'),
	('Wendy Pierce'),
	('Laura White'),
	('Sheila Arnold'),
	('Brenda Scott'),
	('Tim Marshall'),
	('Joshua Paul'),
	('Rebecca Garrett'),
	('Jennifer Jones'),
	('Donna Smith'),
	('Kristen Henry'),
	('Rhonda Parker'),
	('Karl Garcia'),
	('David Collins'),
	('Joshua Byrd'),
	('Leah Smith'),
	('Cathy Brooks'),
	('Kevin Yates'),
	('Gina Gonzalez'),
	('Edwin Henry'),
	('Lucille Walters'),
	('Ruth Wilson'),
	('Jessica Davis'),
	('Virginia Rivera'),
	('Alan Garcia'),
	('Julia Hernandez'),
	('Mark Ramirez'),
	('James Harris'),
	('Maria Campbell'),
	('Charles Lindsey'),
	('Clifford Rice'),
	('Carolyn Williams'),
	('Raymond Smith'),
	('Constance Hawkins'),
	('Gloria Robinson'),
	('Joanne Silva'),
	('Stephanie Vargas'),
	('Danielle Rivera'),
	('Virgil Abbott'),
	('David Lynch'),
	('Nelson Lee'),
	('Lori Walters'),
	('Sarah Nelson'),
	('Jacqueline Sullivan'),
	('Pamela Meyer'),
	('Mary Barnes'),
	('Jessie Lowe'),
	('Maria Matthews'),
	('Steven Carr'),
	('Nicole Johnson'),
	('Jerry Walker'),
	('Ruth Nguyen'),
	('Scott Brown'),
	('Neil Haynes'),
	('Mark Henry'),
	('Eric Thompson'),
	('Rosemary Patterson'),
	('Mary Torres'),
	('Laura Hale'),
	('Rebecca Martinez'),
	('Nathan Taylor'),
	('Jennie Bryant'),
	('Sandra Warner'),
	('Paula Greer'),
	('Kristin Bennett');


/*Создать таблицу salary
	-id serial primary key
	-monthly_salary int not null*/
CREATE TABLE salary (
	id SERIAL PRIMARY KEY,
	monthly_salary INT NOT NULL
);
SELECT * FROM SALARY;


--Наполнить salary значениями
INSERT INTO salary (
	monthly_salary
)
VALUES  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
	
	/*Создать таблицу employee_salary
	 * 	-id serial primary key
	 * -employee id int not null unique
	 * -salary id int not null*/
CREATE TABLE employee_salary (
	id SERIAL PRIMARY KEY,
	employee_id INT NOT NULL UNIQUE,
	salary_id INT NOT NULL
);

SELECT * FROM employee_salary;

--Наполнить таблицу 40 значениями, в 10 строк вставить несуществующие employee_id
INSERT INTO employee_salary (
	employee_id,
	salary_id
)
VALUES  (3,1),
		(10,15),
		(2,8),
		(1,3),
		(71,10),
		(99,1),
		(83,11),
		(109,14),
		(100,10),
		(67,15),
		(55,14),
		(68,12),
		(93,2),
		(98,5),
		(80,9),
		(4,4),
		(5,13),
		(72,14),
		(77,8),
		(20,2),
		(41,3),
		(22,9),
		(32,10),
		(24,11),
		(25,12),
		(26,13),
		(27,14),
		(28,15),
		(29,1),
		(30,2),
		(31,3),
		(52,4),
		(33,5),
		(34,6),
		(35,7),
		(36,8),
		(37,9),
		(38,10),
		(39,11),
		(40,12);

/*Создать таблицу roles
	-id serial primary key
	-role_name int not null unique
	*/
CREATE TABLE roles (
	id SERIAL PRIMARY KEY,
	role_name INT NOT NULL UNIQUE
);

SELECT * FROM roles;

--Поменять тип role_name с int на VARCHAR(30)

ALTER TABLE roles 
ALTER column role_name TYPE VARCHAR(30);

--Заполнить таблицу roles 20 строками

INSERT INTO roles (
	role_name
)
VALUES  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior JAVA developer'),
		('Middle JAVA developer'),
		('Senior JAVA developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales Manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
		
	
/*Создать таблицу roles_employee
	-id serial primary key 
	-employee_id int not null unique (Внешний ключ для таблицы employees, поле ID)
	-role_id int not null (Внешний ключ для таблицы roles, поле ID)*/
	CREATE TABLE roles_employee (
		id SERIAL PRIMARY KEY,
		employee_id INT NOT NULL UNIQUE,
		role_id INT NOT NULL
	);
	
SELECT * FROM roles_employee;

--Наполнить таблицу 40 строками

INSERT INTO roles_employee (
	employee_id,
	role_id
)
VALUES  (40,1),
		(39,2),
		(38,3),
		(37,4),
		(36,5),
		(34,6),
		(33,7),
		(32,8),
		(31,9),
		(30,10),
		(29,11),
		(28,12),
		(27,13),
		(26,14),
		(25,15),
		(24,16),
		(23,17),
		(22,18),
		(21,19),
		(20,20),
		(19,19),
		(18,18),
		(17,17),
		(16,16),
		(15,15),
		(14,14),
		(13,13),
		(12,12),
		(11,11),
		(10,10),
		(9,9),
		(8,8),
		(7,7),
		(6,6),
		(5,5),
		(4,4),
		(3,3),
		(2,2),
		(1,1);