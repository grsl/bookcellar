/*
|-----------------------------------
| Structure for table `publishers`.
|-----------------------------------
*/
    
    USE bookCellar

    CREATE TABLE IF NOT EXISTS `publishers` (

         `pub_id` INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY

        ,`name`   CHAR(100) DEFAULT NULL

    )

    ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;
