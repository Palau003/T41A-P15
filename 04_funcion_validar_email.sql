-- Función para validar si un correo contiene '@'

CREATE OR REPLACE FUNCTION validar_email(correo TEXT)
RETURNS BOOLEAN AS $$
BEGIN
    RETURN POSITION('@' IN correo) > 0;
END;
$$ LANGUAGE plpgsql;
