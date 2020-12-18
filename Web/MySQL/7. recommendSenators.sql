CREATE TABLE IF NOT EXISTS recommendSenators(
   recommendResultsId  INTEGER  NOT NULL, 
   senatorsId INTEGER NOT NULL,
   CONSTRAINT recommendSenatorsPK PRIMARY KEY(recommendResultsId, senatorsId),
   CONSTRAINT recommendSenatorsFK1 FOREIGN KEY(recommendResultsId) REFERENCES recommendResults(id),
   CONSTRAINT recommendSenatorsFK2 FOREIGN KEY(senatorsId) REFERENCES senators(id)
);