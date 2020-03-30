
--Table Bank.Clients
--1
select * from Bank.Clients
--2
select * from Bank.Clients 
where LastName = 'Smith'
--3
select FirstName, LastName, Phone, State 
from Bank.Clients 
where State = 'VA'

--4
select FirstName, LastName, Phone, Email 
from Bank.Clients 
where Email like '%gmail.com'

--5
select * 
from Bank.Clients 
where LastName like 'M%'
--6
select * 
from Bank.Clients 
where LastName like 'M%s'
--7
select FirstName, LastName, Phone  
from Bank.Clients 
where Type = 'Business'
--8
select * from Bank.Clients 
where Age < 20
--9
select * from Bank.Clients 
where Age between 20 and 40
--10
select min(Age), Avg(Age)
from Bank.Clients
--11
select Avg(Age), count(*)
from Bank.Clients 
where Type = 'Private'
--12
select Max(Age) 
from Bank.Clients
where State != 'NJ'


--Table Bank.Accounts
select * from Bank.Accounts
--1
select Balance from Bank.Accounts 
where Type = 'CREDIT'
--2
select Max(Balance) 'Biggest Balance' 
from Bank.Accounts
--3
select ClientId, Avg(Balance) 'Average Balance' 
from Bank.Accounts 
group by ClientId

--4
select ClientId, Avg(Balance) 'Average Balance', Count(*) 'Number of Accounts' 
from Bank.Accounts 
group by ClientId

--Table Bank.Transactions
select * from Bank.Transactions
--1
select * from Bank.Transactions 
where Status = 'Pending'
--2
select * from Bank.Transactions 
where Status = 'Commited' and TransactionTime > '2016-01-01'
--3
select * 
from Bank.Transactions 
where TransactionTime  between '2016-01-01' and '2016-12-31'
--4
select Avg(Amount) as AverageNumberOfTransactions
from Bank.Transactions
--5
select AccountNumFrom, Count(*), Avg(Amount) as AverageNumberOfTransactions
from Bank.Transactions
group by AccountNumFrom
