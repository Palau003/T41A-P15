-- Función que devuelve el día de la semana a partir de una fecha

CREATE OR REPLACE FUNCTION obtener_dia_semana(fecha DATE)
RETURNS TEXT AS $$
BEGIN
    RETURN TO_CHAR(fecha, 'Day');
END;
$$ LANGUAGE plpgsql;
