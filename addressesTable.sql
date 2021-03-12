/*
----------------------------------
| Structure for table `addresses`.
----------------------------------
*/
laksdjflaksdjfal;sdkjfa;sdlkjf :# a;lsdkfja;sdlkjfalkj
    USE bookCellar

    CREATE TABLE IF NOT EXISTS `addresses` (
         `addr_id`    INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`user_id`    INT(11)  UNSIGNED NOT NULL
        ,`house_no`   INT(4)   DEFAULT NULL
        ,`house_name` CHAR(20) DEFAULT NULL
        ,`street`     CHAR(20) NOT NULL
        ,`district`   CHAR(20) DEFAULT NULL
        ,`county`     CHAR(20) NOT NULL
        ,`country_id` INT(11)  UNSIGNED NOT NULL
        ) ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci
