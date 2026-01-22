USE "foodtrack-db";

/* 1. Cargar FoodTrucks */
INSERT INTO foodtrucks (foodtruck_id, name, cuisine_type, city) VALUES (1, 'Taco Loco', 'Mexicana', 'Ciudad de México');
INSERT INTO foodtrucks (foodtruck_id, name, cuisine_type, city) VALUES (2, 'Burger Bros', 'Americana', 'Buenos Aires');

/* 2. Cargar Products */
INSERT INTO products (product_id, foodtruck_id, name, price, stock) VALUES (101, 1, 'Taco al pastor', 50, 100);
INSERT INTO products (product_id, foodtruck_id, name, price, stock) VALUES (102, 1, 'Quesadilla', 40, 80);
INSERT INTO products (product_id, foodtruck_id, name, price, stock) VALUES (103, 2, 'Cheeseburger', 70, 120);
INSERT INTO products (product_id, foodtruck_id, name, price, stock) VALUES (104, 2, 'Papas fritas', 30, 150);

/* 3. Cargar Locations */
INSERT INTO locations (location_id, foodtruck_id, location_date, zone) VALUES (1, 1, '2023-09-01', 'Centro');
INSERT INTO locations (location_id, foodtruck_id, location_date, zone) VALUES (2, 2, '2023-09-01', 'Parque');

/* 4. Cargar Orders */
INSERT INTO orders (order_id, foodtruck_id, order_date, status, total) VALUES (1001, 1, '2023-09-01', 'entregado', 90);
INSERT INTO orders (order_id, foodtruck_id, order_date, status, total) VALUES (1002, 2, '2023-09-01', 'pendiente', 100);

/* 5. Cargar Order_Items */
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (1, 1001, 101, 1);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (2, 1002, 103, 1);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES (3, 1002, 104, 1);