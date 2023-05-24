-- ������� ������ ���� ������
SELECT * FROM people
SELECT * FROM referees
SELECT * FROM coaches
SELECT * FROM teams
SELECT * FROM football_players
SELECT * FROM stadiums
SELECT * FROM tournaments
SELECT * FROM tournaments_teams
SELECT * FROM matches
SELECT * FROM football_player_match_statistics

--������� �����, ��������������� �� ����� � ���������� �������
SELECT * FROM people ORDER BY first_name

--������� �����������, ��������������� � �������� �������
-- �� ����������� ��������� � ���� ��������� ���������
SELECT * FROM football_players ORDER BY transfer_fee, contract_expiration_date DESC

-- ������� ���������� �������, ������ ����������� ����
SELECT DISTINCT '"' + last_name + '"' AS '�������' FROM people

-- ������� 30% ������
SELECT TOP(30) PERCENT * FROM matches

-- ������� 5 �����������
SELECT TOP(5) * FROM football_players

-- ������� ����������� � 4��� �� 7���, ��������������� �� ����������� ���������
SELECT * FROM football_players
ORDER BY transfer_fee DESC
    OFFSET 3 ROWS
    FETCH NEXT 4 ROWS ONLY;

-- ������������� ����� �� ����� + �������
SELECT * FROM people
ORDER BY first_name + last_name
