# Assigments: Lesson 4.

## Schema HomePro

### Stored procedures

1. Find Customers that are younger than average customer’s age 
2. Find Customers that at least 20 years older than youngest one. 
3. Find Customers and Quotes that have quote bigger than average quote 
4. Find Customers that have quotes (multivalued subqueries) 
5. Find Customers that do NOT have any Quote (multivalued subqueries) 
6. Find Customers that have Schedules and Quotes (multivalued subqueries) 
7. Find Customers that have Schedules but do not have any Quote (multivalued subqueries) 
8. Find Customers that have Scheduled JobType = ‘Remodeling’ and younger than 70. 
9. Using table valued subquery find all Schedules with Jobtype= ‘Remodeling’ combined with Quotes. Join the subquery result with Customers.
-	List of output columns (<b>FirstName, LastName, JobType, QuoteDescription, Estimation</b>)
10. Using table valued subquery find all Customers that have letter ‘M” in LastName. Show the list of customers with Scheduled Job if it exists.


1. Create the Stored procedure to get list of all customers. 
-	Name: HomePro.GetAllCustomers_<YourName>.
Execute and validate result: 
	Exec HomePro.GetAllCustomers_<YourName>
	
2. Create the procedure to get list of customers without schedules. 
-	Name: HomePro.GetCustomersNoSchedule_<YourName>
List of columns: CustomerId,FirstName,LastName,Email,Phone,ZipCode,Age
Execute and validate result: 

	Exec HomePro.GetCustomersNoSchedule_<YourName>
	
3. Create procedure to get list of customers who is older than given age.
Name: HomePro.GetCustomersByAge_<YourName>
Parameter: @Age int
List of columns: CustomerId,FirstName,LastName,Email,Phone,ZipCode, Age
Execute SP with 3 different Age values and validate result: 
a. EXEC HomePro.GetCustomersByAge_<Name> @Age = 0
b. EXEC HomePro.GetCustomersByAge_<Name> @Age = 20
c. EXEC HomePro.GetCustomersByAge_<Name> @Age = 200
4. Create procedure to get list of customers that have schedules after the given date:
Name: HomePro.GetSchedulesByDate_<YourName>
Parameter: @DateNedeed date
List of columns: CustomerId,FirstName,LastName,Email,Phone,ZipCode,Age
Call the SP with 3 different parameters on order the test data validation and compare the result
• @DateNedeed = ‘2000-12-31’
• @DateNedeed = ‘2012-10-21’
• @DateNedeed = ‘2015-10-01’
5. Add validation to stored procedure HomePro.GetCustomersByAge_<YourName> that 
parameter @Age contains Proper value. Call the SP with 3 different parameters:
a. EXEC HomePro.GetCustomersByAge_<Name> @Age = 0
b. EXEC HomePro.GetCustomersByAge_<Name> @Age = 20
c. EXEC HomePro.GetCustomersByAge_<Name> @Age = 200
6. Add validation to procedure HomePro.GetSchedulesByDate_<YourName>
The procedure must verify that parameter is in allowed range. Say between ‘2010-01-01’ and 
‘2020-01-10’.
2
Call the SP with 3 different parameters on order the test data validation and compare the result
• @DateNedeed = ‘2000-12-31’
• @DateNedeed = ‘2012-10-21’
• @DateNedeed = ‘2015-10-01


Database Bank
1. Create and test the procedure to get list of all clients. 
Name: Bank.GetAllClients_<YourName>
List of columns: ClientId,FirstName,LastName,Phone,Email,State,Age,Type
Execute and validate result: 
Exec Bank.GetAllClients_<YourName>
2. Create and test procedure to get list of customers without Account. 
Name: Bank.GetClientsNoAccount_<YourName>
List of columns: ClientId,FirstName,LastName,Phone,Email,State,Age,Type
3. Create the procedure to get list of customers who is in given range of age. 
Name: Bank.GetClientsByAge_<YourName>
Parameters: @AgeBegin int, @AgeEnd int
Call the SP with 3 different parameters:
a. EXEC HomePro.GetCustomersByAge_<Name> @AgeBegin = 0, @AgeEnd = 50 
b. EXEC HomePro.GetCustomersByAge_<Name> @AgeBegin = 20, @AgeEnd = 50 
c. EXEC HomePro.GetCustomersByAge_<Name> @AgeBegin = 50, @AgeEnd = 40 
4. Add parameter verification to the procedure. Bank.GetClientsByAge_<YourName>.
The parameters @AgeBegin and @AgeEnd must be in the allowed range, which is between 18 
and 100 and that @AgeBegin > @AgeEnd
Call the SP with 3 different parameters:
a. EXEC HomePro.GetCustomersByAge_<Name> @AgeBegin = 0, @AgeEnd = 50 
b. EXEC HomePro.GetCustomersByAge_<Name> @AgeBegin = 20, @AgeEnd = 50 
c. EXEC HomePro.GetCustomersByAge_<Name> @AgeBegin = 50, @AgeEnd = 40 
5. Create procedure to get list of clients with given account type:
Name: Bank.GetClientsWithAccount_<YourName>
Parameter: @AccountType CHAR(10)
Account Type must be one of: “CHECKING”, “CREDIT”, “SAVING”. 
The procedure must verify the parameter value. 
List of columns: ClientId,FirstName,LastName,Phone,Email,State,Age,Typ