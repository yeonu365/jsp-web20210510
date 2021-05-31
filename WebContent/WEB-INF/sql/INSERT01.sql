select * from Customers
order by CustomerID desc;

insert into Customers 
(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
values(92, 'kim', 'lee', 'Gangnam', 'Seoul', '00000', 'Korea');

insert into Customers
values(94, 'choi', 'hong', 'Gangnam', 'Seoul', '00000', 'Korea');

insert into Customers
(CustomerID, CustomerName, ContactName)
values (95, 'Back', 'Seoul');
