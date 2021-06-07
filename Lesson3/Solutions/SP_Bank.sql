--Task 1
create procedure Bank.GetAllClients_Andrey
as
begin
	select ClientId,FirstName,LastName,Phone,Email,State,Age,Type
	from Bank.Clients
end
go
--Task 2
create procedure Bank.GetClientsNoAccount_Andrey
as
begin
	select c.ClientId, c.FirstName,c.LastName,c.Phone,c.Email,c.State,c.Age,c.Type
	from Bank.Clients C
		left join Bank.Accounts A
		on C.ClientId = a.ClientId
	where a.ClientId is null
end
go
--Task 3
create procedure Bank.GetClientsByAge_Andrey
	@AgeBegin int, @AgeEnd int 
as
begin
	select *
	from Bank.Clients C
	where Age between @AgeBegin and @AgeEnd
end
go
--Task 4
create procedure Bank.GetClientsByAge_Andrey
	@AgeBegin int, @AgeEnd int 
as
	if ( @AgeBegin < 18  or @AgeBegin > 10 or 
		 @AgeEnd < 18  or @AgeEnd > 10 or 
		 @AgeBegin > @AgeEnd)
	begin
		raiserror('The Parameter @AgeBegin or @AgeEnd is incorrect',16,10)
		return 
	end

begin
	select *
	from Bank.Clients C
	where Age between @AgeBegin and @AgeEnd
end
go
--Task 5
create procedure Bank.GetClientsWithAccount_Andrey
	@AccountType CHAR(10)
as
begin
	if ( @AccountType not in ('CHECKING', 'CREDIT', 'SAVING'))
	begin
		raiserror('The parameter @AccountType is incorrect',16,10)
		return 
	end

	select *
	from Bank.Clients C
		join Bank.Accounts A
		on C.ClientId = a.ClientId
	where a.Type = @AccountType
end
go
