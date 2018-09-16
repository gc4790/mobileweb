CREATE TABLE address(user_id INT,
address VARCHAR(100),
city VARCHAR(100),
state VARCHAR(100),
country VARCHAR(100),
FOREIGN KEY(user_id) REFERENCES user(user_id),
index(user_id)
);