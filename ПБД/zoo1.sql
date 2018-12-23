drop database zoo1;
create database zoo1;
\c zoo1;
create table employee
(
	id serial primary key,
	name varchar(20),
	surname varchar(20),
	lastname varchar(20),
	phone varchar(20),
	address text,
	birthdate date
);
create table contract
(
	number varchar(20) primary key,
	commencement date,
	expiration date,
	role varchar(20),
	document bytea,
	jobtype varchar(20),
	employee_id integer references employee(id) on update cascade
);
create table schedule
(
	day timestamp primary key,
	employee_id integer references employee(id) on update cascade on delete cascade
);
create table feed
(
	id serial primary key,
	name varchar(20),
	minage integer,
	maxage integer
);
create table animal
(
	type varchar(20),
	class varchar(20),
	squad varchar(20),
	family varchar(20),
	kind varchar(20),
	breed varchar(20) primary key
);
create table animal_feed
(
	breed varchar(20) references animal(breed) on update cascade on delete cascade,
	feed_id integer references feed(id) on update cascade on delete cascade
);
create table zooanimal
(
	id serial primary key,
	name varchar(20),
	age integer,
	arrival date,
	whence varchar(20),
	breed varchar(20) references animal(breed) on update cascade,
	description text
);