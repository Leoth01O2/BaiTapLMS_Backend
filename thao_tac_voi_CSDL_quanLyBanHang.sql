use QuanLyBanHang;

insert into Customer values
(1,'Minh Quan',10),
(2,'Ngoc Oanh',20),
(3,'Hong Ha',50);

insert into `Order` values
(1,1,'2006-03-21',null),
(2,2,'2006-03-23',null),
(3,1,'2006-03-16',null);

insert into Product values
(1,'May Giat',3),
(2,'Tu Lanh',5),
(3,'Dieu Hoa',7),
(4,'Quat',1),
(5,'Bep Dien',2);

insert into OrderDetail values
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);

select oID,oDate,oTotalPrice
from `Order`;

select C.cName,P.pName
from Customer C
join `Order` O on C.cID=O.cID
join OrderDetail OD on O.oID=OD.oID
join Product P on OD.pID=P.pID;

select C.cName
from Customer C
left join `Order` O on C.cID=O.cID
where O.oID is null;

select O.oID,O.oDate,sum(OD.odQTY*P.pPrice) as oPrice
from `Order` O
join OrderDetail OD on O.oID=OD.oID
join Product P on OD.pID=P.pID
group by O.oID,O.oDate;