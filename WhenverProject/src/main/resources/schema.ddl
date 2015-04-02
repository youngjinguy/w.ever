CREATE TABLE IF NOT EXISTS user (
    id      				VARCHAR(50)     PRIMARY KEY	AUTO_INCREMENT,
    email       			VARCHAR(50)     NOT NULL,
    cell_phone_no    VARCHAR(50)     NOT NULL,  
    birth_date 			VARCHAR(50) NULL
) CHARSET=UTF-8;

CREATE TABLE IF NOT EXISTS question (
	id						VARCHAR(50) 	PRIMARY KEY AUTO_INCREMENT,
	student_type		VARCHAR(50) 	DEFAULT NULL,
	question_type		VARCHAR(50) 	DEFAULT NULL,
	question_uri		VARCHAR(50) 	DEFAULT NULL,
	question_year_month		VARCHAR(50) 	DEFAULT NULL,
);
