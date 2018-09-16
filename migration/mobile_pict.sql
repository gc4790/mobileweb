CREATE TABLE mobile_pict(user_id INT,
mobile_picture VARCHAR(100),
FOREIGN KEY(user_id) REFERENCES user(user_id),
INDEX (user_id)
);