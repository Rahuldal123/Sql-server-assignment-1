create table Customer(
CustomerId int identity (101,1) primary key,
City varchar(40),
Country varchar(40),
Postalcode int
)
create table Products(
productId int primary key identity(1,1),
productname varchar(50),
price int
)
insert into Products values ('vaccume cleaner',3999)
insert into Products values ('bluetooth speakers',1999)
insert into Products values ('Security camera',2599)
insert into Products values ('wireless mouse',999)
insert into Products values ('Refrigerator',19999)
alter table Customer alter column Postalcode varchar(40) null 
alter table Customer alter column Postalcode varchar(40)
select * from Customer
insert into Customer values ('Pune','India',411002)
insert into Customer values ('Nagpur','India',411002)
insert into Customer values ('Mumbai','India',440001)
insert into Customer values ('London','United Kingdom','SE1')
insert into Customer values ('Leyton','United Kindome','E10')
insert into Customer values ('Berlin','Germany',10115)
insert into Customer values ('Berlin','Germany',10117)
insert into Customer values ('Berlin','Germany',10119)
insert into Customer values ('Berlin','Germany',10178)
insert into Customer values ('Newyork','United states')
insert into Customer values ('Chicago','united states')
insert into Customer values ('Bergin','Norway',5003)
insert into Customer values ('Stavanger','Norway',4001)
update Customer set Country='United Kingdome'where Postalcode='SE1'

--Write a statement that will select the City column from the Customers table
select City from Customer

--Select all the different values from the Country column in the Customers table.
select Country from Customer group by Country
--Select all records where the City column has the value "London"
select * from Customer where city='london'
--Use the NOT keyword to select all records where City is NOT "Berlin".
select * from Customer where not city='Berlin'
--Select all records where the CustomerID column has the value 106
select * from Customer where CustomerId =106
--Select all records where the City column has the value 'Berlin' and 
--the PostalCode column has the value 10117.
select * from Customer where city='Berlin' and Postalcode=10117
--Select all records where the City column has the value 'Berlin' or 'London'.
select * from Customer where city='Berlin'or City='London'
--Select all records from the Customers table, sort the result alphabetically by the column City.
select * from Customer order by City
--Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select * from Customer order by City Desc
--Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
select * from Customer order by Country 
select * from Customer Order by City
--Select all records from the Customers where the PostalCode column is empty.
select * from Customer where Postalcode is null
--Select all records from the Customers where the PostalCode column is NOT empty.
select * from Customer where Postalcode is not null
--Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
update Customer set City='Oslo'where Country='Norway'and CustomerId=113
--Delete all the records from the Customers table where the Country value is 'Norway'.
delete from  Customer where Country='Norway'
--Use the MIN function to select the record with the smallest value of the Price column.
select min (price) from Products
--Use an SQL function to select the record with the highest value of the Price column.
select max(Price) from Products
--Use the correct function to return the number of records that have the Price value set to 3999
select * from Products where price=3999
--Use an SQL function to calculate the average price of all products.
select avg(price) from Products
--Use an SQL function to calculate the sum of all the Price column values in the Products table
select sum(price)from Products
--Select all records where the value of the City column starts with the letter "L".
select * from Customer where City like'L%'
--Select all records where the value of the City column ends with the letter "a".
select * from Customer where City like '%n'
--Select all records where the value of the City column contains the letter "a".
select * from Customer where city like '%a%'
--Select all records where the value of the City column starts with letter "m" and ends with the letter "i".
select * from Customer where city like 'm%i'
--Select all records where the value of the City column does NOT start with the letter "a".
select * from Customer where City not like 'a%'
--Select all records where the second letter of the City is an "u".
select * from customer where city like '_u%'
--Select all records where the first letter of the City is an "a" or a "c" or an "s".
select * from Customer where city like '[pml]%'
--Select all records where the first letter of the City starts with anything from an "a" to an "l".
select * from customer where city like '[a-l]%'
--Select all records where the first letter of the City is NOT an "p" or a "n" or an "b".
select  * from customer where city not like '[pnb]%'
--Use the IN operator to select all the records where the Country is either "Germany" or "India".
select * from Customer where Country in('Germany','India')
--Use the IN operator to select all the records where Country is NOT "India" and NOT "Germany".
select * from customer where  Country  not  in ('India','Germany') 
--Use the BETWEEN operator to select all the records where the value of the Price column is between 3000 and 20000
select * from products  where Price between 3000 and 20000
--Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 3000 and 20000.
select * from products  where Price not between 3000 and 20000
--Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'bluetooth speaker' and 'vaccume cleaner'.
select * from products where productname between 'bluetooth speakers' and 'vaccume cleaner'order by productname
--When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
select CustomerId,City,Country,Postalcode as Pno from customer 
--When displaying the Customers table, refer to the table as Consumers instead of Customers.
select CustomerId,City,Country,Postalcode  from customer as consumer
--List the number of customers in each country.
select count(CustomerId)as Customers,Country from customer group by Country
--List the number of customers in each country, ordered by the country with the most customers first.
select count(CustomerId)as Customers,Country from customer group by Country
--Write the correct SQL statement to create a new database called testDB.
create database testdb
--Write the correct SQL statement to delete a database named testDB
drop database testdb
--Add a column of type DATE called Birthday in Persons table
alter table tblperson add Birthday varchar(30)
--Delete the column Birthday from the Persons table
alter table tblperson drop column birthday 
select * from tblperson