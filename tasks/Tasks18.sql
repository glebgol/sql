CREATE VIEW StatisticsView AS 
SELECT p.first_name, p.last_name, fps.contract_expiration_date, fps.transfer_fee, t.city
FROM people p
LEFT JOIN football_players fps ON p.id = fps.people_id
LEFT JOIN teams t ON t.id = fps.team_id

CREATE VIEW TeamCoachView AS 
SELECT t.name, t.city, p.first_name 
FROM teams t
JOIN coaches c ON t.coach_id = c.id
JOIN people p ON p.id = c.people_id

CREATE VIEW YellowCardsView AS 
SELECT * FROM football_player_match_statistics
WHERE yellow_cards = 1

CREATE VIEW RefereesView AS
SELECT * FROM referees
WHERE red_cards_count > 10 AND games_count > 80

CREATE VIEW StadiumView AS
SELECT * FROM stadiums
WHERE capacity > 20000