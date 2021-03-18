/*
|------------------------------
| Structure for view `vBooks`.
|------------------------------
*/
    USE bookCellar

    CREATE VIEW `vBooks` AS
        SELECT `b`.`book_id`     AS 'Book ID'
              ,`b`.`title`       AS 'Title'
              ,`p`.`name`        AS 'Publisher'
              ,`b`.`edition_id`  AS 'Edition'
              ,`b`.`pub_date`    AS 'Date of Publication'
              ,`b`.`price`       AS 'Price'
              ,`b`.`blurb`       AS 'Blurb'
              ,`b`.`isbn`        AS 'ISBN Number'
              ,`c`.`cond`        AS 'Condition'
              ,`c`.`description` AS 'Description of Condition'
        FROM `books` AS `b`
        LEFT OUTER JOIN `publishers` AS `p` ON `b`.`pub_id` = `p`.`pub_id`
        LEFT OUTER JOIN `conditions` AS `c` ON `b`.`cond_id` = `c`.`cond_id`;
