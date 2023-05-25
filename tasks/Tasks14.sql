-- выбрать статистику с 1 ассистом и 1 голом
SELECT * FROM football_player_match_statistics f WHERE f.assists = 1
INTERSECT
SELECT * FROM football_player_match_statistics f WHERE f.goals_scored = 1

-- выбрать статистику с 0 ассистов и 1 красной карточкой
SELECT * FROM football_player_match_statistics f WHERE f.assists = 0
INTERSECT
SELECT * FROM football_player_match_statistics f WHERE f.red_card = 1 OR f.yellow_cards = 2

-- выбрать статистику с 3 голами без карточек
SELECT * FROM football_player_match_statistics f WHERE f.goals_scored = 3
EXCEPT
SELECT * FROM football_player_match_statistics f WHERE f.red_card = 1 OR f.yellow_cards IN (1, 2)

-- выбрать статистику игроков с карточками без других действий
SELECT * FROM football_player_match_statistics f WHERE f.red_card = 1 OR f.yellow_cards IN (1, 2)
EXCEPT
SELECT * FROM football_player_match_statistics f WHERE f.assists = 0 AND f.goals_scored = 0 AND (f.own_goals IS NULL OR f.own_goals = 0);

-- забил 1 гол или 1 ассист
SELECT * FROM football_player_match_statistics f WHERE f.assists = 1
UNION
SELECT * FROM football_player_match_statistics f WHERE f.goals_scored = 1

-- забил 0 голов или 1 желтая
SELECT * FROM football_player_match_statistics f WHERE f.yellow_cards = 1
UNION
SELECT * FROM football_player_match_statistics f WHERE f.goals_scored = 0
