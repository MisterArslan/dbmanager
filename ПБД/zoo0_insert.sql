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

insert into contract(number,commencement,expiration,role,jobtype,employee_id)
values('10293847560','2005-10-10','2020-10-10','Feeder','part-time', 1);
insert into contract(number,commencement,expiration,role,jobtype,employee_id)
values('10293847561','2005-20-10','2020-20-10','Cleaner','part-time', 2);
insert into contract(number,commencement,expiration,role,jobtype,employee_id)
values('10293847562','2014-10-10','2024-10-10','Security','part-time', 3);
insert into contract(number,commencement,expiration,role,jobtype,employee_id)
values('10293847563','2015-10-10','2025-10-10','Manager','part-time', 4);
insert into contract(number,commencement,expiration,role,jobtype,employee_id)
values('10293847564','2015-10-10','','Manager','full-time', 5);
insert into contract(number,commencement,expiration,role,jobtype,employee_id)
values('10293847565','2005-10-10','','Security','full-time', 6);
insert into contract(number,commencement,expiration,role,jobtype,employee_id)
values('10293847566','2005-10-10','','Feeder','full-time', 7);
insert into contract(number,commencement,expiration,role,jobtype,employee_id)
values('10293847567','2005-10-10','2020-10-10','Cleaner','part-time', 8);
insert into contract(number,commencement,expiration,role,jobtype,employee_id)
values('10293847568','2011-10-10','2021-10-10','Feeder','part-time', 9);
insert into contract(number,commencement,expiration,role,jobtype,employee_id)
values('10293847569','2013-10-10','2023-10-10','Security','part-time', 10);

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

insert into animal(type,class,squad,family,kind,feed,breed)
values ('type1','class1','squad1','family1','kind1', {1,4,7}, 'tiger');
insert into animal(type,class,squad,family,kind,feed,breed)
values ('type1','class1','squad1','family1','kind2', {1,4,7}, 'lion');
insert into animal(type,class,squad,family,kind,feed,breed)
values ('type1','class1','squad1','family1','kind2', {1,4,7}, 'white tiger');
insert into animal(type,class,squad,family,kind,feed,breed)
values ('type1','class1','squad1','family1','kind2', {1,4,7}, 'ligr');
insert into animal(type,class,squad,family,kind,feed,breed)
values ('type5','class5','squad5','family5','kind5', {2,5,8}, 'bear');
insert into animal(type,class,squad,family,kind,feed,breed)
values ('type5','class5','squad5','family5','kind6', {2,5,8}, 'polar bear');
insert into animal(type,class,squad,family,kind,feed,breed)
values ('type7','class7','squad7','family7','kind7', {3}, 'bird1');
insert into animal(type,class,squad,family,kind,feed,breed)
values ('type7','class7','squad7','family7','kind8', {3}, 'bird2');
insert into animal(type,class,squad,family,kind,feed,breed)
values ('type7','class7','squad7','family7','kind9', {3}, 'bird3');
insert into animal(type,class,squad,family,kind,feed,breed)
values ('type7','class7','squad7','family7','kind10', {3}, 'bird4');

insert into zooanimal(name,age,arrival,whence,breed,description)
values ('Moosya',12,'2017-05-05','Africa','tiger','There is no off switch on a tiger.');
insert into zooanimal(name,age,arrival,whence,breed,description)
values ('Sharik',12,'2017-05-05','Africa','ligr','There is no off switch on a tiger.');
insert into zooanimal(name,age,arrival,whence,breed,description)
values ('Avraam',12,'2017-05-05','USA','bird1','A bird does not sing because it has an answer. It sings because it has a song.');
insert into zooanimal(name,age,arrival,whence,breed,description)
values ('Avatar',12,'2017-05-05','Amazonia Rainforests','white tiger','There is no off switch on a tiger.');
insert into zooanimal(name,age,arrival,whence,breed,description)
values ('Sanya',12,'2017-05-05','Amazonia Rainforests','bird2','A bird does not sing because it has an answer. It sings because it has a song.');
insert into zooanimal(name,age,arrival,whence,breed,description)
values ('Barsik',12,'2017-05-05','Africa','lion','There is no off switch on a tiger.');
insert into zooanimal(name,age,arrival,whence,breed,description)
values ('Moomoo',12,'2017-05-05','Russia','bear','"I caught a bear!" "Bring it here!" "It won’t come." "Then come yourself!" "It won’t let me!"');
insert into zooanimal(name,age,arrival,whence,breed,description)
values ('Alenka',12,'2017-05-05','Africa','bird3','A bird does not sing because it has an answer. It sings because it has a song.');
insert into zooanimal(name,age,arrival,whence,breed,description)
values ('Moryak',12,'2017-05-05','North Pole','polar bear','"I caught a bear!" "Bring it here!" "It won’t come." "Then come yourself!" "It won’t let me!"');
insert into zooanimal(name,age,arrival,whence,breed,description)
values ('Kukushka',12,'2017-05-05','Amazonia Rainforests','bird4','A bird does not sing because it has an answer. It sings because it has a song.');