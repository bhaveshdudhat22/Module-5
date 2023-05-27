/*
What do you understand By Database
A database is a collection of data which is arragnged or organized in a perticular order.    
=============================================================================================================

What is Normalization?
Normalization is the process of organizing a database to reduce redundancy and improve data integrity.
=============================================================================================================

What is Difference between DBMS and RDBMS?
DBMS stand for Database Management System.
DBMS is a way to achive the database concept using variuos IDE (Integrated Developement Environment)
Type of DBMS.
1. Relational Database Management System
2. Hierarchical Database Management System
3. Network Database Management System
4. Object Oriented Database Management System

RDBMS stand for Relational Database Management System.
RDBMS is the basis for SQL, and for all modern database systems such as MySQL, MS SQL Server, Oracle and Microsoft Access.
In RDBMS data is stored in table means in rows and columns.
In Relational Database Management System,
Table is knonw as Relationa
Rows is knonw as Tupal and record
Columns is known as attributes and field
No. of Rows is know as Cordinality
No. of Columns is know as Degree
Domain is know as pool of values means Genger field have only M/F Values. (M is Male and F is Femal)
=============================================================================================================

What is MF Cod Rule of RDBMS Systems?
=============================================================================================================

What do you understand By Data Redundancy?
=============================================================================================================

What is DDL Interpreter?
It interprets DDL statements and record them in tables containing metadata.
=============================================================================================================

What is DML Compiler in SQL?
It processes the DML statements into low level instruction (machine language), so that they can be executed.
=============================================================================================================

What is SQL Key Constraints writing an Example of SQL Key Constraints
Constraint are a set of rules that are applied to a table.
This ensures the accuracy and reliability of the data in the table.
   
SQL Constraint are given below.
1. Primary Key
2. Unique Key
3. Not Null
4. Default
5. Check
6. Foreign Key
    
1. Primary Key
The Primary Key Constraint states that a field/attribute/column can't contain duplicate value and it can't be left blank.
Primary keys must contain UNIQUE values, and cannot contain NULL values.
    
2. Unique Key
The Unique Key Constraint states that a field/attribute/column can't contain duplicate value.
The Unique constraint ensures that all values in a column are different.
    
3. Not Null
The Not Null Constraint states that a field/attribute/column can't be left blank.
The Not Null constraint enforces a column to not accept Null/Blank values.
    
4. Default
The Default Constraint states that a field/attribute/column may be given a default value when no values are passed for the column.
The Default constraint is used to set a default value for a column.
    
5. Check
The Check Constraint states that a field/attribute/column can be checked for a condition before entering it into the table.
    
6. Foreign Key
When a field/attribute/column in one table playing a role of Primary key and in another table it is a Non-Primary key,
then the Non-Primary key will be referred to as Foreign Key.
The table with the foreign key is called the child table, and the table with the primary key is called the referenced 
or parent table.
=============================================================================================================

What is save Point? How to create a save Point write a Query?
Savepoint is a command in SQL that is used with the rollback command.
It is a command in Transaction Control Language that is used to mark the transaction in a table.
Consider you are making a very long table, and you want to roll back only to a certain position in a table then; this can be 
achieved using the savepoint.
If you made a transaction in a table, you could mark the transaction as a certain name, and later on, if you want to roll back 
to that point, you can do it easily by using the transaction's name.
Savepoint is helpful when we want to roll back only a small part of a table and not the whole table. In simple words, we can say 
savepoint is a bookmark in SQL.

What is trigger and how to create a Trigger in SQL?
Trigger is a statement that a system executes automatically when there is any modification to the database. 
In a trigger, we first specify when the trigger is to be executed and then the action to be performed when the trigger executes. 
Triggers are used to specify certain integrity constraints and referential constraints that cannot be specified using the 
constraint mechanism of SQL. 

Types of Triggers – 
We can define 6 types of triggers for each table: 

AFTER INSERT activated after data is inserted into the table. 
 
AFTER UPDATE: activated after data in the table is modified. 
 
AFTER DELETE: activated after data is deleted/removed from the table. 
 
BEFORE INSERT: activated before data is inserted into the table. 
 
BEFORE UPDATE: activated before data in the table is modified. 
 
BEFORE DELETE: activated before data is deleted/removed from the table. 
*/

create database module5;
show databases;
use module5;

/* 1. Create Table Name : Student and Exam */
create table Student (
Rollno int primary key,
Name varchar(30) not null,
Branch varchar(100) not null
);

insert into Student (Rollno, Name, Branch)
values(1, 'Jay', 'Computer Science');

insert into Student (Rollno, Name, Branch)
values(2, 'Suhani', 'Electronics and Com');

insert into Student (Rollno, Name, Branch)
values(3, 'Kirti', 'Electronics and Com');

select * from Student;

create table Exam (
Rollno int, FOREIGN KEY (Rollno) REFERENCES Student(Rollno),
S_code varchar(30) not null,
Marks varchar(100) not null,
P_code varchar(30) not null
);

