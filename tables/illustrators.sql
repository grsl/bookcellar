/*
|---------------------------------------
| Create the Illustrators table.
|---------------------------------------
|
| Table structure for the `illustrators` table.
|
*/
DROP TABLE IF EXISTS `illustrators`;

CREATE TABLE `illustrators` (
     `illustrators_id` INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
    ,`book_id`         INT(11)  UNSIGNED NOT NULL
    ,`givenname`       CHAR(20) DEFAULT NULL
    ,`familyname`      CHAR(20) DEFAULT NULL
)
ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;
