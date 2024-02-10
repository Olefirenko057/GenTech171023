-- Создать таблицу employees;
-- employeeid целое число первичный ключ автоинкремент;
-- fname строка не null,
-- lastname строка не null,
-- email строка не null,
-- phone строка не null

select * from employees;
create table employees(
	id int primary key auto_increment,
	fname varchar(128) not null,
    lname varchar(128) not null,
    email varchar(128) not null,
    phone varchar(128) not null
);

-- Ой, забыли про зарплату)) Добавить поле salary numeric(9, 2),
alter table employees
add column salary numeric(9,2);

-- Ойййй, нет, зарплата должна быть целым числом. Изменить тип salary на integer 
alter table employees
modify column salary int;

-- Переименовать поле fname на first_name
alter table employees
rename column fname to first_name;
    

-- Удалить поле phone
alter table employees
drop column phone;


-- Добавить поле department строка не null
alter table employees
add column department varchar(128) not null;
    

-- Заполнить таблицу  (7 строк)
insert into employees 
			(first_name,lname,email,salary,department)
            values
            ('Tom','Berry','tom@gmail.com',5000,'Marketing'),
            ('Jesica','Gomez','j_gomez@gmail.com',3200,'Design'),
            ('Rafael','Jackson','rafa@gmail.com',5200,'Development'),
            ('Lina','Mathew','lina@gmail.com',4800,'Marketing'),
            ('Kyle','Stones','kstones@gmail.com',2150,'Design'),
            ('Mira','Dustin','mra31@gmail.com',4500,'Development'),
            ('Ivan','Ilic','ivanilic@gmail.com',6000,'Marketing');
           
    