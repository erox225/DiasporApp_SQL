-- ========================================
--  ESTRUCTURA.SQL
--  Crea la base de datos y las tablas
-- ========================================

CREATE DATABASE IF NOT EXISTS DiasporApp;
USE DiasporApp;

-- Inicio de transacción
START TRANSACTION;
SAVEPOINT inicio_script;

-- 1️⃣ Tabla de Estado de las Mesas
CREATE TABLE estado_mesa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    color VARCHAR(20) NOT NULL
);

-- 2️⃣ Tabla de Mesas
CREATE TABLE mesa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

-- 3️⃣ Tabla de Platos
CREATE TABLE plato (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    imagenes JSON NOT NULL, -- Almacenara una lista de imágenes
    tipo ENUM('1er Plato', '2do Plato', 'Postre', 'Bebida') NOT NULL
);

-- 4️⃣ Tabla de Menus
CREATE TABLE menu (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT NOT NULL,
    precio DECIMAL(10,2) NOT NULL
);

-- 5️⃣ Tabla Intermedia Menú - Platos (Relación de Menús con los Platos)
CREATE TABLE menu_plato (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_menu INT NOT NULL,
    id_plato INT NOT NULL,
    FOREIGN KEY (id_menu) REFERENCES menu(id) ON DELETE CASCADE,
    FOREIGN KEY (id_plato) REFERENCES plato(id) ON DELETE CASCADE
);

-- Confirmar los cambios
COMMIT;
