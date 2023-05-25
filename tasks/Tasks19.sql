-- �������� ��������� �����������
DECLARE @football_player TABLE (people_id INT, country NVARCHAR(20))

INSERT INTO @football_player
VALUES(1, 'Russia'),
(2, 'Belarus');

-- �������� ��������� ��������� �������
CREATE TABLE #football_player (people_id INT, country NVARCHAR(20))

INSERT INTO #football_player
VALUES(1, 'Russia'),
(2, 'Belarus');

-- �������� ���������� ��������� �������
CREATE TABLE ##football_player (people_id INT, country NVARCHAR(20))

INSERT INTO ##football_player
VALUES(1, 'Russia'),
(2, 'Belarus')
 
--�������� ����������� ���������� ���������

WITH info AS
(
    SELECT t.name, t.city, p.first_name 
	FROM teams t
	JOIN coaches c ON t.coach_id = c.id
	JOIN people p ON p.id = c.people_id
)
 
SELECT * FROM info
