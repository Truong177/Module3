create database QuanLySinhVien;
use QuanLySinhVien;
create table Class(
Class_ID int auto_increment not null primary key,
ClassName varchar(60) not null,
Start_Date datetime not null,
Status bit
);
create table Student(
Student_ID int auto_increment not null primary key,
Student_Name varchar(30) not null,
Address varchar(50),
Phone varchar(20),
Status bit,
Class_ID int, foreign key (Class_ID) references Class(Class_ID)
);
create table Subject(
Sub_ID int auto_increment not null primary key,
SUb_Name varchar(30) not null,
Credit tinyint not null default 1 check (Credit >= 1),
Status bit default 1
);
create table Mark(
Mark_ID int auto_increment not null primary key,
Mark float default 0  check (Mark between 0 and 100),
Examtimes tinyint default 1,
Sub_ID int not null,
Student_ID int not null,
unique(Sub_ID, Student_ID),
foreign key (Sub_ID) references Subject(Sub_ID),
foreign key (Student_ID) references Student(Student_ID)
);