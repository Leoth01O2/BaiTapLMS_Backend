create database if not exists autoride_db;
use autoride_db;

create table Cars(
    car_id int auto_increment primary key,
    model_name varchar(100) not null,
    license_plate varchar(20) unique not null
);

create table Rentals(
    rental_id int auto_increment primary key,
    car_id int,
    customer_name varchar(100) not null,
    rent_date datetime not null,
    return_date datetime,
    status varchar(50) default 'BOOKED',
    foreign key(car_id) references Cars(car_id)
);

alter table Rentals
modify status enum('BOOKED','ACTIVE','COMPLETED','CANCELLED') default 'BOOKED',
add security_deposit decimal(10,2) not null default 0,
add late_fee decimal(10,2) not null default 0,
add damage_fee decimal(10,2) not null default 0;

create table Inspections(
    inspection_id int auto_increment primary key,
    rental_id int not null,
    inspection_date datetime not null,
    damage_description text,
    inspector_name varchar(100) not null,
    foreign key(rental_id) references Rentals(rental_id) on delete restrict
);

insert into Cars(model_name,license_plate)
values('Toyota Vios 1.5G CVT','20A-123.45');

insert into Rentals(car_id,customer_name,rent_date,status,security_deposit)
values(1,'Nguyen Van A','2026-10-01 08:00:00','ACTIVE',10000000);

insert into Inspections(rental_id,inspection_date,damage_description,inspector_name)
values(1,'2026-10-03 16:00:00','Vỡ đèn pha trái','Ngô Trung Kiên');

update Rentals
set return_date='2026-10-03 16:00:00',
status='COMPLETED',
late_fee=0,
damage_fee=2000000
where rental_id=1;

select rental_id,customer_name,security_deposit,late_fee,damage_fee,
security_deposit-late_fee-damage_fee as refund
from Rentals
where rental_id=1;