CREATE DATABASE IF NOT EXISTS seminar_1;
USE seminar_1;

DROP TABLE IF EXISTS phones;
CREATE TABLE phones
(
id INT PRIMARY KEY AUTO_INCREMENT,
ProductName VARCHAR(45),
Manufacturer VARCHAR(45),
ProductCount INT,
Price INT
);


INSERT phones (ProductName, Manufacturer, ProductCount, Price)
VALUES
('iPhone X','Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000);

SELECT * FROM phones;

-- Выведите название, производителя и цену для товаров, количество которых превышает 2 
SELECT Manufacturer, Price
FROM phones
WHERE ProductCount>2;

-- Выведите весь ассортимент товаров марки “Samsung”
SELECT * 
FROM phones
WHERE Manufacturer = "Samsung";

-- 	Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000**
SELECT * 
FROM phones
WHERE 100000<ProductCount*Price and ProductCount*Price<145000;

-- 4.*** С помощью регулярных выражений найти (можно использовать операторы “LIKE”, “RLIKE” для 4.3 ):
	-- 4.1. Товары, в которых есть упоминание "Iphone"
    
SELECT *
FROM phones
WHERE ProductName LIKE "%iPhone%";

   -- 4.2. "Galaxy"
   
SELECT *
FROM phones
WHERE ProductName LIKE "%Galaxy%";

   -- 4.3.  Товары, в которых есть ЦИФРЫ
SELECT *
FROM phones
WHERE ProductName RLIKE '[0-9]';

   -- 4.4.  Товары, в которых есть ЦИФРА "8"
SELECT * 
FROM phones
WHERE ProductName RLIKE '8';

SELECT * 
FROM phones
WHERE ProductName LIKE '%8%';




