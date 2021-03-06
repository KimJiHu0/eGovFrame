DROP TABLE NOTICEBOARD;
DROP SEQUENCE SEQID;

-- 시퀀스 생성
CREATE SEQUENCE SEQID; 
-- 테이블 생성
CREATE TABLE NOTICEBOARD(
	ID NUMBER,
	NAME VARCHAR2(200) NOT NULL,
	DESCRIPTION VARCHAR2(2000) NOT NULL,
	USE_YN CHAR(1) DEFAULT 'Y' NOT NULL,
	REG_USER VARCHAR2(100) NOT NULL,
	
	CONSTRAINT NOTICEBOARD_PK_ID PRIMARY KEY(ID),
	CONSTRAINT NOTICEBOARD_CHECK_USER_YN CHECK(USE_YN IN ('Y', 'N'))
);
-- 가라 데이터 넣기
insert into NOTICEBOARD values(SEQID.NEXTVAL, '제목', '설명', 'Y', '김지후');
insert into NOTICEBOARD values(SEQID.NEXTVAL, '님들 그거 알아요??', '3월20일임 3월달이 얼마 안남았음ㅜㅁㅜ', 'Y', '김지후');
insert into NOTICEBOARD values(SEQID.NEXTVAL, '11', '11', null, '김지후');
-- 출력
select * from NOTICEBOARD;
select count(*) from NOTICEBOARD;