USE flower_e_commerce;
-- View 1: Kullanıcıların İsim ve Adres Bilgilerini İçeren Bir Görünüm
CREATE VIEW UserAddresses AS
SELECT Users.UserID, Users.FirstName, Users.LastName, Addresses.AddressLine
FROM Users 
JOIN Addresses ON Users.UserID = Addresses.UserID;

-- View 2: Ürünler ve Kategoriler Görünümü
CREATE VIEW ProductCategoryView AS
SELECT Products.ProductID, Products.Name AS ProductName, Products.Price, Categories.CategoryName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- View 3:En Son 5 Sipariş Görünümü
CREATE VIEW LatestOrdersView AS
SELECT OrderID, UserID, OrderDate, TotalAmount
FROM Orders
ORDER BY OrderDate DESC
LIMIT 5;

-- View 4: İncelemeler ve Ürün Bilgileri Görünümü
CREATE VIEW ProductReviewsView AS
SELECT Products.ProductID, Products.Name AS ProductName, Reviews.Comment
FROM Products
JOIN Reviews ON Products.ProductID = Reviews.ProductID;

-- View 5: Kategoriler ve Ürün Sayıları Görünümü
CREATE VIEW CategoryProductCountView AS
SELECT Categories.CategoryID, Categories.CategoryName, COUNT(Products.ProductID) AS ProductCount
FROM Categories
LEFT JOIN Products ON Categories.CategoryID = Products.CategoryID
GROUP BY Categories.CategoryID, Categories.CategoryName;



