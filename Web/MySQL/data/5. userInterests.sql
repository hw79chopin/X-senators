CREATE TABLE IF NOT EXISTS userInterests (
	`id` INT AUTO_INCREMENT PRIMARY KEY,
    `USER_ID` INT,
    `USER_INPUT` VARCHAR(200),
    CONSTRAINT userInterestsFK FOREIGN KEY(USER_ID) REFERENCES users(id)
);

INSERT INTO userInterests(id,USER_ID,USER_INPUT) VALUES (1,'2','저의 할아버지는 군인이십니다. 참전용사이신데 제대로 된 예우를 받지 못한다고 생각합니다. 참전 유공자들에 대한 예우를 제대로 해야 한다고 생각합니다.');
INSERT INTO userInterests(id,USER_ID,USER_INPUT) VALUES (2,'2','저는 졸업을 앞둔 대학생입니다. 곧 있으면 취업을 해야 하는데 취업이 잘 될지 의문입니다. 취업이 잘 되었으면 하고 저는 또 개인적으로 예술도 좋아해서 예술활동, 전시회에도 관심이 많아요!');
INSERT INTO userInterests(id,USER_ID,USER_INPUT) VALUES (3,'3','저는 장애인 아이를 둔 부모입니다. 저는 장애인 교육과 인권에 관심이 있습니다.');
INSERT INTO userInterests(id,USER_ID,USER_INPUT) VALUES (4,'3','중소기업 운영하고 있는 사장입니다. 코로나 때문에 많이 힘듭니다. 자영업자들에게 지원을 해주셨으면 합니다.');
INSERT INTO userInterests(id,USER_ID,USER_INPUT) VALUES (5,'4','연극을 하는 배우입니다. 요즘 코로나 때문에 연극, 예술 산업이 너무 힘든데 지원해주는 법안을 마련해주셨으면 합니다.');
INSERT INTO userInterests(id,USER_ID,USER_INPUT) VALUES (6,'5','군복무하고 있는 군인입니다. 학교 복학도 걱정되고 군인들 복지나 월급 인상이 있었으면 합니다. 또한 외출 많이 나가고 싶습니다.');
INSERT INTO userInterests(id,USER_ID,USER_INPUT) VALUES (7,'6','청소년 급식센터에서 봉사를 하고 있습니다. 위기청소년들에 대한 예산이 많으나 그에 대한 적절한 쳬계가 없습니다. 청소년 복지를 위해 힘써주셨으면 합니다.');
INSERT INTO userInterests(id,USER_ID,USER_INPUT) VALUES (8,'7','저는 경찰 공무원입니다. 경찰 업무를 하면서 업무 환경이 너무 열악하다고 생각합니다. 개선해주셨으면 합니다.');
INSERT INTO userInterests(id,USER_ID,USER_INPUT) VALUES (9,'8','저는 파견근로자입니다. 김용균 씨가 죽고서 수년이 흘렀지만 아직도 파견근로자들의 복지나 처우가 너무 좋지 않습니다. 중대재해기업처벌법이 반드시 통과되었으면 합니다.');
INSERT INTO userInterests(id,USER_ID,USER_INPUT) VALUES (10,'9','검찰개혁! 반드시 검찰 개혁!');
INSERT INTO userInterests(id,USER_ID,USER_INPUT) VALUES (11,'10','게임 산업의 부흥을 원합니다.');
INSERT INTO userInterests(id,USER_ID,USER_INPUT) VALUES (12,'10','반려동물을 키우고 있습니다. 반려동물을 지원해주는 법안이 필요합니다. 동물도 생명입니다!');
INSERT INTO userInterests(id,USER_ID,USER_INPUT) VALUES (13,'11','노래방하는 자영업자입니다. 코로나 때문에 정말 힘듭니다. 제발 지원 빨리 해주셨으면 좋겠습니다');