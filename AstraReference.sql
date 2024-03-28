
create database astra_india;

use astra_india;

#DDL,DML,DRL

#DDL-->data defination language ,create,alter,drop,truncate,rename

create table products(productId int,productName varchar(15),price decimal,category varchar(15));

desc products;

create table products_info as select * from products;

create table products_info as select * from products where 1=2;

alter table products add prodDesc varchar(20);

alter table products drop prodDesc;

alter table products rename to products_data;

alter table products_data change productid pid int;

truncate table products_Data;

drop table products_Data;

#DML-->insert,update,delete

insert into products_info values(123,'delltv123',23400,'electronics');

insert into products_info

values(124,'tiger',19500,'toys'),

       (125,'lion',22010,'toys'),

	   (126,'samsung',33400,'electronics'),

	   (127,'toor dal',29400,'grocories');

insert into products_info (productid,productname)values(222,'dell-lap');

select * from products_info;

update products_info set productname='mitv' where productid=123;

update products_info set productname='oppo-mobile',price=89000 where productid=126;

update products_info set price=price+99;

delete from products_info where productid=124;

delete from products_info;

select * from products_info where productid=123;

select productid,productname from products_info;

select * from products_info where price between 15000 and 25000;

select * from products_info where price between 15000 and 20000 and category='toys';

select max(price) from products_info;

select min(price) from products_info;

select sum(price) from products_info;

select avg(price) from products_info;

select count(price) from products_info;

truncate table products_info;

select * from products_info limit 3;

select * from products_info where category like "e%";

select * from products_info where category like "%ys";

select * from products_info where productname in('tiger','dell','samsung');

select upper(productname) from products_info;

select lower(productname) from products_info;

select length(productname) from products_info;

select * from products_info order by productname desc;

select * from products_info order by productname asc;

select * from products_info;

#constraints

insert into products_info values(555,'intel',-800,'electronics');

insert into products_info (productid,productname)values(222,'dell-lap');

#notnull,check,unique,primary key,foreign key
 
create table emp_info(empid int,ename varchar(15) not null,esal int,eadd varchar(10));

insert into emp_info values(555,'suresh',2000,'hyderabad');

insert into emp_info(empid,ename,esal) values(666,'mahesh',2000);

select * from emp_info;

select * from emp_info1;

create table emp_info1(empid int unique,ename varchar(15) not null,esal int check(esal>10000),eadd varchar(10),check(length(ename)>6));

insert into emp_info1 values(555,'sureshkumar',12000,'hyderabad');

#primary key=unique+NN

insert into emp_info1(ename,esal,eadd) values('maheshkumar',22000,'hyderabad');

create table emp_info2(empid int primary key,ename varchar(15) not null,esal int check(esal>10000),eadd varchar(10),check(length(ename)>6));

insert into emp_info2 values(555,'sureshkumar',12000,'hyderabad');

insert into emp_info2(ename,esal,eadd) values('maheshkumar',22000,'hyderabad');
 
CREATE TABLE dept(

    deptno INT,

    dname VARCHAR(14),

    loc VARCHAR(13),

	constraint pk_dept primary key (deptno)

);

INSERT INTO dept(deptno, dname, loc) VALUES

(10, 'ACCOUNTING', 'NEW YORK'),

(20, 'RESEARCH', 'DALLAS'),

(30, 'SALES', 'CHICAGO'),

(40, 'OPERATIONS', 'BOSTON');

select * from dept;

CREATE TABLE emp(

    empno INT,

    ename VARCHAR(10),

    job VARCHAR(9),

    mgr INT,

    hiredate DATE,

    sal DECIMAL(7,2),

    comm DECIMAL(7,2),

    deptno INT,

   constraint pk_emp primary key (empno),

   constraint fk_deptno foreign key (deptno) references dept (deptno) 

);
 
INSERT INTO emp VALUES

(7839, 'KING', 'PRESIDENT', null, '1981-11-17', 5000, null, 10),

(7698, 'BLAKE', 'MANAGER', 7839,'1981-05-01', 2850, null, 30),

(7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, null, 10),

(7566, 'JONES', 'MANAGER', 7839, '1981-04-02',2975, null, 20),

(7788, 'SCOTT', 'ANALYST', 7566, '1981-04-19',3000, null, 20),

(7902, 'FORD', 'ANALYST', 7566, '1981-03-12', 3000, null, 20),

(7369, 'SMITH', 'CLERK', 7902,'1980-12-17', 800, null, 20),

(7499, 'ALLEN', 'SALESMAN', 7698,'1981-02-20', 1600, 300, 30),

(7521, 'WARD', 'SALESMAN', 7698, '1981-02-22',1250, 500, 30),

(7654, 'MARTIN', 'SALESMAN', 7698,'1981-09-28',1250, 1400, 30),

