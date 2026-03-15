create database workforce_db;
show databases;
use workforce_db;

create table Worker(
Worker_ID int(3),
First_Name varchar(10),
Last_Name varchar(10),
Salary int(10),
Joining_Date DATETIME,
Department varchar(8)
);

select * from Worker;

#Insert Value to Worker Table
insert into Worker(Worker_ID,First_Name,Last_Name,Salary,Joining_Date,Department)values
(001,"Monika","Arora",100000,"2014-02-20 09:00:00","HR"),
(002,"Niharika","Verma",80000,"2014-06-11 09:00:00","Admin"),
(003,"Vishal","Singhal",300000,"2014-02-20 09:00:00","HR"),
(004,"Amitabh","Singh",500000,"2014-02-20 09:00:00","Admin"),
(005,"Vivek","Bhati",500000,"2014-06-11 09:00:00","Admin"),
(006,"Vipul","Diwan",200000,"2014-06-11 09:00:00","Account"),
(007,"Satish","Kumar",75000,"2014-01-20 09:00:00","Account"),
(008,"Geetika","Chauhan",9000,"2014-04-11 09:00:00","Admin");

show databases;

drop table Worker;

#create Bonus table
create table Bonus(
Worker_REF_ID int(1),
Bonus_Date DATETIME,
Bonus_Amount int(4)
);
select * from Bonus;

insert into Bonus(Worker_REF_ID,Bonus_Date,Bonus_Amount)values
(1,"2016-02-20 00:00:00",5000),
(2, "2016-06-11 00:00:00",3000),
(3, "2016-02-20 00:00:00",4000),
(1,"2016-02-20 00:00:00",4500),
(2,"2016-06-11 00:00:00",3500);

select * from bonus;

#Create table Title
create table Title(
Worker_REF_ID int(1),
Worker_Title Varchar(15),
Affected_From DATETIME
);

insert into Title(Worker_REF_ID,Worker_Title,Affected_From)values
(1,"Manager","2016-02-20 00:00:00"),
(2, "Executive","2016-06-11 00:00:00"),
(8,"Executive","2016-06-11 00:00:00"),
(5,"Manager","2016-06-11 00:00:00"),
(4,"Asst.Manager","2016-06-11 00:00:00"),
(7,"Executive","2016-06-11 00:00:00"),
(6, "Lead","2016-06-11 00:00:00"),
(3, "Lead","2016-06-11 00:00:00");

select * from Title;

select * from Worker;


														/******Use Cases******/


															/***Use Case1***/
					/***Write an SQL Query to Fetch FIRST_NAME From Worker Table Using The Alias Name As <WORKER_NAME> ***/


select First_name from Worker; 
select First_Name Worker_Name from Worker;
select First_Name as Worker_Name from Worker;


															/***Use Case2***/
				/*** Write an SQL Query to Fetch FIRST_NAME From Worker Table Using The Alias Name As <WORKER_NAME> ***/


select upper(First_Name) from Worker;
select upper(First_Name), Lower(Last_Name) from Worker;


															/***Use Case3***/
          		/***Write an SQL Query to Fetch Unique Values of DEPARTMENT From Worker Table***/

select distinct Department from Worker;
select distinct upper(Department) from Worker;


															/***Use Case4***/
					/***Write an SQL Query to Print the First Three Characters of FIRST_NAME from Worker Table***/ 


select substring(First_Name,1,3) from Worker;
select substring("MYSQL isin learning base",7, 11);


															/***Use Case5***/
      /***Write an SQL Query to Find the Position of The Alphabet (a) In the First Name Column for Amitabh From Worker Table.***/



select instr(First_Name,binary 'a') from worker;
select instr(First_Name,binary 'a') from worker where First_Name ="Amitabh";


															/***Use Case6***/
    	/***Write an SQL Query to Print The FIRST_NAME from Worker Table After Removing White Spaces from The Right Side***/


select rtrim(First_Name) from worker;
select rtrim("    Maulik   ");
select trim("   tips     ");

															/***Use Case7***/
			/***Write an SQL Query to Print the DEPARTMENT from Worker Table After Removing White Spaces from The Left Side***/


select Ltrim(First_Name) from worker;
select Ltrim("    Maulik   ");
select trim("   MySQL     ");

															/***Use Case8***/
			/***Write an SQL Query That Fetches the Unique Values of DEPARTMENT from Worker Table and Prints Its Length***/


