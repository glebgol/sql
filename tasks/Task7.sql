-- �������� � ������� coaches ������� games_count (���������� ���)
ALTER TABLE coaches ADD games_count INT

-- �������� ����������� �� ���� �������
ALTER TABLE coaches ADD CONSTRAINT CK_coaches_games_count CHECK (games_count > 0)
