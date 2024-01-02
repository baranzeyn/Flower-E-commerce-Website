USE flower_e_commerce;
-- Kullanıcılar tablosu
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Balance DECIMAL(10, 2) DEFAULT 0, -- Bakiye alanı ekleniyor, varsayılan değeri 0
    Password VARCHAR(255)
);

SELECT * FROM Users;