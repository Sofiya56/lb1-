-- Все пользователи
SELECT * FROM users;
GO

-- Все товары
SELECT product_name, price, stock FROM products;
GO

-- Заказы конкретного пользователя
SELECT o.order_id, o.order_date, p.product_name, o.quantity 
FROM orders o JOIN products p ON o.product_id = p.product_id 
WHERE o.user_id = 1;
GO

-- Количество заказов каждого пользователя
SELECT u.username, COUNT(o.order_id) AS order_count
FROM users u LEFT JOIN orders o ON u.user_id = o.user_id
GROUP BY u.username;
GO

-- Товары с малым количеством на складе
SELECT product_name, stock 
FROM products 
WHERE stock < 10;
GO
