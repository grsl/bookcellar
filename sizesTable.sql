USE bookCellar
/*
|------------------------------
| Structure for table `sizes`.
|------------------------------
*/
    CREATE TABLE IF NOT EXISTS `sizes` (
        `size_id`  INT(11)     UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`metric`   FLOAT(6,2) DEFAULT NULL
        ,`imperial` FLOAT(6,2) DEFAULT NULL
        ,KEY `size_ind` (`size_id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;
