/*
|------------------------
| View `vBooksByAuthor`.
|------------------------
*/
    CREATE VIEW `vBooksByAuthor` AS
    SELECT CONCAT(COALESCE(`au`.`givenname`,`au`.`initials`),' ',`au`.`familyname`) AS 'Name'
        ,`b`.`title` AS 'Title'
        ,`b`.`blurb` AS 'Blurb'
    FROM ((`authors` AS `au`
    JOIN `has_a_book` AS `h`  ON((`h`.`author_id` = `au`.`author_id`)))
    JOIN `books`      AS  `b` ON((`h`.`book_id`   = `b`.`book_id`)));