(7844, 'TURNER', 'SALESMAN', 7698,'1981-09-08',1500, 0, 30),

(7876, 'ADAMS', 'CLERK', 7788, '1987-05-23',1100, null, 20),

(7900, 'JAMES', 'CLERK', 7698,'1981-03-12',950, null, 30),

(7934, 'MILLER', 'CLERK', 7782,'1982-01-23',1300, null, 10);

select * from emp;

select * from dept;

delete from dept where deptno=20;
 
#Joins

#cross join,equi join -->left outer ,right outer join

select * from emp;

select * from dept;
 
select e.empno,e.ename,e.sal,d.deptno,d.dname from emp e,dept d;

select e.empno,e.ename,e.sal,d.deptno,d.dname from emp e cross join dept d;

#equi join/inner join

select e.empno,e.ename,e.sal,d.deptno,d.dname from emp e,dept d where e.deptno=d.deptno;

select e.empno,e.ename,e.sal,d.deptno,d.dname from emp e,dept d where e.deptno=d.deptno;

insert into emp(empno,ename,sal) values(123,'sandeep',23000);

select * from emp;

select * from dept;

select e.empno,e.ename,e.sal,d.deptno,d.dname from emp e left outer join dept d on e.deptno=d.deptno;

select e.empno,e.ename,e.sal,d.deptno,d.dname from emp e right outer join dept d on e.deptno=d.deptno;

select e.empno,m.ename,e.ename as manager from emp e ,emp m where e.empno=m.mgr;
 
 
 
 
select * from emp;

select deptno,sum(sal) from emp group by deptno;

select deptno,min(sal) from emp group by deptno;

select deptno,max(sal) from emp group by deptno;

SELECT ename, sal + comm AS total

FROM Emp

ORDER BY total DESC;

SELECT * FROM EMP WHERE SAL>(SELECT SAL FROM EMP WHERE EMPNO=7934);

SELECT * FROM EMP WHERE SAL!=(SELECT SAL FROM EMP WHERE EMPNO=7499);

SELECT * FROM EMP WHERE SAL<(SELECT SAL FROM EMP WHERE EMPNO=7499);

SELECT * FROM EMP WHERE SAL>(SELECT avg(SAL) FROM EMP);

SELECT * FROM emp   

WHERE sal > ANY (SELECT sal FROM emp WHERE sal BETWEEN 2500 AND 4000);

SELECT * FROM emp   

WHERE sal > All (SELECT sal FROM emp WHERE sal BETWEEN 2500 AND 4000);

SELECT * FROM emp   

WHERE sal IN (SELECT sal FROM emp WHERE sal BETWEEN 2500 AND 4000);
 
SELECT D.* FROM DEPT D WHERE EXISTS(SELECT E.EMPNO FROM EMP E WHERE  E.DEPTNO=D.DEPTNO);

SELECT D.* FROM DEPT D WHERE not EXISTS(SELECT E.EMPNO FROM EMP E WHERE  E.DEPTNO=D.DEPTNO);
 
SELECT * FROM emp WHERE sal =

( SELECT max(sal) FROM emp WHERE sal < 

( SELECT max(sal) FROM EMP));

use astra_india;

