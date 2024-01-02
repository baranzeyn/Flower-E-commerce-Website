USE flower_e_commerce;
-- Stored Procedure 1: Kullanıcıların bakiyelerini güncelleyen 
DELIMITER //
CREATE PROCEDURE UpdateUserBalance(IN userId INT, IN newBalance DECIMAL(10, 2))
BEGIN
    UPDATE Users SET Balance = newBalance WHERE UserID = userId;
END //

DELIMITER ;

-- Stored Procedure 2: Kullanıcının sipariş geçmişini getiren 
DELIMITER //

CREATE PROCEDURE GetUserOrderHistory(IN userId INT)
BEGIN
    SELECT Orders.OrderID, Orders.OrderDate, Orders.TotalAmount
    FROM Orders
    WHERE Orders.UserID = userId;
END //

DELIMITER ;
