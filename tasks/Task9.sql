-- ������������� ����������� �� ����������� ���������
SELECT transfer_fee, COUNT(*) AS '����������' FROM football_players
GROUP BY transfer_fee

-- ������������� ���������� ����������� �� ������ ���������
SELECT COUNT(*) AS '����������', yellow_cards FROM football_player_match_statistics
GROUP BY yellow_cards