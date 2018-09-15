CREATE TABLE mobile_no(user_id INT,
mobile_no INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES user(user_id)
);