
    USE bookCellar

/*
|-------------------------------------
| Structure for view `vAwardWinners`.
|-------------------------------------
*/
    CREATE VIEW `vAwardWinners` AS
        SELECT `a`.`award` AS 'Award'
        ,`c`.`category` AS 'Category'
        ,CONCAT(COALESCE(`au`.`givenname`,`au`.`initials`),' ',`au`.`familyname`) AS 'Winner'
        ,`b`.`title` AS 'The Title of the Book'
        ,`y`.`year`  AS 'The Year Won'
        ,`p`.`name`  AS 'Publisher'
        FROM (((((`awards` `a`
        JOIN `categories` AS `c`  ON((`a`.`cat_id`    = `c`.`cat_id`)))
        JOIN `authors`    AS `au` ON((`a`.`author_id` = `au`.`author_id`)))
        JOIN `books`      AS `b`  ON((`a`.`book_id`   = `b`.`book_id`)))
        JOIN `years`      AS `y`  ON((`a`.`year_id`   = `y`.`year_id`)))
        JOIN `publishers` AS `p`  ON((`b`.`pub_id`    = `p`.`pub_id`)));
