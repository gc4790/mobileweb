CREATE TABLE `user` (
	`user_id` INT(11) NOT NULL DEFAULT '0',
	`user_name` VARCHAR(100) NULL DEFAULT NULL,
	`mobile_no` VARCHAR(100) NULL DEFAULT NULL,
	`password` VARCHAR(100) NULL DEFAULT NULL,
	`email_id` VARCHAR(100) NULL DEFAULT NULL,
	`profile_picture` VARCHAR(100) NULL DEFAULT NULL,
	`user_type` VARCHAR(100) NULL DEFAULT NULL,
	PRIMARY KEY (`user_id`),
	INDEX `user_id` (`user_id`),
	INDEX `user_id_2` (`user_id`)
)