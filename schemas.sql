DROP TABLE IF EXISTS football_player_match_statistics;
DROP TABLE IF EXISTS matches;
DROP TABLE IF EXISTS football_players;
DROP TABLE IF EXISTS tournaments_teams;
DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS tournaments;
DROP TABLE IF EXISTS coaches;
DROP TABLE IF EXISTS stadiums;
DROP TABLE IF EXISTS referees;
DROP TABLE IF EXISTS people;

CREATE TABLE people 
(
	id INT 
		CONSTRAINT PK_people_id 
			PRIMARY KEY IDENTITY,
	age INT 
		CONSTRAINT CK_people_age 
			CHECK(age > 0 AND age < 140) NOT NULL,
	first_name NVARCHAR(20)
			CONSTRAINT NN_people_first_name 
				NOT NULL,
	last_name NVARCHAR(25)
			CONSTRAINT NN_people_last_name
				NOT NULL,
	patronymic NVARCHAR(20)
			CONSTRAINT NN_people_patronymic
				NULL,
	country NVARCHAR(15)
			CONSTRAINT NN_people_citizenship
				NOT NULL
);

CREATE TABLE referees 
(
	id INT 
		CONSTRAINT PK_referees_id 
			PRIMARY KEY IDENTITY,
	games_count INT 
		CONSTRAINT CK_referees_games_count 
			CHECK(games_count > 0) NOT NULL,
	red_cards_count INT 
		CONSTRAINT CK_referees_red_cards_count 
			CHECK(red_cards_count > 0) NOT NULL,
	yellow_cards_count INT 
		CONSTRAINT CK_referees_yellow_cards_count 
			CHECK(yellow_cards_count > 0) NOT NULL,
	people_id INT
		CONSTRAINT FK_referees_people_id 
			UNIQUE REFERENCES people(id) ON DELETE CASCADE NOT NULL,
	
);

CREATE TABLE stadiums
(
	id INT 
		CONSTRAINT PK_stadiums_id
			PRIMARY KEY IDENTITY,
	name NVARCHAR(20)
			CONSTRAINT NN_stadiums_name 
				NOT NULL,
	city NVARCHAR(20)
			CONSTRAINT NN_stadiums_city 
				NOT NULL,
	capacity INT 
		CONSTRAINT CH_stadiums_capacity 
			CHECK(capacity > 0) NOT NULL
);

CREATE TABLE coaches 
(
	id INT 
		CONSTRAINT PK_coaches_id
			PRIMARY KEY IDENTITY,
	people_id INT 
		CONSTRAINT FK_coaches_people_id 
			UNIQUE REFERENCES people(id) NOT NULL,
);

CREATE TABLE tournaments
(
	id INT 
		CONSTRAINT PK_tournaments_id 
			PRIMARY KEY IDENTITY,
	name NVARCHAR(40)
			CONSTRAINT NN_tournaments_name 
				NOT NULL,
);

CREATE TABLE teams
(
	id INT 
		CONSTRAINT PK_teams_id 
			PRIMARY KEY IDENTITY,
	name NVARCHAR(20)
			CONSTRAINT NN_teams_name 
				NOT NULL,
	city NVARCHAR(20)
			CONSTRAINT NN_teams_city 
				NOT NULL,
	coach_id INT 
		CONSTRAINT FK_teams_coach_id 
			REFERENCES coaches(id) NOT NULL
);

