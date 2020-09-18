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
