INSERT INTO people (age, first_name, last_name, country)
VALUES
(38, 'Cristiano', 'Ronaldo', 'Portugal'),
(35, 'Lionel', 'Messi', 'Argentina'),
(31, 'Neymar', 'Junior', 'Brazil'),
(24, 'Kylian', 'Mbappe', 'France'),
(34, 'Robert', 'Lewandowski', 'Poland'),
(30, 'Mohamed', 'Salah', 'Egypt'),
(22, 'Erling', 'Holland', 'Norway'),
(31, 'Kevin', 'De Breyne', 'Belgium'),
(32, 'Eden', 'Hazard', 'Belgium'),
(31, 'Tibou', 'Courtuas', 'Belgium'),
(22, 'Vinisius', 'Juniour', 'Brazil'),
(35, 'Karim', 'Benzema', 'France'),
(37, 'Luka', 'Modric', 'Croatia'),
(26, 'Frank', 'de Jong', 'Netherlands'),
(20, 'Gonsales', 'Pedri', 'Spain'),
(40, 'Andres', 'Iniesta', 'Spain'),
(18, 'Pablo', 'Gavi', 'Spain'),
(63, 'Pierluigi', 'Collina', 'Italy'),
(50, 'Oscar', 'Ruis', 'Columbia'),
(66, 'Carlo', 'Ancelotti', 'Italy'),
(50, 'Pep', 'Gvardiola', 'Spain'),
(60, 'Jose', 'Mourinho', 'Portugal'),
(22, 'Lautaro', 'Martinez', 'Argentina'),
(32, 'Genrih', 'Mhytaryan', 'Armenia'),
(30, 'Gena', 'Bukin', 'Russia'),
(18, 'Zlatan', 'Ibrahimovich', 'Sweden');


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
('Real Madrid FC', 'Madrid', 1),
('Inter FC', 'Milan', 3);

INSERT INTO football_players (people_id, team_id, transfer_fee, contract_expiration_date)
VALUES
(2, 1, 120000.00, '2024-05-11'),
(3, 1, 15454.00, '2026-07-12'),
(5, 1, 56450.00, '2027-12-13'),
(14, 1, 4535.00, '2028-01-23'),
(15, 1, 1555.00, '2034-11-24'),
(16, 1, 545454.00, '2040-02-22'),
(17, 1, 100000.00, '2024-03-11'),
(1, 2, 240000.00, '2025-12-05'),
(4, 2, 100000.00, '2024-12-07'),
(7, 2, 300.00, '2026-02-10'),
(9, 2, 100.00, '2027-08-11'),
(10, 2, 1000.00, '2023-12-15'),
(12, 2, 1000.00, '2023-11-16'),
(13, 2, 20000.00, '2026-10-17'),
(6, 3, 11234.00, '2025-01-17'),
(8, 3, 10000.00, '2024-01-07'),
(11, 3, 100001.00, '2025-05-27'),
(23, 3, 22200.00, '2023-10-18'),
(24, 3, 100222.00, '2029-05-17'),
(25, 3, 1002342.00, '2036-10-17'),
(26, 3, 100000.00, '2050-12-13');

INSERT INTO stadiums (name, city, capacity) 
VALUES
('Camp Nou', 'Barcelona', 100000),
('Santiago Bernabeu', 'Madrid', 99000),
('Stadion Spartak', 'Mogilev', 9000);

INSERT INTO tournaments (name)
VALUES
('Champions League'), ('AUDI CUP');

INSERT INTO tournaments_teams 
(team_id, tournament_id, points, number_of_games, number_of_wins, number_of_draws, number_of_defeats, goals_scored, conceded_goals)
VALUES
(3, 1, 6, 4, 2, 0, 2, 10, 7),
(2, 1, 4, 4, 1, 1, 2, 7, 10),
(1, 1, 7, 4, 2, 1, 1, 11, 6);

INSERT INTO matches (referee_id, tournament_id, stadium_id, team_1_id, team_2_id, goals_1, goals_2, number_of_fans)
VALUES
(1, 1, 1, 1, 2, 4, 3, 99100),
(2, 1, 2, 2, 1, 2, 1, 80000),
(1, 1, 3, 1, 3, 1, 1, 12000),
(2, 1, 3, 3, 1, 0, 0, 10000),
(1, 1, 2, 2, 3, 5, 0, 50000),
(1, 1, 1, 3, 2, 1, 1, 45400);

INSERT INTO football_player_match_statistics (match_id, football_player_id, goals_scored, assists, yellow_cards)
VALUES 
(1, 1, 3, 0, 0),
(1, 2, 0, 1, 1),
(1, 3, 0, 0, 1),
(1, 4, 1, 1, 1),
(1, 8, 3, 0, 0),
(1, 9, 0, 1, 1),
(1, 10, 0, 0, 1),
(1, 11, 1, 1, 1),
(2, 1, 3, 0, 0),
(2, 2, 0, 1, 1),
(2, 3, 0, 0, 1),
(2, 4, 1, 1, 1),
(2, 8, 3, 0, 1),
(2, 9, 0, 3, 1),
(2, 10, 0, 1, 2),
(2, 11, 1, 2, 1),
(3, 1, 3, 0, 0),
(3, 2, 0, 1, 1),
(3, 3, 0, 0, 2),
(3, 4, 1, 1, 1),
(3, 18, 3, 0, 2),
(3, 15, 5, 1, 1),
(3, 16, 0, 0, 1),
(3, 17, 1, 1, 1),
(4, 1, 3, 1, 1),
(4, 2, 0, 1, 1),
(4, 3, 0, 0, 1),
(4, 4, 1, 1, 1),
(4, 18, 3, 0, 0),
(4, 15, 0, 1, 1),
(4, 16, 0, 0, 1),
(4, 17, 1, 1, 1),
(5, 10, 3, 0, 0),
(5, 11, 0, 1, 1),
(5, 12, 0, 0, 1),
(5, 13, 1, 1, 1),
(5, 18, 3, 0, 0),
(5, 15, 0, 1, 1),
(5, 16, 0, 0, 1),
(5, 17, 1, 1, 1),
(6, 10, 3, 0, 0),
(6, 11, 0, 1, 1),
(6, 12, 0, 0, 1),
(6, 13, 1, 1, 1),
(6, 18, 3, 0, 0),
(6, 15, 0, 1, 1),
(6, 16, 0, 0, 1),
(6, 17, 1, 1, 1);

