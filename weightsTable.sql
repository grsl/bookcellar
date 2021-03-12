/*
|-------------------------------
| Table Structure for `weights`.
|--------------------------------
*/
    CREATE TABLE IF NOT EXISTS `weights` (
         `weights_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`metric`     INT(10)
        ,`imperial`   FLOAT(8,3)
    );
