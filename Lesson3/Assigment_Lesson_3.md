# Assigments: Lesson 3.

## Schema HomePro

### Subqueries

1. Find Customers that are younger than average customer’s age 
2. Find Customers that at least 20 years older than youngest one. 
3. Find Customers and Quotes that have quote bigger than average quote 
4. Find Customers that have quotes (multivalued subqueries) 
5. Find Customers that do NOT have any Quote (multivalued subqueries) 
6. Find Customers that have Schedules and Quotes (multivalued subqueries) 
7. Find Customers that have Schedules but do not have any Quote (multivalued subqueries) 
8. Find Customers that have Scheduled JobType = ‘Remodeling’ and younger than 70. 
9. Using table valued subquery find all Schedules with Jobtype= ‘Remodeling’ combined with Quotes. Join the subquery result with Customers. 
List of output columns (<b>FirstName, LastName, JobType, QuoteDescription, Estimation</b>)
10. Using table valued subquery find all Customers that have letter ‘M” in LastName. Show the list of customers with Scheduled Job if it exists. 


##Schema Bank 

### Subqueries

1. Find Clients that are older than oldest business client 
2. Find Business Clients that older than average all client’s age 
3. Find Clients and Accounts that have balance bigger than average account balance 
4. Find Clients that have credit Account(s) (multivalued subqueries) 
5. Find Clients that do NOT have any saving Account (multivalued subqueries) 
6. Find Clients and Accounts that made at least on payment from that Account (multivalued subqueries) 
7. Find Clients and Accounts that made the biggest payment transaction: max(Amount). 
<b>Note:</b> Double subquery. 
8. Find Clients that have made any payment after 01/01/2016 (TransactionTime > '2016-01-01') and older than 20. 
9. Using table valued subquery find all Accounts combined Payment transactions made after 01/01/2016. Join the subquery result with Clients. 
List of output columns (c.FirstName, c.LastName, subquery.AccountNum, subquery.Balance, subquery.Type, subquery.Amount, subquery.TransactionTime) 
10. Using table valued subquery find all Accounts combined Payment transactions made from checking account. Show all Clients with transactions described bellow if they exist. If transaction does not exist show NULL. 
List of output columns (c.FirstName, c.LastName, subquery.AccountNum, subquery.Balance, subquery.Type, subquery.Amount, subquery.TransactionTime)