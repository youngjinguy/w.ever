DROP TABLE IF EXISTS W_USER;
CREATE TABLE W_USER (
    USER_ID			VARCHAR(50) NOT NULL COMMENT '사용자ID',
    PASSWORD		VARCHAR(50) NOT NULL COMMENT '비밀번호',
    USER_NAME		VARCHAR(50) NOT NULL COMMENT '사용자명',
    EMAIL   		VARCHAR(50)	NOT NULL COMMENT '이메일',
    BIRTH_DATE		VARCHAR(50) DEFAULT NULL COMMENT '생년월일',
    NICKNAME		VARCHAR(50) DEFAULT NULL COMMENT '별명',
    USER_URI       	VARCHAR(50)	DEFAULT NULL COMMENT '사용자사진URI',
    PRIMARY KEY (USER_ID)
)CHARSET=utf8;

DROP TABLE IF EXISTS W_QUESTION;
CREATE TABLE W_QUESTION (
	QUESTION_ID				VARCHAR(50) NOT NULL 		COMMENT '문제ID',
	SCHOOL_TYPE				VARCHAR(50) NOT NULL 		COMMENT '학교타입',
	STUDENT_GRADE			VARCHAR(50) NOT NULL 		COMMENT '학생학년',
	ANSWER					VARCHAR(50)	NOT NULL 		COMMENT '정답',
	QUESTION_SECTION		VARCHAR(50) NOT NULL 		COMMENT '문제영역',
	QUESTION_YEAR_MONTH		VARCHAR(50) NOT NULL 		COMMENT '문제년도',
	QUESTION_URI			VARCHAR(50) DEFAULT NULL 	COMMENT '문제URI',
	PRIMARY KEY (QUESTION_ID)
)CHARSET=utf8;

DROP TABLE IF EXISTS W_WRONG_ANSWER_NOTE;
CREATE TABLE W_WRONG_ANSWER_NOTE(
	QUESTION_ID				VARCHAR(50) NOT NULL COMMENT '문제ID',
	USER_ID					VARCHAR(50) NOT NULL COMMENT '사용자ID',
	PRIMARY KEY (QUESTION_ID, USER_ID)
)CHARSET=utf8;

/**
 * TODO 재정의 필요
DROP TABLE IF EXISTS W_NOTICE;
CREATE TABLE W_NOTICE (
	id									int						PRIMARY KEY AUTO_INCREMENT,
	notice_title						VARCHAR(50)	DEFAULT NULL,
	notice_content				TEXT					DEFAULT NULL
)CHARSET=utf8;
**/
