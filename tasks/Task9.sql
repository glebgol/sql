-- сгруппировать футболистов по трансферной стоимости
SELECT transfer_fee, COUNT(*) AS 'Количество' FROM football_players
GROUP BY transfer_fee

-- сгруппировать статистику футболистов по желтым карточкам
SELECT COUNT(*) AS 'Количество', yellow_cards FROM football_player_match_statistics
GROUP BY yellow_cards