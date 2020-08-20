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


/*
|----------------------------------
| Data for the `illustrators` table.
|----------------------------------
*/

    LOCK TABLES `illustrators` WRITE;
    INSERT INTO `illustrators`(`book_id`,`givenname`,`familyname`)
    VALUES  (0,'Unknown','Unillustrated')
           ,(0,'Cixin','Liu')
           ,(0,'G. Willow','Wilson')
           ,(0,'James','Gunn')
           ,(0,'John Joseph','Adams')
           ,(0,'James','Bacon')
           ,(0,'Alisa','krasnostein')
           ,(0,'Laura J.','Mixon')
           ,(0,'Elizabeth','Mixon')
           ,(1,'Josh','Kirby')
           ,(0,'Wesley','Chu');
    UNLOCK TABLES;


/*
|---------------------------
| View `vIllustratedBooks`.
|---------------------------
*/

    CREATE VIEW `vIllustratedBooks` AS
        SELECT `b`.`title` AS "Title"
               ,CONCAT(`a`.`givenname`, " ", `a`.`familyname`) AS "Author"
               ,CONCAT(`i`.`givenname`, " ", `i`.`familyname`) AS "Illustrator"
        FROM `books`        AS `b`
            ,`illustrators` AS `i`
            ,`has_a_book`   AS `hab`
            ,`authors`      AS `a`
        WHERE   `b`.`book_id`     = `i`.`book_id`
            AND `hab`.`book_id`   = `b`.`book_id`
            AND `hab`.`author_id` = `a`.`author_id`;

