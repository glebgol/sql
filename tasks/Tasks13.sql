-- получить полную статистику о людях и если они футболисты вывести футбольные данные
SELECT p.first_name, p.last_name, fps.contract_expiration_date, fps.transfer_fee, t.city
FROM people p
LEFT JOIN football_players fps ON p.id = fps.people_id
LEFT JOIN teams t ON t.id = fps.team_id

-- выбрать все клубы с тренерами
SELECT t.name, t.city, p.first_name 
FROM teams t
JOIN coaches c ON t.coach_id = c.id
JOIN people p ON p.id = c.people_id

SELECT * FROM people p
FULL JOIN football_players fp ON fp.people_id = p.id

-- выбрать все турниры и команды
SELECT * FROM tournaments_teams tt
FULL JOIN teams t ON t.id = tt.team_id
FULL JOIN tournaments ts ON ts.id = tt.tournament_id

-- получить полную статистику о людях и если они футболисты вывести футбольные данные
SELECT p.first_name, p.last_name, fps.contract_expiration_date, fps.transfer_fee, t.city
FROM football_players fps
RIGHT JOIN people p ON p.id = fps.people_id
JOIN teams t ON t.id = fps.team_id

