--Schema HomePro
--1
select * 
from HomePro.Customers c
	join HomePro.Schedules s
		on C.CustomerId = S.CustomerId 
where s.DateNeeded > '2015-01-01'

--2
select C.FirstName, C.LastName, C.Email, C.Phone, Q.Description, Q.Estimation
from HomePro.Customers c
	join HomePro.Quotes Q
	on C.CustomerId = Q.CustomerId
where Q.Estimation > 500
order by Q.Estimation 
--3
select C.FirstName, C.LastName, C.Email, C.Phone, C.AltPhone, Q.ID as QuoteId, Q.Description, Q.Estimation
from HomePro.Customers C
	join HomePro.Quotes Q
	on C.CustomerId = Q.CustomerId
where C.AltPhone is NULL
order by Q.Estimation
--4
select C.FirstName, C.LastName, C.Email, C.Phone, C.AltPhone, Q.ID as QuoteId, Q.Description, Q.Estimation
from HomePro.Customers C
	join HomePro.Quotes Q
on C.CustomerId = Q.CustomerId
	join HomePro.Schedules S
on C.CustomerId = S.CustomerId
where C.AltPhone is NULL and S.DateNeeded between '2016-01-01' and '2016-12-31'
order by Estimation
--5
select * 
from HomePro.Customers C
	left join HomePro.Quotes Q
	on C.CustomerId = Q.CustomerId
where Q.CustomerId is null
--6
select * 
from HomePro.Customers C
	left join HomePro.Quotes Q
		on C.CustomerId = Q.CustomerId
	left join HomePro.Schedules S
		on C.CustomerId = S.CustomerId
where Q.CustomerId is null and S.CustomerId is null
--7
select * 
from HomePro.Customers C
	join HomePro.Schedules S
		on C.CustomerId = S.CustomerId
	left join HomePro.Quotes Q
		on C.CustomerId = Q.CustomerId
where Q.CustomerId is null 
--8
select *
from HomePro.Customers C
	join HomePro.Quotes Q
		on C.CustomerId = Q.CustomerId 
	join HomePro.Schedules S
		on C.CustomerId =  S.CustomerId
where S.JobType ='Remodeling' and Q.Estimation < 5000 and C.Age < 70
--9
select Sum(Q.Estimation) as SumOfQuotes
from HomePro.Customers C
	join HomePro.Quotes Q
	on C.CustomerId = Q.CustomerId
where C.NewsLetter = 1
--10
select Sum(Q.Estimation) as SumOfQuotes
from HomePro.Customers C
	join HomePro.Quotes Q
		on C.CustomerId = Q.CustomerId 
	join HomePro.Schedules S
		on C.CustomerId =  S.CustomerId
where S.DateNeeded < '2015-01-01'
--11
select count(*), Sum(Q.Estimation), AVG(Q.Estimation)
from HomePro.Customers C
	join HomePro.Quotes Q
		on C.CustomerId = Q.CustomerId 
	join HomePro.Schedules S
		on C.CustomerId =  S.CustomerId
where S.JobType ='Remodeling' and Q.Estimation < 5000 and C.Age < 70


--Schema Bank
--12
select C.FirstName, C.LastName, C.Phone, C.Email, C.State, C.Age, A.Balance
from Bank.Clients C
	join Bank.Accounts A
	on C.ClientId = A.ClientId 
where A.Type = 'CHECKING'
--13
select distinct C.FirstName, C.LastName, C.Phone, C.Email, C.State, C.Age, A.Balance, A.Type 
from Bank.Clients C
	join Bank.Accounts A
	on C.ClientId = A.ClientId 
where A.Type = 'CHECKING'or A.Type = 'credit'
--14
select C.FirstName, C.LastName, C.Phone, C.Email, C.State, C.Age, Acr.Balance, Acr.Type, Ach.Balance, Ach.Type 
from Bank.Clients C
	join Bank.Accounts Acr
	on C.ClientId = Acr.ClientId 
	join Bank.Accounts Ach
	on C.ClientId = Ach.ClientId 
where Ach.Type = 'CHECKING' 
	and Acr.Type = 'CREDIT'
--15
select Sum(Balance) as 'Summary balance for private customers'
from Bank.Clients C
	join Bank.Accounts A
	on C.ClientId = A.ClientId
where C.Type = 'Private'
--16
select C.FirstName, C.LastName, C.Phone, C.Email, C.State, C.Age, T.Amount, T.Status, T.TransactionTime
from Bank.Accounts A
	join  Bank.Clients C
		on A.ClientId = C.ClientId
	join Bank.Transactions T
		on A.AccountNum = T.AccountNumFrom
where T.Status = 'pending'
--17
select C.FirstName, C.LastName, C.Phone, C.Email, C.State, C.Age, A.Balance, A.Type, T.Amount, T.Status, T.TransactionTime
from Bank.Accounts A
	join  Bank.Clients C
	on A.ClientId = C.ClientId
	join Bank.Transactions T
	on A.AccountNum = T.AccountNumFrom
where T.Status = 'rejected'
--18
select C.FirstName, C.LastName, C.Phone, C.Email, C.State, C.Age, A.Balance, A.Type, T.Amount, T.Status, T.TransactionTime
from Bank.Accounts A
	join  Bank.Clients C
		on A.ClientId = C.ClientId
	join Bank.Transactions T
		on A.AccountNum = T.AccountNumFrom
where T.TransactionTime > '2015-12-31'
--19
select C.FirstName, C.LastName, C.Phone, C.Email, C.State, C.Age, A.Balance, A.Type, T.Amount, T.Status, T.TransactionTime
from Bank.Accounts A
	join  Bank.Clients C
		on A.ClientId = C.ClientId
	join Bank.Transactions T
		on A.AccountNum = T.AccountNumTo
where A.Type = 'credit'
--20
select C.FirstName, C.LastName, C.Phone, C.Email, C.State, C.Age, A.Balance, A.Type, T.TransactionId
from Bank.Accounts A
	join  Bank.Clients C
		on A.ClientId = C.ClientId
	left join Bank.Transactions T
		on A.AccountNum = T.AccountNumFrom
where T.TransactionId is NULL
--21
select A.AccountNum, Count(T.AccountNumFrom) as 'Number of transactions', sum(T.Amount) as Sumarry
from Bank.Accounts A
	join  Bank.Clients C
		on A.ClientId = C.ClientId
	join Bank.Transactions T
		on A.AccountNum = T.AccountNumFrom
where C.Age > 20
group  by A.AccountNum
--22
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

