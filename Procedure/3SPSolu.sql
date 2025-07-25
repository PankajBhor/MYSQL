-- 3. Creating a Stored Procedure for Updating User Information

DELIMITER //
CREATE PROCEDURE spupdateuser(
    IN uoldusername VARCHAR(255), 
    IN unewusername VARCHAR(255),
    IN upassword VARCHAR(100),
    IN uemail VARCHAR(255),
    IN uaddress VARCHAR(255))
BEGIN
	 UPDATE users 
     SET username = unewusername, password = upassword, email = uemail, address = uaddress 
     WHERE username = uoldusername;
END //

CALL spupdateuser('Pankaj', 'pankaj_bhor_3606','Pankajbhor@345','pankajbhor@373@gmail.com','near parag foods awsari kd, pune');