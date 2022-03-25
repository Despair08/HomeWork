/*Создать таблицу employees, 
	- id. serial, primary key,
	- employee name varchar(50) not null
*/
CREATE TABLE employees (
	id SERIAL PRIMARY KEY,
	employee_name VARCHAR(50) NOT NULL
);
SELECT * FROM employees
--WHERE employee_name LIKE '%Bruce%';

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
		(10,4),
		(2,1),
		(1,1),
		(71,15),
		(99,15),
		(83,15),
		(109,4),
		(100,2),
		(67,14),
		(55,10),
		(68,5),
		(93,8),
		(98,2),
		(80,5),
		(4,13),
		(5,10),
		(72,2),
		(77,2),
		(20,9),
		(41,4),
		(22,12),
		(32,7),
		(24,10),
		(25,2),
		(26,1),
		(27,6),
		(28,6),
		(29,9),
		(30,8),
		(31,3),
		(52,14),
		(33,5),
		(34,1),
		(35,12),
		(36,13),
		(37,10),
		(38,2),
		(39,8),
		(40,4);

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
ALTER column role_name TYPE VARCHAR(30)
USING role_name::VARCHAR(30);

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

ALTER TABLE roles_employee ADD FOREIGN KEY(employee_id) REFERENCES employees(id);

ALTER TABLE roles_employee ADD FOREIGN KEY(role_id) REFERENCES roles(id);
	
SELECT * FROM roles_employee;
DROP TABLE roles_employee;
--Наполнить таблицу 40 строками

INSERT INTO roles_employee (
	employee_id,
	role_id
)
VALUES  (3,1),
		(10,4),
		(2,1),
		(1,1),
		(69,16),
		(30,8),
		(14,3),
		(70,2),
		(44,2),
		(15,10),
		(22,20),
		(67,15),
		(58,17),
		(39,1),
		(4,9),
		(25,7),
		(61,8),
		(48,18),
		(19,20),
		(21,5),
		(33,4),
		(49,11),
		(11,10),
		(36,10),
		(7,8),
		(45,6),
		(50,3),
		(59,14),
		(62,11),
		(60,13),
		(29,20),
		(31,16),
		(37,19),
		(46,3),
		(53,4),
		(55,5),
		(66,2),
		(8,1),
		(16,13);
SELECT * FROM employee_salary;