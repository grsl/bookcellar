/*
|----------------------------------
|  Structure for `series` table.
|----------------------------------
*/
    USE bookCellar

    CREATE TABLE IF NOT EXISTS `series` (
         `series_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`series`    CHAR(50) DEFAULT NULL
        , KEY `series` (`series_id`)
        )
        ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

