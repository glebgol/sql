-- ������� ���������� � 1 �������� � 1 �����
SELECT * FROM football_player_match_statistics f WHERE f.assists = 1
INTERSECT
SELECT * FROM football_player_match_statistics f WHERE f.goals_scored = 1

-- ������� ���������� � 0 �������� � 1 ������� ���������
SELECT * FROM football_player_match_statistics f WHERE f.assists = 0
INTERSECT
SELECT * FROM football_player_match_statistics f WHERE f.red_card = 1 OR f.yellow_cards = 2

-- ������� ���������� � 3 ������ ��� ��������
SELECT * FROM football_player_match_statistics f WHERE f.goals_scored = 3
EXCEPT
SELECT * FROM football_player_match_statistics f WHERE f.red_card = 1 OR f.yellow_cards IN (1, 2)

-- ������� ���������� ������� � ���������� ��� ������ ��������
SELECT * FROM football_player_match_statistics f WHERE f.red_card = 1 OR f.yellow_cards IN (1, 2)
EXCEPT
SELECT * FROM football_player_match_statistics f WHERE f.assists = 0 AND f.goals_scored = 0 AND (f.own_goals IS NULL OR f.own_goals = 0);

-- ����� 1 ��� ��� 1 ������
SELECT * FROM football_player_match_statistics f WHERE f.assists = 1
UNION
SELECT * FROM football_player_match_statistics f WHERE f.goals_scored = 1

-- ����� 0 ����� ��� 1 ������
SELECT * FROM football_player_match_statistics f WHERE f.yellow_cards = 1
UNION
SELECT * FROM football_player_match_statistics f WHERE f.goals_scored = 0
