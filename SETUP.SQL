-- Создание базы данных
CREATE DATABASE my_shop;
GO

USE my_shop;
GO

-- Создание таблиц
CREATE TABLE users (
    user_id INT IDENTITY PRIMARY KEY,
    username NVARCHAR(50),
    email NVARCHAR(100),
    phone_number NVARCHAR(20),
    created_at DATETIME DEFAULT GETDATE()
);
GO

CREATE TABLE products (
    product_id INT IDENTITY PRIMARY KEY,
    product_name NVARCHAR(100),
    price DECIMAL(10, 2),
    stock INT DEFAULT 0
);
GO

CREATE TABLE orders (
    order_id INT IDENTITY PRIMARY KEY,
    user_id INT,
    product_id INT,
    quantity INT,
    order_date DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
GO

-- Добавление столбца в таблицу пользователей
ALTER TABLE users ADD address NVARCHAR(255);
GO
