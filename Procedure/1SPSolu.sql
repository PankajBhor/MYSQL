-- 1. Creating a Stored Procedure for User Registration

DELIMITER //
CREATE PROCEDURE spuserresgistration(
    IN uname VARCHAR(50), 
    IN upassword VARCHAR(255), 
    IN uemail VARCHAR(100), 
    IN uaddress VARCHAR(255))
BEGIN
	INSERT INTO users(username, password, email, address) 
    VALUES(uname,upassword,uemail,uaddress);
END //

CALL  spuserresgistration('Pankaj','PankajBhor','pankaj@email.com','awsari kd ,pune');