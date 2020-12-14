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

INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (1,261,2,'정','현우','참전용사들에게 적절한 예우를 갖출 법안을 입법해주세요.',50000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (2,56,2,'정','현우','대학생 등록금을 재난학기에 환불받을 수 있는 규정을 꼭 만들어주세요',15000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (3,229,3,'윤','이상','응원합니다',23000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (4,261,3,'윤','이상','제발 자영업자들 지원해주셨으면 합니다.',70000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (5,261,4,'김','춘수','응원합니다',20000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (6,181,5,'홍','민기','응원합니다 의원님',10000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (7,116,6,'킹','현우','응원합니다 의원님~!!',150000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (8,155,8,'장','삐쭈','노동자 처우 개선에 힘써주시기 바랍니다.',75000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (9,104,9,'홍','길동','검찰개혁이 반드시 이루어졌으면 합니다! 화이팅!!',500000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (10,229,10,'이','상혁','반려동물 지원하는 법 좀 내주세요',350000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (11,261,11,'카','디비','안녕하세요 의원님, 자영업자 지원이 필요합니다',55000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (12,241,3,'윤','이상','제발 관련 법안 발의해주십쇼',35000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (13,77,3,'윤','이상','제발 관련 법안 발의해주십쇼',60000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (14,249,8,'장','삐쭈','빠샤빠샤!!',55000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (15,273,9,'홍','길동','빠샤빠샤!!',35000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (16,76,9,'홍','길동','아자아자',55000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (17,226,3,'윤','이상','화이팅!',15000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (18,46,11,'카','디비','후원 받으세요 의원님',20000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (19,37,11,'카','디비','제발 관련 법안 발의해주십쇼',27000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (20,161,3,'윤','이상','응원합니다 의원님!',15000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (21,112,2,'정','현우','응원합니다 의원님!',180000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (22,91,4,'김','춘수','안녕하세요 의원님, 화이팅',55000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (23,264,6,'킹','현우','화이팅!',25000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (24,261,2,'정','현우','후원 받으세요 의원님',15000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (25,208,8,'장','삐쭈','후원 받으세요 의원님',180000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (26,78,3,'윤','이상','응원합니다 의원님!',35000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (27,239,6,'킹','현우','안녕하세요 의원님, 화이팅',15000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (28,66,8,'장','삐쭈','화이팅!',25000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (29,61,5,'홍','민기','응원합니다 의원님!',15000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (30,36,3,'윤','이상','후원 받으세요 의원님',10000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (31,139,9,'홍','길동','후원 받으세요 의원님',180000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (32,0,9,'홍','길동','응원합니다 의원님!',25000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (33,245,9,'홍','길동','아자아자',130000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (34,153,6,'킹','현우','빠샤빠샤!!',15000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (35,240,9,'홍','길동','아자아자',130000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (36,250,9,'홍','길동','아자아자',180000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (37,86,3,'윤','이상','안녕하세요 의원님, 화이팅',27000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (38,122,5,'홍','민기','응원합니다 의원님!',27000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (39,172,4,'김','춘수','아자아자',20000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (40,245,5,'홍','민기','빠샤빠샤!!',55000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (41,255,10,'이','상혁','안녕하세요 의원님, 화이팅',130000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (42,253,6,'킹','현우','안녕하세요 의원님, 화이팅',20000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (43,237,3,'윤','이상','안녕하세요 의원님, 화이팅',55000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (44,274,10,'이','상혁','아자아자',130000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (45,257,5,'홍','민기','제발 관련 법안 발의해주십쇼',60000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (46,156,8,'장','삐쭈','제발 관련 법안 발의해주십쇼',23000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (47,94,10,'이','상혁','화이팅!',60000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (48,92,8,'장','삐쭈','아자아자',60000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (49,174,11,'카','디비','안녕하세요 의원님, 화이팅',180000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (50,73,2,'정','현우','빠샤빠샤!!',10000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (51,128,4,'김','춘수','안녕하세요 의원님, 화이팅',10000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (52,81,6,'킹','현우','안녕하세요 의원님, 화이팅',23000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (53,7,8,'장','삐쭈','아자아자',20000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (54,104,6,'킹','현우','빠샤빠샤!!',27000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (55,14,6,'킹','현우','화이팅!',10000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (56,58,5,'홍','민기','후원 받으세요 의원님',20000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (57,113,11,'카','디비','화이팅!',20000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (58,202,10,'이','상혁','빠샤빠샤!!',10000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (59,202,8,'장','삐쭈','제발 관련 법안 발의해주십쇼',60000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (60,32,11,'카','디비','안녕하세요 의원님, 화이팅',20000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (61,150,5,'홍','민기','화이팅!',23000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (62,64,4,'김','춘수','안녕하세요 의원님, 화이팅',60000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (63,171,3,'윤','이상','빠샤빠샤!!',55000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (64,122,5,'홍','민기','빠샤빠샤!!',55000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (65,11,9,'홍','길동','후원 받으세요 의원님',60000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (66,202,10,'이','상혁','아자아자',10000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (67,84,6,'킹','현우','화이팅!',27000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (68,62,10,'이','상혁','응원합니다 의원님!',55000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (69,8,6,'킹','현우','아자아자',10000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (70,21,8,'장','삐쭈','제발 관련 법안 발의해주십쇼',10000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (71,74,3,'윤','이상','후원 받으세요 의원님',10000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (72,203,11,'카','디비','빠샤빠샤!!',5000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (73,164,5,'홍','민기','응원합니다 의원님!',60000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (74,73,10,'이','상혁','화이팅!',27000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (75,183,2,'정','현우','응원합니다 의원님!',10000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (76,247,4,'김','춘수','빠샤빠샤!!',130000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (77,178,10,'이','상혁','빠샤빠샤!!',35000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (78,214,11,'카','디비','응원합니다 의원님!',27000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (79,256,6,'킹','현우','화이팅!',130000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (80,173,4,'김','춘수','응원합니다 의원님!',180000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (81,266,4,'김','춘수','빠샤빠샤!!',55000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (82,17,9,'홍','길동','화이팅!',10000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (83,183,9,'홍','길동','아자아자',5000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (84,165,9,'홍','길동','빠샤빠샤!!',20000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (85,295,5,'홍','민기','안녕하세요 의원님, 화이팅',25000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (86,122,3,'윤','이상','빠샤빠샤!!',60000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (87,173,4,'김','춘수','아자아자',180000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (88,279,8,'장','삐쭈','응원합니다 의원님!',5000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (89,59,4,'김','춘수','화이팅!',180000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (90,208,4,'김','춘수','제발 관련 법안 발의해주십쇼',35000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (91,119,8,'장','삐쭈','후원 받으세요 의원님',35000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (92,172,9,'홍','길동','빠샤빠샤!!',15000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (93,57,9,'홍','길동','제발 관련 법안 발의해주십쇼',35000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (94,63,9,'홍','길동','아자아자',5000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (95,296,10,'이','상혁','후원 받으세요 의원님',5000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (96,7,8,'장','삐쭈','응원합니다 의원님!',25000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (97,19,11,'카','디비','아자아자',180000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (98,49,11,'카','디비','안녕하세요 의원님, 화이팅',5000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (99,290,10,'이','상혁','응원합니다 의원님!',35000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (100,175,4,'김','춘수','빠샤빠샤!!',10000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (101,245,5,'홍','민기','제발 관련 법안 발의해주십쇼',15000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (102,215,3,'윤','이상','제발 관련 법안 발의해주십쇼',130000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (103,131,10,'이','상혁','제발 관련 법안 발의해주십쇼',10000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (104,292,3,'윤','이상','응원합니다 의원님!',15000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (105,271,5,'홍','민기','아자아자',5000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (106,9,5,'홍','민기','응원합니다 의원님!',180000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (107,26,8,'장','삐쭈','빠샤빠샤!!',27000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (108,234,8,'장','삐쭈','후원 받으세요 의원님',180000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (109,131,10,'이','상혁','안녕하세요 의원님, 화이팅',35000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (110,152,11,'카','디비','안녕하세요 의원님, 화이팅',5000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (111,186,4,'김','춘수','아자아자',60000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (112,175,2,'정','현우','응원합니다 의원님!',15000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (113,192,11,'카','디비','빠샤빠샤!!',130000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (114,115,2,'정','현우','화이팅!',10000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (115,26,5,'홍','민기','안녕하세요 의원님, 화이팅',27000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (116,196,9,'홍','길동','후원 받으세요 의원님',35000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (117,81,4,'김','춘수','응원합니다 의원님!',20000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (118,150,9,'홍','길동','화이팅!',10000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (119,210,2,'정','현우','후원 받으세요 의원님',60000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (120,190,10,'이','상혁','안녕하세요 의원님, 화이팅',25000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (121,58,11,'카','디비','제발 관련 법안 발의해주십쇼',27000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (122,234,10,'이','상혁','제발 관련 법안 발의해주십쇼',130000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (123,139,9,'홍','길동','안녕하세요 의원님, 화이팅',27000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (124,0,9,'홍','길동','안녕하세요 의원님, 화이팅',25000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (125,247,11,'카','디비','화이팅!',35000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (126,276,3,'윤','이상','빠샤빠샤!!',55000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (127,45,10,'이','상혁','제발 관련 법안 발의해주십쇼',55000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (128,46,6,'킹','현우','제발 관련 법안 발의해주십쇼',10000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (129,181,5,'홍','민기','제발 관련 법안 발의해주십쇼',27000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (130,177,11,'카','디비','제발 관련 법안 발의해주십쇼',130000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (131,12,2,'정','현우','응원합니다 의원님!',10000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (132,85,6,'킹','현우','제발 관련 법안 발의해주십쇼',15000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (133,201,6,'킹','현우','안녕하세요 의원님, 화이팅',130000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (134,166,8,'장','삐쭈','제발 관련 법안 발의해주십쇼',5000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (135,19,11,'카','디비','응원합니다 의원님!',5000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (136,194,8,'장','삐쭈','아자아자',10000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (137,284,4,'김','춘수','아자아자',130000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (138,135,10,'이','상혁','화이팅!',23000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (139,118,9,'홍','길동','후원 받으세요 의원님',25000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (140,87,6,'킹','현우','아자아자',20000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (141,172,4,'김','춘수','아자아자',10000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (142,190,9,'홍','길동','아자아자',20000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (143,70,5,'홍','민기','제발 관련 법안 발의해주십쇼',27000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (144,84,8,'장','삐쭈','빠샤빠샤!!',23000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (145,22,2,'정','현우','화이팅!',27000,'off','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (146,80,10,'이','상혁','화이팅!',20000,'off','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (147,56,5,'홍','민기','빠샤빠샤!!',10000,'on','One-Time');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (148,46,6,'킹','현우','응원합니다 의원님!',23000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (149,242,6,'킹','현우','후원 받으세요 의원님',25000,'on','Monthly');
INSERT INTO sponsorSenators(id,senatorId,userId,sponsorFirstName,sponsorLastName,sponsorMessage,sponsorMoney,emailReceipt,sponsorView) VALUES (150,12,6,'킹','현우','빠샤빠샤!!',60000,'on','Monthly');
