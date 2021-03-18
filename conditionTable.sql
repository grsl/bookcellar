/*
|-----------------------------------
| Structure for `conditions` table.
|-----------------------------------
*/
    USE bookCellar

    CREATE TABLE IF NOT EXISTS `conditions` (
         `cond_id`     INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`cond`        CHAR(100) DEFAULT NULL
        ,`description` BLOB
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;
