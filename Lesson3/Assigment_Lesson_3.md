# Assigments: Lesson 3.

## Schema HomePro

### Subqueries

1. Find Customers that are younger than average customer’s age
2. Find Customers that at least 20 years older than youngest one 
3. Find Customers and Quotes that have quote bigger than average quote 
4. Find Customers that have quotes (<i>multivalued subqueries</i>) 
5. Find Customers that do NOT have any Quote (<em>multivalued subqueries</em>) 
6. Find Customers that have Schedules and Quotes (<i>multivalued subqueries</i>) 
7. Find Customers that have Schedules but do not have any Quote (<i>multivalued subqueries</i>) 
8. Find Customers that have Scheduled <b>JobType = 'Remodeling'</b> and younger than 70. 
9. Using table valued subquery find all Schedules with <b>Jobtype= 'Remodeling'</b> combined with Quotes. Join the subquery result with Customers.
<br>List of output columns (<b>FirstName, LastName, JobType, QuoteDescription, Estimation</b>)
10. Using table valued subquery find all Customers that have letter 'M' in <b>LastName</b>. Show the list of customers with Scheduled Job if it exists.

## Schema Bank 

### Subqueries

1. Find Clients that are older than oldest business client 
2. Find Business Clients that older than average all client’s age 
3. Find Clients and Accounts that have balance bigger than average account balance 
4. Find Clients that have credit Account(s) (<i>multivalued subqueries</i>) ) 
5. Find Clients that do NOT have any saving Account (<i>multivalued subqueries</i>)  
6. Find Clients and Accounts that made at least on payment from that Account (<i>multivalued subqueries</i>) 
7. Find Clients and Accounts that made the biggest payment transaction: max(Amount). (<i>Double subquery</i>) 
8. Find Clients that have made any payment after 01/01/2016 (<b>TransactionTime > '2016-01-01'</b>) and older than 20. 
9. Using table valued subquery find all Accounts combined Payment transactions made after 01/01/2016. Join the subquery result with Clients.
<br>List of output columns (<b>c.FirstName, c.LastName, subquery.AccountNum, subquery.Balance, subquery.Type, subquery.Amount, subquery.TransactionTime</b>) 
10. Using table valued subquery find all Accounts combined Payment transactions made from checking account. Show all Clients with transactions described bellow if they exist. If transaction does not exist show NULL.
<br>List of output columns (<b>c.FirstName, c.LastName, subquery.AccountNum, subquery.Balance, subquery.Type, subquery.Amount, subquery.TransactionTime</b>)