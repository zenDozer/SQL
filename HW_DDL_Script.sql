-- Таблица employees

/*
 * 1. Создать таблицу employees
 * - id. serial,  primary key,
 * - employee_name. Varchar(50), not null
 */
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

-- 2. Наполнить таблицу employee 70 строками.
insert into employees (employee_name)
values	('Liam Wilson'),
		('Olivia Clark'),
		('Noah Roberts'),
		('Emma Carter'),
		('Ava White'),
		('Lucas Davis'),
		('Mia Anderson'),
		('Sophia Mitchell'),
		('Ethan Johnson'),
		('Isabella Thompson'),
		('Elijah Harris'),
		('Charlotte Lewis'),
		('James Martinez'),
		('Amelia Lee'),
		('Benjamin Walker'),
		('Harper Turner'),
		('William Hall'),
		('Abigail King'),
		('Alexander Adams'),
		('Evelyn Baker'),
		('Michael Wright'),
		('Elizabeth Green'),
		('Daniel Phillips'),
		('Sofia Hill'),
		('Matthew Cook'),
		('Grace Murphy'),
		('Henry Edwards'),
		('Emily Collins'),
		('Samuel Bell'),
		('Victoria Reed'),
		('Sebastian Ward'),
		('Scarlett Butler'),
		('Jackson Cox'),
		('Aria Wood'),
		('David Price'),
		('Lily Foster'),
		('Joseph Ross'),
		('Avery Kelly'),
		('Samuel Brooks'),
		('Zoey Ramirez'),
		('John Watson'),
		('Hannah Rivera'),
		('Andrew Reed'),
		('Brooklyn Coleman'),
		('Christopher Hughes'),
		('Addison Morris'),
		('William Foster'),
		('Audrey Long'),
		('Gabriel Sanders'),
		('Eleanor Simmons'),
		('Joshua Sanders'),
		('Stella Perry'),
		('Christian Coleman'),
		('Victoria Gray'),
		('David Hayes'),
		('Aurora Rogers'),
		('Isaac Turner'),
		('Claire Richardson'),
		('Nathan Cooper'),
		('Bella Watson'),
		('Caleb Hill'),
		('Penelope Phillips'),
		('Samuel Allen'),
		('Avery Russell'),
		('Joseph Diaz'),
		('Lily Ward'),
		('Carter Powell'),
		('Grace Foster'),
		('Henry Stewart'),
		('Savannah Campbell');

select * from employees;


-- Таблица salary

/*
 * 3. Создать таблицу salary
 * - id. Serial  primary key,
 * - monthly_salary. Int, not null
 */
create table salary(
	id serial primary key,
	monthly_salary int not null
);

/*
 * 4. Наполнить таблицу salary 15 строками:
 * - 1000
 * - 1100
 * - 1200
 * - 1300
 * - 1400
 * - 1500
 * - 1600
 * - 1700
 * - 1800
 * - 1900
 * - 2000
 * - 2100
 * - 2200
 * - 2300
 * - 2400
 * - 2500
 */
insert into salary (monthly_salary)
values 	(1000),
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

select * from salary;


-- Таблица employee_salary

/*
 * 5. Создать таблицу employee_salary
 * - id. Serial  primary key,
 * - employee_id. Int, not null, unique
 * - salary_id. Int, not null
 */
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

/* 
 * 6. Наполнить таблицу employee_salary 40 строками:
 * - в 10 строк из 40 вставить несуществующие employee_id
 */
insert into employee_salary (employee_id, salary_id)
values 	(15, 10),
		(27, 6),
		(68, 8),
		(42, 2),
		(56, 12),
		(31, 4),
		(23, 3),
		(62, 11),
		(5, 13),
		(18, 1),
		(49, 9),
		(37, 15),
		(11, 5),
		(36, 16),
		(3, 7),
		(50, 3),
		(30, 14),
		(64, 10),
		(22, 8),
		(57, 6),
		(47, 12),
		(9, 4),
		(65, 2),
		(20, 11),
		(40, 13),
		(52, 1),
		(13, 9),
		(45, 15),
		(26, 5),
		(33, 16),
		(104, 8),
		(91, 3),
		(125, 12),
		(109, 9),
		(82, 5),
		(148, 7),
		(137, 11),
		(113, 1),
		(136, 15),
		(122, 6);

select * from employee_salary
order by employee_id;

select employee_name, monthly_salary from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id;


-- Таблица roles

/*
 * 7. Создать таблицу roles
 * - id. Serial  primary key,
 * - role_name. int, not null, unique
 */
create table roles(
	id serial primary key,
	role_name int not null unique
);

-- 8. Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar(30);

/*
 * 9. Наполнить таблицу roles 20 строками:
 * id		role_name
 * 1		Junior Python developer
 * 2		Middle Python developer
 * 3		Senior Python developer
 * 4		Junior Java developer
 * 5		Middle Java developer
 * 6		Senior Java developer
 * 7		Junior JavaScript developer
 * 8		Middle JavaScript developer
 * 9		Senior JavaScript developer
 * 10		Junior Manual QA engineer
 * 11		Middle Manual QA engineer
 * 12		Senior Manual QA engineer
 * 13		Project Manager
 * 14		Designer
 * 15		HR
 * 16		CEO
 * 17		Sales manager
 * 18		Junior Automation QA engineer
 * 19		Middle Automation QA engineer
 * 20		Senior Automation QA engineer
 */
insert into roles (role_name)
values	('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
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
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

select * from roles;


-- Таблица roles_employee

/*
 * 10. Создать таблицу roles_employee
 * - id. Serial  primary key,
 * - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
 * - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
 */
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id) references employees(id),
	foreign key (role_id) references roles(id)
);

-- 11. Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (employee_id, role_id)
values	(12, 4),
		(31, 11),
		(55, 3),
		(63, 8),
		(9, 7),
		(43, 10),
		(19, 1),
		(26, 5),
		(57, 18),
		(37, 9),
		(2, 6),
		(14, 14),
		(66, 15),
		(51, 2),
		(21, 13),
		(44, 19),
		(6, 12),
		(68, 16),
		(35, 17),
		(59, 20),
		(67, 10),
		(46, 5),
		(18, 3),
		(7, 8),
		(22, 11),
		(49, 4),
		(16, 6),
		(64, 13),
		(28, 17),
		(50, 1),
		(39, 20),
		(4, 9),
		(30, 15),
		(58, 7),
		(36, 2),
		(13, 12),
		(27, 16),
		(62, 14),
		(1, 18),
		(41, 19);

select * from roles_employee;

select employee_name, role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id;