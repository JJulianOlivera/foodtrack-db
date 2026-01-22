/* PI 4: Evolución del esquema
   Requerimiento: Agregar columna 'comments' a la tabla orders para notas de clientes.
*/

USE "foodtrack-db";

/* Agregamos columna 'comments' permitiendo nulos */
ALTER TABLE orders
ADD comments VARCHAR(255) NULL;

/* Verificación rápida */
SELECT TOP 1 * FROM orders;