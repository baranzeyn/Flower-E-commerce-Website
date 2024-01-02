USE flower_e_commerce;
-- Yeni bir kullanıcı oluştur
SELECT user FROM mysql.user WHERE user = 'uygulama_kullanici' AND host = 'localhost';
-- Kullanıcıya gerekli yetkileri ver
GRANT SELECT, INSERT, UPDATE, DELETE ON flower_e_commerce.Users TO 'uygulama_kullanici'@'localhost';
GRANT EXECUTE ON PROCEDURE flower_e_commerce.UpdateUserBalance TO 'uygulama_kullanici'@'localhost';

-- Diğer tablo, görünüm, stored procedure yetkilendirmeleri
GRANT SELECT ON flower_e_commerce.Addresses TO 'uygulama_kullanici'@'localhost';
GRANT SELECT ON flower_e_commerce.Categories TO 'uygulama_kullanici'@'localhost';
GRANT SELECT ON flower_e_commerce.Products TO 'uygulama_kullanici'@'localhost';
GRANT SELECT ON flower_e_commerce.Reviews TO 'uygulama_kullanici'@'localhost';
GRANT SELECT ON flower_e_commerce.Orders TO 'uygulama_kullanici'@'localhost';
GRANT SELECT ON flower_e_commerce.UserAddresses TO 'uygulama_kullanici'@'localhost';
GRANT SELECT ON flower_e_commerce.ProductCategoryView TO 'uygulama_kullanici'@'localhost';
GRANT SELECT ON flower_e_commerce.LatestOrdersView TO 'uygulama_kullanici'@'localhost';
GRANT SELECT ON flower_e_commerce.ProductReviewsView TO 'uygulama_kullanici'@'localhost';
GRANT SELECT ON flower_e_commerce.CategoryProductCountView TO 'uygulama_kullanici'@'localhost';
GRANT EXECUTE ON FUNCTION flower_e_commerce.GetUserTotalOrderAmount TO 'uygulama_kullanici'@'localhost';
GRANT EXECUTE ON FUNCTION flower_e_commerce.GetUserAddresses TO 'uygulama_kullanici'@'localhost';

-- Bakiye bilgisini maskelenmiş olarak getirme
CREATE VIEW MaskedUserBalanceView AS
SELECT UserID, FirstName, LastName, Email, '***' AS MaskedBalance
FROM Users;

-- Kullanıcıya sadece maskelenmiş bakiye görüntüleme izni verme
GRANT SELECT ON flower_e_commerce.MaskedUserBalanceView TO 'uygulama_kullanici'@'localhost';
