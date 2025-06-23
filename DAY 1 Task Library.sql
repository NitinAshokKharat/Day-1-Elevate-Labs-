CREATE DATABASE LIBRARY;
SHOW DATABASES;
USE LIBRARY;

CREATE TABLE BOOK
(
book_id int primary key,
book_name varchar(30),
author_name varchar(50),
edition int
);

CREATE TABLE teacher
(
teacher_id int primary key not null ,
teacher_name varchar(50) ,
department varchar(50),
phone_no int(15),
email_id varchar(50)
);

create table publisher(
pub_id int auto_increment primary key,
pub_name varchar(50) not null,
phone_no varchar(10) not null,
email_id int not null,
pub_address varchar(10) not null);

create table employee
(
emp_id int auto_increment primary key,
emp_name varchar(50) not null,
designation varchar(10) not null,
emp_phone_no varchar(10) not null,
emp_email_id int not null
);


create table student(
prn_no varchar(10) primary key,
student_name varchar (50),
roll_no int,
department varchar (20),
librarycard_no varchar(10),
phone_no varchar(10)
);

create table issued_by
(
issue_date date not null,
return_date date not null,
issue_time time not null,
book_id INT NOT NULL,
prn_no varchar(10) NOT NULL,
foreign key(book_id) references book(book_id),
foreign key(prn_no) references student(prn_no)
);

create table taken_by
(
issue_date date not null,
return_date date not null,
return_time time not null,
book_id INT NOT NULL,
prn_no varchar(10) NOT NULL,
teacher_id int,
foreign key(book_id) references book(book_id),
foreign key(teacher_id) references teacher(teacher_id)
);

create table takes_help_from
(
prn_no varchar(10),
emp_id int,
foreign key(prn_no) references student(prn_no),
foreign key(emp_id) references employee(emp_id)
);

create table takes_help_of
(
emp_id int,
teacher_id int,
foreign key(emp_id) references employee(emp_id),
foreign key(teacher_id) references teacher(teacher_id)
);

