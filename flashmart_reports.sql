create database if not exists flashmart_db;
use flashmart_db;

create table Customers(
    customer_id int primary key,
    name varchar(50)
);

create table Products(
    product_id int primary key,
    product_name varchar(50)
);

create table Orders(
    order_id int primary key,
    customer_id int,
    product_id int
);

insert into Customers values
(1,'Alice'),
(2,'Bob'),
(3,'Charlie');

insert into Products values
(101,'Laptop'),
(102,'Mouse'),
(103,'Keyboard');

insert into Orders values
(1001,1,101),
(1002,1,102),
(1003,2,101);

select c.customer_id,c.name,count(o.order_id) as total_orders
from Customers c
left join Orders o on c.customer_id=o.customer_id
group by c.customer_id,c.name;

select p.product_id,p.product_name
from Products p
left join Orders o on p.product_id=o.product_id
where o.order_id is null;