select distinct length(department) from worker;

															/***Use Case9***/
   					/***Write an SQL Query to Print The FIRST_NAME From Worker Table After Replacing A With a***/


select replace(First_name,"a","A") from worker;
select replace(First_Name,"a"," ") from worker;

															/***Use Case10***/
/***Write An SQL Query To Print The FIRST_NAME And LAST_NAME From Worker Table Into A Single Column COMPLETE_NAME. A Space Char Should Separate Them***/


select concat(First_Name," ", Last_Name) from Worker;
select concat(First_Name," ",Last_Name," ",Salary," ",Joining_Date," ",Department)from Worker;#merge multiple field.

															/***Use Case11***/
			/***Write an SQL Query to Print All Worker Details from The Worker Table Order By FIRST_NAME Ascending***/

select * from worker order by First_Name asc;
select * from worker order by First_Name asc;
select * from worker order by salary asc;
select * from worker order by First_Name desc;
select * from worker order by salary desc;
select * from worker order by First_name asc, department desc;
select * from worker order by department asc, salary desc;
select * from worker order by First_name desc, department asc;
select * from worker order by First_name asc, department desc;
select * from worker order by department asc, First_name desc;
select department,salary from worker order by department,salary desc;
select department,salary from worker order by department,salary asc;


															/***Use Case12***/
/***Write an SQL Query to Print All Worker Details from The Worker Table Order By FIRST_NAME Ascending and DEPARTMENT Descending.***/

select * from worker order by  First_name asc, Worker_ID desc;
select * from worker order by First_Name asc;
select * from worker order by salary asc;
select * from worker order by First_Name desc;
select * from worker order by salary desc;
select * from worker order by First_name asc, department desc;
select * from worker order by department asc, salary desc;
select * from worker order by First_name desc, department asc;
select * from worker order by First_name asc, department desc;
select * from worker order by department asc, First_name desc;
select department,salary from worker order by department,salary desc;
select department,salary from worker order by department,salary asc;


															/***Use Case13***/
		/*** Write an SQL Query to Print Details for Workers with The First Name as Vipul And Satish From Worker Table***/

select * from worker where First_name in ("vipul","Monika");


															/***Use Case14***/
		/***Write an SQL Query to Print Details of Workers Excluding First Names, Vipul And Satish From Worker Table***/

select * from worker where First_Name not in ("Vipul","Monika");


															/***Use Case15***/
					/***Write an SQL Query to Print Details of Workers with DEPARTMENT Name as Admin"***/

select * from worker where Department like "Admin%";
select * from worker where Department like "H%";
select * from worker where Department like "A%";
select * from worker where Department like "ad%" and first_name like "a%";


															/***Use Case16***/
					/***Write an SQL Query to Print Details of The Workers Whose FIRST_NAME Contains A***/

select * from worker where First_name like "%a%";
select * from worker where Last_name like "%a%";

															/***Use Case17***/
					/***Write an SQL Query to Print Details of The Workers Whose FIRST_NAME Ends With A***/

select * from worker where First_name like "%a";

															/***Use Case18***/
		/***8 Write an SQL Query to Print Details of The Workers Whose FIRST_NAME Ends with H and Contains Six Alphabets***/

select * from worker where First_Name like"_____h";


															/***Use Case19***/
				/***Write an SQL Query to Print Details of The Workers Whose SALARY Lies Between 100000 And 50000.***/ 

select * from worker where Salary between 100000 and 500000;

															/***Use Case20***/
					/***Write an SQL Query to Print Details of The Workers Who Have Joined inFeb 2014***/

select * from worker where year(Joining_date) = 2014 and month(Joining_Date) = 2;

															/***Use Case21***/
					/***Write an SQL Query to Fetch the Count Of Employees Working In The Department Admin. ***/

select count(*) from worker where department = "Admin"; 

															/***Use Case22***/
					/***Write An SQL Query To Fetch Worker Names With Salaries >= 50000 And <= 100000 ***/
#Without Subquery this one is so easy compare to with sub query
select concat(first_name, ' ', Last_name) as Worker_name, salary from Worker where salary between 5000 and 100000;


															/***Use Case23***/
				/***Write An SQL Query To Fetch The No. Of Workers For Each Department In The Descending Order***/

