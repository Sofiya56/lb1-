-- Добавление пользователей
INSERT INTO users (username, email, phone_number, address) VALUES 
('john_doe', 'john@example.com', '123-456-7890', '123 Main St'),
('jane_doe', 'jane@example.com', '098-765-4321', '456 Elm St');
GO

-- Добавление товаров
INSERT INTO products (product_name, price, stock) VALUES 
('Laptop', 1000.00, 50),
('Smartphone', 500.00, 100);
GO

-- Добавление заказов
INSERT INTO orders (user_id, product_id, quantity) VALUES 
(1, 2, 1),
(2, 1, 2);
GO
