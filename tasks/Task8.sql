-- ������� ����������� ����������� ��������� ����������
SELECT MIN(transfer_fee) AS '����������� ����������� ���������' FROM football_players;

-- ������� ������� ����������� ��������� ����������
SELECT AVG(transfer_fee) AS '������� ����������� ���������' FROM football_players;

-- ������� ���������� ���������� �������� �� �����
SELECT MAX(number_of_fans) AS '���������� ���������� ��������' FROM matches

-- ����� ��������� ����������� ��������� �����������
SELECT SUM(transfer_fee) AS '��������� ����������� ���������' FROM football_players

-- ����� ���������� ����������� � ����������� ���������� ������ 10000
SELECT COUNT(*) AS '���������� ����������� � ����������� ���������� ������ 10000' FROM football_players
WHERE transfer_fee > 10000