insert into Exam values(1, 'CS11', 50, 'CS');
insert into Exam values(1, 'CS12', 60, 'CS');
insert into Exam values(2, 'EC101', 66, 'EC');
insert into Exam values(2, 'EC102', 70, 'EC');
insert into Exam values(3, 'EC101', 45, 'EC');
insert into Exam values(3, 'EC102', 50, 'EC');

select * from Exam;

/* Create table given below: Employee and Incentive Table */
create table Employee (
Employee_id int primary key,
First_name varchar(30) not null,
Last_name varchar(30) not null,
Salary int not null,
Joining_date varchar(50) not null,
Department varchar(30) not null
);

insert into Employee values(1, 'John', 'Abraham', 1000000, '01-JAN-13 12.00.00 AM', 'Banking');
insert into Employee values(2, 'Michael', 'Clarke', 800000, '01-JAN-13 12.00.00 AM', 'Insurance');
insert into Employee values(3, 'Roy', 'Thomas', 700000, '01-FEB-13 12.00.00 AM', 'Banking');
insert into Employee values(4, 'Tom', 'Jose', 600000, '01-FEB-13 12.00.00 AM', 'Insurance');
insert into Employee values(5, 'Jerry', 'Pinto', 650000, '01-FEB-13 12.00.00 AM', 'Insurance');
insert into Employee values(6, 'Philip', 'Mathew', 750000, '01-JAN-13 12.00.00 AM', 'Services');
insert into Employee values(7, 'TestName1', 123, 650000, '01-JAN-13 12.00.00 AM', 'Services');
insert into Employee values(8, 'TestName2', 'Lname%', 600000, '01-FEB-13 12.00.00 AM', 'Insurance');

select * from Employee;

/* a) Get First_Name from employee table using Tom name “Employee Name” */
select First_name from Employee;

/* b) Get FIRST_NAME, Joining Date, and Salary from employee table. */
select First_name, Joining_date, Salary from Employee;

/* c) Get all employee details from the employee table order by First_Name Ascending and Salary descending? */
select * from Employee order by First_name asc;
select * from Employee order by Salary desc; 

/* d) Get employee details from employee table whose first name contains ‘J’ */
select * from Employee where First_name like 'J%';

/* e) Get department wise maximum salary from employee table order by salary ascending? */
select * from Employee order by Department asc, Salary asc;

create table Incentive (
Employee_ref_id int not null,
Incentive_date varchar(30),
Incentive_amount int
);

insert into Incentive values(1, '01-FEB-13', 5000);
insert into Incentive values(2, '01-FEB-13', 3000);
insert into Incentive values(3, '01-FEB-13', 4000);
insert into Incentive values(1, '01-JAN-13', 4500);
insert into Incentive values(2, '01-JAN-13', 3500);

select * from Incentive;

/* f) Select first_name, incentive amount from employee and incentives table
for those employees who have incentives and incentive amount greater than 3000 */
select First_name from Employee;
select Incentive_amount from Incentive where Incentive_amount > 3000;

/* g) Create After Insert trigger on Employee table which insert records in viewtable */

/* Create table given below: Salesperson and Customer */

create table Salesperson (
SNo int primary key,
SNAME varchar(30) not null,
CITY varchar(30) not null,
COMM float not null
);


insert into Salesperson values(1001, 'Peel', 'London', 0.12);
insert into Salesperson values(1002, 'Serres', 'San Jose', 0.13);
insert into Salesperson values(1004, 'Motika', 'London', 0.11);
insert into Salesperson values(1007, 'Rafkin', 'Barcelona', 0.15);
insert into Salesperson values(1003, 'Axelrod', 'New York', 0.10);

select * from Salesperson;

create table Customer (
CNM int primary key,
CNAME varchar(30) not null,
CITY varchar(30) not null,
RATING int not null,
SNo int, foreign key (SNo) references Salesperson(SNo)
);

insert into Customer values(201, 'Hoffman', 'London', 100, 1001);
insert into Customer values(202, 'Giovanne', 'Roe', 200, 1003);
insert into Customer values(203, 'Liu', 'San Jose', 300, 1002);
insert into Customer values(204, 'Grass', 'Barcelona', 100, 1002);
insert into Customer values(206, 'Clemens', 'London', 300, 1007);
insert into Customer values(207, 'Pereira', 'Roe', 100, 1004);

select * from Customer;

/* a) All orders for more than $1000 */

/* b) Names and cities of all salespeople in London with commission above 0.12 */
select SNAME, CITY from Salesperson where COMM > 0.12;

/* c) All salespeople either in Barcelona or in London */
select * from Salesperson where CITY = 'Barcelona' or CITY = 'London';

/* a) All salespeople with commission between 0.10 and 0.12. (Boundary values should be excluded). */
select * from Salesperson where COMM between 0.10 and 0.12;

/* b) All customers excluding those with rating <= 100 unless they are located in Roe */
select * from Customer where RATING <= 100 and CITY = 'Roe';








