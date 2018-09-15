CREATE TABLE box_content(
user_id INT,
full_box_availability VARCHAR(100) NOT NULL,
charger VARCHAR(100) NOT NULL,
headset VARCHAR(100) NOT NULL,
box VARCHAR(100) NOT NULL,
screen_guard varchar(100) NOT NULL,
memory_card VARCHAR(100) NOT NULL,
bill_photo VARCHAR(100),
FOREIGN KEY(user_id) REFERENCES user(user_id),
INDEX (user_id)
);