-- создание табличной переменнной
DECLARE @football_player TABLE (people_id INT, country NVARCHAR(20))

INSERT INTO @football_player
VALUES(1, 'Russia'),
(2, 'Belarus');

-- создание локальной временной таблицы
CREATE TABLE #football_player (people_id INT, country NVARCHAR(20))

INSERT INTO #football_player
VALUES(1, 'Russia'),
(2, 'Belarus');

-- создание глобальной временной таблицы
CREATE TABLE ##football_player (people_id INT, country NVARCHAR(20))

INSERT INTO ##football_player
VALUES(1, 'Russia'),
(2, 'Belarus')
 
--создание обобщенного табличного выражения

WITH info AS
(
    SELECT t.name, t.city, p.first_name 
	FROM teams t
	JOIN coaches c ON t.coach_id = c.id
	JOIN people p ON p.id = c.people_id
)
 
SELECT * FROM info
