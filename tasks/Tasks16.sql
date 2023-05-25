-- выбрать имена из 5 символов
SELECT first_name FROM people
WHERE LEN(first_name) = 5;

-- выбрать имена, начинающиеся на An
SELECT first_name FROM people
WHERE LEFT(first_name, 2) = 'An';

-- соединить имя и фамилию с помощью функции
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM people

-- свыбрать имена caps lockом
SELECT UPPER(first_name) AS first_name FROM people
