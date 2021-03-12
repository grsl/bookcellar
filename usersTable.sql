/*
|------------------------------
| Structure for table `users`.
|------------------------------
*/
    CREATE TABLE `users` (
         `user_id`       INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`username`      CHAR(20)  NOT NULL
        ,`initials`      CHAR(12)  DEFAULT NULL
        ,`givenname`     CHAR(25)  NOT NULL
        ,`familyname`    CHAR(25)  NOT NULL
        ,`email_address` CHAR(100) NOT NULL
        ,`addr_id`       INT(11)   UNSIGNED DEFAULT NULL
        ,`baddr_id`      INT(11)   UNSIGNED DEFAULT NULL
        ,`password`      CHAR(50)  NOT NULL
        ,`last_login`    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        ,`current_login` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

