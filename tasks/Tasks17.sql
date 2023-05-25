-- окгруглить до целых трансферную стоимость
SELECT ROUND(transfer_fee, 0) FROM football_players;

-- окгруглить до 1 знака после запятой трансферную стоимость
SELECT ROUND(transfer_fee, 1) FROM football_players;

-- окгруглить до меньшего целого трансферную стоимость
SELECT CEILING(transfer_fee) FROM football_players;

-- окгруглить до большего целого трансферную стоимость
SELECT FLOOR(transfer_fee) FROM football_players;