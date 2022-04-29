create database Employee_Mysql;
use   Employee_Mysql;

create table employee(eid int(4),  ename varchar(20), city varchar(20), salary int(5) );
show databases
describe employee;

insert into employee values("100", "smith", "Bangalore", "10000");
insert into employee values("101", "carl", "Bangalore", "12000");
insert into employee values("102", "ram", "Chennai", "12000");
insert into employee values("103", "pankaj", "Hyderabad", "5000");
insert into employee values("104", "vikram", "pune", "2000");

select * from employee;

select eid , ename from employee;

select ename from employee where salary =10000;

select ename from employee where salary in (5000,10000);

select eid from employee order by  eid desc;
select ename from employee order by  eid desc;

select eid from employee order by  eid asc;

select ename from employee having eid ="100" ;

select max(salary) from employee;
select min(salary) from employee;
select avg(salary) from employee;
select sum(salary) from employee;

select count(eid) from employee;

select count(ename) from employee group by city;
select count(eid),ename from employee group by city order by count(eid) asc;

select count(city) from employee group by city order by count(city) asc;
select count(eid) from employee group by eid;
select count(city) from employee ;

select count(city) from employee group by city having city="Bangalore";

select city from employee group by city having city="Bangalore";

select ucase(ename) from employee;
select lcase(ename) from employee;

select * from employee  order by  eid asc limit 2;
select * from employee  order by  eid desc limit 2;

select mid(city , 1,3) from employee;

select now() from employee

select now();
select now() as time;
select now() as date;

select ename as name from employee

select ename from employee where ename like "s%";
select ename from employee where ename like "%s%";
select ename from employee where ename like "%s";