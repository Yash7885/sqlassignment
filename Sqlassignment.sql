create table Customers
(
Customername varchar(30),
Customerid int,
city varchar(30),
postalcode bigint,
constraint pk_cusid primary key (Customerid),
country varchar(30)

);


insert into customers values('yash','444','pune','411008','india'),
('omakr','333','mumbai','411011','india'),
('vinay','222','banglore','411012','india'),
('yash','555','pune','411013','india'),
('vijay','616','jaipur','411014','india'),
('kishor','212','kolhapur','411011','india'),
('ram','777','solapur','411011','india'),
('artharva','818','london','411011','uk'),
('shriram','23','berlin','121110','germany'),
('rexy','44','olso','330099','newyork');

insert into customers values('mithun','55','bergen','311011','Norway');



select city from customers;

select distinct city from customers;


-- Use the NOT keyword to select all records where City is NOT "Berlin".
-- Select all records where the CustomerID column has the value 23.
select * from customers where Customerid =23;
-- Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
select * from customers where city='berlin' and postalcode=121110;
-- Select all records where the City column has the value 'Berlin' or 'London'.
select * from customers where city='berlin' or city='london';
-- Select all records from the Customers table, sort the result alphabetically by the column City.
 select * from Customers order by city;

-- Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select * from customers order by city desc;
-- Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
select * from Customers order by country,city;
-- Select all records from the Customers where the PostalCode column is empty.
    update Customers set postalcode=null where Customerid =44;
    select * from customers where postalcode is  null;
-- Select all records from the Customers where the PostalCode column is NOT empty.
  select * from customers where postalcode is not null;
-- Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
update Customers set city='oslo' where country='Norway';
-- Delete all the records from the Customers table where the Country value is 'Norway'.
delete from customers where country='Norway';
-- Use the MIN function to select the record with the smallest value of the Price column.
 select min(price) as 'small value' from products;
-- Use an SQL function to select the record with the highest value of the Price column.
select max(price) as 'max price' from products;
-- Use the correct function to return the number of records that have the Price value set to 20
select count(*) from products where price=3000;
-- Use an SQL function to calculate the average price of all products.
select avg(price) as 'averageprice' from products;
-- Use an SQL function to calculate the sum of all the Price column values in the Products table
select sum(price) as 'sumofproducts' from products;
-- Select all records where the value of the City column starts with the letter "a".
select * from customers where city like '%p';
-- Select all records where the value of the City column ends with the letter "a".
select * from customers where city like 'p%';
-- Select all records where the value of the City column contains the letter "a".
select * from customers where city like '%p%';
-- Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
  select * from customers where city like 'b%e';

-- Select all records where the value of the City column does NOT start with the letter "a".
select * from customers where city not like 'b%';
-- Select all records where the second letter of the City is an "a".
select * from customers where city like '_a%';

-- Select all records where the first letter of the City is an "a" or a "c" or an "s".
 select * from Customers where city like 'a%' or city like 'c%' or city like 's%';
-- Select all records where the first letter of the City starts with anything from an "a" to an "f".
select *from customers where city like 'a%'or city like 'b%';
-- Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".

-- Use the IN operator to select all the records where the Country is either "Norway" or "France".
select * from Customers where Country in ('Norway','france');
-- Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
select * from Customers where Country not in ('Norway','France');
-- Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
select * from products where price between 2000 and 6000;
-- Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
select * from products where price not between 2000 and 5000;
-- Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
select * from products where product between 'mobile' and 'tv';
-- When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
select postalcode as pno from customers;
-- When displaying the Customers table, refer to the table as Consumers instead of Customers.
select * from customers as Consumers;
-- List the number of customers in each country.
select country,count(*) as 'Consumer count' from customers group by country;
-- List the number of customers in each country, ordered by the country with the most customers first.
select country , count(*) as 'Consumercount' from customers group by country order by Consumercount desc ;
-- Write the correct SQL statement to create a new database called testDB.
create database testbd;
-- Write the correct SQL statement to delete a database named testDB
drop database testbd;
-- Add a column of type DATE called Birthday in Persons table
alter table persons add Birthady date;
-- Delete the column Birthday from the Persons table
alter table persons drop column Birthady;



create table persons
(
age int


);






create table products
(
product varchar(30),
price int



);


alter table products add productid int;
insert into products values('mobile',2000,101),
('tv',4000,102),
('washing machine',5000,103),
('pc',3000,203),
('laptop',6000,403),
('ipad',2500,104),
('mobile',4000,105),
('headphone',2000,106);

select * from products where price;



