USE "foodtrack-db";

/* PI 6: Tabla para registrar errores de carga automática */
CREATE TABLE failed_orders (
    error_id INT IDENTITY(1,1) PRIMARY KEY,
    order_id_attempted INT,
    error_message VARCHAR(MAX),
    error_date DATETIME DEFAULT GETDATE()
);