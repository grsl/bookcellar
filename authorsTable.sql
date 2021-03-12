/*
|---------------------------------------
| Create the Authors table.
|---------------------------------------
|
|  Table structure for `authors` table.
|
*/
    DROP TABLE IF EXISTS `authors`;
    CREATE TABLE `authors` (
         `author_id`  INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`givenname`  CHAR(30) NOT NULL DEFAULT ""
        ,`initials`   CHAR(7)  NOT NULL DEFAULT ""
        ,`familyname` CHAR(30) NOT NULL DEFAULT ""
        ,`psuedonym`  CHAR(60) NOT NULL DEFAULT ""
        ,`yob`        CHAR(4)
        ,`yod`        CHAR(4)
        ,`biog`       BLOB
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;
