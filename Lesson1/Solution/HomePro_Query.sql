--Table HomePro.Customers
--1
select * from HomePro.Customers
--2
select * from HomePro.Customers 
where LastName = 'Smith'
--3
select * from HomePro.Customers 
where LastName like '%M%'
--4
select * from HomePro.Customers 
where LastName like '%M%' and Age > 30 
--5
select FirstName, LastName, Phone, ZipCode 
from HomePro.Customers 
where ZipCode = 22201 
--6
select FirstName, LastName, Phone, Email, FaxNumber 
from HomePro.Customers 
where FaxNumber is NULL 
--7 
select * from HomePro.Customers 
where FirstName like 'M%'
--8
select FirstName, LastName, Phone, AltPhone 
from HomePro.Customers 
where NewsLetter = 1 
--9
select * 
from HomePro.Customers 
where Phone like '%703%'
--10
select * 
from HomePro.Customers 
where ZipCode >= '22200' and ZipCode <= '22300'

select * from HomePro.Customers 
where ZipCode between '22200' and '22300'

--Table HomePro.Schedules
select * from HomePro.Schedules
--1
select * from HomePro.Schedules 
where DateNeeded >'2016-01-01'
--2
select * from HomePro.Schedules 
where JobType = 'Remodeling'
--3
select count(*) from HomePro.Schedules 
where JobType = 'Remodeling'
--4
select JobType, Count(*) 'Job Counts' 
from HomePro.Schedules 
group by JobType

--Table HomePro.Quotes
select * from HomePro.Quotes
--1
select * from HomePro.Quotes 
where Description like '%Kitchen%'
--2
select * from HomePro.Quotes 
where Estimation > 500






