--Hands-on Lab : String Patterns, Sorting and Grouping

select * from EMPLOYEES;
select * from JOBS;
select * from JOBS_HISTORY;
select * from DEPARTMENTS;
select * from LOCATIONS;

--Exercise 1: String Patterns

--Problem: Retrieve all employees whose address is in Elgin,IL.

--Attempt:

select * from EMPLOYEES where ADDRESS like '%Elgin%';

--first attempt is correct.
--must use single quotation, cannot use double quotations

--Problem 2 : Retrieve all employees who were born during the 1970's.

--Attempt:

select * from EMPLOYEES where B_DATE BETWEEN '1970-01-01' and '1979-12-31';

--first attempt is correct
--solution provided 

select * from EMPLOYEES where B_DATE LIKE '197%';


--Problem 3: Retrieve all employees in department 5 whose salary is between 60000 and 70000.

select * from EMPLOYEES where (SALARY between 60000 and 70000) and DEP_ID = 5;


--Exercise 2: Sorting

--Problem 1: Retrieve a list of employees ordered by department ID.

select * from EMPLOYEES order by DEP_ID;


--Problem 2: Retrieve a list of employees ordered in descending order by department ID and within each department ordered alphabetically in descending order by last name.


select * from EMPLOYEES order by DEP_ID DESC, L_NAME DESC;


--Problem 3: Refer to Problem 2, use DEP_NAME instead of DEP_ID


--Try
select * from EMPLOYEES e right join DEPARTMENTS d on e.MANAGER_ID = d.MANAGER_ID order by d.DEP_NAME, e.L_NAME DESC;

--correct
select E.F_NAME, E.L_NAME, D.DEP_NAME from EMPLOYEES E, DEPARTMENTS D where E.DEP_ID = D.DEPT_ID_DEP order by D.DEP_NAME, E.L_NAME DESC;


--Exercise 3: Grouping

--Problem 1:For each department ID retrieve the number of employees in the department.

select DEP_ID, count(*) as Count from EMPLOYEES group by DEP_ID;

--Problem 2: For each department retrieve the number of employees in the department, and the average employee salary in the department.

select E.DEP_ID, count(*) as NUM_EMPLOYEES, AVG(E.SALARY) as AVG_SALARY from EMPLOYEES E group by E.DEP_ID  having count(E.DEP_ID) < 4 order by AVG_SALARY;