#Assignments
#Q) Create table emp11 from table emp ?
CREATE TABLE emp11 AS SELECT * FROM emp;
#Q)create table emp12 from emp and into the new table copy only the structure but not the data ?
CREATE TABLE emp12 AS SELECT * FROM emp WHERE 1 = 0;
#Q)Increase size of ENAME field to 20 from 10 of emp12 table?
ALTER TABLE emp12 MODIFY COLUMN ename VARCHAR(20);
#Q)Rename column name sal to salary ?
ALTER TABLE emp12 RENAME COLUMN sal TO salary;
#Q)Drop hiredate column ?
ALTER TABLE emp12 DROP COLUMN hiredate;
#Q)Delete all the records from table with out using truncate command?
DELETE FROM emp11;
#Q)create table with five columns,then add three columns ?
CREATE TABLE emp13 (empno int,  ename  VARCHAR(10),  job  VARCHAR(9),  mgr int, hiredate DATE);
ALTER TABLE emp13 ADD sal int, ADD comm int, ADD deptno int;
#Q)Add a new Department to the DEPT table, and add a Manager and two Clerks to the EMP table that will belong to the new department.
INSERT INTO dept VALUES(50, 'SALES', 'LOS ANGELES');
INSERT INTO emp VALUES(7596, 'JACK', 'MANAGER', 7839,'1982-04-02',4975, null, 50);
INSERT INTO emp VALUES(7398, 'SAMSON', 'CLERK', 7802,'1960-12-17',800, null, 50 );
INSERT INTO emp VALUES(7399, 'SANJU', 'CLERK', 7804,'1998-12-17',800, null, 50 );
select * from emp;
select * from dept;
#Q Transfer one of the new clerks to a different department and transfer one of the previously existing clerks to your new department.
UPDATE emp SET deptno = 20 WHERE ename = 'SANJU'; 
UPDATE emp SET deptno = 50 WHERE ename = 'SMITH';
#Q Create a new table called JOBS with two fields, a SMALLINT called JOBNO and a 15 character textfield called JOB.
CREATE TABLE jobs (jobno smallint, job  VARCHAR(15));
#Q Fill your new JOBS table with null values for the JOBNO and the job values from the EMP table.
# There should be only one row with each job type (ie. no repeats).
SELECT * FROM emp;
INSERT INTO jobs VALUES(null, 'PRESIDENT' );
INSERT INTO jobs VALUES(null, 'MANAGER' );
INSERT INTO jobs VALUES(null, 'ANALYST' );
INSERT INTO jobs VALUES(null, 'CLERK' );
INSERT INTO jobs VALUES(null, 'SALESMAN' );
SELECT * FROM jobs;
#Q Give a unique job number to each job type.
UPDATE jobs SET jobno = 1 WHERE job = 'PRESIDENT'; 
UPDATE jobs SET jobno = 2 WHERE job = 'MANAGER';
UPDATE jobs SET jobno = 3 WHERE job = 'ANALYST';
UPDATE jobs SET jobno = 4 WHERE job = 'CLERK';
UPDATE jobs SET jobno = 5 WHERE job = 'SALESMAN';
#Q) Create a new empty table called EMP1. This table should have the same fields as EMP but with an 
# additional Field called JOBNO of type SMALLINT. (Note: also make EMPNO and DEPTNO type SMALLINT.)
CREATE TABLE emp1 (empno smallint,ename  VARCHAR(10),job  VARCHAR(9),mgr int,hiredate DATE,
  sal  int,comm  int,deptno smallint,jobno smallint);
#Q) Fill your new EMP1 table with the data from EMP and JOBS.
insert into emp1(empno,ename,job,mgr,hiredate,sal,comm,deptno,jobno) select e.*,j.jobno from emp e ,jobs j where e.job=j.job   ;
select * from emp1;
truncate table emp1;
#Q) Update all employees commission to 500 
UPDATE emp1 set comm = 500;
#Q) Update employee comm to 500 whose comm IS NULL ?
UPDATE emp1 set comm = 500 WHERE comm IS NULL;
#Q)Update different employees comm with different values ?
UPDATE emp SET comm = 2500 where empno=7844;
#Q) increment salaries to all the employees with 25% based thier salaries ?
UPDATE emp set sal = sal * 1.25;
#1 create table without constraints and add constraints ?
CREATE TABLE dept_new(
    deptno INT,
    dname VARCHAR(14),
    loc VARCHAR(13)
);
ALTER TABLE dept_new ADD CONSTRAINT unique_dname UNIQUE(dname);
ALTER TABLE dept_new ADD CONSTRAINT dept_primary_key primary key(deptno);
#2 create table with foreign key constraint ?
CREATE TABLE emp_new(
    empno INT,
    ename VARCHAR(10),
    job VARCHAR(9),
    mgr INT,
    hiredate DATE,
    sal DECIMAL(7,2),
    comm DECIMAL(7,2),
    deptno INT,
    constraint pk_emp primary key (empno),
    constraint fk_deptno foreign key (deptno) references dept_new (deptno) 
);
#3 Add constraint with out name in alter level ?
ALTER TABLE emp_new ADD UNIQUE (mgr);
#4 Add composite primary key on two attributes ?
describe emp_new;
ALTER TABLE emp_new DROP CONSTRAINT pk_emp;
ALTER TABLE emp_new ADD CONSTRAINT emp_composite_primary_key primary key(empno, mgr);
#5 Add foreign key constraint with out name in alter level ?
describe emp_new;
ALTER TABLE emp_new DROP CONSTRAINT fk_deptno;
ALTER TABLE emp_new ADD FOREIGN KEY (deptno) REFERENCES dept_new (deptno);
INSERT INTO dept_new(deptno, dname, loc) VALUES

(10, 'ACCOUNTING', 'NEW YORK'),

(20, 'RESEARCH', 'DALLAS'),

(30, 'SALES', 'CHICAGO'),

(40, 'OPERATIONS', 'BOSTON');

 

 

INSERT INTO emp_new VALUES

(7839, 'KING', 'PRESIDENT', null, '1981-11-17', 5000, null, 10),

(7698, 'BLAKE', 'MANAGER', 78899,'1981-05-01', 2850, null, 30),

(7782, 'CLARK', 'MANAGER', 78392, '1981-06-09', 2450, null, 10),

(7566, 'JONES', 'MANAGER', 78391, '1981-04-02',2975, null, 20),

