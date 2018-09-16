CREATE TABLE followers(user_id INT,
followers_id INT,
FOREIGN KEY(user_id) REFERENCES user(user_id),
INDEX(user_id)
)