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

insert into Customers
(CustomerName, ContactName, Address, City, PostalCode, Country)
values('Trump', 'Donald', 'NY','NY', '000', 'us');

-- 테이블 설명 보기
DESC Customers;
desc Employees;

select * from Employees
order by EmployeeID desc;

