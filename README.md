# FoodTrack Database Project

## Descripción
Este proyecto implementa una base de datos relacional para **FoodTrack**, una plataforma de gestión de foodtrucks. El sistema permite administrar camiones, productos, ubicaciones históricas y el registro de ventas.

El objetivo es demostrar habilidades de **Ingeniería de Datos** utilizando SQL Server, modelado relacional y control de versiones.

## Estructura del Repositorio
El proyecto está organizado de la siguiente manera:

* **/scripts/**: Contiene todo el código SQL necesario.
    * `01_init_schema.sql`: Creación de tablas y relaciones.
    * `02_seed_data.sql`: Datos de prueba (inserts manuales).
    * `03_add_comments_to_orders.sql`: Evolución del esquema (alter table).
    * `04_validation_queries.sql`: Consultas para verificar datos.
* **/data/**: Archivos CSV fuente utilizados para la carga masiva.
    * `foodtrucks.csv`, `products.csv`, `orders.csv`, etc.

## Tecnologías
* **Motor:** Microsoft SQL Server
* **Herramienta:** DBeaver
* **Control de Versiones:** Git & GitHub

## Cómo empezar
1.  Ejecuta el script `01_init_schema.sql` para crear la estructura.
2.  Importa los CSV de la carpeta `/data/` usando DBeaver (respetando el orden de dependencias).
3.  Ejecuta `04_validation_queries.sql` para confirmar que todo funciona.