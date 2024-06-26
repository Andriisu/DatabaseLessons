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

--11
select * from HomePro.Schedules 
where DateNeeded >'2016-01-01'
--12
select * from HomePro.Schedules
where DateNeeded between '2013-01-01' and '2013-12-31'
--13
select * from HomePro.Schedules 
where JobType = 'Remodeling'
--14
select * from HomePro.Schedules
where Description like '%kitchen%'


--Table HomePro.Quotes

--15
select * from HomePro.Quotes 
where Description like '%Kitchen%'
--16
select * from HomePro.Quotes 
where Estimation > 500
--17
select * from HomePro.Quotes
where Description like '%discount%'





