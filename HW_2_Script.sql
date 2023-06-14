-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name as "Работники", monthly_salary as "Месячная зарплата"
from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id;

--  2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name as "Работники", monthly_salary as "Месячная зарплата"
from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employee_name as "Работники", monthly_salary as "Месячная зарплата" 
from employee_salary
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where employee_name is null;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employee_name as "Работники", monthly_salary as "Месячная зарплата" 
from employee_salary
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where employee_name is null
and monthly_salary < 2000;

-- 5. Найти всех работников кому не начислена ЗП.
select employee_name as "Работники", salary_id as "Месячная зарплата"
from employee_salary
right join employees on employee_salary.employee_id = employees.id
where salary_id is null;

--  6. Вывести всех работников с названиями их должности.
select employee_name as "Работники", role_name as "Должности"
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id;

-- 7. Вывести имена и должность только Java разработчиков.
select employee_name as "Работники", role_name as "Должности"
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Java%';

-- 8. Вывести имена и должность только Python разработчиков.
select employee_name as "Работники", role_name as "Должности"
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Python%';

-- 9. Вывести имена и должность всех QA инженеров.
select employee_name as "Работники", role_name as "Должности"
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%QA%';

-- 10. Вывести имена и должность ручных QA инженеров.
select employee_name as "Работники", role_name as "Должности"
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Manual%QA%';

-- 11. Вывести имена и должность автоматизаторов QA
select employee_name as "Работники", role_name as "Должности"
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Auto%QA%';

-- 12. Вывести имена и зарплаты Junior специалистов
select employee_name as "Работники", monthly_salary as "Месячная зарплата", role_name as "Должности"
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов
select employee_name as "Работники", monthly_salary as "Месячная зарплата", role_name as "Должности"
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов
select employee_name as "Работники", monthly_salary as "Месячная зарплата", role_name as "Должности"
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков
select monthly_salary as "Месячная зарплата", role_name as "Должности"
from salary
join employee_salary on salary.id = employee_salary.salary_id
join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Java%'
and  role_name not like '%Script%';

-- 16. Вывести зарплаты Python разработчиков
select monthly_salary as "Месячная зарплата", role_name as "Должности"
from salary
join employee_salary on salary.id = employee_salary.salary_id
join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Python%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков
select employee_name as "Работники", monthly_salary as "Месячная зарплата", role_name as "Должности"
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior Python%';

-- 18. Вывести имена и зарплаты Middle JS разработчиков
select employee_name as "Работники", monthly_salary as "Месячная зарплата", role_name as "Должности"
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Middle%JavaScript%';

-- 19. Вывести имена и зарплаты Senior Java разработчиков
select employee_name as "Работники", monthly_salary as "Месячная зарплата", role_name as "Должности"
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like 'Senior%Java%'
and  role_name not like '%Script%';

-- 20. Вывести зарплаты Junior QA инженеров
select monthly_salary as "Месячная зарплата", role_name as "Должности"
from salary
join employee_salary on salary.id = employee_salary.salary_id
join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior%QA%';

-- 21. Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary) as "Cредняя ЗП всех Junior"
from salary
join employee_salary on salary.id = employee_salary.salary_id
join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior%';

-- 22. Вывести сумму зарплат JS разработчиков
select sum(monthly_salary) as "Cумма ЗП JS разработчиков"
from salary
join employee_salary on salary.id = employee_salary.salary_id
join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%JavaScript%';

-- 23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary) as "Минимальная ЗП QA инженеров"
from salary
join employee_salary on salary.id = employee_salary.salary_id
join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%QA%';

-- 24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary) as "Максимальная ЗП QA инженеров"
from salary
join employee_salary on salary.id = employee_salary.salary_id
join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%QA%';

-- 25. Вывести количество QA инженеров
select count(*) as "Количество QA инженеров"
from salary
join employee_salary on salary.id = employee_salary.salary_id
join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%QA%';

-- 26. Вывести количество Middle специалистов.
select count(*) as "Количество Middle специалистов"
from salary
join employee_salary on salary.id = employee_salary.salary_id
join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Middle%';

-- 27. Вывести количество разработчиков
select count(*) as "Количество разработчиков"
from salary
join employee_salary on salary.id = employee_salary.salary_id
join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary) as "Фонд зарплаты разработчиков"
from salary
join employee_salary on salary.id = employee_salary.salary_id
join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%developer%';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name as "Работники", role_name as "Должности", monthly_salary as "Месячная зарплата"
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
order by monthly_salary asc;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name as "Работники", role_name as "Должности", monthly_salary as "Месячная зарплата"
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name as "Работники", role_name as "Должности", monthly_salary as "Месячная зарплата"
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where monthly_salary < 2300
order by monthly_salary asc;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name as "Работники", role_name as "Должности", monthly_salary as "Месячная зарплата"
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary asc;
