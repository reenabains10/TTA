/*• Enter records into both tables and view them. Make sure at least one of your tables has
10 records.*/

/*insert into welfare.people (person_code, forename, surname,dob, gender)
values(301601,'Sarah','Smith','2002-05-01','F'),
(301602,'Steve','Smith','2003-01-19','M'),
(301603,'Phil','Brierley','2002-04-25','M'),
(301604,'Frank','Shaw','2003-05-07','M'),
(301605,'Anthony','Wilde','2003-10-10','M'),
(301606,'Fiona','Parsons','2004-12-26','F'),
(301607,'Lucy','Wassall','2002-11-17','F'),
(301608,'Aimee','Fields','2001-06-11','F'),
(301609,'Roxana','Adams','2002-07-06','F'),
(301610,'Becky','Pal','2000-05-31','F'),
(301611,'Ryan','Hall','2002-08-31','M')*/
select * from welfare.people;

/*insert into welfare.application (person_code, app_no, support_fund,applied_date, approved_date)
values(301601,1,'fsm','2021-09-30','2021-10-03'),
(301601,2,'hardship','2021-10-05','2021-10-10'),
(301602,3,'fsm','2021-09-30','2021-10-01'),
(301603,4,'fsm','2021-10-05','2021-10-07'),
(301603,5,'hardship','2021-09-29','2021-10-04'),
(301604,6,'hardship','2021-10-07','2021-10-10'),
(301606,7,'fsm','2021-09-30','2021-10-05'),
(301606,8,'hardship','2021-10-01','2021-10-10'),
(301608,9,'fsm','2021-09-27','2021-10-01'),
(301608,10,'fsm','2021-10-04','2021-10-06'),
(301609,11,'fsm','2021-09-28','2021-10-02'),
(3016010,12,'hardship','2021-10-04','2021-10-10'),
(301610,13,'hardship','2021-09-27','2021-10-01'),
(301611,14,'fsm','2021-10-05','2021-10-06'),
(301611,15,'hardship','2021-09-30','2021-10-02')*/



select * from welfare.application;

/*Update a record*/
/*update welfare.people
set forename = 'Katie'
where person_code = 301606*/



/*update welfare.people
set surname = 'Black'
where person_code = 301601*/
/*• Delete a record*/
/*delete from welfare.application
where app_no = 10*/
/*delete from welfare.application
where person_code = 3016010*/
/*• Join tables*/
/*from welfare.people p
      left outer join 
	 welfare.application a on p.person_code = a.person_code*/

/*Run a simple query (one field/column) searching one table*/
select distinct gender 
from welfare.people;

/*Run a complex query (more than one field/column) to demonstrate the relations between the 2 tables*/
select distinct p.person_code
      ,p.forename
      ,p.surname
      ,a.app_no
      ,a.support_fund
from welfare.people p
      left outer join 
	 welfare.application a on p.person_code = a.person_code
where support_fund = 'fsm';

/*Retrieve all your data sorted in ascending order on an appropriate field (one table)*/
select * from welfare.people
order by surname asc;

/*Filter data using comparison operators (one table)*/
select * from welfare.application
where applied_date between '2021-10-01' and '2021-10-06'