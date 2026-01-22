USE "foodtrack-db";

/* Consulta general para ver ventas detalladas */
SELECT 
    f.name as FoodTruck, 
    o.order_date, 
    p.name as Producto, 
    oi.quantity, 
    o.total 
FROM orders o
JOIN foodtrucks f ON o.foodtruck_id = f.foodtruck_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

/* Verificación de cantidad de registros por tabla */
SELECT 'foodtrucks' AS Tabla, COUNT(*) AS Total FROM foodtrucks
UNION ALL
SELECT 'products', COUNT(*) FROM products
UNION ALL
SELECT 'locations', COUNT(*) FROM locations
UNION ALL
SELECT 'orders', COUNT(*) FROM orders
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items;