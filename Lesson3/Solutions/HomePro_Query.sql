--1
select * from HomePro.Customers
where age <
	(select avg(age) from HomePro.Customers)

--2
select * from HomePro.Customers
where age >
	(select min(age) from HomePro.Customers) + 20

--3
select * from HomePro.Customers C 
	join HomePro.Quotes q
on c.CustomerId = q.CustomerId
where q.Estimation >	
		(select avg(Estimation) from HomePro.Quotes)

--4
select c.CustomerId, c.FirstName, c.LastName, Dateneeded
from HomePro.Customers c
join HomePro.Schedules s on c.CustomerId = s.CustomerId
where  Dateneeded = 
	( select Min(Dateneeded) from HomePro.Schedules)


--4
select * from HomePro.Customers 
where CustomerId in 
	(select CustomerId from HomePro.Quotes)
--5
select * from HomePro.Customers 
where CustomerId not in 
	(select CustomerId from HomePro.Quotes)

--6
select * from HomePro.Customers 
where CustomerId in 
	(select CustomerId from HomePro.Schedules)
and CustomerId in 
	(select CustomerId from HomePro.Quotes)

--7	
select * from HomePro.Customers 
where CustomerId in 
	(select CustomerId from HomePro.Schedules)
and CustomerId not in 
	(select CustomerId from HomePro.Quotes)

--8
select * from HomePro.Customers 
where CustomerId in 
	(select CustomerId from HomePro.Schedules where JobType = 'remodeling')
	and Age < 70 

--9
select c.FirstName, c.LastName, subquery.JobType, subquery.QuoteDescription, subquery.Estimation  
from
HomePro.Customers C
join 
	(
		select s.CustomerId, s.JobType , Q.Description as QuoteDescription, q.Estimation
		from HomePro.Schedules S
				join HomePro.Quotes q on s.CustomerId = q.CustomerId 
		where s.JobType = 'remodeling'
	) as subquery
on c.CustomerId = subquery.customerId	

--10

select *
from (
		select * from HomePro.Customers 
		where LastName like '%m%'
		) subquery
	left join HomePro.Schedules S
		on subquery.CustomerId = s.CustomerId