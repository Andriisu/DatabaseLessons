--Aggregate Function
--Table Bank.Clients
--1
select min(Age), Avg(Age)
from Bank.Clients
--2
select Avg(Age), count(*)
from Bank.Clients 
where Type = 'Private'
--3
select Max(Age) 
from Bank.Clients
where State != 'NJ'


--Table Bank.Accounts
--4
select Max(Balance) 'Biggest Balance' 
from Bank.Accounts
--5
select ClientId, Avg(Balance) 'Average Balance' 
from Bank.Accounts 
group by ClientId
--6
select ClientId, Avg(Balance) 'Average Balance', Count(*) 'Number of Accounts' 
from Bank.Accounts 
group by ClientId

--Table Bank.Transactions
--7
select Avg(Amount) as AverageNumberOfTransactions
from Bank.Transactions
--8
select AccountNumFrom, Count(*), Avg(Amount) as AverageNumberOfTransactions
from Bank.Transactions
group by AccountNumFrom


--Join Queries
--1
select C.FirstName, C.LastName, C.Phone, C.Email, C.State, C.Age, A.Balance
from Bank.Clients C
	join Bank.Accounts A
	on C.ClientId = A.ClientId 
where A.Type = 'CHECKING'
--2
select distinct C.FirstName, C.LastName, C.Phone, C.Email, C.State, C.Age, A.Balance, A.Type 
from Bank.Clients C
	join Bank.Accounts A
	on C.ClientId = A.ClientId 
where A.Type = 'CHECKING'or A.Type = 'credit'
--3
select C.FirstName, C.LastName, C.Phone, C.Email, C.State, C.Age, Acr.Balance, Acr.Type, Ach.Balance, Ach.Type 
from Bank.Clients C
	join Bank.Accounts Acr
	on C.ClientId = Acr.ClientId 
	join Bank.Accounts Ach
	on C.ClientId = Ach.ClientId 
where Ach.Type = 'CHECKING' 
	and Acr.Type = 'CREDIT'
--4
select Sum(Balance) as 'Summary balance for private customers'
from Bank.Clients C
	join Bank.Accounts A
	on C.ClientId = A.ClientId
where C.Type = 'Private'
--5
select C.FirstName, C.LastName, C.Phone, C.Email, C.State, C.Age, T.Amount, T.Status, T.TransactionTime
from Bank.Accounts A
	join  Bank.Clients C
		on A.ClientId = C.ClientId
	join Bank.Transactions T
		on A.AccountNum = T.AccountNumFrom
where T.Status = 'pending'
--6
select C.FirstName, C.LastName, C.Phone, C.Email, C.State, C.Age, A.Balance, A.Type, T.Amount, T.Status, T.TransactionTime
from Bank.Accounts A
	join  Bank.Clients C
	on A.ClientId = C.ClientId
	join Bank.Transactions T
	on A.AccountNum = T.AccountNumFrom
where T.Status = 'rejected'
--7
select C.FirstName, C.LastName, C.Phone, C.Email, C.State, C.Age, A.Balance, A.Type, T.Amount, T.Status, T.TransactionTime
from Bank.Accounts A
	join  Bank.Clients C
		on A.ClientId = C.ClientId
	join Bank.Transactions T
		on A.AccountNum = T.AccountNumFrom
where T.TransactionTime > '2015-12-31'
--8
select C.FirstName, C.LastName, C.Phone, C.Email, C.State, C.Age, A.Balance, A.Type, T.Amount, T.Status, T.TransactionTime
from Bank.Accounts A
	join  Bank.Clients C
		on A.ClientId = C.ClientId
	join Bank.Transactions T
		on A.AccountNum = T.AccountNumTo
where A.Type = 'credit'
--9
select C.FirstName, C.LastName, C.Phone, C.Email, C.State, C.Age, A.Balance, A.Type, T.TransactionId
from Bank.Accounts A
	join  Bank.Clients C
		on A.ClientId = C.ClientId
	left join Bank.Transactions T
		on A.AccountNum = T.AccountNumFrom
where T.TransactionId is NULL
--10
select A.AccountNum, Count(T.AccountNumFrom) as 'Number of transactions', sum(T.Amount) as Sumarry
from Bank.Accounts A
	join  Bank.Clients C
		on A.ClientId = C.ClientId
	join Bank.Transactions T
		on A.AccountNum = T.AccountNumFrom
where C.Age > 20
group  by A.AccountNum
--11
select Cfrom.FirstName as FirstNameFrom, Cfrom.LastName as LastNameFrom , Cto.FirstName as FirstNameTo, Cto.LastName as LastNameTo, T.Amount, T.Status, T.TransactionTime 
from Bank.Transactions T
	join  Bank.Accounts Afrom
		on T.AccountNumFrom = Afrom.AccountNum
	join  Bank.Accounts Ato
		on T.AccountNumTo = Ato.AccountNum
	join Bank.Clients Cfrom
		on Afrom.ClientId = Cfrom.ClientId
	join Bank.Clients Cto
		on Ato.ClientId = Cto.ClientId