CREATE TABLE tournaments_teams
(
	team_id INT 
		CONSTRAINT FK_tournament_team_team_id
			REFERENCES teams(id) NOT NULL,
	tournament_id INT 
		CONSTRAINT FK_tournament_team_tournament_id
			REFERENCES tournaments(id) NOT NULL,
	points INT 
		CONSTRAINT CK_tournament_team_points 
			CHECK(points >= 0) NOT NULL, 
	number_of_games INT 
		CONSTRAINT CK_tournament_team_number_of_games 
			CHECK(number_of_games >= 0) NOT NULL,
	number_of_wins INT 
		CONSTRAINT CK_tournament_team_number_of_wins
			CHECK(number_of_wins >= 0) NOT NULL,
	number_of_draws INT
		CONSTRAINT CK_tournament_team_number_of_draws 
			CHECK(number_of_draws >= 0) NOT NULL,
	number_of_defeats INT 
		CONSTRAINT CK_tournament_team_number_of_defeats 
			CHECK(number_of_defeats >= 0) NOT NULL,
	goals_scored INT 
		CONSTRAINT CK_tournament_team_goals_scored
			CHECK(goals_scored >= 0) NOT NULL,
	conceded_goals INT 
		CONSTRAINT CK_tournament_team_conceded_goals
			CHECK(conceded_goals >= 0) NOT NULL,
);

CREATE TABLE football_players
(
	id INT 
		CONSTRAINT PK_football_players_id 
			PRIMARY KEY IDENTITY,
	people_id INT 
		CONSTRAINT FK_football_players_people_id 
			UNIQUE REFERENCES people(id) NOT NULL,
	team_id INT 
		CONSTRAINT FK_football_players_team_id 
			REFERENCES teams(id) NOT NULL,
	transfer_fee MONEY 
		CONSTRAINT CK_football_players_transfer_fee 
			CHECK(transfer_fee > 0) NOT NULL,
	contract_expiration_date DATE
			CONSTRAINT NN_football_players_contract_expiration_date 
				NOT NULL
);

CREATE TABLE matches
(
	id INT 
		CONSTRAINT PK_matches_id 
			PRIMARY KEY IDENTITY,
	referee_id INT 
		CONSTRAINT FK_matches_referee_id 
			REFERENCES referees(id) NOT NULL,
	tournament_id INT 
		CONSTRAINT FK_matches_tournament_id 
			REFERENCES tournaments(id) NOT NULL,
	stadium_id INT 
		CONSTRAINT FK_matches_stadium_id
			REFERENCES stadiums(id) NOT NULL,
	team_1_id INT 
		CONSTRAINT FK_matches_team_1_id 
			REFERENCES teams(id) NOT NULL,
	team_2_id INT 
		CONSTRAINT FK_matches_team_2_id 
			REFERENCES teams(id) NOT NULL,
	goals_1 INT 
		CONSTRAINT CK_matches_goals_1 
			CHECK(goals_1 >= 0) NOT NULL,
	goals_2 INT
		CONSTRAINT CK_matches_goals_2 
			CHECK(goals_2 >= 0) NOT NULL,
	number_of_fans INT 
		CONSTRAINT CK_matches_number_of_fans 
			CHECK(number_of_fans >= 0)
);

CREATE TABLE football_player_match_statistics
(
	id INT 
		CONSTRAINT PK_football_player_match_statistics_id 
			PRIMARY KEY IDENTITY,
	match_id INT 
		CONSTRAINT FK_football_player_match_statistics_match_id 
			REFERENCES matches(id) NOT NULL,
	football_player_id INT 
		CONSTRAINT FK_football_player_match_statistics_football_player_id 
			REFERENCES football_players(id) NOT NULL,
	goals_scored TINYINT 
		CONSTRAINT CK_football_player_match_statistics_goals_scored
			CHECK(goals_scored >= 0) NOT NULL,
	assists TINYINT 
		CONSTRAINT CK_football_player_match_statistics_assists
			CHECK(assists >= 0) NOT NULL,
	own_goals TINYINT 
		CONSTRAINT CK_football_player_match_statistics_own_goals
			CHECK(own_goals >= 0) NULL,
	red_card BIT NULL,
	yellow_cards TINYINT 
		CONSTRAINT CK_football_player_match_statistics_yellow_cards
			CHECK(yellow_cards >= 0 AND yellow_cards <= 2) NULL,
);
