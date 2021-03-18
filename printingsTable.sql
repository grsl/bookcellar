/*
|---------------------------------------
| Structure for the `printings` table.
|---------------------------------------
*/
    USE bookCellar

    CREATE TABLE IF NOT EXISTS `printings` (
         `printing_id` INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`printing`    CHAR(10)  DEFAULT NULL
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;
