CREATE TABLE IF NOT EXISTS sponsorSenators (
	`id` INT AUTO_INCREMENT PRIMARY KEY,
    `senatorId` INT,
    `userId` INT,
    `sponsorFirstName` VARCHAR(200),
    `sponsorLastName` VARCHAR(200),
    `sponsorMessage` VARCHAR(200),
    `sponsorMoney` VARCHAR(200),
    `emailReceipt` VARCHAR(200),
    `sponsorView` VARCHAR(200),
    CONSTRAINT sponsorSenatorsFK1 FOREIGN KEY(senatorId) REFERENCES senators(id),
    CONSTRAINT sponsorSenatorsFK2 FOREIGN KEY(userId) REFERENCES users(id)
);