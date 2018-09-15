CREATE TABLE followings(user_id INT,
followings_id INT,
FOREIGN KEY(user_id) REFERENCES user(user_id),
INDEX(user_id)
)