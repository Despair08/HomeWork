SELECT * FROM students;
--Вывести все столбцы и строки
SELECT * FROM students;
--Вывести всех струдентов
SELECT id FROM students;
--Вывести ID 
SELECT name FROM students;
--Вывести Name
SELECT email FROM students;
--Вывести Email
SELECT name, email FROM students;
--Вывесли name, email 
SELECT id, name, email, created_on FROM students;
--Вывести id, name, email, created_on
SELECT name FROM students
WHERE students.password = '12333';
--Вывести пользователей с password 1233
SELECT name FROM students
WHERE created_on = '2021-03-26 00:00:00';
--Вывести пользователей, которые были созданы 2021-03-26 00:00:00
SELECT name FROM students
WHERE name LIKE '%Anna%';
--Вывест пользователей, где в имени есть Анна
SELECT name FROM students
WHERE name LIKE '%8';
--Вывести пользователей,где в имени в конце есть 8
SELECT * FROM students
WHERE name LIKE '%a';
--Вывести пользователей, где в имени в конце есть буква а
SELECT * FROM students
WHERE created_on = '2021-07-12 00:00:00';
--Вывести пользователей, которые были созданы 2021-07-12 00:00:00
SELECT * FROM students
WHERE created_on = '2021-07-12 00:00:00' AND password = '1m313';
--Вывести пользователей, которые были созданы 2021-07-12 00:00:00 и password 1m313 
SELECT * FROM students
WHERE created_on = ' 2021-07-12 00:00:00' AND name LIKE 'Andrey%';
--Вывести пользователей, которые были созданы 2021-07-12 00:00:00 и в имени есть Andrey
SELECT * FROM students
WHERE created_on = '2021-07-12 00:00:00' AND name LIKE '8%';
--Вывести пользователей, которые были созданы 2021-07-12 00:00:00 и в имени есть цифра 8
SELECT * FROM students
WHERE id = 110;
--Вывести пользователей с ID 110
SELECT * FROM students
WHERE id =153;
--Вывести пользователей с ID 153
SELECT * FROM students
WHERE id > 140;
--Вывести пользователей с ID больше 140
SELECT * FROM students
WHERE id < 130;
--Вывести пользователей с ID меньше 130
SELECT * FROM students
WHERE id NOT BETWEEN 127 AND 188;
--Вывести пользователей с ID меньше 127 или больше 188
SELECT * FROM students
WHERE id <= 137;
--Вывести пользователей с ID меньше или равно 137
SELECT * FROM students
WHERE id >= 137;
--Вывести пользователей с ID больше или равно 137
SELECT * FROM students
WHERE id > 180 AND id < 190;
SELECT * FROM students
WHERE id BETWEEN 180 AND 190;
/*SELECT * FROM students
WHERE id >= 180 AND id <= 190;*/;
SELECT * FROM students
WHERE password IN ('12333','1m313','123313');
SELECT * FROM students
WHERE created_on IN ('2020-10-03 00:00:00','2021-05-19 00:00:00','2021-03-26 00:00:00');
SELECT MIN(id) FROM students;
SELECT MAX(id) FROM students;
SELECT count(id) FROM students;
SELECT id, name, created_on FROM students
ORDER BY created_on;
SELECT id, name, created_on FROM students
ORDER BY created_on DESC;