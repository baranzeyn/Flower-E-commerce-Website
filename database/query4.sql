Use flower_e_commerce;
-- Ürünler (Products) tablosu
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(255),
    Price DECIMAL(10, 2),
    StockQuantity INT CHECK (StockQuantity >= 0),
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);