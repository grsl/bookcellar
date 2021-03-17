/*
|----------------------------------
| Structure for view `vUsers`.
|----------------------------------
*/
    USE bookCellar

    CREATE VIEW `vUsers` AS
         SELECT `u`.`username`                                AS 'User Name.'
                ,CONCAT(`u`.`givenname`,' ',`u`.`familyname`) AS 'Full Name.'
                ,`u`.`email_address`                          AS 'Email Address.'
                ,`u`.`last_login`                             AS 'Last Login.'
                ,`u`.`current_login`                          AS 'Current Login.'
                ,`a`.`house_no`                               AS 'House Number.'
                ,`a`.`house_name`                             AS 'House Name.'
                ,`a`.`street`                                 AS 'Street Name.'
                ,`a`.`district`                               AS 'District.'
                ,`a`.`county`                                 AS 'County.'
                ,`c`.`name`                                   AS 'Country.'
        FROM `users` AS `u`
            LEFT OUTER JOIN `addresses` AS `a` ON `u`.`addr_id`    = `a`.`addr_id`
            LEFT OUTER JOIN `countries` AS `c` ON `a`.`country_id` = `c`.`country_id`;
