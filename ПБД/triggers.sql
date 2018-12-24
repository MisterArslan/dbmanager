-- Устанавливает текущую дату контракту уволившегося сотрудника
create trigger 'employee_quit' before delete on 'employee'
update contract set contract.expiration = CURDATE();
end
-- Запрещает добавлять в график работы сотрудника в его день рождения
create trigger 'birthday_controller' before insert on 'schedule'
	if exist (select * from employee where employee.id = inserted.employee_id)
	and employee.birthday = CURDATE()
	begin
		rollback transaction
        raiserror ('Today this employee\'s birthday', 16, 1)
	end
end