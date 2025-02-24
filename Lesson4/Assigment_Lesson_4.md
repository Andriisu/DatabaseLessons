# Assigments: Lesson 4.

## Schema HomePro

### Stored procedures

1. Create the Stored procedure to get list of all customers. 
<br>
Name: <b>HomePro.GetAllCustomers_&lt;YourName&gt;</b>.
Execute and validate result:

```sql
	Exec HomePro.GetAllCustomers_<YourName>
```	
	
2. Create the procedure to get list of customers without schedules. 
<br>
Name: <b>HomePro.GetCustomersNoSchedule_&lt;YourName&gt;</b>
<br>
List of columns: <b>CustomerId,FirstName,LastName,Email,Phone,ZipCode,Age</b>
<br>
Execute and validate result: 

```sql
	Exec HomePro.GetCustomersNoSchedule_<YourName>
```	
	
3. Create procedure to get list of customers who is older than given age.
<br>
Name: <b>HomePro.GetCustomersByAge_&lt;YourName&gt;</b>
<br>
Parameter: <b>@Age int</b>
<br>
List of columns: <b>CustomerId,FirstName,LastName,Email,Phone,ZipCode, Age</b>
<br>
Execute procedure with 3 different Age values and validate result: 

```sql
	EXEC HomePro.GetCustomersByAge_<Name> @Age = 0
	EXEC HomePro.GetCustomersByAge_<Name> @Age = 20
	EXEC HomePro.GetCustomersByAge_<Name> @Age = 200
```
4. Create procedure to get list of customers that have schedules after the given date:
<br>
Name: <b>HomePro.GetSchedulesByDate_&lt;YourName&gt;</b>
<br>
Parameter: <b>@DateNedeed date</b>
<br>
List of columns: <b>CustomerId,FirstName,LastName,Email,Phone,ZipCode,Age</b>
<br>
Call the procedure with 3 different parameters on order the test data validation and compare the result

```sql
	EXEC HomePro.GetSchedulesByDate_<YourName> @DateNedeed = '2000-12-31'
	EXEC HomePro.GetSchedulesByDate_<YourName> @DateNedeed = '2012-10-21'
	EXEC HomePro.GetSchedulesByDate_<YourName> @DateNedeed = '2015-10-01'
```
5. Add validation to stored procedure <b>HomePro.GetCustomersByAge_&lt;YourName&gt;</b> to verify parameter <b>@Age</b> contain the proper value between 10 and 100. Call the SP with 3 different parameters:

```sql
	EXEC HomePro.GetCustomersByAge_<Name> @Age = 0
	EXEC HomePro.GetCustomersByAge_<Name> @Age = 20
	EXEC HomePro.GetCustomersByAge_<Name> @Age = 200
```
6. Add validation to procedure <b>HomePro.GetSchedulesByDate_&lt;YourName&gt;</b>.
The procedure must verify that parameter <b>@DateNedeed</b> is in range <b>between '2010-01-01' and '2020-01-10'</b>

Call the SP with 4 different parameters on order the test data validation and compare the result

```sql
	EXEC HomePro.GetSchedulesByDate_<YourName> @DateNedeed = '2000-12-31'
	EXEC HomePro.GetSchedulesByDate_<YourName> @DateNedeed = '2012-10-21'
	EXEC HomePro.GetSchedulesByDate_<YourName> @DateNedeed = '2015-10-01'
	EXEC HomePro.GetSchedulesByDate_<YourName> @DateNedeed = '2020-10-01'
```


## Schema Bank

### Stored procedures

1. Create and test the procedure to get list of all clients. 
<br>
Name: <b>Bank.GetAllClients_&lt;YourName&gt;</b>
<br>
List of columns: <b>ClientId,FirstName,LastName,Phone,Email,State,Age,Type</b>
<br>
Execute and validate result: 

```sql
	Exec Bank.GetAllClients_<YourName>;
```

2. Create and test procedure to get list of customers without Account. 
<br>
Name: <b>Bank.GetClientsNoAccount_<YourName&gt;</b>
<br>
List of columns: <b>ClientId,FirstName,LastName,Phone,Email,State,Age,Type</b>

```sql
	Exec Bank.GetClientsNoAccount_<YourName>;
```

3. Create the procedure to get list of customers who is in given range of age. 
<br>
Name: <b>Bank.GetClientsByAge_&lt;YourName&gt;</b>
<br>
Parameters: <b>@AgeBegin int, @AgeEnd int</b>
<br>
Call the procedure with 3 different parameters:

```sql
	EXEC HomePro.GetCustomersByAge_<Name> @AgeBegin = 0, @AgeEnd = 50 
	EXEC HomePro.GetCustomersByAge_<Name> @AgeBegin = 20, @AgeEnd = 50 
	EXEC HomePro.GetCustomersByAge_<Name> @AgeBegin = 50, @AgeEnd = 40 
```
4. Add parameter verification to the procedure <b>Bank.GetClientsByAge&lt;YourName&gt;</b>.
<br>
The parameters <b>@AgeBegin and @AgeEnd</b> must be in the allowed range, which is between 18 and 100 and that <b>@AgeBegin > @AgeEnd</b>
<br>
Call the procedure with 3 different parameters:

```sql
	EXEC HomePro.GetCustomersByAge_<Name> @AgeBegin = 0, @AgeEnd = 50 
	EXEC HomePro.GetCustomersByAge_<Name> @AgeBegin = 20, @AgeEnd = 50 
	EXEC HomePro.GetCustomersByAge_<Name> @AgeBegin = 50, @AgeEnd = 40 
```

5. Create procedure to get list of clients with given account type:
<br>
Name: <b>Bank.GetClientsWithAccount_&lt;YourName&gt;</b>
<br>
Parameter: <b>@AccountType CHAR(10)</b>
<br>
Account Type must be one of: 'CHECKING', 'CREDIT', 'SAVING'. 
<br>
The procedure must verify the parameter value. 
<br>
List of columns: <b>ClientId,FirstName,LastName,Phone,Email,State,Age,Type</b>

```sql
	EXEC Bank.GetClientsWithAccount_<YourName> @AccountType = 'CHECKING'
	EXEC Bank.GetClientsWithAccount_<YourName> @AccountType = 'CREDIT'
	EXEC Bank.GetClientsWithAccount_<YourName> @AccountType = 'SAVING'
	EXEC Bank.GetClientsWithAccount_<YourName> @AccountType = 'SOMTHING ELSE'
```