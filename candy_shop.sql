-- Създаване на базата данни за магазин за бонбони
CREATE DATABASE IF NOT EXISTS candy_shop;
USE candy_shop;

-- Създаване на таблица за бонбоните
CREATE TABLE candies (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    flavor VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- Вмъкване на първоначални данни в таблицата за бонбоните
INSERT INTO candies (name, flavor, price) VALUES
    ('Ментови бонбони', 'Мента', 1.99),
    ('Ванилови бонбони', 'Ванилия', 2.49),
    ('Ягодови бонбони', 'Ягода', 1.79);

CREATE TABLE stock (
    id INT PRIMARY KEY AUTO_INCREMENT,
    candy_id INT,
    quantity INT,
    FOREIGN KEY (candy_id) REFERENCES candies(id)
);

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    address VARCHAR(255),
    phone VARCHAR(20)
);

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    total_price DECIMAL(10, 2),
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);
