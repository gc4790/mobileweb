CREATE TABLE `shop` (
	`user_id` INT(11) NULL DEFAULT NULL,
	`shop_name` VARCHAR(100) NULL DEFAULT NULL,
	`banner_picture` VARCHAR(100) NULL DEFAULT NULL,
	INDEX `user_id` (`user_id`),
	CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
)