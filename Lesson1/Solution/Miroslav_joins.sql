select *
from HomePro.Customers
join HomePro.Schedules
on Customers.CustomerId = Schedules.CustomerId
where DateNeeded > '2015-01-01'
1

select c.FirstName, c.LastName, c.Email, c.Phone, s.Description, q.Estimation
from HomePro.Customers c
join HomePro.Schedules s on c.CustomerId = s.CustomerId
join HomePro.Quotes q on c.CustomerId = q.CustomerId
where Estimation > '500'
2

select c.FirstName, c.LastName, c.Email, c.Phone, c.AltPhone, s.description, q.ID, q.estimation
from HomePro.Customers c
join HomePro.Schedules s on c.CustomerId = s.CustomerId
join HomePro.Quotes q on c.CustomerId = q.CustomerId
where AltPhone is NULL
3

select c.FirstName, c.LastName, c.Email, c.Phone, c.AltPhone, s.description, q.ID, q.estimation
from HomePro.Customers c
join HomePro.Schedules s on c.CustomerId = s.CustomerId
join HomePro.Quotes q on c.CustomerId = q.CustomerId
where DateNeeded between '2016-01-01' and '2016-12-31'
and AltPhone is Null
4

select * from HomePro.Customers
left join HomePro.Quotes on Customers.CustomerId = Quotes.CustomerId
where Quotes.Description not like '%quote%'
5


select * from HomePro.Customers
join HomePro.Schedules on Customers.CustomerId = Schedules.CustomerId
join HomePro.Quotes on Customers.CustomerId = Quotes.CustomerId
where JobType = 'Remodeling' and Estimation < '5000' and Age < '70'
8


select sum(Estimation)
from HomePro.Customers
join HomePro.Quotes on Customers.CustomerId = Quotes.CustomerId
where NewsLetter = '1'
9

select sum(Estimation)
from HomePro.Customers
join HomePro.Quotes on Customers.CustomerId = Quotes.CustomerId
join HomePro.Schedules on Customers.CustomerId = Schedules.CustomerId
where DateNeeded < '2015-01-01'
10

select count (*) , sum (q.Estimation) , Avg (q.Estimation)
from HomePro.Customers c
 join HomePro.Schedules s on c.CustomerId = s.CustomerId
left join HomePro.Quotes q  on c.CustomerId = q.CustomerId
where s.JobType = 'Remodeling'
and q.Estimation < 5000
and c.Age < 70