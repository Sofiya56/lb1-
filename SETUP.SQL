CREATE DATABASE FarmDB;
GO

USE FarmDB;
GO

-- Таблиця Культура
CREATE TABLE Crop (
    crop_id INT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    avg_yield DECIMAL(10,2) NOT NULL,
    needs_irrigation BIT NOT NULL
);

-- Таблиця Бригада
CREATE TABLE Brigade (
    brigade_id INT PRIMARY KEY,
    chief_name VARCHAR(100) UNIQUE NOT NULL
);

-- Таблиця Працівник
CREATE TABLE Worker (
    worker_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    brigade_id INT NOT NULL,
    FOREIGN KEY (brigade_id) REFERENCES Brigade(brigade_id)
);

-- Таблиця Ділянка
CREATE TABLE Field (
    field_id INT PRIMARY KEY,
    area DECIMAL(10,2) NOT NULL,
    irrigation BIT NOT NULL,
    crop_id INT NULL,
    brigade_id INT NOT NULL,
    FOREIGN KEY (crop_id) REFERENCES Crop(crop_id),
    FOREIGN KEY (brigade_id) REFERENCES Brigade(brigade_id)
);

-- Таблиця Сільгосптехніка
CREATE TABLE AgriculturalMachinery (
    machinery_id INT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

-- Таблиця Сільгосптехніка у бригаді
CREATE TABLE Brigade_Machinery (
    brigade_id INT,
    machinery_id INT,
    quantity INT NOT NULL,
    PRIMARY KEY (brigade_id, machinery_id),
    FOREIGN KEY (brigade_id) REFERENCES Brigade(brigade_id),
    FOREIGN KEY (machinery_id) REFERENCES AgriculturalMachinery(machinery_id)
);

-- Таблиця Навички працівника
CREATE TABLE Worker_Skills (
    worker_id INT,
    machinery_id INT,
    PRIMARY KEY (worker_id, machinery_id),
    FOREIGN KEY (worker_id) REFERENCES Worker(worker_id),
    FOREIGN KEY (machinery_id) REFERENCES AgriculturalMachinery(machinery_id)
);

-- Таблиця Добрива
CREATE TABLE Fertilizer (
    fertilizer_id INT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

-- Таблиця Добрива, внесені на ділянку
CREATE TABLE Field_Fertilizer (
    field_id INT,
    fertilizer_id INT,
    PRIMARY KEY (field_id, fertilizer_id),
    FOREIGN KEY (field_id) REFERENCES Field(field_id),
    FOREIGN KEY (fertilizer_id) REFERENCES Fertilizer(fertilizer_id)
);

-- Таблиця Добрива, необхідні для культури
CREATE TABLE Crop_Fertilizer (
    crop_id INT,
    fertilizer_id INT,
    PRIMARY KEY (crop_id, fertilizer_id),
    FOREIGN KEY (crop_id) REFERENCES Crop(crop_id),
    FOREIGN KEY (fertilizer_id) REFERENCES Fertilizer(fertilizer_id)
);

