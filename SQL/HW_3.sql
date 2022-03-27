--Вывести всех работников, у которых есть зарплата

SELECT employee_name AS name, monthly_salary AS salary
FROM employees
	JOIN employee_salary ON employee_salary.employee_id = employees.id
	JOIN salary ON salary.id = employee_salary.salary_id
ORDER BY salary;

--Вывести всех работников с зарплатой меньше 2000

SELECT employee_name AS name, monthly_salary AS salary
FROM employees e
	INNER JOIN employee_salary es ON es.employee_id = e.id
	INNER JOIN salary s ON es.salary_id = s.id
WHERE s.monthly_salary < 2000
ORDER BY salary;

--Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

SELECT s.id, monthly_salary 
FROM salary s
	LEFT JOIN employee_salary es ON es.salary_id = s.id
WHERE employee_id IS NULL;

--Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

SELECT s.id, monthly_salary
FROM salary s
	LEFT JOIN employee_salary es ON es.salary_id = s.id
WHERE employee_id IS NULL AND monthly_salary <= 2000;

--Найти всех работников кому не начислена ЗП.

SELECT e.id, employee_name AS name
FROM employees e
	LEFT JOIN employee_salary es ON es.employee_id = e.id
WHERE salary_id IS NULL
ORDER BY e.id;

--Вывести всех работников с названиями их должности.

SELECT e.id, employee_name AS name, role_name AS role
FROM employees e
	 JOIN roles_employee re ON re.employee_id = e.id
	 JOIN roles r ON r.id = re.role_id
ORDER BY e.id;

--Вывести имена и должность только JAVA разработчиков.

SELECT employee_name AS name, role_name AS role
FROM employees e 
	JOIN roles_employee re ON re.employee_id = e.id
	JOIN roles r ON r.id = re.role_id
WHERE role_name LIKE ('%JAVA%')
ORDER BY name;

--Вывести имена и должность только Python разработчиков.

SELECT employee_name AS name, role_name AS role, e.id
FROM employees e 
	JOIN roles_employee re ON re.employee_id = e.id
	JOIN roles r ON r.id = re.role_id
WHERE role_name LIKE ('%Python%')
ORDER BY name;

--Вывести имена и должность всех QA инженеров.

SELECT employee_name AS name, role_name AS role
FROM employees e 
	JOIN roles_employee re ON re.employee_id = e.id 
	JOIN roles r ON r.id = re.role_id 
WHERE role_name LIKE ('%QA%')
ORDER BY name;


--Вывести имена и должность ручных QA инженеров.

SELECT employee_name AS name, role_name AS role
FROM employees e 
	JOIN roles_employee re ON re.employee_id = e.id 
	JOIN roles r ON re.role_id = r.id 
WHERE role_name LIKE('%Manual%') --Если в условии написать ('%Manual%QA%') выдача не изменится, но запрос будет точнее
ORDER BY name;

--Вывести имена и должность автоматизаторов QA

SELECT employee_name AS name, role_name AS role
FROM employees e 
	JOIN roles_employee re ON re.employee_id = e.id 
	JOIN roles r ON re.role_id = r.id 
WHERE role_name LIKE ('%Automation%')
ORDER BY name;

--Вывести имена и зарплаты Junior специалистов

SELECT employee_name AS name, monthly_salary AS salary, role_name AS role
FROM employees e 
	JOIN roles_employee re ON re.employee_id = e.id 
	JOIN roles r ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = e.id
	JOIN salary s ON s.id = es.salary_id
WHERE role_name LIKE ('%Junior%')
ORDER BY salary;


--Вывести имена и зарплаты Middle специалистов

SELECT employee_name AS name, monthly_salary AS salary, role_name AS role
FROM employees e 
	JOIN roles_employee re ON re.employee_id = e.id
	JOIN roles r ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = e.id
	JOIN salary s ON s.id = es.salary_id 
WHERE role_name LIKE ('%Middle%')
ORDER BY salary;


--Вывести имена и зарплаты Senior специалистов

SELECT employee_name AS name, monthly_salary AS salary, role_name AS role
FROM employees e 
	JOIN roles_employee re ON re.employee_id = e.id
	JOIN roles r ON r.id = re.role_id
	JOIN employee_salary es ON es.employee_id = e.id
	JOIN salary s ON s.id = es.salary_id
WHERE role_name LIKE('%Senior%')
ORDER BY salary;

--Вывести зарплаты Java разработчиков

SELECT monthly_salary AS salary
FROM salary s
	JOIN employee_salary es ON es.salary_id = s.id
	JOIN roles_employee re ON re.employee_id = es.employee_id 
	JOIN roles r ON r.id = re.role_id 
WHERE role_name LIKE ('%JAVA%')
ORDER BY salary;


--Вывести зарплаты Python разработчиков

SELECT monthly_salary AS salary
FROM salary s 
	JOIN employee_salary es ON es.salary_id = s.id
	JOIN roles_employee re ON re.employee_id = es.employee_id 
	JOIN roles r ON r.id = re.role_id 
WHERE role_name LIKE ('%Python%')
ORDER BY salary;


--Вывести имена и зарплаты Junior Python разработчиков

