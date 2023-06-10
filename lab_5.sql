-- Створення користувачів з типовими задачами:
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password1';
CREATE USER 'user2'@'localhost' IDENTIFIED BY 'password2';
CREATE USER 'user3'@'localhost' IDENTIFIED BY 'password3';

-- Надання привілеїв користувачам відповідно до їх типових задач:
GRANT SELECT, INSERT, UPDATE, DELETE ON airport.planes TO 'user1'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON airport.flights TO 'user2'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON airport.crew_members TO 'user3'@'localhost';

-- Створення ролей з типовими задачами
CREATE ROLE 'role1';
CREATE ROLE 'role2';
CREATE ROLE 'role3';

-- Надання привілеїв ролям
GRANT SELECT, INSERT, UPDATE, DELETE ON airport.planes TO 'role1';
GRANT SELECT, INSERT, UPDATE, DELETE ON airport.flights TO 'role2';
GRANT SELECT, INSERT, UPDATE, DELETE ON airport.crew_members TO 'role3';

-- Призначення ролей користувачам
GRANT 'role1' TO 'user1'@'localhost';
GRANT 'role2' TO 'user2'@'localhost';
GRANT 'role3' TO 'user3'@'localhost';

-- Відкликання привілеїв у користувача, що призначений через роль
REVOKE SELECT ON airport.planes FROM 'role1';

-- Відкликання ролі у користувача
REVOKE 'role1' FROM 'user1'@'localhost';

-- Видалення ролей
DROP ROLE 'role1';
DROP ROLE 'role2';
DROP ROLE 'role3';

-- Видалення користувачів
DROP USER 'user1'@'localhost';
DROP USER 'user2'@'localhost';
DROP USER 'user3'@'localhost';