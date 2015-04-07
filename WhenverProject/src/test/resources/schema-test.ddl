
CREATE TABLE IF NOT EXISTS user (
    id      				int     				PRIMARY KEY	AUTO_INCREMENT,
    email       			VARCHAR(50)	NOT NULL,
    cell_phone_no    VARCHAR(50)		NOT NULL,  
    birth_date 			VARCHAR(50)	DEFAULT NULL
) charset=utf8;

COMMIT;

