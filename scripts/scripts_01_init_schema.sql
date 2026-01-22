/* 1. Desconectar a todos y borrar (SOLUCIÓN AL ERROR 3702) */
USE master;

/* Si la base existe, la ponemos en modo usuario único y cortamos conexiones inmediatamente */
IF EXISTS (SELECT name FROM sys.databases WHERE name = N'foodtrack-db')
BEGIN
    ALTER DATABASE "foodtrack-db" SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE "foodtrack-db";
END

/* 2. Crear y usar la base de datos nueva */
CREATE DATABASE "foodtrack-db";

USE "foodtrack-db";

/* 3. Tabla Principal: FoodTrucks */
CREATE TABLE foodtrucks (
    foodtruck_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    cuisine_type VARCHAR(50),
    city VARCHAR(100)
);

/* 4. Tabla: Products */
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    foodtruck_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT DEFAULT 0,
    CONSTRAINT FK_Products_FoodTrucks FOREIGN KEY (foodtruck_id) REFERENCES foodtrucks(foodtruck_id)
);

/* 5. Tabla: Locations */
CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    foodtruck_id INT NOT NULL,
    location_date DATE,
    zone VARCHAR(100),
    CONSTRAINT FK_Locations_FoodTrucks FOREIGN KEY (foodtruck_id) REFERENCES foodtrucks(foodtruck_id)
);

/* 6. Tabla: Orders */
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    foodtruck_id INT NOT NULL,
    order_date DATE,
    status VARCHAR(50),
    total DECIMAL(10, 2),
    CONSTRAINT FK_Orders_FoodTrucks FOREIGN KEY (foodtruck_id) REFERENCES foodtrucks(foodtruck_id)
);

/* 7. Tabla: Order_Items */
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    CONSTRAINT FK_OrderItems_Orders FOREIGN KEY (order_id) REFERENCES orders(order_id),
    CONSTRAINT FK_OrderItems_Products FOREIGN KEY (product_id) REFERENCES products(product_id)
);