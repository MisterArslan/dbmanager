insert into employee(name,surname,lastname,phone,address,birthdate)
values('Aleksandr', 'Pushkin', 'Sergeevich','+78970123456','Russia','1849-10-01');
insert into employee(name,surname,lastname,phone,address,birthdate)
values('Aleksey', 'Sovushkin', 'Matveevich','+78970123456','Russia','1849-10-01');
insert into employee(name,surname,lastname,phone,address,birthdate)
values('Maria', 'Galceva', 'Amirovna','+78970123456','Russia','1849-10-01');
insert into employee(name,surname,lastname,phone,address,birthdate)
values('Sonya', 'Totmakova', 'Borisovna','+78970123456','Russia','1849-10-01');
insert into employee(name,surname,lastname,phone,address,birthdate)
values('Vladimir', 'Zelenskiy', 'Vladislavovich','+78970123456','Russia','1849-10-01');
insert into employee(name,surname,lastname,phone,address,birthdate)
values('Constantin', 'Reevz', 'Samuilovich','+78970123456','Russia','1849-10-01');
insert into employee(name,surname,lastname,phone,address,birthdate)
values('Fedor', 'Simushkin', 'Drugovich','+78970123456','Russia','1849-10-01');
insert into employee(name,surname,lastname,phone,address,birthdate)
values('George', 'Vashington', 'Matrosovich','+78970123456','Russia','1849-10-01');
insert into employee(name,surname,lastname,phone,address,birthdate)
values('Masha', 'Podorozhkova', 'Nikolaevna','+78970123456','Russia','1849-10-01');
insert into employee(name,surname,lastname,phone,address,birthdate)
values('Dasha', 'Tegeneva', 'Petrovna','+78970123456','Russia','1849-10-01');

insert into jobtype(name) values('full-time');
insert into jobtype(name) values('part-time');

insert into role(name) values('Feeder');
insert into role(name) values('Security');
insert into role(name) values('Cleaner');
insert into role(name) values('Manager');
insert into role(name) values('Smuggler');

insert into contract(number,commencement,expiration,role_id,jobtype_id,employee_id)
values('10293847560','2005-10-10','2020-10-10',1,2,1);
insert into contract(number,commencement,expiration,role_id,jobtype_id,employee_id)
values('10293847561','2005-20-10','2020-20-10',3,2,2);
insert into contract(number,commencement,expiration,role_id,jobtype_id,employee_id)
values('10293847562','2014-10-10','2024-10-10',2,2,3);
insert into contract(number,commencement,expiration,role_id,jobtype_id,employee_id)
values('10293847563','2015-10-10','2025-10-10',4,2,4);
insert into contract(number,commencement,expiration,role_id,jobtype_id,employee_id)
values('10293847564','2015-10-10','',4,1,5);
insert into contract(number,commencement,expiration,role_id,jobtype_id,employee_id)
values('10293847565','2005-10-10','',2,1,6);
insert into contract(number,commencement,expiration,role_id,jobtype_id,employee_id)
values('10293847566','2005-10-10','',1,1,7);
insert into contract(number,commencement,expiration,role_id,jobtype_id,employee_id)
values('10293847567','2005-10-10','2020-10-10',3,2,8);
insert into contract(number,commencement,expiration,role_id,jobtype_id,employee_id)
values('10293847568','2011-10-10','2021-10-10',1,2,9);
insert into contract(number,commencement,expiration,role_id,jobtype_id,employee_id)
values('10293847569','2013-10-10','2023-10-10',2,2,10);

insert into schedule(day,employee_id) values('2018-10-10', 1);
insert into schedule(day,employee_id) values('2018-10-10', 2);
insert into schedule(day,employee_id) values('2018-10-10', 3);
insert into schedule(day,employee_id) values('2018-10-10', 4);
insert into schedule(day,employee_id) values('2018-10-10', 7);
insert into schedule(day,employee_id) values('2018-10-11', 5);
insert into schedule(day,employee_id) values('2018-10-11', 6);
insert into schedule(day,employee_id) values('2018-10-11', 8);
insert into schedule(day,employee_id) values('2018-10-11', 9);
insert into schedule(day,employee_id) values('2018-10-11', 10);

insert into feed(name,minage,maxage) values('Cat food', null, null);
insert into feed(name,minage,maxage) values('Large predator food', null, null);
insert into feed(name,minage,maxage) values('Bird food', null, null);
insert into feed(name,minage,maxage) values('Cat special food', 5, null);
insert into feed(name,minage,maxage) values('Large predator special food', 3, null);
insert into feed(name,minage,maxage) values('Rodents food', null, null);
insert into feed(name,minage,maxage) values('Kitty food', null, 4);
insert into feed(name,minage,maxage) values('Small predator food', null, 6);
insert into feed(name,minage,maxage) values('Universal food', null, null);
insert into feed(name,minage,maxage) values('Monkey food', null, 15);

