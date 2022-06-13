
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
select * from Bank.Clients
where Type = 'Private' and Age >30


--Table Bank.Accounts
select * from Bank.Accounts
--11
select Balance from Bank.Accounts 
where Type = 'CREDIT'
--12
select * from Bank.Accounts
where Type = 'checking' and Balance > 2000


--Table Bank.Transactions
select * from Bank.Transactions
--13
select * from Bank.Transactions 
where Status = 'Pending'
--14
select * from Bank.Transactions 
where Status = 'Commited' and TransactionTime > '2016-01-01'
--15
select * 
from Bank.Transactions 
where TransactionTime  between '2016-01-01' and '2016-12-31'
