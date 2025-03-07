-- ========================================
--  INIT-MYSQL.SQL
--  Crea la base de datos y ejecuta los scripts de estructura y datos maestros
-- ========================================

-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS diasporapp;
USE diasporapp;

-- Ejecutar los scripts de estructura y datos maestros si no existen las tablas
SOURCE /docker-entrypoint-initdb.d/Scripts/Estructura/Estructura.sql;
SOURCE /docker-entrypoint-initdb.d/Scripts/Maestros/Maestros.sql;
