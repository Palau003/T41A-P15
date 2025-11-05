import psycopg2
from datetime import date

def test_functions():
    conn = psycopg2.connect(
        dbname='test_db',
        user='postgres',
        password='postgres',
        host='localhost',
        port='5432'
    )
    cur = conn.cursor()

    # Calcular descuento
    cur.execute("SELECT calcular_descuento(1000, 10);")
    resultado = cur.fetchone()[0]
    assert round(resultado, 2) == 900.00

    # 2️⃣ Validar email
    cur.execute("SELECT validar_email('usuario@test.com');")
    assert cur.fetchone()[0] is True
    cur.execute("SELECT validar_email('usuario.test.com');")
    assert cur.fetchone()[0] is False

    # Productos con bajo stock
    cur.execute("SELECT * FROM productos_con_stock_bajo(5);")
    productos = cur.fetchall()
    assert all(p[2] < 5 for p in productos)
    assert len(productos) >= 1

    # Día de la semana
    cur.execute("SELECT obtener_dia_semana('2025-11-03');")
    dia = cur.fetchone()[0].strip()
    assert dia in ['Monday', 'Lunes']  # depende del idioma del sistema

    # Contar empleados en TI (id 1)
    cur.execute("SELECT contar_empleados(1);")
    count = cur.fetchone()[0]
    assert count == 3

    cur.close()
    conn.close()
