-- отфильтровать футболистов по трансферной стоимости
SELECT * FROM football_players
WHERE transfer_fee < 100000

-- отфильтровать стадионы по вместительности
SELECT * FROM stadiums
WHERE capacity > 20000

-- выбрать судей с количеством матчей < 70 и количеством желтых карточек > 10
SELECT * FROM referees
WHERE yellow_cards_count > 10 AND games_count < 70

-- выбрать судей с количеством матчей > 80 или количеством красных карточек > 10
SELECT * FROM referees
WHERE red_cards_count > 10 AND games_count > 80

-- выбрать команды из Мадрида
SELECT * FROM teams
WHERE city = 'Madrid'

-- вывести статистику футболистов имеющих 1 желтую карточку
SELECT * FROM football_player_match_statistics
WHERE yellow_cards = 1

-- вывести статистику футболистов получивших красную карточку
SELECT * FROM football_player_match_statistics
WHERE yellow_cards = 2 OR red_card = 1