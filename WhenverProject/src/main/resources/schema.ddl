CREATE TABLE IF NOT EXISTS user (
    id      VARCHAR(50)     PRIMARY KEY,
    email       VARCHAR(50)     NOT NULL,
    cell_phone_no    VARCHAR(50)     NOT NULL,  
    birth_date VARCHAR(50) NULL
);