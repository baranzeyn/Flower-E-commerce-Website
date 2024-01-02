USE  flower_e_commerce;
-- Adresler tablosu
CREATE TABLE Addresses (
    AddressID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    AddressLine VARCHAR(250),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);
