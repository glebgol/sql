-- � ������������� ������
SELECT COUNT(*) AS '����������', yellow_cards FROM football_player_match_statistics
GROUP BY ROLLUP (yellow_cards) 

-- ���������� ��� ���� ��������� ������������ ����������.
SELECT transfer_fee, COUNT(*) AS '����������' FROM football_players
GROUP BY CUBE (transfer_fee) 

SELECT assists, goals_scored FROM football_player_match_statistics 
GROUP BY
GROUPING SETS (assists, goals_scored)
