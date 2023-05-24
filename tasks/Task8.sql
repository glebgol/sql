-- выбрать минимальную трансферную стоимость футболиста
SELECT MIN(transfer_fee) AS 'Минимальная трансферная стоимость' FROM football_players;

-- выбрать среднюю трансферную стоимость футболиста
SELECT AVG(transfer_fee) AS 'Средняя трансферная стоимость' FROM football_players;

-- выбрать наибольшее количество зрителей на матче
SELECT MAX(number_of_fans) AS 'Наибольшее количество зрителей' FROM matches

-- найти суммарную трансферную стоимость футболистов
SELECT SUM(transfer_fee) AS 'Суммарная трансферная стоимость' FROM football_players

-- найти количество футболистов с трансферной стоимостью больше 10000
SELECT COUNT(*) AS 'Количество футболистов с трансферной стоимостью больше 10000' FROM football_players
WHERE transfer_fee > 10000
