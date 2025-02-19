USE FarmDB;
GO

-- Додавання культур
INSERT INTO Crop (crop_id, name, avg_yield, needs_irrigation) VALUES
(1, 'Пшениця', 3.5, 0),
(2, 'Кукурудза', 6.2, 1),
(3, 'Соняшник', 2.8, 0);

-- Додавання бригад
INSERT INTO Brigade (brigade_id, chief_name) VALUES
(1, 'Іванов Іван'),
(2, 'Петров Петро');

-- Додавання працівників
INSERT INTO Worker (worker_id, full_name, brigade_id) VALUES
(1, 'Сидоренко Олексій', 1),
(2, 'Коваленко Андрій', 1),
(3, 'Мельник Олег', 2);

-- Додавання ділянок
INSERT INTO Field (field_id, area, irrigation, crop_id, brigade_id) VALUES
(1, 50.5, 1, 2, 1),
(2, 30.0, 0, 1, 2);

-- Додавання сільгосптехніки
INSERT INTO AgriculturalMachinery (machinery_id, name) VALUES
(1, 'Трактор МТЗ'),
(2, 'Комбайн John Deere');

-- Призначення техніки бригадам
INSERT INTO Brigade_Machinery (brigade_id, machinery_id, quantity) VALUES
(1, 1, 2),
(2, 2, 1);

-- Навички працівників
INSERT INTO Worker_Skills (worker_id, machinery_id) VALUES
(1, 1),
(2, 2),
(3, 1);

-- Додавання добрив
INSERT INTO Fertilizer (fertilizer_id, name) VALUES
(1, 'Азотне'),
(2, 'Фосфорне');

-- Використання добрив на ділянках
INSERT INTO Field_Fertilizer (field_id, fertilizer_id) VALUES
(1, 1),
(2, 2);

-- Добрива, що потрібні культурам
INSERT INTO Crop_Fertilizer (crop_id, fertilizer_id) VALUES
(1, 1),
(2, 2);