select Department, count(Worker_id) No_Of_Workers from worker
group by department order by No_Of_Workers desc;
select Department, count(Worker_id) No_Of_Workers from worker
group by department order by No_Of_Workers desc, department asc;
select Department, count(Worker_id) No_Of_Workers from worker
where department not in ("hr") group by department order by No_Of_Workers desc;
select department Department_name, count(Worker_Id) No_Of_Worker from worker;


															/***statistics function***/
select max(salary) from worker;
select min(salary) from Worker;
select max(salary) as Max_Salary, min(salary) as Min_Salary from worker;
select avg(salary) from worker;
select avg(salary) from worker where Department = 'HR';


															/***Joins and joins query with use case***/
#select * from worker;
#select * from Bonus;
#truncate bonus;
#select * from Title;

#inner join 

select worker.Worker_ID, worker.First_Name, worker.Last_Name, bonus.Worker_REF_ID, bonus.Bonus_Date, bonus.Bonus_Amount 
from worker 
inner join bonus On worker.Worker_ID=bonus.Worker_REF_ID;

select bonus.Worker_REF_ID, bonus.Bonus_Date, bonus.Bonus_Amount, title.Worker_Title, title.Affected_From 
from bonus 
inner join title on bonus.Worker_REF_ID=title.Worker_REF_ID; 

select bonus.Worker_REF_ID, bonus.Bonus_Date, bonus.Bonus_Amount, title.Worker_Title, title.Affected_From 
from bonus 
inner join title on bonus.Worker_REF_ID=title.Worker_REF_ID where title.Worker_Title not in ("manager"); 

#left Join

#aama me first name and last name ne wmp name aapiyu concate no use kari ne and baki same query che
select Concat(first_Name," ",Last_name) as Emp_Name, 
worker.Worker_ID, bonus.Bonus_Date, bonus.Bonus_Amount from worker
left join bonus on worker.Worker_ID = bonus.Worker_REF_ID;

select B.Worker_Ref_Id, B.Bonus_date, B.Bonus_Amount, T.Worker_Title, T.Affected_from 
from Bonus as B
left join Title as T on B.Worker_Ref_id=T.Worker_Ref_Id;

#Right Join.

select * from worker right join bonus
on worker.Worker_ID=bonus.Worker_REF_ID;

select * from Bonus Right join Worker
on worker.Worker_ID=bonus.Worker_REF_ID where Bonus_Amount between 1000 and 3500;


#Right Left and Inner join with Use short name, Concat and where use 

select concat(First_name, " ", Last_Name) as Emp_name,
W.Worker_ID, W.Salary, B.Bonus_Date, B.Bonus_Amount 
from worker as W inner join Bonus as B 
on W.Worker_ID = B.Worker_REF_ID 
where Bonus_Amount between 1000 and 50000 and Salary between 100000 and 250000;

select concat(First_name, " ", Last_Name) as Emp_name,
W.Worker_ID, W.Salary, B.Bonus_Date, B.Bonus_Amount 
from worker as W Left join Bonus as B 
on W.Worker_ID = B.Worker_REF_ID 
where Bonus_Amount between 1000 and 50000 and Salary between 100000 and 250000;

select concat(First_name, " ", Last_Name) as Emp_name,
W.Worker_ID, W.Salary, B.Bonus_Date, B.Bonus_Amount 
from worker as W Right join Bonus as B 
on W.Worker_ID = B.Worker_REF_ID 
where Bonus_Amount between 1000 and 50000 and Salary between 100000 and 250000;

#multiple inner join

Select worker.Worker_ID, worker.first_Name, worker.Last_name, title.Worker_Title, worker.Salary, bonus.Bonus_date, bonus.Bonus_Amount
from worker 
inner join bonus on worker.Worker_ID = bonus.Worker_REF_ID
inner join title on worker.Worker_ID = title.Worker_REF_ID;


select concat(First_name, " ", Last_Name) as Emp_name,
W.Worker_ID, W.Salary, B.Bonus_Date, B.Bonus_Amount, T.Worker_Title 
from worker as W 
inner join Bonus as B on W.Worker_ID = B.Worker_REF_ID
inner join title as T on W.Worker_ID = T.Worker_REF_ID
where Bonus_Amount between 1500 and 50000 and Salary between 100000 and 250000;

															/***Use Case24***/
						/***Write An SQL Query To Print Details of the Workers who are also Managers***/

