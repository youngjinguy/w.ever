
CREATE TABLE IF NOT EXISTS user (
	id varchar(50) PRIMARY KEY,
	email varchar(50) NOT NULL,
  	cell_phone_no varchar(50) NOT NULL,
  	birth_date varchar(50) DEFAULT NULL
);

COMMIT;

