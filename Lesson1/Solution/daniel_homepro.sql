select * from HomePro.Customers;


2.
SELECT * FROM HomePro.Customers
WHERE LastName = 'Smith';

3.
SELECT * FROM HomePro.Customers
WHERE LastName LIKE '%m%';

4.
SELECT FirstName, LastName, State, Age FROM HomePro.Customers
WHERE LastName LIKE '%m%' AND Age > 30;

5.
SELECT FirstName, LastName, Phone, ZipCode FROM HomePro.Customers
WHERE ZipCode = 22201;

6.
SELECT FirstName, LastName, Phone, Email, FaxNumber FROM HomePro.Customers
WHERE FaxNumber is NULL;

7.
SELECT * FROM HomePro.Customers
WHERE LastName LIKE 'M%';

8.
SELECT FirstName, LastName, Phone FROM HomePro.Customers
WHERE NewsLetter = 1;

9.
SELECT * FROM HomePro.Customers
WHERE Phone LIKE '%703%';

10.
SELECT * FROM HomePro.Customers
WHERE ZipCode between 22200 and 22300;

Schedules
1.
SELECT * FROM HomePro.Schedules
WHERE DateNeeded > '2016-01-01';

2.
SELECT * FROM HomePro.Schedules
WHERE JobType = 'Remodeling';

Quotes
1.
SELECT * FROM HomePro.Quotes
WHERE Description LIKE '%kitchen%';
2.
SELECT * FROM HomePro.Quotes
WHERE Estimation > 500;