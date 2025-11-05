-- Función que cuenta cuántos empleados hay en un departamento

CREATE OR REPLACE FUNCTION contar_empleados(dep_id INT)
RETURNS INT AS $$
DECLARE
    total INT;
BEGIN
    SELECT COUNT(*) INTO total
    FROM empleados
    WHERE departamento_id = dep_id;
    RETURN total;
END;
$$ LANGUAGE plpgsql;
