-- ========================================
--  ESTRUCTURA-ROLLBACK.SQL
--  Elimina las tablas en caso de rollback
-- ========================================

USE DiasporApp;

-- Inicio de transacción
START TRANSACTION;
SAVEPOINT rollback_script;

DROP TABLE IF EXISTS menu_plato;
DROP TABLE IF EXISTS menu;
DROP TABLE IF EXISTS plato;
DROP TABLE IF EXISTS mesa;
DROP TABLE IF EXISTS estado_mesa;

-- Confirmar eliminación de tablas
COMMIT;
