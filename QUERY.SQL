USE FarmDB;
GO

-- 1. Вивести всі ділянки та їхні культури
SELECT f.field_id, f.area, c.name AS crop_name
FROM Field f
LEFT JOIN Crop c ON f.crop_id = c.crop_id;

-- 2. Показати список працівників разом із бригадою
SELECT w.full_name, b.chief_name AS brigade_chief
FROM Worker w
JOIN Brigade b ON w.brigade_id = b.brigade_id;

-- 3. Вивести працівників та техніку, з якою вони працюють
SELECT w.full_name, am.name AS machinery_name
FROM Worker_Skills ws
JOIN Worker w ON ws.worker_id = w.worker_id
JOIN AgriculturalMachinery am ON ws.machinery_id = am.machinery_id;

-- 4. Показати ділянки, що потребують зрошення
SELECT field_id, area FROM Field WHERE irrigation = 1;

-- 5. Знайти культури, які потребують певного добрива
SELECT c.name AS crop_name, f.name AS fertilizer_name
FROM Crop_Fertilizer cf
JOIN Crop c ON cf.crop_id = c.crop_id
JOIN Fertilizer f ON cf.fertilizer_id = f.fertilizer_id;

