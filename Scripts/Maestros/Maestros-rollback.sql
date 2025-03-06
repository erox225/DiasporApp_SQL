-- ========================================
--  MAESTROS-ROLLBACK.SQL
--  Elimina los datos insertados en caso de rollback
-- ========================================

USE DiasporApp;

-- Inicio de transacción
START TRANSACTION;
SAVEPOINT rollback_maestros;

-- Eliminar datos de las tablas maestras
DELETE FROM menu_plato;
DELETE FROM menu;
DELETE FROM plato;
DELETE FROM estado_mesa;

-- Confirmar eliminación de datos
COMMIT;
