/*
|-------------------------------------
|  Table structure for table `years`.
|-------------------------------------
*/
    USE bookCellar

    DROP TABLE IF EXISTS `years`;
    CREATE TABLE `years` (
                 `year_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
                ,`year`    INT(4)  UNSIGNED NOT NULL
                ,KEY `award_ind` (`year_id`)
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;
