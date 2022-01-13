--Built-in functions

select * from PETRESCUE;

--Exercise 2: Aggregate Functions
-----------------------------------------------
--Query A1: Enter a function that calculates the total cost of all animal rescues in the PETRESCUE table.
--
select sum(COST) from PETRESCUE;

--Query A2: Enter a function that displays the total cost of all animal rescues in the PETRESCUE table in a column called SUM_OF_COST.
--
select sum(COST) as Total_Cost from PETRESCUE;

--Query A3: Enter a function that displays the maximum quantity of animals rescued.
--
select max(QUANTITY) from PETRESCUE;


--Query A4: Enter a function that displays the average cost of animals rescued.
--
select avg(COST) from PETRESCUE;


--Query A5: Enter a function that displays the average cost of rescuing a dog.
--
select avg(COST/QUANTITY) from PETRESCUE where ANIMAL = 'Dog';



--Exercise 3: Scalar and String Functions
--Query B1: Enter a function that displays the rounded cost of each rescue.
--
select round(COST) from PETRESCUE;
--Query B2: Enter a function that displays the length of each animal name.
--
select length(ANIMAL) from PETRESCUE;
--Query B3: Enter a function that displays the animal name in each rescue in uppercase.
--
select UCASE(ANIMAL) from PETRESCUE;
--Query B4: Enter a function that displays the animal name in each rescue in uppercase without duplications.
--
select DISTINCT(UCASE(ANIMAL)) from PETRESCUE;
--Query B5: Enter a query that displays all the columns from the PETRESCUE table, where the animal(s) rescued are cats. Use cat in lower case in the query.
select * from PETRESCUE where LCASE(ANIMAL) = 'cat';

--Exercise 4: Date and Time Functions

--Query C1: Enter a function that displays the day of the month when cats have been rescued.
--
select day(RESCUEDATE) from PETRESCUE where ANIMAL = 'Cat';

--Query C2: Enter a function that displays the number of rescues on the 5th month.
--
select sum(QUANTITY) from PETRESCUE where month(RESCUEDATE) = '05';
--Query C3: Enter a function that displays the number of rescues on the 14th day of the month.
--
select sum(QUANTITY) from PETRESCUE where day(RESCUEDATE) = '14';
--Query C4: Animals rescued should see the vet within three days of arrivals. Enter a function that displays the third day from each rescue.
--
select (RESCUEDATE + 3 DAYS) from PETRESCUE;
--Query C5: Enter a function that displays the length of time the animals have been rescued; the difference between today’s date and the rescue date.
--
select (CURRENT_DATE - RESCUEDATE) from PETRESCUE;




















