-- Вывести данные всех таблиц
SELECT * FROM people
SELECT * FROM referees
SELECT * FROM coaches
SELECT * FROM teams
SELECT * FROM football_players
SELECT * FROM stadiums
SELECT * FROM tournaments
SELECT * FROM tournaments_teams
SELECT * FROM matches
SELECT * FROM football_player_match_statistics

--вывести людей, отсортированных по имени в алфавитном порядке
SELECT * FROM people ORDER BY first_name

--вывести футболистов, отсортированные в обратном порядке
-- по трансферной стоимости и дате истечения контракта
SELECT * FROM football_players ORDER BY transfer_fee, contract_expiration_date DESC

-- вывести уникальные фамилии, создав вычисляемое поле
SELECT DISTINCT '"' + last_name + '"' AS 'Фамилия' FROM people

-- вывести 30% матчей
SELECT TOP(30) PERCENT * FROM matches

-- вывести 5 футболистов
SELECT TOP(5) * FROM football_players

-- выбрать футболистов с 4ого по 7ого, отсортированных по трансферной стоимости
SELECT * FROM football_players
ORDER BY transfer_fee DESC
    OFFSET 3 ROWS
    FETCH NEXT 4 ROWS ONLY;

-- остортировать людей по имени + фамилии
SELECT * FROM people
ORDER BY first_name + last_name
