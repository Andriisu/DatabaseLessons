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