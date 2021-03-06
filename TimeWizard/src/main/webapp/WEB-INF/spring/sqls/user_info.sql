select object_name, object_type from user_objects

-----------------------------------------------------

DROP SEQUENCE USER_INFO_SEQ;
DROP TABLE USER_INFO;

CREATE SEQUENCE USER_INFO_SEQ;
CREATE TABLE USER_INFO(
	USER_NO NUMBER PRIMARY KEY,
	USER_ID VARCHAR2(500) NOT NULL,
	USER_PW VARCHAR2(4000) NOT NULL,
	USER_NAME VARCHAR2(1000) NOT NULL,
	USER_EMAIL VARCHAR2(4000) NOT NULL,
	USER_ROLE VARCHAR2(500) NOT NULL,
	USER_PHOTO VARCHAR2(4000),
	USER_ACTIVE VARCHAR2(100) NOT NULL,
	USER_DISTINCT VARCHAR2(4000) NOT NULL, -- 추가
	USER_REGDATE DATE NOT NULL,
	CONSTRAINT USER_INFO_ID_UQ UNIQUE(USER_ID),
	-- CONSTRAINT USER_INFO_EMAIL_UQ UNIQUE(USER_EMAIL), -- 확인바람
	CONSTRAINT USER_INFO_ROLE_CK CHECK(USER_ROLE IN ('ADMIN','USER')),
	CONSTRAINT USER_DISTINCT_UQ UNIQUE(USER_DISTINCT),
	CONSTRAINT USER_INFO_ACTIVE_CK CHECK(USER_ACTIVE IN('Y','N')),
	CONSTRAINT USER_INFO_EMAIL_UQ UNIQUE(USER_EMAIL)
);


INSERT INTO USER_INFO VALUES(USER_INFO_SEQ.NEXTVAL, 'admin', 'admin1234', 
'관리자', 'tiwi.minibean@gmail.com', 'ADMIN', NULL, 'Y', 'admin', SYSDATE);
INSERT INTO USER_INFO VALUES(USER_INFO_SEQ.NEXTVAL, 'test', 'test1234',
'테스트1','test01@tiwi.com', 'USER', NULL, 'Y','test1', SYSDATE);

INSERT INTO USER_INFO VALUES(USER_INFO_SEQ.NEXTVAL, 'ming', 'ming1234',
'밍','mingyeung@naver.com','USER',NULL,'Y', 'ming', SYSDATE);

INSERT INTO USER_INFO VALUES(USER_INFO_SEQ.NEXTVAL, 'user', 'user1234',
'유저','mddd','USER',NULL,'Y', 'user', SYSDATE);


SELECT USER_NO, USER_ID, USER_PW, USER_NAME, USER_EMAIL, 
USER_ROLE, USER_PHOTO, USER_ACTIVE, USER_DISTINCT, USER_REGDATE
FROM USER_INFO;

SELECT *
FROM USER_INFO;

DELETE FROM USER_INFO
WHERE USER_NO = 25;

UPDATE USER_INFO
SET USER_ACTIVE = 'Y'
WHERE USER_ID = 'user';

UPDATE USER_INFO
SET USER_PW = 'user1234'
WHERE USER_ID = 'user';

UPDATE USER_INFO
SET USER_PHOTO = NULL;


--------------------------------

DROP SEQUENCE BOARD_NOTICE_SEQ;
DROP TABLE BOARD_NOTICE;

CREATE SEQUENCE BOARD_NOTICE_SEQ;
CREATE TABLE BOARD_NOTICE(
	NOTICE_NO NUMBER PRIMARY KEY,
	NOTICE_TITLE VARCHAR2(4000) NOT NULL,
	NOTICE_CONTENT VARCHAR2(4000) NOT NULL,
	NOTICE_REGDATE DATE NOT NULL
);

INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '테스트공지','테스트공지입니다.', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '테스트공지','테스트공지입니다.', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '테스트공지','테스트공지입니다.', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '테스트공지','테스트공지입니다.', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '테스트공지','테스트공지입니다.', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '테스트공지','테스트공지입니다.', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '테스트공지','테스트공지입니다.', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '테스트공지','테스트공지입니다.', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '테스트공지','테스트공지입니다.', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '테스트공지','테스트공지입니다.', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '테스트공지','테스트공지입니다.', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '테스트공지','테스트공지입니다.', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '테스트공지','테스트공지입니다.', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '테스트공지','테스트공지입니다.', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '테스트공지','테스트공지입니다.', SYSDATE);

INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '친구거절방법','거절하고싶어?deny눌러~', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, 'tiwi사용방법','문의해주세용', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '친구거절방법','거절하고싶어?deny눌러~', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, 'tiwi사용방법','문의해주세용', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '친구거절방법','거절하고싶어?deny눌러~', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, 'tiwi사용방법','문의해주세용', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '친구거절방법','거절하고싶어?deny눌러~', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, 'tiwi사용방법','문의해주세용', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '친구거절방법','거절하고싶어?deny눌러~', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, 'tiwi사용방법','문의해주세용', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, '친구거절방법','거절하고싶어?deny눌러~', SYSDATE);
INSERT INTO BOARD_NOTICE 
VALUES(BOARD_NOTICE_SEQ.NEXTVAL, 'tiwi사용방법','문의해주세용', SYSDATE);

SELECT *
FROM BOARD_NOTICE;
drop table friend_list;
drop sequence chat_seq;
drop table chat;
drop table user_todo;
drop sequence user_todo_seq;
drop table user_info;
drop sequence user_info_seq;
