/*
1) 모든 후원목록 살펴보기
2) 후원금 액수가 가장 많은 Top 10 살펴보기
3) 후원금을 제일 많은 사람에게 받은 Top 10 살펴보기
4) 정당별 후원금액 살펴보기 
5) 국회의원별 발의법안 살펴보기
6) 국회의원 추천결과 살펴보기
*/
USE mySenators;

-- VIEW: 1) 모든 후원내역 살펴보기
CREATE VIEW TotalSponsors AS
	SELECT sSnt.senatorID AS '국회의원 ID', snt.NAME AS '국회의원 이름' , sSnt.userId AS '후원자 ID', CONCAT(sSnt.sponsorFirstName, sSnt.sponsorLAStName) AS '후원자 이름', sSnt.sponsorMessage AS '메세지', sSnt.sponsorMoney AS '후원금액'
	FROM sponsorSenators AS sSnt 
		LEFT JOIN senators AS snt
			ON snt.id = sSnt.senatorID
		ORDER BY sSnt.senatorID;
        
-- VIEW: 2) 후원금 액수가 가장 많은 Top 10 살펴보기
CREATE VIEW Top_10_SUM AS
	SELECT sSnt.senatorID AS '의원ID', snt.NAME AS '국회의원', snt.PARTY AS '소속정당', SUM(sSnt.sponsorMoney) AS '총 후원금액'
		FROM sponsorSenators AS sSnt 
		JOIN senators AS snt
			ON snt.id = sSnt.senatorID
		GROUP BY sSnt.senatorID
		ORDER BY SUM(sSnt.sponsorMoney) DESC
		LIMIT 10;

-- VIEW: 3) 후원금을 제일 많은 사람에게 받은 Top 10 사렾보기
CREATE VIEW Top_10_COUNT AS
	SELECT sSnt.senatorID AS '의원ID', snt.NAME AS '국회의원', snt.PARTY AS '소속정당', COUNT(sSnt.sponsorMoney) AS '총 후원금액'
		FROM sponsorSenators AS sSnt 
		JOIN senators AS snt
			ON snt.id = sSnt.senatorID
		GROUP BY sSnt.senatorID
		ORDER BY COUNT(sSnt.sponsorMoney) DESC
		LIMIT 10;

-- VIEW: 4) 정당별 후원금액 살펴보기
CREATE VIEW sponsorParty AS
	SELECT snt.PARTY AS '정당', SUM(sSnt.sponsorMoney) AS '총 후원금액'
		FROM sponsorSenators AS sSnt 
		JOIN senators AS snt
			ON snt.id = sSnt.senatorID
		GROUP BY snt.PARTY
		ORDER BY SUM(sSnt.sponsorMoney) DESC;

-- VIEW: 5) 국회의원별 발의법안 살펴보기
CREATE VIEW senatorsBills AS
	SELECT senators.id AS '국회의원 ID',
			senators.NAME AS '국회의원 이름',
			senators.PARTY AS '소속정당',
			bills.BILL_NAME AS '법안명',
			bills.PROPOSE_DT AS '입안일',
			bills.bill_content AS '법안내용'
		FROM senators
		JOIN billsProposers 
			ON billsProposers.snt_id = senators.id
		JOIN bills
			ON billsProposers.bill_id = bills.id;
            
-- VIEW: 6) 국회의원 추천결과 살펴보기
CREATE VIEW recommendSenatorList AS
	SELECT usr_int.id AS '관심사 ID',
			usr_int.USER_INPUT AS '관심사',
			snts.id AS '국회의원 ID',
			snts.NAME AS '국회의원 이름',
			snts.PARTY AS '소속정당'
		FROM userInterests AS usr_int
		JOIN recommendResults AS rslt
			ON usr_int.id = rslt.userInterestID
		JOIN recommendSenators AS rcm_snt
			ON rcm_snt.recommendResultsId = rslt.id
		JOIN senators AS snts
			ON snts.id = rcm_snt.senatorsId;

SELECT * FROM TotalSponsors;
SELECT * FROM TOP_10_Count;        
SELECT * FROM TOP_10_SUM;
SELECT * FROM SponsorParty;
SELECT * FROM senatorsBills;
SELECT * FROM recommendSenatorList;