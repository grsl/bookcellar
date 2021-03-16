/*
|---------------------------------------
| Table structure for table `editions`.
|---------------------------------------
*/
    CREATE TABLE IF NOT EXISTS `editions` (
        `edition_id` INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`edition`   CHAR(10)
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;
