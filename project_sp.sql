create database March10_DB;
use March10_DB;
----------QULIFICATION------------
create table tblQualifications(
qualification_id int primary key identity,
qualification_name varchar(100) unique not null,
inserted_at datetime,
updated_at datetime,
deleted_at datetime,
restored_at datetime,
flag int default 0);
select * from tblQualifications;

-------SPECILIZATION--------------
create table tblSpecializations(
specialization_id int primary key identity(101,1),
specialization_name varchar(100) unique not null,
qualification_id int constraint qid1 references tblQualifications(qualification_id),
inserted_at datetime,
updated_at datetime,
deleted_at datetime,
restored_at datetime,
flag int default 0);
select * from tblSpecializations;

-----------STATE--------------
create table tblStates(
state_id int primary key identity,
state_name varchar(100) unique not null,
flag int default 0,
inserted_at datetime,
updated_at datetime,
deleted_at datetime,
restored_at datetime
);
select * from tblStates;

-----------CITY--------------
create table tblCities(
city_id int primary key identity(101,1),
city_name varchar(100) unique not null,
state_id int constraint sd references tblStates(state_id),
flag int default 0,
inserted_at datetime,
updated_at datetime,
deleted_at datetime,
restored_at datetime
);
select * from tblCities




