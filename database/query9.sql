USE flower_e_commerce;
-- Toplam Sipariş Tutarını Getiren Fonksiyon
DELIMITER //

CREATE FUNCTION GetUserTotalOrderAmount(userId INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE totalAmount DECIMAL(10, 2);
    SELECT SUM(TotalAmount) INTO totalAmount
    FROM Orders
    WHERE Orders.UserID = userId;
    RETURN totalAmount;
END //

DELIMITER ;


-- Kullanıcının Adreslerini Getiren Fonksiyon
DELIMITER //

CREATE FUNCTION GetUserAddresses(userId INT)
RETURNS VARCHAR(250)
READS SQL DATA
BEGIN
    DECLARE AddressLine VARCHAR(250);
    SELECT GROUP_CONCAT(AddressLine SEPARATOR ', ') INTO AddressLine
    FROM Addresses
    WHERE Addresses.UserID = userId;
    RETURN AddressLine;
END //

DELIMITER ;

