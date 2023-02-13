
--1
select * from Bank.Clients
where age >
	(select max(age) from Bank.Clients where Type ='Business')

--2
select * from Bank.Clients
where age >
	(select avg(age) from HomePro.Customers)
 and Type ='Business'

--3
select * from Bank.Clients C
	join Bank.Accounts a on c.ClientId = a.ClientId
where a.Balance >	
		(select avg(Balance) from Bank.Accounts )

--4
select * from Bank.Clients 
where ClientId in 	
	(select ClientId from Bank.Accounts where Type = 'Credit' )
--5
select * from Bank.Clients 
where ClientId not in 	
	(select ClientId from Bank.Accounts where Type = 'saving' )

--6
select * from Bank.Clients c 
	join Bank.Accounts a on c.ClientId = a.ClientId
where a.AccountNum in 	
	(select AccountNumFrom from Bank.Transactions)

--7	
select * from Bank.Clients c 
	join Bank.Accounts a on c.ClientId = a.ClientId
where a.AccountNum in 	
	(
	select AccountNumFrom from Bank.Transactions
	where Amount = 
		(select max(Amount) from Bank.Transactions)
	)

--8
select * from Bank.Clients c 
where ClientId in 	
	(select a.ClientId from Bank.Accounts a
		join Bank.Transactions t on a.AccountNum = t.AccountNumFrom
	where TransactionTime > '2016-01-01')
and Age >20 

--9
select c.FirstName, c.LastName, subquery.AccountNum, subquery.Balance, subquery.Type, subquery.Amount, subquery.TransactionTime
fromBank.Clients c 
join 
	(
	select a.ClientId, A.AccountNum, a.Balance, a.Type, t.Amount, T.TransactionTime
	from Bank.Accounts a
		join Bank.Transactions t on a.AccountNum = t.AccountNumFrom
	) as subquery
on c.ClientId = subquery.ClientId	

--10
select c.FirstName, c.LastName, subquery.AccountNum, subquery.Balance, subquery.Type, subquery.Amount, subquery.TransactionTime
fromBank.Clients c 
left join 
	(
	select a.ClientId, A.AccountNum, a.Balance, a.Type, t.Amount, T.TransactionTime
	from Bank.Accounts a
		join Bank.Transactions t on a.AccountNum = t.AccountNumFrom
	where a.Type = 'Checking'
	) as subquery
on c.ClientId = subquery.ClientId