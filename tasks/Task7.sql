-- добавить к таблице coaches столбец games_count (количество игр)
ALTER TABLE coaches ADD games_count INT

-- добавить ограничение на этот столбец
ALTER TABLE coaches ADD CONSTRAINT CK_coaches_games_count CHECK (games_count > 0)