insert into animal(type,class,squad,family,kind,breed,description)
values ('type1','class1','squad1','family1','kind1', 'tiger','There is no off switch on a tiger.');
insert into animal(type,class,squad,family,kind,breed,description)
values ('type1','class1','squad1','family1','kind2', 'lion','There is no off switch on a tiger.');
insert into animal(type,class,squad,family,kind,breed,description)
values ('type1','class1','squad1','family1','kind2', 'white tiger','There is no off switch on a tiger.');
insert into animal(type,class,squad,family,kind,breed,description)
values ('type1','class1','squad1','family1','kind2', 'ligr','There is no off switch on a tiger.');
insert into animal(type,class,squad,family,kind,breed,description)
values ('type5','class5','squad5','family5','kind5', 'bear','"I caught a bear!" "Bring it here!" "It won’t come." "Then come yourself!" "It won’t let me!"');
insert into animal(type,class,squad,family,kind,breed,description)
values ('type5','class5','squad5','family5','kind6', 'polar bear','"I caught a bear!" "Bring it here!" "It won’t come." "Then come yourself!" "It won’t let me!"');
insert into animal(type,class,squad,family,kind,breed,description)
values ('type7','class7','squad7','family7','kind7', 'bird1','A bird does not sing because it has an answer. It sings because it has a song.');
insert into animal(type,class,squad,family,kind,breed,description)
values ('type7','class7','squad7','family7','kind8', 'bird2','A bird does not sing because it has an answer. It sings because it has a song.');
insert into animal(type,class,squad,family,kind,breed,description)
values ('type7','class7','squad7','family7','kind9', 'bird3','A bird does not sing because it has an answer. It sings because it has a song.');
insert into animal(type,class,squad,family,kind,breed,description)
values ('type7','class7','squad7','family7','kind10', 'bird4','A bird does not sing because it has an answer. It sings because it has a song.');

insert into zooanimal(name,age,arrival,whence,breed)
values ('Moosya',12,'2017-05-05','Africa','tiger');
insert into zooanimal(name,age,arrival,whence,breed)
values ('Sharik',9,'2017-05-05','Africa','ligr');
insert into zooanimal(name,age,arrival,whence,breed)
values ('Avraam',4,'2017-05-05','USA','bird1');
insert into zooanimal(name,age,arrival,whence,breed)
values ('Avatar',5,'2017-05-05','Amazonia Rainforests','white tiger');
insert into zooanimal(name,age,arrival,whence,breed)
values ('Sanya',2,'2017-05-05','Amazonia Rainforests','bird2');
insert into zooanimal(name,age,arrival,whence,breed)
values ('Barsik',15,'2017-05-05','Africa','lion');
insert into zooanimal(name,age,arrival,whence,breed)
values ('Moomoo',10,'2017-05-05','Russia','bear');
insert into zooanimal(name,age,arrival,whence,breed)
values ('Alenka',3,'2017-05-05','Africa','bird3');
insert into zooanimal(name,age,arrival,whence,breed)
values ('Moryak',12,'2017-05-05','North Pole','polar bear');
insert into zooanimal(name,age,arrival,whence,breed)
values ('Kukushka',1,'2017-05-05','Amazonia Rainforests','bird4');

insert into animal_feed(breed,feed_id) values('tiger', 1);
insert into animal_feed(breed,feed_id) values('white tiger', 4);
insert into animal_feed(breed,feed_id) values('lion', 7);
insert into animal_feed(breed,feed_id) values('ligr', 1);
insert into animal_feed(breed,feed_id) values('bear', 2);
insert into animal_feed(breed,feed_id) values('polar bear', 5);
insert into animal_feed(breed,feed_id) values('tiger', 4);
insert into animal_feed(breed,feed_id) values('white tiger', 7);
insert into animal_feed(breed,feed_id) values('lion', 1);
insert into animal_feed(breed,feed_id) values('ligr', 4);
insert into animal_feed(breed,feed_id) values('bear', 8);
insert into animal_feed(breed,feed_id) values('polar bear', 2);
insert into animal_feed(breed,feed_id) values('bird1', 3);
insert into animal_feed(breed,feed_id) values('bird2', 3);
insert into animal_feed(breed,feed_id) values('bird3', 3);
insert into animal_feed(breed,feed_id) values('bird4', 3);