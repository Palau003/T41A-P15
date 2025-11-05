-- Función que devuelve los productos con stock menor al valor dado

CREATE OR REPLACE FUNCTION productos_con_stock_bajo(min_stock INT)
RETURNS TABLE(id INT, nombre TEXT, stock INT) AS $$
BEGIN
    RETURN QUERY
    SELECT id, nombre, stock
    FROM productos
    WHERE stock < min_stock;
END;
$$ LANGUAGE plpgsql;