#without Distinct
select worker.First_Name, worker.Last_Name, title.Worker_Title
From worker inner join title on worker.Worker_ID = title.Worker_REF_ID
where Worker_Title in ("Manager");

select worker.First_Name, worker.Last_Name, title.Worker_Title
From worker inner join title on worker.Worker_ID = title.Worker_REF_ID
where Worker_Title in ("Manager","Lead");

select worker.First_Name, worker.Last_Name, title.Worker_Title
From worker inner join title on worker.Worker_ID = title.Worker_REF_ID
where Worker_Title not in ("Manager");


select worker.First_Name, worker.Last_Name, title.Worker_Title
From worker inner join title on worker.Worker_ID = title.Worker_REF_ID
where Worker_Title not in ("Manager","Lead");


#with Distinct,  distinct tyare j use thay jyare table ma duplicate values hoy
select distinct worker.First_Name, title.Worker_Title 
from worker inner join title
on worker.Worker_ID = title.Worker_REF_ID and title.Worker_Title in ("manager");

select distinct worker.First_Name, title.Worker_Title 
from worker inner join title
on worker.Worker_ID = title.Worker_REF_ID and title.Worker_Title in ("manager","Lead");

select distinct worker.First_Name, title.Worker_Title 
from worker inner join title
on worker.Worker_ID = title.Worker_REF_ID and title.Worker_Title Not in ("manager");

select distinct worker.First_Name, title.Worker_Title 
from worker inner join title
on worker.Worker_ID = title.Worker_REF_ID and title.Worker_Title not in ("manager","Lead");


#Having always use with Group by conditions.
														/***Use Case25***/
				/***Write an SQL Query To Fetch Duplicate Records Having Matching Data In Some Fields Of A Table***/

select Worker_Title, Affected_From,
count(*) from title
group by Worker_Title, Affected_From
having count(*)>1;

														/***Use Case26 and 27***/
									/***Write An SQL Query To Show Only Odd Rows and onlu even rows From A Table***/

select * from worker where MOD(Worker_ID,2)<>0;
select * from worker where mod (worker_Id,2)=0;

														/***Use Case28***/
								/***Write An SQL Query To Clone (Copy )A New Table From Another Table***/

create table Worker_Copy select * from worker;
select * from Worker_Copy;

													/***Use Case29***/
								/***Write An SQL Query To Fetch Intersecting Records Of Two Tables***/

#this query is not going to work under DBEaver
Select * from Worker
intersect
select * from Worker_Copy;

													/***Use Case30***/
						/***Write An SQL Query To Fetch Records which are not available in other table***/

#this query is not going to work under DBEaver
Select * from Worker
Minus
select * from Worker_Copy;

													/***Use Case31***/
								/***Write An SQL Query To Show The Current Date And Time***/

select curdate();
select now() as 'current_Date & time'; 

												/***Use Case32***/
							/***Write An SQL Query To Show The Top N (Say 5) Records Of A Table***/

select * from worker limit 5;
select * from worker order by salary asc limit 5;
select * from worker order by salary desc limit 5;


												/***Use Case33***/
						/***Write An SQL Query To Determine The Nth (Say N=5) Highest Salary From A Table.***/

select salary from worker order by salary desc limit 6,1;


												/***Use Case34***/
					/***Write An SQL Query To rename the column name WORKER_REF_ID to WORKER_RID in bonus table***/

alter table bonus change Worker_Ref_ID Worker_RID int; 
alter table bonus change Worker_RID Worker_Ref_Id Int;

											/***Use Case35***/
					/***Write An SQL Query To Fetch The List Of Employees With The Same Salary.***/

select distinct W.Worker_ID, W.First_name, W.Last_name, W.salary
from worker w , worker_copy wc 
where w.Salary = wc.Salary 
and w.Worker_ID != wc.Worker_ID;

												/***Use Case36***/
					/***Write an SQL Query to Show the Second Highest Salary from A Table.***/

select max(salary) from worker
where salary not in (Select max(salary) from worker);

											/***Use Case37***/
			/***Write An SQL Query To Show One Row Twice In Results From A Table #Union only returns unique records.***/

