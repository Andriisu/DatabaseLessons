--HomePro.Customers
--1

--2


--HomePro.Schedules 
--3
select Count(*) from HomePro.Schedules 
where JobType = 'Remodeling'
--4
select JobType, Count(*) as JobCounts 
from HomePro.Schedules 
group by JobType
--5
select Min(DateNeeded), Max(DateNeeded)
from HomePro.Schedules 

--HomePro.Quotes
--6
select Sum(Estimation) from HomePro.Quotes 
where Description like '%Kitchen%'
--7
select Min(Estimation) from HomePro.Quotes 
where Estimation > 500
--8
select Sum(Estimation), Avg(Estimation) from HomePro.Quotes 


--Table Bank.Clients
--9
select min(Age), Avg(Age)
from Bank.Clients
--10
select Avg(Age), count(*)
from Bank.Clients 
where Type = 'Private'
--11
select Max(Age) 
from Bank.Clients
where State != 'NJ'


--Table Bank.Accounts
--12
select Max(Balance) 'Biggest Balance' 
from Bank.Accounts
--13
select ClientId, Avg(Balance) 'Average Balance' 
from Bank.Accounts 
group by ClientId
--14
select ClientId, Avg(Balance) 'Average Balance', Count(*) 'Number of Accounts' 
from Bank.Accounts 
group by ClientId

--Table Bank.Transactions
--15
select Avg(Amount) as AverageNumberOfTransactions
from Bank.Transactions
--16
select AccountNumFrom, Count(*), Avg(Amount) as AverageNumberOfTransactions
from Bank.Transactions
group by AccountNumFrom