(7788, 'SCOTT', 'ANALYST', 75661, '1981-04-19',3000, null, 20),

(7902, 'FORD', 'ANALYST', 75662, '1981-03-12', 3000, null, 20),

(7369, 'SMITH', 'CLERK', 79021,'1980-12-17', 800, null, 20),

(7499, 'ALLEN', 'SALESMAN', 76982,'1981-02-20', 1600, 300, 30),

(7521, 'WARD', 'SALESMAN', 76989, '1981-02-22',1250, 500, 30),

(7654, 'MARTIN', 'SALESMAN', 76984,'1981-09-28',1250, 1400, 30),

(7844, 'TURNER', 'SALESMAN', 76986,'1981-09-08',1500, 0, 30),

(7876, 'ADAMS', 'CLERK', 77883, '1987-05-23',1100, null, 20),

(7900, 'JAMES', 'CLERK', 76981,'1981-03-12',950, null, 30),

(7934, 'MILLER', 'CLERK', 77822,'1982-01-23',1300, null, 10);
#1 Arrange employee records in ascending order of their sal ?
SELECT * FROM  emp_new ORDER BY sal;
#2 Arrange employee records in descending order of their sal ?
SELECT * FROM  emp_new ORDER BY sal DESC;
#3 Display employee records working for 10th dept and arrange the result in ascending order of their sal ?
SELECT * FROM  emp_new WHERE deptno =10 ORDER BY sal ASC;
#4 Arrange employee records in ascending of their deptno and with in dept arrange records in descending order of their sal ?
SELECT * FROM  emp_new ORDER BY deptno ASC, sal DESC;
#5 In ORDER BY clause we can use column name or column position, for example
SELECT * FROM emp_new ORDER BY 5 DESC ; #YES
#6 Arrange employee records in descending order of their comm. if comm . Is null then arrange those records last ?
SELECT * FROM  emp_new ORDER BY comm DESC;
SELECT * FROM  emp_new ORDER BY 
CASE
	WHEN comm IS NULL THEN 1
    ELSE 0
    END,
    comm DESC;
describe emp_new;
#1. Display the names and job titles of all employees with the same job as Jones.
SELECT * FROM  emp_new;
SELECT * FROM  dept_new;
SELECT ename, job FROM emp_new WHERE job = (SELECT job FROM emp_new WHERE ename = 'JONES');
#2 Display the names and department name of all employees working in the same city as Jones.
SELECT e.ename, d.dname FROM emp_new e INNER JOIN dept_new d ON e.deptno = d.deptno WHERE e.deptno = (SELECT deptno FROM emp_new WHERE ename= 'JONES');
					#OR
SELECT e.ename, d.dname FROM emp_new e INNER JOIN dept_new d ON e.deptno = d.deptno WHERE d.loc = (SELECT loc FROM dept_new WHERE deptno =(SELECT deptno FROM emp_new WHERE ename= 'JONES'));
#3 Display the name of the employee whose salary is the lowest.
SELECT ename FROM emp_new WHERE sal IN (SELECT MIN(sal) FROM emp_new);
#4  Display the names of all employees except the lowest paid.
SELECT ename FROM emp_new WHERE sal NOT IN (SELECT MIN(sal) FROM emp_new);
#5 Display the names of all employees whose job title is the same as anyone in the sales dept.
SELECT * FROM  emp_new;
SELECT * FROM  dept_new;
SELECT e.ename FROM emp_new e WHERE e.job IN (SELECT job FROM emp_new WHERE deptno = (SELECT deptno FROM dept_new WHERE dname='SALES'));
#6 Display the names of all employees who work in a department that employs an analyst.
SELECT DISTINCT deptno FROM emp_new WHERE job='ANALYST';
SELECT e.ename FROM emp_new e WHERE e.deptno IN (SELECT DISTINCT deptno FROM emp_new WHERE job='ANALYST');
#7 Display the names of all employees with their job title, their current salary and their salary #following
# a 10% pay rise for clerks and a 7% pay rise for all other employees
SELECT * FROM  emp_new;
SELECT ename, job, sal AS current_sal, CASE WHEN job = 'CLERK' THEN sal * 1.10 ELSE sal * 1.07 END AS new_sal FROM emp_new;
#8 Display the names of all employees with their salary and commission earned. Employees with a null
# commission field should have 0 in the commission column.
# SELECT ename, sal, comm FROM emp WHERE comm IS NOT
SELECT ename, sal, CASE WHEN comm IS NULL THEN 0 ELSE comm END FROM emp_new;
SELECT ename, sal, CASE WHEN comm IS NULL THEN 0 ELSE comm END AS commission FROM emp_new;
#9 Display the names of ALL employees with the total they have earned (ie. salary plus commission).
SELECT * FROM  emp_new;
SELECT ename, (sal + COALESCE(comm, 0)) AS total_earned FROM emp_new;