insert into worker_copy values (009,"Maulik","Panchal",35400,"2018-02-05 07:45:00","CSR"); 

select * from worker
union
select * From worker_copy;

												/***Use Case38***/
						/***Write An SQL Query To Fetch The Names Of Workers Who Earn The Highest Salary.***/

select salary, First_name 
from worker where salary=(select max(salary) from worker) ;


												/***Use Case39***/
						/***Write an SQL Query to Fetch the First 50% Records from A Table.***/

select * from worker where 
Worker_Id <= (select count(Worker_ID)/2 from worker);

select first_Name,Last_name,Salary from worker 
where Worker_Id <= (select count(worker_id)/2 from worker);

	
													/***Use Case40***/
					/***Write an SQL Query to Fetch The Departments That Have Less Than Five People In It..***/

select count(Worker_ID) as number_Of_Worker, department from worker
group by department having count(Worker_Id) < 5;


													/***Use Case41***/
					/***Write an SQL Query to Show All Departments Along with The Number of People in There.***/

select count(Worker_ID) as number_Of_Worker, department from worker
group by department having count(Worker_Id);

select count(Department) as number_Of_People, department from worker
group by department;

													/***Use Case42***/
							/***Write an SQL Query to Show the Last Record from A Table.***/

select * from worker order by worker_Id desc limit 1;

Select * from Worker where WORKER_ID = (SELECT max(WORKER_ID) from Worker);


													/***Use Case43***/
							/***Write an SQL Query to Fetch the First Row of a Table.***/

Select * from Worker where WORKER_ID = (SELECT min(WORKER_ID) from Worker);

select * from worker order by worker_Id asc limit 1;


												/***Use Case44***/
							/***Write an SQL Query To remove joining date from table.***/

alter table worker_copy drop column Joining_date;


											/***Use Case45***/
					/***Write An SQL Query To Print The Name Of Employees Having The Highest Salary In Each Department.***/

select First_Name, Last_Name, Department, max(Salary) from worker 
group by Department order by max(salary) desc;


														/***Use Case46***/
							/***Write an SQL Query To change the LAST_NAME as Bhatt of worker_id =005.***/

update worker_copy set last_name ='Panchal' where Worker_Id = 05;
select * from worker_copy;


													/***Use Case47***/
						/***Write an SQL Query To change the salary to 100000 where worker name is Satish.***/

update worker_copy set salary = 100000 where First_Name = "Satish";


													/***Use Case48***/
					/***Write an SQL Query To delete the employee details where id is 003***/

delete from worker_copy where worker_Id = 003;

													/***Use Case49***/
				/***Write an SQL Query to Fetch Departments Along with The Total Salaries Paid for Each of Them.***/

select sum(salary), Department from worker
group by Department; 

													/***Use Case50***/
								/***Write An SQL Query To Add Newcolumn (int) in to worker table.***/

alter table worker_copy add column newcolumn int;


													/***Use Case51***/
						/***Write an SQL Query To Add A class for 100000+ salary and B for others.***/

select *, if(salary>100000,"A","B") as class from worker_copy;


													/***Use Case52***/
						/***Write an SQL Query To View a Virtual Table based on the results of an SQL Statement..***/

create view HR_Department AS
select First_Name, Last_Name,Salary, Department
from Worker;

	
													/***Use Case53***/
/***The following MYSQL ensures that the "ID", "LastName", and "FirstName" columns will NOT accept NULL values when the "Persons" table is created:***/


CREATE TABLE Persons (
ID int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255) NOT NULL,
Age int
);


													/***Use Case54***/
/***The following SQL creates a UNIQUE constraint on the "ID" column when the "Persons" table is created:
The UNIQUE constraint ensures that all values in a column are different***/

CREATE TABLE Persons (
ID int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Age int,
UNIQUE (ID)
);


													/***Use Case55***/
			/***TThe following SQL creates a PRIMARY KEY on the "ID" column when the "Persons" table is created:***/

CREATE TABLE Persons (
ID int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Age int,
PRIMARY KEY (ID)
);


												/***Use Case55***/
			/***The following SQL statement defines the "Personid" column to be an auto-increment primary key field in the "Persons" table:
Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.***/

CREATE TABLE Persons (
ID int NOT NULL Auto_Increment,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Age int,
PRIMARY KEY (ID)
);