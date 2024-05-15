use employee;

create table employee_info(
 emp_id int primary key auto_increment,
 emp_firstName varchar(20) not null,
 emp_lastname varchar (20) not null,
 emp_email varchar (50)  unique not null, 
 emp_phoneNum varchar(20) not null,
 emp_deptId int, 
 emp_salaryId int
);

create table employee_department(
 emp_deptId int primary key auto_increment,
 emp_deptName varchar(30) not null
);

create table employee_salary(
emp_salaryId int primary key auto_increment,
emp_baseSalary decimal(10,2) not null,
emp_bonus decimal(10,2) not null
);

alter table employee_info add
foreign key (emp_deptId) references employee_department(emp_deptId);

alter table employee_info add
foreign key (emp_salaryId) references employee_salary(emp_salaryId);

insert into employee_department(emp_deptName)
value ("Human Resorces"),
      ("Salaes"),
      ("Engg"),
      ("Markeying");
  select * from employee_department;    
  
  insert into employee_salary (emp_baseSalary, emp_bonus)
   values (50000,1000),
          (60000, 4000),
          (70000,3000),
          (80000,5000);
          
          select * from employee_salary;
  insert into employee_info( emp_firstName,emp_lastname,emp_email,emp_phoneNum) 
  values('Kishan', 'Kulkarni', 'kishankul56@gmail.com', '9657662345'),
         ('Priya','Mane','priyamane34@gmail.com', '805557894');
         
         select * from employee_info;

insert into employee_info( emp_firstName,emp_lastname,emp_email,emp_phoneNum)values
 ('Kehsav', 'Mujumdar', 'kehsavm56@gmail.com', '9657662346'),
         ('Madhav','Kale','madhavk44@gmail.com', '8055578945');
 select * from employee_info;       
 
 alter table employee_info
 add column emp_joinDate date;
 
 update employee_info
 set emp_joinDate = '2023-10-23'
 where emp_id =1;
 
select * from employee_info;

update employee_info
set emp_joinDate = '2012-3-23'
where emp_id = 2;

select * from employee_info;

update employee_info
set emp_joinDate = '2016-3-23'
where emp_id = 7;

select * from employee_info;

update employee_info
set emp_joinDate = '2024-3-23'
where emp_id = 8;

select * from employee_info;

update employee_info 
set emp_deptId =1 , emp_salaryId=1
where emp_id = 1;

update employee_info 
set emp_deptId =2 , emp_salaryId=2
where emp_id = 2;

update employee_info 
set emp_deptId =3 , emp_salaryId=3
where emp_id = 7;

update employee_info 
set emp_deptId =4 , emp_salaryId=4
where emp_id = 8;

select * from employee_info;