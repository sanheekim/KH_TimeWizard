DROP TABLE PAY;

CREATE TABLE PAY(
	USER_NO NUMBER NOT NULL,
	MEMBERSHIP VARCHAR2(2) NOT NULL,
	TIMELAPSE NUMBER NOT NULL, 
	CONSTRAINT USER_NO_FK FOREIGN KEY(USER_NO) REFERENCES USER_INFO(USER_NO),
	CONSTRAINT PAY_MEMBERSHIP_CK CHECK(MEMBERSHIP IN ('Y','N'))
)
ALTER TABLE PAY MODIFY (MEMBERSHIP DEFAULT 'N');
ALTER TABLE PAY MODIFY (TIMELAPSE DEFAULT 0);

INSERT INTO PAY
VALUES(3,'N',2);

INSERT INTO PAY
VALUES(4,'Y',5);

select *
from pay
where user_no = 3

delete from pay where user_no=3;
-------------------------
CREATE TABLE PAY(
	USER_NO NUMBER NOT NULL,
	PAY_NAME VARCHAR2(500) NOT NULL,
	STATUS NUMBER NOT NULL,
	CONSTRAINT USER_NO_FK FOREIGN KEY(USER_NO) REFERENCES USER_INFO(USER_NO),
	CONSTRAINT PAY_STATUS_CK CHECK(STATUS IN (0,1,5,10))
)

INSERT INTO PAY
VALUES(3,'MEMBERSHIP',0);

INSERT INTO PAY
VALUES(3,'TIMELAPSE',5);