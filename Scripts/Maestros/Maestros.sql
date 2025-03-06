-- ========================================
--  MAESTROS.SQL
--  Inserta datos iniciales en las tablas
-- ========================================

USE DiasporApp;

-- Inicio de transacción
START TRANSACTION;
SAVEPOINT inicio_maestros;

-- Insertar estados de las mesas
INSERT INTO estado_mesa (nombre, color) VALUES 
('Libre', 'verde'),
('Reservado', 'azul'),
('Esperando Pedir', 'amarillo'),
('Esperando Comida', 'naranja'),
('Comiendo', 'rojo'),
('A pagar', 'morado');

-- Insertar tipos de platos en la tabla de platos (Ejemplo de datos)
INSERT INTO plato (nombre, descripcion, precio, imagenes, tipo) VALUES 
('Sancocho', 'Es un sancocho muy sabroso', 8.00, '[\"sancocho.png\"]', '1er Plato'),
('Arepa', 'Arepa rellena con queso', 3.50, '[\"arepa.png\"]', '1er Plato');

-- Insertar menús de ejemplo
INSERT INTO menu (nombre, descripcion, precio) VALUES 
('Menú del Día Lunes', 'Este es el menú del día', 14.00);

-- Relacionar menús con platos
INSERT INTO menu_plato (id_menu, id_plato) VALUES 
(1, 1), (1, 2);

-- Confirmar inserción de datos
COMMIT;
