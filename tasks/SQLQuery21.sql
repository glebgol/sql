-- процедура- получить список людей по возрасту
CREATE PROCEDURE get_people_by_age
	@age int
AS
SELECT * FROM people WHERE people.age = age

EXEC get_people_by_age 20

-- вывести среднюю трансферную стоимость
CREATE PROCEDURE get_average_transfer_fee
    @average MONEY OUTPUT
AS
SELECT @average = AVG(transfer_fee)
FROM football_players

DECLARE @average MONEY
EXEC get_average_transfer_fee @average OUTPUT
PRINT 'Средняя цена ' + CONVERT(VARCHAR, @average)

-- 
create function fun1
(@Str as varchar(50)

)
returns varchar(50)
as begin
declare @s as varchar(14)
select @S = id
from people
where last_name = @Str
return @S
end

SELECT dbo.fun1('Iniesta')

-- вывести футболистов в возрастном диапазоне
create function fun2(
@a1 as int,
@b1 as int
)
returns table
as return (select * from people
where age between @a1 and @b1)

select * from dbo.fun2(20, 30)


-- триггер, который будет срабатывать при добавлении и обновлении данных пишет "Данные обновлены"
CREATE TRIGGER insert_update
ON stadiums
AFTER INSERT, UPDATE
AS
begin print 'Данные обновлены'
end
insert into stadiums values('Dinamo', 'Minsk',  10001)

-- Данный триггер, при попытке добавления данных, выводит «Нельзя -- добавить данные»

create trigger trig2
on stadiums
instead of insert
as
begin
print 'Нельзя добавить данные'
end
insert into stadiums values('Dinamo', 'Minsk',  10001)


CREATE FUNCTION FACTORIAL(@val int)
returns int
begin
declare @l int;
set @l = 1;
declare @l int;
set @l = 1;
while @l < @val begin 