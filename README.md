# springboot-security-examples
These examples include both Springboot-Security example using in-memory setup and database setup
## For in-memory Spring security setup:
Run the project as a Java project and hit the below URL in your browser:<br>
http://localhost:8888/SpringSecurityInMemorySetup/

### Login page:
![loginpage](https://github.com/Md-MamunAbdulKayum/springboot-security-examples/blob/master/img/in-memory/loginpage.JPG)

### Invalid Input page:
![invalidinput](https://github.com/Md-MamunAbdulKayum/springboot-security-examples/blob/master/img/in-memory/invalidInput.JPG)

### With Role Employee and Admin page:
![emaployeeandadmin](https://github.com/Md-MamunAbdulKayum/springboot-security-examples/blob/master/img/in-memory/withRoleEmployeeAndAdmin.JPG)

### With Role Employee and Hr-Manager page:
![emaployeeandadmin](https://github.com/Md-MamunAbdulKayum/springboot-security-examples/blob/master/img/in-memory/withRoleEmployeeAndHrManager.JPG)

### With Role Employee and Manager page:
![withRoleEmployeeAndManager](https://github.com/Md-MamunAbdulKayum/springboot-security-examples/blob/master/img/in-memory/withRoleEmployeeAndManager.JPG)

### Logout page:
![logoutpage](https://github.com/Md-MamunAbdulKayum/springboot-security-examples/blob/master/img/in-memory/logout.JPG)

## For Database-JDBC Spring security setup:
Run the project as a Java project and hit the below URL in your browser:<br>
http://localhost:8889/SpringSecurityInMemorySetup/

Before runing the project, run the sql script springsectest.sql. I have used maria DB.
I have several users for testing the security:

## user             pass <br>
mamun            mamun111 <br>
sourav           sourav111 <br>
kayum            kayum111 <br>
sourav           sourav111 <br>
abraham          abraham111 <br>

I have used https://www.devglan.com/online-tools/bcrypt-hash-generator  to generate Bcrypt encrypted password and saved to the database. Spring security by default uses Bcrypt, so we will be entering plain text as password in the password field, Spring will generate Bcrypt encrypted password and will match the password with database's password. 

