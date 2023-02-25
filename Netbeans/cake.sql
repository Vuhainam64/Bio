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
-- Create Products table
raiserror('Creating Table Products....',0,1)
CREATE TABLE Products (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    category VARCHAR(50) NOT NULL,
    image VARCHAR(255) NOT NULL
);
GO
-- Create Products table
raiserror('Creating Table Customers....',0,1)
CREATE TABLE Customers (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL
);
GO
-- Create Products table
raiserror('Creating Table Orders....',0,1)
CREATE TABLE Orders (
    id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id VARCHAR(50) NOT NULL,
    order_date DATETIME NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
);
GO
-- Create Products table
raiserror('Creating Table OrderItem....',0,1)
CREATE TABLE OrderItem (
    id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(id),
    FOREIGN KEY (product_id) REFERENCES Products(id)
);
GO
USE Cake;
GO

ALTER TABLE Products
ADD Tags VARCHAR(255),
    Image1 VARCHAR(255),
    Image2 VARCHAR(255),
    Image3 VARCHAR(255),
    Image4 VARCHAR(255),
    Image5 VARCHAR(255);
GO
-- Create the Subscription table
raiserror('Creating Table Subscription....',0,1)
CREATE TABLE Subscription (
    email VARCHAR(255) PRIMARY KEY,
    date_subscribed DATETIME NOT NULL
);

GO
-- Populate the Products table
raiserror('Insert Table Products....',0,1)
go
raiserror('Set IDENTITY_INSERT Table Products On....',0,1)
SET IDENTITY_INSERT Products ON
INSERT INTO Products (id, name, description, price, category, image, Tags, Image1, Image2, Image3, Image4, Image5)
VALUES 
(1, 'Dozen Cupcakes', 'Dozen cupcakes typically refer to a set of 12 small cakes that are usually baked in a muffin tin and decorated with frosting or other toppings.', 32.00, 'Cupcake', 'https://themewagon.github.io/cake/img/shop/product-1.jpg', 'cupcake, dozen cupcakes, muffin', NULL, NULL, NULL, NULL, NULL),
(2, 'Cookies and Cream', 'Cookies and cream typically refers to a flavor combination that features crumbled chocolate cookies (such as Oreo cookies) mixed into a vanilla-flavored base, such as ice cream or frosting.', 30.00, 'Cupcake', 'https://themewagon.github.io/cake/img/shop/product-2.jpg', 'cookies and cream, cupcake', NULL, NULL, NULL, NULL, NULL),
(3, 'Gluten Free Mini Dozen', 'Gluten-free mini dozen refers to a set of twelve small baked goods that are made without gluten, a protein found in wheat, barley, and rye.', 31.00, 'Cupcake', 'https://themewagon.github.io/cake/img/shop/product-3.jpg', 'gluten-free, mini dozen, cupcake', NULL, NULL, NULL, NULL, NULL),
(4, 'Cookie Dough', 'Cookie dough refers to a mixture of ingredients that are used to make cookies but have not yet been baked.', 25.00, 'Cupcake', 'https://themewagon.github.io/cake/img/shop/product-4.jpg', 'cookie dough, cupcake', NULL, NULL, NULL, NULL, NULL),
(5, 'Vanilla Salted Caramel', 'Vanilla salted caramel refers to a flavor combination that features the sweet and creamy taste of vanilla paired with the rich, buttery flavor of salted caramel.', 5.00, 'Cupcake', 'https://themewagon.github.io/cake/img/shop/product-5.jpg', 'vanilla, salted caramel, cupcake', NULL, NULL, NULL, NULL, NULL),
(6, 'German Chocolate', 'German chocolate refers to a type of chocolate cake that is made with a unique combination of ingredients.', 14.00, 'Cupcake', 'https://themewagon.github.io/cake/img/shop/product-6.jpg', 'german chocolate, chocolate, cake, cupcake', NULL, NULL, NULL, NULL, NULL),
(7, 'Dulce De Leche', 'Dulce de leche is a thick, creamy caramel sauce that is popular in Latin American cuisine. It is made by slowly heating sweetened condensed milk until it thickens and turns a golden brown color.', 32.00, 'Cupcake', 'https://themewagon.github.io/cake/img/shop/product-7.jpg', 'dulce de leche, caramel, sauce, cupcake', NULL, NULL, NULL, NULL, NULL),
(8, 'Mississippi Mud', 'Mississippi mud is a rich and decadent dessert that typically consists of a chocolate cake base topped with marshmallows, chocolate frosting, and sometimes nuts or other toppings.', 8.00, 'Cupcake', 'https://themewagon.github.io/cake/img/shop/product-8.jpg', 'mississippi mud, chocolate, cake, marshmallows, frosting, nuts, cupcake', NULL, NULL, NULL, NULL, NULL),
(9, 'Sri Lankan', 'Sri Lankan Butter Cake, also known as "Milk Toffee Cake," is a rich and buttery cake that is popular in Sri Lanka. It is typically made with ingredients such as butter, sugar, eggs, flour, baking powder, and milk.', 4, 'Butter', 'https://www.theflavorbender.com/wp-content/uploads/2020/08/Sri-Lankan-Butter-Cake-SM-9023.jpg', NULL, NULL, NULL, NULL, NULL, 'Butter'),
(10, 'Basic Vanilla', 'A Basic Vanilla Butter Cake is a classic cake made with simple ingredients such as flour, sugar, butter, eggs, vanilla extract, and baking powder. It has a soft and tender crumb, a slightly sweet flavor, and a subtle vanilla aroma.', 20, 'Butter', 'https://vintagekitchennotes.com/wp-content/uploads/2020/09/Vanilla-Butter-Cake.1.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Gooey', 'Gooey Butter Cake is a classic dessert that originated in St. Louis, Missouri, in the United States. It is a type of cake that is known for its rich and dense texture, with a gooey and buttery filling and a slightly crisp top crust.', 17.5, 'Butter', 'https://www.thecookierookie.com/wp-content/uploads/2022/08/Gooey-Butter-Cake-5-1024x1536.jpg', NULL, NULL, NULL, NULL, NULL, NULL);
