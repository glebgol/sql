-- ���������� �� ����� ����������� ���������
SELECT ROUND(transfer_fee, 0) FROM football_players;

-- ���������� �� 1 ����� ����� ������� ����������� ���������
SELECT ROUND(transfer_fee, 1) FROM football_players;

-- ���������� �� �������� ������ ����������� ���������
SELECT CEILING(transfer_fee) FROM football_players;

-- ���������� �� �������� ������ ����������� ���������
SELECT FLOOR(transfer_fee) FROM football_players;