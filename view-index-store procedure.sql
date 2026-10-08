create database demo;
use demo;

create table Products(
    Id int auto_increment primary key,
    productCode varchar(20) not null,
    productName varchar(100) not null,
    productPrice decimal(10,2),
    productAmount int,
    productDescription varchar(255),
    productStatus bit
);

insert into Products(productCode,productName,productPrice,productAmount,productDescription,productStatus)
values
('SP01','Laptop Acer Nitro 5',18000000,10,'Laptop gaming',1),
('SP02','Chuột Logitech G102',400000,30,'Chuột gaming',1),
('SP03','Bàn phím DareU EK87',650000,20,'Bàn phím cơ',1),
('SP04','Màn hình LG 24 inch',3200000,15,'Màn hình Full HD',1);

explain select * from Products
where productCode='SP02';

explain select * from Products
where productName='Chuột Logitech G102' and productPrice=400000;

create unique index idx_productCode
on Products(productCode);

create index idx_name_price
on Products(productName,productPrice);

explain select * from Products
where productCode='SP02';

explain select * from Products
where productName='Chuột Logitech G102' and productPrice=400000;

create view product_view as
select productCode,productName,productPrice,productStatus
from Products;

select * from product_view;

create or replace view product_view as
select productCode,productName,productPrice,productAmount,productStatus
from Products;

drop view product_view;

delimiter //

create procedure getAllProducts()
begin
    select * from Products;
end //

create procedure addProduct(
    in pCode varchar(20),
    in pName varchar(100),
    in pPrice decimal(10,2),
    in pAmount int,
    in pDescription varchar(255),
    in pStatus bit
)
begin
    insert into Products(productCode,productName,productPrice,productAmount,productDescription,productStatus)
    values(pCode,pName,pPrice,pAmount,pDescription,pStatus);
end //

create procedure updateProduct(
    in pId int,
    in pName varchar(100),
    in pPrice decimal(10,2),
    in pAmount int
)
begin
    update Products
    set productName=pName,productPrice=pPrice,productAmount=pAmount
    where Id=pId;
end //

create procedure deleteProduct(in pId int)
begin
    delete from Products
    where Id=pId;
end //

delimiter ;

call getAllProducts();

call addProduct('SP05','Tai nghe HyperX Cloud II',1800000,12,'Tai nghe gaming',1);

call updateProduct(1,'Laptop Acer Nitro 5',17500000,8);

call deleteProduct(5);