CREATE TABLE IF NOT EXISTS userInterests (
	`id` INT AUTO_INCREMENT,
    `USER_ID` INT,
    `USER_INPUT` VARCHAR(200) CHARACTER SET utf8,
    CONSTRAINT UserInterestPK PRIMARY KEY(id)
);

INSERT INTO userInterests VALUES
	(1, 1, '복지서비스/장애인/특수교육/장애인복지시설');