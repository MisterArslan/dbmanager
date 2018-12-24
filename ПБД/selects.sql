-- Выводит питание для всех животный
select animal.breed, feed.name
from animal
inner join animal_feed on animal.breed = animal_feed.breed
inner join feed on animal_feed.feed_id = feed.id;
-- Выводит имена сотрудников и их должности
select employee.name, role.name
from employee
inner join contract on employee.id = contract.employee_id
inner join role on contract.role_id = role.id
-- Выводит список сотрудников, чей срок годности контракта истекает после 2009
select employee.name, contract.expiration
from employee
inner join contract on employee.id = contract.employee_id
where contract.expiration > '2010-01-01'
-- Выводит всю подходящую по возрасту еду для животных в зоопарке
select zooanimal.name, feed.name
from zooanimal
inner join animal on zooanimal.breed = animal.breed
inner join animal_feed on animal.breed = animal_feed.breed
inner join feed on animal_feed.feed_id = feed.id
where zooanimal.age >= feed.minage and zooanimal.age <= feed.maxage;