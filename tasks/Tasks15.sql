-- выбрать стадионы без Camp Nou и Santiago Bernabeu
SELECT * FROM stadiums
WHERE name NOT IN ('Camp Nou', 'Santiago Bernabeёu');

-- выбрать самого дорогого футболиста
SELECT fp.transfer_fee, p.first_name, p.last_name FROM football_players fp
JOIN people p ON p.id = fp.people_id
WHERE transfer_fee >= ALL (SELECT transfer_fee FROM football_players);

-- выбрать футболистов трансферная стоимость которых меньше любого футболиста с датой истечения контракта > '2021-10-10'
SELECT fp.transfer_fee, p.first_name, p.last_name FROM football_players fp
JOIN people p ON p.id = fp.people_id
WHERE transfer_fee < ANY (SELECT transfer_fee FROM football_players WHERE contract_expiration_date > '2021-10-10');

SELECT * FROM football_players fp WHERE EXISTS (SELECT * FROM teams WHERE fp.team_id = id);
