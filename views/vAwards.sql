/*
|-----------------
| View `vAwards`.
|-----------------
*/

    CREATE VIEW `vAwards` AS
    SELECT `a`.`award`
          ,`c`.`category`
          ,`b`.`title`
          ,`au`.`givenname`
          ,`au`.`initials`
          ,`au`.`familyname`
          ,`y`.`year`
    FROM `awards` AS `a`
    JOIN `categories` AS `c`  ON `a`.`award_id`  = `c`.`award_id`
    JOIN `books`      AS `b`  ON `a`.`book_id`   = `b`.`book_id`
    JOIN `years`      AS `y`  ON `a`.`year_id`   = `y`.`year_id`
    JOIN `authors`    AS `au` ON `a`.`author_id` = `au`.`author_id`;

