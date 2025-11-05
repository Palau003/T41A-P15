-- Función para calcular el precio con descuento

CREATE OR REPLACE FUNCTION calcular_descuento(
    precio NUMERIC,
    porcentaje NUMERIC
)
RETURNS NUMERIC AS $$
BEGIN
    RETURN precio - (precio * porcentaje / 100);
END;
$$ LANGUAGE plpgsql;
