select object_name, object_type from user_objects

----------------------------

DROP SEQUENCE USER_TODO_SEQ;
DROP TABLE USER_TODO;

CREATE SEQUENCE USER_TODO_SEQ;
CREATE TABLE USER_TODO(
	TODO_NO NUMBER PRIMARY KEY,
	USER_NO NUMBER NOT NULL,
	TODO_TITLE VARCHAR2(4000) NOT NULL,
	TODO_COLOR VARCHAR2(1000) NOT NULL,
	TODO_CONTENT VARCHAR2(4000),
	TODO_CATEGORY VARCHAR2(4000),
	TODO_HASHTAG VARCHAR2(4000),
	TODO_DATE DATE NOT NULL,
	TODO_COMPLETE VARCHAR(100) NOT NULL,
	TODO_STARTTIME DATE,
	TODO_ENDTIME DATE,
	CONSTRAINT USER_TODO_UN_FK FOREIGN KEY(USER_NO) REFERENCES USER_INFO(USER_NO),
	CONSTRAINT USER_TODO_COMPLETE_CK CHECK(TODO_COMPLETE IN ('Y','N'))
);
	
SELECT TODO_NO, USER_NO, TODO_TITLE, TODO_COLOR, TODO_CONTENT,
TODO_CATEGORY, TODO_HASHTAG, TODO_DATE, TODO_COMPLETE, TODO_STARTTIME, TODO_ENDTIME
FROM USER_TODO;

SELECT TODO_NO, REPLACE(TODO_HASHTAG, '\00A0', ' ') AS TODO_HASHTAG, 
REPLACE(TODO_HASHTAG, ' ', '^') AS TODO_TAG2
FROM USER_TODO
WHERE TODO_NO = 5;

select * from user_info;

select todo_no, todo_title, todo_starttime, todo_endtime
from user_todo
where user_no = 5
order by todo_no;

DROP SEQUENCE STOPWATCH_SEQ;
DROP TABLE STOPWATCH;

-- STOPWATCH? TIME? WHAT IS BETTER???
CREATE SEQUENCE STOPWATCH_SEQ;
CREATE TABLE STOPWATCH( 
	STOPWATCH_NO NUMBER PRIMARY KEY,
	TODO_NO NUMBER NOT NULL,
	START_TIME DATE NOT NULL,
	END_TIME DATE NOT NULL,
	CONSTRAINT STOPWATCH_TN_FK FOREIGN KEY(TODO_NO) REFERENCES USER_TODO(TODO_NO)
);
