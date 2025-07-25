-- 2. Creating a Stored Procedure for User Login

DELIMITER // 
CREATE PROCEDURE puserlogin(
    IN uusername VARCHAR(255), 
    IN upassword VARCHAR(255))
BEGIN
	SELECT id,username,password from users 
    where username = uusername 
    AND password = upassword;
END //

CALL puserlogin('Pankaj','pankajbhor');