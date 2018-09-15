CREATE TABLE add_phones(user_id INT,
brand_name VARCHAR(100) NOT NULL,
model VARCHAR(100) NOT NULL,
usage1 VARCHAR(100) NOT NULL,
user_type VARCHAR(100) NOT NULL,
buying_price VARCHAR(100) NOT NULL,
INDEX(user_id),
FOREIGN KEY(user_id) REFERENCES user(user_id)
);