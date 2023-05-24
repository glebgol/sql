-- сгруппировать футболистов по дате истечения контракта
SELECT contract_expiration_date, COUNT(*) AS 'Количество' FROM football_players
GROUP BY contract_expiration_date
HAVING SUM(transfer_fee) > 10000

-- сгруппировать статистику матчей футболистов, не забивших голов, по желтым карточкам
SELECT COUNT(*) AS 'Количество', yellow_cards FROM football_player_match_statistics
GROUP BY yellow_cards
HAVING SUM(goals_scored) = 0;