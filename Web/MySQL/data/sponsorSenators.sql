CREATE TABLE IF NOT EXISTS sponsorSenators (
	`id` INT AUTO_INCREMENT,
    `senatorId` INT,
    `userId` INT,
    `sponsorFirstName` VARCHAR(200) CHARACTER SET utf8,
    `sponsorLastName` VARCHAR(200) CHARACTER SET utf8,
    `sponsorMessage` VARCHAR(200) CHARACTER SET utf8,
    `sponsorMoney` VARCHAR(200) CHARACTER SET utf8,
    `emailReceipt` VARCHAR(200) CHARACTER SET utf8,
    `sponsorView` VARCHAR(200) CHARACTER SET utf8,
    CONSTRAINT SponsorSenatorsPK PRIMARY KEY(id)
);

INSERT INTO sponsorSenators VALUES
	(1, 280, 1,'정','현우','안녕하세요','50000','on','Monthly');