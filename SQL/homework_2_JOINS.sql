-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select e.employee_name, s.monthly_salary
from employees_salary es
join employees e on es.employee_id = e.id 
join salary s on es.salary_id = s.id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.
select e.employee_name, s.monthly_salary
from employees_salary es
join employees e on es.employee_id = e.id
join salary s on es.salary_id = s.id 
where monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. 
select s.monthly_salary, e.employee_name
from employees_salary es
left join employees e on e.id = es.employee_id
left  join salary s on s.id = es.salary_id
where e.employee_name is null;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен.
select s.monthly_salary, e.employee_name
from employees_salary es
left join employees e on e.id = es.employee_id
left join salary s on s.id = es.salary_id
where s.monthly_salary < 2000 and e.employee_name is null; 

-- 5. Найти всех работников кому не начислена ЗП.
select e.employee_name, s.monthly_salary
from employees e 
left join employees_salary es on e.id = es.employee_id
left join salary s on s.id = es.salary_id
where s.monthly_salary is null;

-- 6. Вывести всех работников с названиями их должности.
select e.employee_name, r.role_name
from roles_employee re 
join employees e on e.id = re.employee_id 
join roles r on r.id = re.role_id;

-- 7. Вывести имена и должность только Java разработчиков.
select e.employee_name, r.role_name
from roles_employee re 
left join employees e on e.id = re.employee_id 
left join roles r on r.id = re.role_id
where r.role_name like '%Java Developer';

-- 8. Вывести имена и должность только Python разработчиков.
select e.employee_name, r.role_name
from roles_employee re 
left join employees e on e.id = re.employee_id 
left join roles r on r.id = re.role_id
where r.role_name like '%Python Developer';

-- 9. Вывести имена и должность всех QA инженеров.
select e.employee_name, r.role_name
from roles_employee re 
left join employees e on e.id = re.employee_id 
left join roles r on r.id = re.role_id
where r.role_name like '%QA%';

-- 10. Вывести имена и должность ручных QA инженеров.
select e.employee_name, r.role_name
from roles_employee re 
left join employees e on e.id = re.employee_id 
left join roles r on r.id = re.role_id
where r.role_name like '%Manual QA%';

-- 11. Вывести имена и должность автоматизаторов QA
select e.employee_name, r.role_name
from roles_employee re 
left join employees e on e.id = re.employee_id 
left join roles r on r.id = re.role_id
where r.role_name like '%Automation QA%';

-- 12. Вывести имена и зарплаты Junior специалистов
select r.role_name, e.employee_name, s.monthly_salary
from roles r
left join roles_employee re on r.id = re.role_id 
left join employees e on re.employee_id = e.id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like 'Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов
select r.role_name, e.employee_name, s.monthly_salary
from roles r
left join roles_employee re on r.id = re.role_id 
left join employees e on re.employee_id = e.id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like 'Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов
select r.role_name, e.employee_name, s.monthly_salary
from roles r
left join roles_employee re on r.id = re.role_id 
left join employees e on re.employee_id = e.id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like 'Senior%';

-- 15. Вывести зарплаты Java разработчиков
select r.role_name, s.monthly_salary
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on re.employee_id = e.id 
left join employees_salary es on es.employee_id = e.id 
left join salary s on es.salary_id = s.id
where r.role_name like '%Java Developer';

-- 16. Вывести зарплаты Python разработчиков
select r.role_name, s.monthly_salary
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on re.employee_id = e.id 
left join employees_salary es on es.employee_id = e.id 
left join salary s on es.salary_id = s.id
where r.role_name like '%Python Developer';

-- 17. Вывести имена и зарплаты Junior Python разработчиков
select r.role_name, e.employee_name, s.monthly_salary
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on e.id = re.employee_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like 'Junior Python Developer';

-- 18. Вывести имена и зарплаты Middle JS разработчиков
select r.role_name, e.employee_name, s.monthly_salary
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on e.id = re.employee_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like 'Middle JavaScript Developer';

-- 19. Вывести имена и зарплаты Senior Java разработчиков
select r.role_name, e.employee_name, s.monthly_salary
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on e.id = re.employee_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like 'Senior Java Developer';

-- 20. Вывести зарплаты Junior QA инженеров
select r.role_name, s.monthly_salary
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on e.id = re.employee_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like 'Junior%' and r.role_name like '%QA%';

-- 21. Вывести среднюю зарплату всех Junior специалистов
select r.role_name, avg(s.monthly_salary)
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on e.id = re.employee_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like 'Junior%'
group by r.role_name;

-- 22. Вывести сумму зарплат JS разработчиков
select sum(s.monthly_salary) as total
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on e.id = re.employee_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like '%JavaScript%';

-- 23. Вывести минимальную ЗП QA инженеров
select min(s.monthly_salary) as min_salary
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on e.id = re.employee_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like '%QA engineer' ;

-- 24. Вывести максимальную ЗП QA инженеров
select max(s.monthly_salary) as max_salary
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on e.id = re.employee_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like '%QA engineer';

-- 25. Вывести количество QA инженеров
select count(r.role_name)
from roles_employee re
left join roles r on r.id = re.role_id
left join employees e on e.id = re.employee_id
where r.role_name like '%QA%';

-- 26. Вывести количество Middle специалистов.
select count(r.role_name)
from roles_employee re
left join roles r on r.id = re.role_id
left join employees e on e.id = re.employee_id
where r.role_name like 'Middle%';

-- 27. Вывести количество разработчиков
select count(r.role_name)
from roles_employee re
left join roles r on r.id = re.role_id
left join employees e on e.id = re.employee_id
where r.role_name like '%Developer';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(s.monthly_salary) as total
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on e.id = re.employee_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like '%Developer';


-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select e.employee_name, r.role_name, s.monthly_salary
from employees e 
left join roles_employee re on e.id = re.employee_id 
left join roles r on r.id = re.role_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
order by s.monthly_salary ; 

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select e.employee_name, r.role_name, s.monthly_salary
from employees e 
left join roles_employee re on e.id = re.employee_id 
left join roles r on r.id = re.role_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where s.monthly_salary between 1700 and 2300;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select e.employee_name, r.role_name, s.monthly_salary
from employees e 
left join roles_employee re on e.id = re.employee_id 
left join roles r on r.id = re.role_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where s.monthly_salary < 2300
order by s.monthly_salary ;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select e.employee_name, r.role_name, s.monthly_salary
from employees e 
left join roles_employee re on e.id = re.employee_id 
left join roles r on r.id = re.role_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where s.monthly_salary = 1100 or s.monthly_salary = 1500 or s.monthly_salary = 2000
order by s.monthly_salary ;
