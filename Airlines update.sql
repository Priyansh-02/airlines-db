create table AirCrafts(
AcID int not null auto_increment,
AcNumber varchar(32),
Capacity int,
MfdBy varchar(128),
MfdOn datetime,
Primary key(AcID)
);

INSERT INTO `p1`.`AirCrafts` (`AcID`, `AcNumber`, `Capacity`, `MfdBy`, `MfdOn`) 
VALUES ('2', 'D4R5', '300', 'Etihad', '2019-05-09');
INSERT INTO `p1`.`AirCrafts` (`AcID`, `AcNumber`, `Capacity`, `MfdBy`, `MfdOn`) 
VALUES ('3', 'W3E6', '300', 'Luftansa', '2013-08-16');
INSERT INTO `p1`.`AirCrafts` (`AcID`, `AcNumber`, `Capacity`, `MfdBy`, `MfdOn`) 
VALUES ('4', 'Q237', '300', 'Vistara', '2018-08-05');
INSERT INTO `p1`.`AirCrafts` (`AcID`, `AcNumber`, `Capacity`, `MfdBy`, `MfdOn`) 
VALUES ('5', 'W456', '300', 'Malasiyan Airlines', '2015-12-04');
INSERT INTO `p1`.`AirCrafts` (`AcID`, `AcNumber`, `Capacity`, `MfdBy`, `MfdOn`) 
VALUES ('6', 'Q276', '300', 'Luftansa', '2012-09-07');

select * 
from AirCrafts;

create table Route(
RtID int not null auto_increment,
Airport varchar(32),
Destination varchar(32),
RouteCode varchar(16),
primary key(RtID)
);

insert into Route(RtID, Airport, Destination, RouteCode)
values(1,'Delhi international airport','El dorado international airport','E358');

update Route
set RouteCode='W358'
where RtID=1; 

insert into Route(RtID, Airport, Destination, RouteCode)
values(2,'Delhi IA','flairbank IA','R459');
insert into Route(RtID, Airport, Destination, RouteCode)
values(3,'Delhi IA','Pago Pago International Airport','R459');
insert into Route(RtID, Airport, Destination, RouteCode)
values(4,'Delhi IA','Ted Stevens Anchorage InternationalAirport','T542');

update Route
set Destination='Ted Stevens Anchorage IA'
where RtID=4;

insert into Route(RtID, Airport, Destination, RouteCode)
values(5,'Delhi IA','Juneau International Airport','Q108');
insert into Route(RtID, Airport, Destination, RouteCode)
values(6,'Delhi IA','Ketchikan International Airport','C276');
insert into Route(RtID, Airport, Destination, RouteCode)
values(6,'Delhi IA','tokyo IA','S298');

select *
from Route;

create table airfare(
AfID int not null auto_increment,
primary key(AfID)
);

alter table airfare
add Route int;

alter table airfare
add Fare int;

alter table airfare
add FSC int;

select *
from airfare;

create table flight_schedule(
FIID int not null auto_increment,
FlightDate date,
Department date,
Arrival date,
AirCraft int,
NetFare int,
primary key(FIID)
);

select * 
from flight_schedule;

create table discounts(
DiID int,
Title varchar(32),
Amount int,
Descriptionn varchar(255),
primary key(DiID)
);

select *
from discounts;

create table charges(
CtID int not null auto_increment,
Title varchar(32),
Amount int,
Descriptionn varchar(255),
primary key(CtID)
);

select *
from charges;

create table countries(
CtID int not null auto_increment,
CountryName varchar(32),
primary key(CtID)
);

select *
from countries;

create table state(
StID int not null auto_increment,
StateName varchar(32),
Country int,
primary key(StID)
);

select *
from state;

create table contact_details(
CnID int not null auto_increment,
Email varchar(16),
Cell varchar(16),
Tel varchar(16),
Street varchar(64),
State int,
primary key(CnID)
);

select *
from contact_details;

create table passengers(
PsID int not null auto_increment,
Namee varchar(32),
Address varchar(64),
Age int,
Nationalities varchar(16),
Contacts int,
primary key(PsID)
);

select *
from passengers;

create table branches(
BrID int not null auto_increment,
Center varchar(16),
Address varchar(32),
State int,
primary key(BrID)
);

select *
from branches;
