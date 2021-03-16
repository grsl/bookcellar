/*
|----------------------------------
| Structure for table `countries`.
|----------------------------------
*/

    USE bookCellar

    CREATE TABLE IF NOT EXISTS `countries` (
        `country_id`    INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`two_letter`   CHAR(2)   NOT NULL
        ,`three_letter` CHAR(3)   NOT NULL
        ,`un_number`    INT(4)    UNSIGNED NOT NULL DEFAULT '0'
        ,`name`         CHAR(100) DEFAULT NULL
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;