SELECT employee_name AS name, monthly_salary AS salary 
FROM salary s 
	JOIN employee_salary es ON es.salary_id = s.id 
	JOIN roles_employee re ON re.employee_id = es.employee_id 
	JOIN roles r ON r.id = re.role_id 
	JOIN employees e ON e.id = re.employee_id 
WHERE role_name LIKE ('%Junior Python%');


--Вывести имена и зарплаты Middle JS разработчиков


SELECT employee_name AS name, monthly_salary AS salary 
FROM salary s
	JOIN employee_salary es ON es.salary_id = s.id 
	JOIN roles_employee re ON re.employee_id = es.employee_id 
	JOIN roles r ON r.id = re.role_id 
	JOIN employees e ON e.id = re.employee_id 
WHERE role_name LIKE ('%Middle JavaScript%');


--Вывести имена и зарплаты Senior Java разработчиков

SELECT employee_name AS name, monthly_salary AS salary
	FROM employees e 
	JOIN roles_employee re ON re.employee_id = e.id 
	JOIN roles r ON r.id = re.role_id
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id 
WHERE role_name LIKE ('%Senior JavaScript%');


--Вывести зарплаты Junior QA инженеров

SELECT monthly_salary AS salary 
	FROM salary s 
	JOIN employee_salary es ON es.salary_id = s.id 
	JOIN roles_employee re ON re.employee_id = es.employee_id 
	JOIN roles r ON r.id = re.role_id 
WHERE role_name LIKE ('%Junior%QA%');

--Вывести среднюю зарплату всех Junior специалистов

SELECT AVG(monthly_salary) AS average_salary
FROM salary s 
	JOIN employee_salary es ON es.salary_id = s.id 
	JOIN roles_employee re ON re.employee_id = es.employee_id 
	JOIN roles r ON r.id = re.role_id 
WHERE role_name LIKE ('%Junior%');

--Вывести сумму зарплат JS разработчиков

SELECT SUM(monthly_salary) AS salary_sum
FROM salary s 
	JOIN employee_salary es ON es.salary_id = s.id 
	JOIN roles_employee re ON re.employee_id = es.employee_id 
	JOIN roles r ON r.id = re.role_id 
WHERE role_name LIKE ('%JavaScript%');

--Вывести минимальную ЗП QA инженеров

SELECT MIN(monthly_salary) AS min_salary
FROM salary s 
	JOIN employee_salary es ON es.salary_id = s.id 
	JOIN roles_employee re ON re.employee_id = es.employee_id 
	JOIN roles r ON r.id = re.role_id 
WHERE role_name LIKE ('%QA%');

--Вывести максимальную ЗП QA инженеров

SELECT MAX(monthly_salary) AS max_salary
FROM salary s 
	JOIN employee_salary es ON es.salary_id = s.id 
	JOIN roles_employee re ON re.employee_id = es.employee_id 
	JOIN roles r ON r.id = re.role_id 
WHERE role_name LIKE ('%QA%');

--Вывести количество QA инженеров

SELECT COUNT(employee_id) AS amount
FROM roles_employee re 
	JOIN roles r ON r.id = re.role_id 
WHERE role_name LIKE ('%QA%');

--Вывести количество Middle специалистов

SELECT COUNT(employee_id) AS amount 
FROM roles_employee re 
	JOIN roles r ON r.id = re.role_id 
WHERE role_name LIKE ('%Middle%');

--Вывести количество разработчиков


SELECT COUNT(employee_id)
FROM roles_employee re 
	JOIN roles r ON r.id = re.role_id 
WHERE role_name LIKE ('%developer%');

--Вывести фонд (сумму) зарплаты разработчиков

SELECT SUM(monthly_salary) AS salary_fund
FROM salary s 
	JOIN employee_salary es ON es.salary_id = s.id 
	JOIN roles_employee re ON re.employee_id = es.employee_id 
	JOIN roles r ON r.id = re.role_id 
WHERE role_name LIKE ('%developer%');


--Вывести имена, должности и ЗП всех специалистов по возрастанию

SELECT employee_name AS name, monthly_salary AS salary, role_name AS role
FROM employees e 
	JOIN roles_employee re ON re.employee_id = e.id 
	JOIN roles r ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id
ORDER BY name;


--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

SELECT employee_name AS name, role_name AS role, monthly_salary AS salary
FROM employees e 
	JOIN roles_employee re ON re.employee_id = e.id 
	JOIN roles r ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id 
WHERE monthly_salary BETWEEN 1700 AND 2300
ORDER BY salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

SELECT employee_name AS name, role_name AS role, monthly_salary AS salary 
FROM employees e 
	JOIN roles_employee re ON re.employee_id = e.id 
	JOIN roles r ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id 
WHERE monthly_salary < 2300
ORDER BY salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1300, 2100

SELECT employee_name AS name, role_name AS role, monthly_salary AS salary 
FROM employees e 
	JOIN roles_employee re ON re.employee_id = e.id 
	JOIN roles r ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id  = re.employee_id 
	JOIN salary s ON s.id = es.salary_id 
WHERE monthly_salary IN (1100,1300,2100)
ORDER BY salary;