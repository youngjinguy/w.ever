CREATE TABLE IF NOT EXISTS user (
    id      				int     				PRIMARY KEY	AUTO_INCREMENT,
    email       			VARCHAR(50)	NOT NULL,
    cell_phone_no    VARCHAR(50)		NOT NULL,  
    birth_date 			VARCHAR(50)	NULL
) charset=utf-8;

CREATE TABLE IF NOT EXISTS question (
	id									int 					PRIMARY KEY AUTO_INCREMENT,
	student_type					VARCHAR(50) 	DEFAULT NULL,
	question_type					VARCHAR(50) 	DEFAULT NULL,
	right_answer					VARCHAR(50)		DEFAULT NULL,
	question_title					VARCHAR(50)		DEFAULT NULL,		
	question_year_month				VARCHAR(50) 	DEFAULT NULL,
	question_uri					VARCHAR(50) 	DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS notice (
	id									int						PRIMARY KEY AUTO_INCREMENT,
	notice_title						VARCHAR(50)	DEFAULT NULL,
	notice_content				TEXT					DEFAULT NULL
);