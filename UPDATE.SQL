-- Обновление данных
UPDATE users SET email = 'john_doe_new@example.com' WHERE user_id = 1;
GO

UPDATE products SET price = 550.00 WHERE product_name = 'Smartphone';
GO

UPDATE products SET stock = stock + 10 WHERE product_name = 'Laptop';
GO

-- Удаление данных
DELETE FROM orders WHERE order_id = 1;
GO

DELETE FROM users WHERE user_id = 2;
GO
