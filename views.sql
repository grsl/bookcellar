/*
|----------------------------------------------------------------------------
| Views.
|----------------------------------------------------------------------------
*/

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


/*
|---------------
| View `vTemp`.
|---------------
*/

    CREATE VIEW `vTemp` AS
    SELECT b.title     AS "Title"
          ,CONCAT(a.givenname, a.initials, a.familyname) AS "Author"
          ,s.series    AS "Series"
          ,b.isbn      AS "ISBN"
          ,pd.year     AS "Year of Publication"
          ,b.blurb     AS "Blurb"
          ,CONCAT(c.cond, " ", c.description)            AS "Condition"
          ,CONCAT(i.givenname, " ", i.familyname) AS "Illustrator"
          ,p.name      AS "Publisher"
          ,e.edition   AS "Edition"
          ,pr.printing AS "Printing"
          ,b.price     AS "Price"
          ,b.weight    AS "Weight"
        FROM  books      AS b
             ,has_a_book AS hab
             ,authors    AS a
             ,conditions AS c
             ,publishers AS p
             ,printings  AS pr
             ,editions   AS e
             ,series     AS s
             ,years      AS pd
             ,illustrators AS i
        WHERE b.book_id   = hab.book_id
        AND   b.cond_id   = c.cond_id
        AND   a.author_id = hab.author_id
        AND   b.pub_id    = p.pub_id
        AND   b.printing_id = pr.printing_id
        AND   b.edition_id = e.edition_id
        AND   s.series_id = b.series_id
        AND   b.pub_date = pd.year_id
        AND   b.illus_id = i.illustrators_id
        ;


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













    INSERT INTO `orders`(
                `order_id`
               ,`order_no`
               ,`user_id`
               ,`address_id`
               ,`billing_id`
               ,`delivery_id`
               ,`order_date`
               )
        VALUES (NULL, 1003,1,1,1,1,NOW()
        );



    LOCK TABLES `order_lines` WRITE;
        INSERT INTO `order_lines`(
                    `order_id`
                   ,`book_id`)
        VALUES (1,1)
              ,(1,2)
              ,(1,3)
              ,(1,4)
              ,(1,5)
              ;
    UNLOCK TABLES;



    DROP VIEW IF EXISTS `vOrders`;
    CREATE VIEW `vOrders` AS
        SELECT `o`.`order_id`   AS "ID"
              ,`o`.`order_no`   AS "Order No."
              ,`b`.`title`      AS "Book"
              ,`o`.`order_date` AS "Order Date"
              ,`ol`.`order_id`  AS "OLOID"
              ,CONCAT(
              # TODO    Need to write a function to Title Case the Name,
              #         regardless of  how it was entered.
                  IF((`u`.`givenname` IS NOT NULL), CONCAT(`u`.`givenname`,' '),'')
                 ,IF((`u`.`initials`  IS NOT NULL), CONCAT(`u`.`initials`,' '),'')
                 ,`u`.`familyname`) AS "Name"
             #Home Address.
             ,CONCAT(
                  CONCAT(IF(`a`.`house_no`   IS NOT NULL, CONCAT(`a`.`house_no`, ", "), ""))
                 ,CONCAT(IF(`a`.`house_name` IS NOT NULL, CONCAT(`a`.`house_name`, ", "), ""))
                 ,`a`.`street`, ", "
                 ,`a`.`district`, ", "
                 ,`a`.`county`, ", "
                 ,`c`.`name`, ".") AS "Address"
             #Billing Address.
             ,CONCAT(
                  CONCAT(IF(`ba`.`house_no`   IS NOT NULL, CONCAT(`ba`.`house_no`, ", "), ""))
                 ,CONCAT(IF(`ba`.`house_name` IS NOT NULL, CONCAT(`ba`.`house_name`, ", "), ""))
                 ,`ba`.`street`, ", "
                 ,`ba`.`district`, ", "
                 ,`ba`.`county`, ", "
                 ,`c`.`name`, ".") AS "Billing Address"
             #Delivery Address.
             ,CONCAT(
                  CONCAT(IF(`da`.`house_no`   IS NOT NULL, CONCAT(`da`.`house_no`, ", "), ""))
                 ,CONCAT(IF(`da`.`house_name` IS NOT NULL, CONCAT(`da`.`house_name`, ", "), ""))
                 ,`da`.`street`, ", "
                 ,`da`.`district`, ", "
                 ,`da`.`county`, ", "
                 ,`c`.`name`, ".") AS "Delivery Address"
        FROM `orders` AS `o`
        LEFT OUTER JOIN `order_lines` AS `ol`
        ON `o`.`order_id` = `ol`.`order_id`
        LEFT OUTER JOIN `books` AS `b`
        ON `ol`.`book_id` = `b`.`book_id`
        LEFT OUTER JOIN `users` AS `u`
        ON `o`.`user_id` = `u`.`user_id`
        LEFT OUTER JOIN `addresses` AS `a`
        ON `o`.`address_id` = `a`.`addr_id`
        LEFT OUTER JOIN `countries` AS `c`
        ON `a`.`country_id` = `c`.`country_id`
        LEFT OUTER JOIN `addresses` AS `ba`
        ON `o`.`billing_id` = `a`.`addr_id`
        LEFT OUTER JOIN `addresses` AS `da`
        ON `o`.`delivery_id` = `a`.`addr_id`
        ;


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
            LEFT JOIN `countries`  AS `c`   ON `ad`.`country_id` = `c`.`country_id`;


/*
|----------------------------------------------------------------------------------------
| vBooksByUser.
|----------------------------------------------------------------------------------------
|
| A view of all the books bought by a specific user.
|
|----------------------------------------------------------------------------------------
*/

    CREATE VIEW `vBooksByUser` AS
        SELECT * FROM users AS `a`
        ;


/*
|-------------------------------------------------------------
|   Structure for View `vpCharges`.
|-------------------------------------------------------------
*/

    CREATE VIEW `vpCharges` AS
        SELECT `p`.`pProvider` AS "Service Provider"
              ,`s`.`pCOS_1_id`   AS "Service"
              ,CONCAT(FORMAT(FLOOR(`w`.`pMetric`),0,'en_GB'),   " Grammes")
                  AS "Maximum Weight in Grammes"
              ,CONCAT(FORMAT(FLOOR(`w`.`pImperial`),0,'en_GB'), " Ounces")
                  AS "Maximum Weight Ounces"
              ,CONCAT(FORMAT((FLOOR(`w`.`pMetric`)/1000),0,'en_GB'), " Kilogrammes")
                  AS "Maximum Weight in Kilogrammes"
              ,CONCAT(FORMAT((FLOOR(`w`.`pImperial`)/16),0,'en_GB'), " Pounds")
                  AS "Maximum Weight in Pounds"
              ,`s`.`notes`,`cost`
        FROM `pProviders`  AS `p`
        LEFT OUTER JOIN `pServices` AS `s` ON `p`.`pProvider_id` = `s`.`pProvider_id`
        LEFT OUTER JOIN `pWeights`  AS `w` ON `s`.`pMax_weight_id` = `w`.`pWeight_id`;


/*
|-------------------------------------------------------------
|   End of Views.
|-------------------------------------------------------------
*/
