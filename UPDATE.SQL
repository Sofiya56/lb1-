USE FarmDB;
GO

-- Оновлення назви культури
UPDATE Crop SET name = 'Озима пшениця' WHERE crop_id = 1;

-- Зміна площі ділянки
UPDATE Field SET area = 55.0 WHERE field_id = 1;

-- Видалення техніки з бригади
DELETE FROM Brigade_Machinery WHERE brigade_id = 2 AND machinery_id = 2;

-- Додавання нового працівника у бригаду
INSERT INTO Worker (worker_id, full_name, brigade_id) VALUES
(4, 'Ткаченко Сергій', 1);

