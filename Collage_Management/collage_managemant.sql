use  collage_management;
create table teacher_info(
 teacher_id int primary key auto_increment,
 teacher_dept varchar(20) not null unique,
 teacher_name varchar(40) not null ,
 teacher_lastname varchar(40) not null,
 teacher_email varchar (40) not null unique,
 teacher_phoneNo varchar(30) not null,
 collage_deptId int
);

create table collage (
  collage_deptId int primary key auto_increment,
  collage_deptname varchar(40) 
);


