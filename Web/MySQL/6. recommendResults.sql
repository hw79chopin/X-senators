CREATE TABLE IF NOT EXISTS recommendResults (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `userInterestID` INT,
    `userVector` VARCHAR(4000),
    CONSTRAINT recommendResultsFK FOREIGN KEY(userInterestID) REFERENCES userInterests(id)
);