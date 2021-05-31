SELECT * FROM Customers WHERE Country='Mexico';
select * from Customers Where CustomerID=1;
SELECT * FROM Products
WHERE Price = 18;
select * from Products where Price >30;
Select * From Products Where Price <30;
select * from Products Where Price >= 30;
select * from Products Where Price <= 30;
Select * from Products Where Price <> 18;
select * from Products Where Price between 50 and 60;
select * from Customers
Where City like 's%';
select * from Customers
where City like '%g';
select * from Customers Where City LIKE '%z%';
select * from Customers Where COuntry LIKE '%us%';
Select * from Customers where City in ("Paris","Berlin");
select * from Customers where City in ('Paris','London');

select * from Customers where City != 'Berlin';
select * from Customers where not City = 'Berlin';
select * from Customers where NOT City LIKE '%on';

select * from Customers where CustomerID = 32;

select * from Customers Where Country = 'Germany' AND City = 'Berlin';
Select * from Customers Where City = 'Berlin' or city = 'München';
select * from Customers Where Country = 'Germany' or 
(CustomerName LIKE '%s%' AND City LIKE '%ch%');
select * from Customers
where not Country='Germany' AND NOT Country='USA';
select * from Customers where City = "Berlin" and PostalCode=12209;
select * from Customers where City ='Berlin' or City = 'London';