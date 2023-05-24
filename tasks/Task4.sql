-- ������������� ����������� �� ����������� ���������
SELECT * FROM football_players
WHERE transfer_fee < 100000

-- ������������� �������� �� ���������������
SELECT * FROM stadiums
WHERE capacity > 20000

-- ������� ����� � ����������� ������ < 70 � ����������� ������ �������� > 10
SELECT * FROM referees
WHERE yellow_cards_count > 10 AND games_count < 70

-- ������� ����� � ����������� ������ > 80 ��� ����������� ������� �������� > 10
SELECT * FROM referees
WHERE red_cards_count > 10 AND games_count > 80

-- ������� ������� �� �������
SELECT * FROM teams
WHERE city = 'Madrid'

-- ������� ���������� ����������� ������� 1 ������ ��������
SELECT * FROM football_player_match_statistics
WHERE yellow_cards = 1

-- ������� ���������� ����������� ���������� ������� ��������
SELECT * FROM football_player_match_statistics
WHERE yellow_cards = 2 OR red_card = 1