CREATE TABLE IF NOT EXISTS recommendResults (
    `id` INT AUTO_INCREMENT,
    `userInterestID` INT,
    `SenatorID` VARCHAR(100),
    CONSTRAINT recommendResultPK PRIMARY KEY(id)
);

INSERT INTO recommendResults VALUES
	(1, 126, '79,181,195,250,259,263');