set nocount on
USE master
GO

if exists (select * from sysdatabases where name='Cake')
begin
  raiserror('Dropping existing Cake database ....',0,1)
  DROP database Cake
end
GO

CHECKPOINT
go

raiserror('Creating Cake database....',0,1)
go
   CREATE DATABASE Cake
GO

CHECKPOINT
GO

USE Cake
GO
raiserror('Creating Table Products....',0,1)
CREATE TABLE products (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(MAX) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category VARCHAR(50) NOT NULL,
	image VARCHAR(255)
);
GO
raiserror('Creating Table staff....',0,1)
CREATE TABLE staff (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    position VARCHAR(50) NOT NULL
);
GO
raiserror('Creating Table customers....',0,1)
CREATE TABLE customers (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) NOT NULL
);
GO
raiserror('Creating Table orders....',0,1)
CREATE TABLE orders (
    id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customers(id)
);
GO
raiserror('Creating Table order_items....',0,1)
CREATE TABLE order_items (
    id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES orders(id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES products(id)
);
GO
raiserror('Creating Table classes....',0,1)
CREATE TABLE classes (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(MAX) NOT NULL
);
GO
raiserror('Insert data products....',0,1)
-- Populate the products table
INSERT INTO products (name, description, price, category, image)
VALUES ('Red Velvet Cake', 'A classic red velvet cake with cream cheese frosting', 34.99, 'Cakes', 'red_velvet_cake.jpg'),
	   ('Blueberry Muffin', 'A delicious muffin filled with fresh blueberries', 2.99, 'Muffins', 'blueberry_muffin.jpg'),
	   ('Chocolate Chip Cookie', 'A classic cookie with chunks of chocolate', 1.99, 'Cookies', 'chocolate_chip_cookie.jpg'),
	   ('Croissant', 'A flaky pastry with a buttery flavor', 2.49, 'Pastries', 'croissant.jpg'),
	   ('Apple Pie', 'A warm and comforting pie filled with sweet apples', 19.99, 'Pies', 'apple_pie.jpg');
GO
raiserror('Insert data staff....',0,1)
-- Populate the staff table
INSERT INTO staff (name, position)
VALUES ('Sarah', 'Head Baker'),
       ('Jack', 'Assistant Baker'),
       ('Emily', 'Pastry Chef');
GO
raiserror('Insert data customers....',0,1)
-- Populate the customers table
INSERT INTO customers (name, email, phone_number)
VALUES ('John Doe', 'johndoe@example.com', '555-1234'),
       ('Jane Smith', 'janesmith@example.com', '555-5678');
GO
raiserror('Insert data orders....',0,1)
-- Populate the orders table
INSERT INTO orders (customer_id, order_date, total_amount)
VALUES (1, '2023-02-22', 8.97),
       (2, '2023-02-23', 27.47); 
GO
raiserror('Insert data order_items....',0,1)
-- Populate the order_items table
INSERT INTO order_items (order_id, product_id, quantity, unit_price)
VALUES (1, 1, 3, 2.99),
       (2, 2, 1, 19.99),
       (2, 3, 1, 24.99),
       (2, 5, 2, 1.49);
GO
raiserror('Insert data classes....',0,1)
-- Populate the classes table
INSERT INTO classes (name, description)
VALUES ('Cookie Class', 'Learn how to make a variety of delicious cookies.'),
       ('Butter Class', 'Learn how to make rich, buttery cakes and pastries.');
