DROP TABLE IF EXISTS W_USER;
CREATE TABLE W_USER (
    USER_ID				VARCHAR(50) NOT NULL		COMMENT '사용자ID(이메일)',
    PASSWORD			VARCHAR(50) NOT NULL 		COMMENT '비밀번호',
    NICKNAME			VARCHAR(50) NOT NULL 		COMMENT '별명',
    BIRTH_DATE			VARCHAR(50) DEFAULT NULL	COMMENT '생년월일',
    USER_PHONE			VARCHAR(50) NOT NULL 		COMMENT '사용자전화번호',
    OTHER_PHONE			VARCHAR(50) NOT NULL 		COMMENT '상대방전화번호',
    USER_SCHOOL			VARCHAR(50) DEFAULT NULL 	COMMENT '학교',
    USER_TYPE 			VARCHAR(50) NOT NULL 		COMMENT '사용자 타입',
    PRIMARY KEY (USER_ID)
)CHARSET=utf8;

DROP TABLE IF EXISTS W_USER_CON;
CREATE TABLE W_USER_CON (
    USER_ID				VARCHAR(50) NOT NULL		COMMENT '사용자ID(학생)',
   	OTHER_ID			VARCHAR(50) NOT NULL		COMMENT '사용자ID(상대방)',
    CONNECT_TYPE		VARCHAR(50) NOT NULL 		COMMENT '연결TYPE',
)CHARSET=utf8;

DROP TABLE IF EXISTS W_QUESTION;
CREATE TABLE W_QUESTION (
	QUESTION_ID			VARCHAR(50) NOT NULL 		COMMENT '문제ID',
	QUESTION_SECTION	VARCHAR(50) NOT NULL 		COMMENT '문제타입(과목)',
	ANSWER				VARCHAR(50)	NOT NULL 		COMMENT '정답',
	SELECTION_1			VARCHAR(50)	NOT NULL 		COMMENT '보기1',
	SELECTION_2			VARCHAR(50)	NOT NULL 		COMMENT '보기2',
	SELECTION_3			VARCHAR(50)	NOT NULL 		COMMENT '보기3',
	SELECTION_4			VARCHAR(50)	NOT NULL 		COMMENT '보기4',
	QUESTION_KEYWORD	VARCHAR(50) DEFAULT NULL 	COMMENT '문제키워드',
	QUESTION_CONTENT 	TEXT NOT NULL 				COMMENT '문제내용',
	PRIMARY KEY (QUESTION_ID)
)CHARSET=utf8;

DROP TABLE IF EXISTS W_QUESTION_NOTE;
CREATE TABLE W_QUESTION_NOTE(
	QUESTION_ID			VARCHAR(50) NOT NULL 		COMMENT '문제ID',
	USER_ID				VARCHAR(50) NOT NULL 		COMMENT '사용자ID',
	STATUS				VARCHAR(50) NOT NULL 		COMMENT '상태'
	PRIMARY KEY (QUESTION_ID, USER_ID)
)CHARSET=utf8;

DROP TABLE IF EXISTS W_NEWS;
CREATE TABLE W_NEWS (
	NEWS_ID				VARCHAR(50) NOT NULL 		COMMENT '뉴스ID',
	NEWS_TITLE			VARCHAR(50) NOT NULL 		COMMENT '뉴스제목',
	NEWS_DATE			VARCHAR(50) NOT NULL 		COMMENT '뉴스일자',
	NEWS_COMPANY		VARCHAR(50) NOT NULL 		COMMENT '뉴스사',
	NEWS_CONTENT	 	TEXT NOT NULL 				COMMENT '뉴스내용',
	USER_ID				VARCHAR(50) NOT NULL 		COMMENT '유저ID(뉴스올린)',
	PRIMARY KEY (NEWS_ID)
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
