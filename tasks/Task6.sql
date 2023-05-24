INSERT INTO people (age, first_name, last_name, country)
VALUES
(38, 'Cristiano', 'Ronaldo', 'Portugal'),
(35, 'Lionel', 'Messi', 'Argentina');

INSERT INTO referees (games_count, red_cards_count, yellow_cards_count, people_id )
VALUES
(100, 14, 454, 20),
(50, 4, 55, 19);

INSERT INTO coaches (people_id)
VALUES
(20), (21), (22);

INSERT INTO teams (name, city, coach_id)
VALUES
('Barcelona FC', 'Barcelona', 2),
('Real Madrid FC', 'Madrid', 1);

INSERT INTO football_players (people_id, team_id, transfer_fee, contract_expiration_date)
VALUES
(2, 1, 120000.00, '2024-05-11'),
(3, 1, 15454.00, '2026-07-12');

INSERT INTO stadiums (name, city, capacity) 
VALUES
('Camp Nou', 'Barcelona', 100000),
('Santiago Bernabeu', 'Madrid', 99000);

INSERT INTO tournaments (name)
VALUES
('Champions League'), ('AUDI CUP');

INSERT INTO tournaments_teams 
(team_id, tournament_id, points, number_of_games, number_of_wins, number_of_draws, number_of_defeats, goals_scored, conceded_goals)
VALUES
(3, 1, 6, 4, 2, 0, 2, 10, 7),
(2, 1, 4, 4, 1, 1, 2, 7, 10);

INSERT INTO matches (referee_id, tournament_id, stadium_id, team_1_id, team_2_id, goals_1, goals_2, number_of_fans)
VALUES
(1, 1, 1, 1, 2, 4, 3, 99100),
(2, 1, 2, 2, 1, 2, 1, 80000);

INSERT INTO football_player_match_statistics (match_id, football_player_id, goals_scored, assists, yellow_cards)
VALUES 
(1, 1, 3, 0, 0),
(1, 2, 0, 1, 1);