-- Crea una vista de ejemplo
CREATE OR REPLACE VIEW vista_ti AS
SELECT nombre, departamento
FROM empleados
WHERE departamento = 'TI';
