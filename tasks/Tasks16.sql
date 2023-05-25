-- ������� ����� �� 5 ��������
SELECT first_name FROM people
WHERE LEN(first_name) = 5;

-- ������� �����, ������������ �� An
SELECT first_name FROM people
WHERE LEFT(first_name, 2) = 'An';

-- ��������� ��� � ������� � ������� �������
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM people

-- �������� ����� caps lock��
SELECT UPPER(first_name) AS first_name FROM people
