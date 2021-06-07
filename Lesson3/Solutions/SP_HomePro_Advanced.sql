-- Task 1
create procedure HomePro.GetAllCustomers_Andrey
as
begin
	select CustomerId, FirstName, LastName, Email
	from HomePro.Customers
end
go
--Task 2
create procedure HomePro.GetCustomersNoSchedule_Andrey
as
begin
	select c.CustomerId, c.FirstName, c.LastName, c.Email, c.Phone, c.ZipCode, c.Age
	from HomePro.Customers c
		left join HomePro.Schedules s
			on c.CustomerId = s.CustomerId
	where s.CustomerId is null
end
go
--task 3
create procedure HomePro.GetCustomerByAge_Andrey
	@age int 
as
begin
	select * 
	from HomePro.Customers
	where Age > @age 
end
go
--task 4
create procedure HomePro.GetSchedulesByDate_Andrey
	@DateNedeed date
as
begin
	select *
	from HomePro.Customers c
	     join HomePro.Schedules s
		on c.CustomerId = s.CustomerId
	where s.DateNeeded > @DateNedeed
end
go
--task 5
create procedure HomePro.GetCustomerByAge_Andrey
	@age int 
as
begin
	if ( @Age<10 or @age> 100)
	begin
		raiserror('parameter Age is incorrect',16,10)
		return 
	end

	select * 
	from HomePro.Customers
	where Age > @age 
end
go 
--Task 6
create procedure HomePro.GetSchedulesByDate_Andrey
	@DateNedeed date
as
begin
	if ( @DateNedeed < '2010-01-01'  or @DateNedeed > '2020-01-01')
	begin
		raiserror('parameter @DateNedeed is incorrect',16,10)
		return 
	end

	select *
	from HomePro.Customers c
	     join HomePro.Schedules s
		on c.CustomerId = s.CustomerId
	where s.DateNeeded > @DateNedeed
end
go

