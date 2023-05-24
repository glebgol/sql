-- ������������� ����������� �� ���� ��������� ���������
SELECT contract_expiration_date, COUNT(*) AS '����������' FROM football_players
GROUP BY contract_expiration_date
HAVING SUM(transfer_fee) > 10000

-- ������������� ���������� ������ �����������, �� �������� �����, �� ������ ���������
SELECT COUNT(*) AS '����������', yellow_cards FROM football_player_match_statistics
GROUP BY yellow_cards
HAVING SUM(goals_scored) = 0;