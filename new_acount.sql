INSERT INTO users (username, email, password_hash, status) VALUES
('user1', 'user1@example.com', 'hashed_password1', 'active'),
('user2', 'user2@example.com', 'hashed_password2', 'active'),
('user3', 'user3@example.com', 'hashed_password3', 'inactive'),
('user4', 'user4@example.com', 'hashed_password4', 'inactive'),
('user5', 'user5@example.com', 'hashed_password5', 'active'),
('user6', 'user6@example.com', 'hashed_password6', 'inactive'),
('user7', 'user7@example.com', 'hashed_password7', 'active'),
('user8', 'user8@example.com', 'hashed_password8', 'inactive'),
('user9', 'user9@example.com', 'hashed_password9', 'active'),
('user10', 'user10@example.com', 'hashed_password10', 'inactive');


SELECT * 
FROM users 
WHERE status = 'active';


SELECT * 
FROM users 
WHERE status = 'inactive';

SELECT username, email, status
FROM users
WHERE username = 'user9';

SELECT * FROM users;

INSERT INTO users (username, email, password_hash, status) VALUES
('John', 'john@example.com', 'hashed_password1', 'active'),
('Anna', 'anna@example.com', 'hashed_password2', 'inactive'),
('Mika', 'mika@example.com', 'hashed_password3', 'active');

SELECT password_hash, COUNT(*) AS password_count
FROM users
GROUP BY password_hash
HAVING COUNT(*) > 1;


