CREATE TABLE IF NOT EXISTS users (
    `id` INT AUTO_INCREMENT,
    `EMAIL` VARCHAR(100),
    `PASSWORD` VARCHAR(100),
    CONSTRAINT userPK PRIMARY KEY(id),
    CONSTRAINT userAK UNIQUE(EMAIL)
);

INSERT INTO users(id,EMAIL,PASSWORD) VALUES (1,'test@test.com','$2a$12$afg35v8j/G434tflkrfdnv0s90djfnk5sddfe64u');
INSERT INTO users(id,EMAIL,PASSWORD) VALUES (2,'test2@test.com','$2a$12$LihpLrfJZ48j/G4n4O5YZ.kdkvvoiOqLbfGL7iQuA1xAjRvtkSNfu');
INSERT INTO users(id,EMAIL,PASSWORD) VALUES (3,'test3@test.com','$2a$12$r.iw9IOOyYDx5jBuobRy1unzb9vFV/6BY9TbJN5HqAiKTiVmPoV0a');
INSERT INTO users(id,EMAIL,PASSWORD) VALUES (4,'test4@test.com','$2a$12$O/R1mOPk/hYqYThO2795Ke3Lllxiv/ILKoqQANSK/AFMjrNnJoQTa');
INSERT INTO users(id,EMAIL,PASSWORD) VALUES (5,'yonsei@yonsei.ac.kr','$2a$12$.tkaz2Z.S6G5dXInMhzSTejwTjRk6ngp.i.yyzcMrQjUu350YuQYy');
INSERT INTO users(id,EMAIL,PASSWORD) VALUES (6,'chopin_liszt@naver.com','$2a$12$4Dvqtdac8Zu5VaqH5cQja.VbV3WIvFk.G7WW8/1ZGtSWRxOJFbP/G');
INSERT INTO users(id,EMAIL,PASSWORD) VALUES (7,'hw79chopin@naver.com','$2a$12$hNeF3HroPEzq33Xu8TC0hu3Cr5Qf22rXeoxm1Y1NoqLoi3zgviE2S');
INSERT INTO users(id,EMAIL,PASSWORD) VALUES (8,'handsome@yonsei.ac.kr','$2a$12$K3qsnEQXi4AbfAZGWV2wpOwsU0JWkdU9rZqmfORMDEdkAlO69jrCm');
INSERT INTO users(id,EMAIL,PASSWORD) VALUES (9,'universe@yonsei.ac.kr','$2a$12$6xuJ4.t0u/suPNbUM2ZS5OaqNX9enNAkLCXKyTNTDFnAwo7pVrdzO');
INSERT INTO users(id,EMAIL,PASSWORD) VALUES (10,'faker@yonsei.ac.kr','$2a$12$g9MsszWi5VJkt/.lxM4y6OFWiK.Z2hIxjjTQajQvUA.0Ix0HV52PK');
INSERT INTO users(id,EMAIL,PASSWORD) VALUES (11,'emailer@test.com','$2a$12$XJfgUEnkGoO7mrXRCdlSTOeSKON9glX.IQhPuFXl4jcByhH.v3lm6');
