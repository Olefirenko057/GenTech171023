use hr;
select * from employees;
-- 1 уровень сложности: 1. Напишите запрос, который выводит идентификатор сотрудника, его имя и фамилию, а также категорию зарплаты на основе следующих условий:
-- Если зарплата меньше 5000, категория "Низкая".
-- Если зарплата от 5000 до 10000, категория "Средняя".
-- Если зарплата больше 10000, категория "Высокая".

select employee_id,first_name,last_name, 
case
when salary < 5000 then "low"
when salary > 10000 then "high"
else "mid"
end as salary_category
from employees;




-- Напишите запрос, который выводит идентификатор сотрудника, его имя и фамилию, а также размер премии на основе следующих условий:
-- Если зарплата меньше 5000, премия составляет 10% от зарплаты.
-- Если зарплата от 5000 до 10000, премия составляет 15% от зарплаты.
-- Если зарплата больше 10000, премия составляет 20% от зарплаты.

select employee_id,first_name,last_name, 
case
when salary < 5000 then salary * 1.1 - salary
when salary > 10000 then salary * 1.2 - salary
else salary * 1.15 - salary
end as salary_bonus
from employees;


-- Получить список стран с указанием их региона и обозначением страны "EU" для стран 
-- Европейского союза, "Non-EU" для остальных стран.
select country_name, region_name,
case 
when regions.region_id = 1 then "EU"
else "Non-EU"
end
as country_designation
from countries
join regions ON countries.region_id = regions.region_id;



-- Получить список стран с указанием количества символов в их названиях.
select country_name, length(country_name) as length
from countries;



-- Получить список стран и их первые три символа в названии
select country_name, left(country_name,3) as short_name
from countries;



-- Получить список сотрудников с заменой их email на "Confidential", если он содержит слово "sqltutorial"
update employees
set email = "Confidential"
where email LIKE "%sqltutorial%";

select * from employees
where email = "Confidential";



-- Получить список сотрудников и указать их email в нижнем регистре.
select lower(email) as email
from employees;




-- Получить список сотрудников(firstname, lastname) с указанием их должности(job_title).
select first_name, last_name, job_title
from employees
join jobs on  employees.job_id = jobs.job_id;


-- Получить список отделов(department_name) и их названий с указанием местоположения(city).
select * from departments;
select * from locations;

select department_name,city
from departments
join locations on departments.location_id = locations.location_id;


-- Получить список отделов(departmentname) и их менеджеров(firstname, last_name).

select department_name,first_name,last_name
from departments
join employees on departments.manager_id = employees.employee_id;



-- Получить список сотрудников(firstname, lastname) с указанием их департамента(department_name), отсортированный по департаменту
select first_name,last_name,department_name
from employees
join departments on employees.department_id = departments.department_id
order by department_name;


-- Получить список сотрудников(firstname, lastname)  и их менеджеров(firstname, lastname) 
select * from employees;

 select e.first_name,e.last_name,m.first_name,m.last_name
 from employees e
 left join employees m on e.manager_id = m.employee_id;
 
 -- Получить список стран, где местоположение находится в США.
 
 select countries.country_name
 from countries
 join locations on countries.country_id = locations.country_id
 where locations.country_id = "US"










