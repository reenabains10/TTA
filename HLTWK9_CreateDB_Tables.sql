/*create database welfare;*/
use welfare;
Create table people(
person_code int not null,
forename varchar(50) not null,
surname varchar (50) not null,
dob date,
gender varchar (10),
primary key (person_code));

explain welfare_details;


/*create database welfare;*/
use welfare;
Create table application(
person_code int not null,
app_no int not null,
support_fund varchar (50) not null,
applied_date date,
approved_date varchar (10),
primary key (app_no));

select * from welfare.application;
explain welfare.application;