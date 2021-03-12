/*
|-----------------------------------
| Structure for table `categories`.
|-----------------------------------
*/
    CREATE TABLE IF NOT EXISTS `categories` (
         `cat_id`   INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`award_id` INT(11)   UNSIGNED DEFAULT NULL
        ,`category` CHAR(100) NOT NULL
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;
