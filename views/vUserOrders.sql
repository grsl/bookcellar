/*
|-----------------------------------
| Final view structure for view `vUserOrders`
|-----------------------------------
*/
    DROP VIEW IF EXISTS `vUsersOrders`;

    CREATE VIEW `vUsersOrders` AS
        SELECT `o`.`order_no`     AS 'Order Number'
               ,DATE_FORMAT(`o`.`order_date`,'%W the %D of %M, %Y') AS 'Date Ordered'
               ,`u`.`username`    AS 'User Name'
               ,CONCAT(COALESCE(`u`.`givenname`,`u`.`initials`),' ',`u`.`familyname`) AS 'Purchaser'
               ,`b`.`title`       AS 'Title'
               ,`b`.`price`       AS 'Price'
               ,`b`.`edition_id`  AS 'Edition'
               ,`b`.`isbn`        AS 'ISBN'
               ,CONCAT(COALESCE(`a`.`givenname`,`a`.`initials`),' ',`a`.`familyname`) AS 'Author'
               ,`ad`.`house_no`   AS 'House Number'
               ,`ad`.`house_name` AS 'House Name'
               ,`ad`.`street`     AS 'Street'
               ,`ad`.`district`   AS 'District'
               ,`ad`.`county`     AS 'County'
               ,`c`.`name`        AS 'Name'
        FROM `order_lines` `ol`
            LEFT JOIN `orders`     AS `o`   ON `ol`.`order_id`   = `o`.`order_id`
            LEFT JOIN `users`      AS `u`   ON `o`.`user_id`     = `u`.`user_id`
            LEFT JOIN `books`      AS `b`   ON `ol`.`book_id`    = `b`.`book_id`
            LEFT JOIN `has_a_book` AS `hab` ON `b`.`book_id`     = `hab`.`book_id`
            LEFT JOIN `authors`    AS `a`   ON `hab`.`author_id` = `a`.`author_id`
            LEFT JOIN `addresses`  AS `ad`  ON `u`.`addr_id`     = `ad`.`addr_id`
            LEFT JOIN `countries`  AS `c`   ON `ad`.`country_id` = `c`.`country_id`
            ;
