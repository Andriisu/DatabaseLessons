# Download and install SQL Server Management Studio
Go to URL: https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms
<br>
Clink on the link highlighted below to download SSMS installation

![./docs/SSMS_download.png](./docs/SSMS_download.png)

As soon as the file downloaded start installation process. During installation you have to push only one button “Install”. 

# First Login

When installation finished go to <b>Start-> Microsoft SQL Server Tools 17->Microsoft SQL Server Management Studio 17</b> and launch SSMS.

![./docs/SSMS_Launch.png](./docs/SSMS_Launch.png)

You will be prompted to fill login information. Please fill the fields as depicted at picture below.
- Server Name: <b>homepro.database.windows.net</b>
- Login: <b>HomeProUser</b>
- Password: <b>qwerty_123</b>
- Push button “Options” for additional options.

![./docs/SSMS_Login1.png](./docs/SSMS_Login1.png)

On tab “Connection Properties” type “Connect to database”: <b>main</b>. 
Push the button “Connect”.

![./docs/SSMS_Login2.png](./docs/SSMS_Login2.png)


## Possible Firewall connection issue.
If you see the message like at the picture below, then you have your IP address blocked by security firewall. 
- Send "My IP address" to via email andrew.a4100@gmail.com. (4 numbers separated by dots).
- As soon as I added your IP address to the whitelist I will respond you.
- After that you will be able to connect to database from home.

![./docs/Firewall.png](./docs/Firewall.png)


# Execute SQL queries

Having successful login you must see picture like below. You can see “Object Explorer” which shows Database main and at least 6 tables: 
- Bank.Accounts 
- Bank.Clients 
- Bank.Transactions 
- HomePro.Customers
- HomePro.Quotes
- HomePro.Schedules,

Push button “New Query” 


![./docs/SSMS_NewQuery.png](./docs/SSMS_NewQuery.png)

Type SQL query like below and the button <b>“Execute”</b>:
	
<b>select * from HomePro.Customers</b>

You should see picture like this.

![./docs/SSMS_RunQuery.png](./docs/SSMS_RunQuery.png)


Congratulations! You have successfully connected to Database, executed SQL query and can proceed with SQL assignments. 
- [Database Schema HomePro](./Lesson1/Schema%20HomePro.pdf)
- [Database Schema Bank](./Lesson1/Schema%20Bank.pdf)
