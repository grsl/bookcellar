/*
|-----------------------------------
| Structure for table `books`.
|-----------------------------------
*/
    CREATE TABLE IF NOT EXISTS `books` (
         `book_id`      INT(11)      UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`pub_id`       INT(11)      UNSIGNED NOT NULL
        ,`cond_id`      INT(11)      UNSIGNED NOT NULL DEFAULT '0'
        ,`series_id`    INT(11)      UNSIGNED NOT NULL DEFAULT '0'
        ,`title`        CHAR(50)     NOT NULL
        ,`printing_id`  INT(11)      UNSIGNED NOT NULL DEFAULT '0'
        ,`edition_id`   INT(11)      UNSIGNED NOT NULL DEFAULT '0'
        ,`pub_date`     INT(11)      UNSIGNED NOT NULL DEFAULT '0'
        ,`illus_id`     INT(11)      UNSIGNED NOT NULL DEFAULT '0'
        ,`price`        DECIMAL(7,2) NOT NULL DEFAULT '0.00'
        ,`weight`       DECIMAL(4,2) NOT NULL DEFAULT '0.00'
        ,`blurb`        BLOB
        ,`isbn`         CHAR(20)     DEFAULT NULL
        ,`created`      TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP
        ,`updated`      TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
        ,INDEX `publisher_ind`    (`pub_id`)
        ,INDEX `condition_ind`    (`cond_id`)
        ,INDEX `series_ind`       (`series_id`)
        ,INDEX `pub_date_ind`     (`pub_date`)
        ,INDEX `illustrators_ind` (`illus_id`)
        ,CONSTRAINT `fk_book_publisher` FOREIGN KEY `books` (`pub_id`)
            REFERENCES  `publishers` (`pub_id`)
        ,CONSTRAINT `fk_book_condition` FOREIGN KEY `books` (`cond_id`)
            REFERENCES  `conditions` (`cond_id`)
        ,CONSTRAINT `fk_book_series` FOREIGN KEY `books` (`series_id`)
            REFERENCES  `series` (`series_id`)
        ,CONSTRAINT `fk_printing_date` FOREIGN KEY `books` (`printing_id`)
            REFERENCES  `printings` (`printing_id`)
        ,CONSTRAINT `fk_edition` FOREIGN KEY `books` (`edition_id`)
            REFERENCES  `editions` (`edition_id`)
        ,CONSTRAINT `fk_book_publication_date` FOREIGN KEY `books` (`pub_date`)
            REFERENCES  `years` (`year_id`)
        ,CONSTRAINT `fk_book_illustrator` FOREIGN KEY `books` (`illus_id`)
            REFERENCES  `illustrators` (`illustrators_id`)
        #,CONSTRAINT `fk_book_author` FOREIGN KEY `books` (`author_id`)
            #REFERENCES  `authors` (`author_id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

/*
|------------------------------
| Structure for table `sizes`.
|------------------------------
*/


/*
|------------------------------
| Structure for table `users`.
|------------------------------
*/
/*
|-------------------------------
| Structure for table `wanted`.
|-------------------------------
*/
    CREATE TABLE IF NOT EXISTS  `wanted` (
         `book_id` INT(11) UNSIGNED NOT NULL
        ,`user_id` INT(11) UNSIGNED NOT NULL
        ,INDEX `book_ind` (`book_id`)
        ,INDEX `user_ind` (`user_id`)
        ,CONSTRAINT `fk_book_wanted` FOREIGN KEY `wanted` (`book_id`)
            REFERENCES  `books` (`book_id`)
        ,CONSTRAINT `fk_user_wants` FOREIGN KEY `wanted` (`user_id`)
            REFERENCES  `users` (`user_id`)
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;
/*
|----------------------------------
| Structure for table `addresses`.
|----------------------------------
*/
    CREATE TABLE IF NOT EXISTS `addresses` (
         `addr_id`    INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`user_id`    INT(11)  UNSIGNED NOT NULL
        ,`house_no`   INT(4)   DEFAULT NULL
        ,`house_name` CHAR(20) DEFAULT NULL
        ,`street`     CHAR(20) NOT NULL
        ,`district`   CHAR(20) DEFAULT NULL
        ,`county`     CHAR(20) NOT NULL
        ,`country_id` INT(11)  UNSIGNED NOT NULL
        ,index `user_ind`    (`user_id`)
        ,index `country_ind` (`country_id`)
        ,CONSTRAINT `fk_users_address`  FOREIGN KEY `addresses` (`user_id`)
            REFERENCES `users` (`user_id`)
        ,CONSTRAINT `fk_address_country` FOREIGN KEY `addresses` (`country_id`)
            REFERENCES `countries` (`country_id`)
        ) ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

    CREATE TABLE IF NOT EXISTS `awards` (
         `award_id`  INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`award`     CHAR(70) NOT NULL
        ,`year_id`   INT(11)  UNSIGNED NOT NULL DEFAULT 0
        ,`book_id`   INT(11)  UNSIGNED NOT NULL DEFAULT 0
        ,`author_id` INT(11)  UNSIGNED NOT NULL DEFAULT 0
        ,`cat_id`    INT(11)  UNSIGNED NOT NULL DEFAULT 0
        ,INDEX `year_ind`     (`year_id`)
        ,INDEX `book_ind`     (`book_id`)
        ,INDEX `author_ind`   (`author_id`)
        ,INDEX `category_ind` (`cat_id`)
        ,CONSTRAINT `fk_award_year`     FOREIGN KEY `awards` (`year_id`)
            REFERENCES `years`      (`year_id`)
        ,CONSTRAINT `fk_award_book`     FOREIGN KEY `awards` (`book_id`)
            REFERENCES `books`      (`book_id`)
        ,CONSTRAINT `fk_award_author`   FOREIGN KEY `awards` (`author_id`)
            REFERENCES `authors`    (`author_id`)
        ,CONSTRAINT `fk_award_category` FOREIGN KEY `awards` (`cat_id`)
            REFERENCES `categories` (`cat_id`)
        ) ENGINE=InnoDB CHARSET=utf8;

/*
|----------------------------------
| Structure for view `vAuthors`
|----------------------------------
*/
/*
|-------------------------------------
| Structure for view `vAwardWinners`.
|-------------------------------------
*/
/*
|------------------------------
| Structure for view `vBooks`.
|------------------------------
*/
/*
|----------------------------------
| Structure for view `vUsers`.
|----------------------------------
*/
/*
|-------------------------------
| Structure for view `vOrders`.
|-------------------------------
*/
/*
|----------------------------------
| Data for the `illustrators` table.
|----------------------------------
*/
/*
|----------------------------------
| Data for the `books` table.
|----------------------------------
*/
/*
|----------------------------------
| Data for the `categories` table.
|----------------------------------
*/
/*
|-------------------------
| Data for table `users`.
|-------------------------
*/
/*
|---------------------------------------------
| Table structure for the table `has_a_book`.
|---------------------------------------------
*/
    CREATE TABLE IF NOT EXISTS `has_a_book` (
         `book_id`   INT(11) UNSIGNED NOT NULL
        ,`author_id` INT(11) UNSIGNED NOT NULL
        ,INDEX `author_ind` (`author_id`)
        ,INDEX `book_ind`   (`book_id`)
        ,PRIMARY KEY(`book_id`,`author_id`)
        ,CONSTRAINT `fk_has_a_book` FOREIGN KEY `has_a_book` (`book_id`)
            REFERENCES `books` (`book_id`)
        ,CONSTRAINT `fk_has_an_author` FOREIGN KEY `has_an_autor` (`author_id`)
            REFERENCES `authors` (`author_id`)
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;







/*
|---------------------------------------------------------------------------------------
|
| Procedures.
|
|---------------------------------------------------------------------------------------
*/
/*
|---------------------------------
| Procedure to title case a word.
|---------------------------------
*/
/*
|-----------------------------------------------
| Alias for the procedure to title case a word.
|-----------------------------------------------
*/
    CREATE TABLE IF NOT EXISTS `orders` (
         `order_id`    INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`order_no`    INT(11)   UNSIGNED NOT NULL DEFAULT '1000'
        ,`user_id`     INT(11)   UNSIGNED NOT NULL
        ,`address_id`  INT(11)   UNSIGNED NOT NULL
        ,`billing_id`  INT(11)   UNSIGNED NOT NULL
        ,`delivery_id` INT(11)   UNSIGNED NOT NULL
        ,`order_date`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        ,INDEX `user_ind`     (`user_id`)
        ,INDEX `address_ind`  (`address_id`)
        ,INDEX `billing_ind`  (`billing_id`)
        ,INDEX `delivery_ind` (`delivery_id`)
        ,CONSTRAINT `fk_user_order`    FOREIGN KEY `orders` (`user_id`)
            REFERENCES  `users`     (`user_id`)
        ,CONSTRAINT `fk_user_address`  FOREIGN KEY `orders` (`address_id`)
            REFERENCES  `addresses` (`addr_id`)
        ,CONSTRAINT `fk_user_billing`  FOREIGN KEY `orders` (`billing_id`)
            REFERENCES  `addresses` (`addr_id`)
        ,CONSTRAINT `fk_user_delivery` FOREIGN KEY `orders` (`delivery_id`)
            REFERENCES  `addresses` (`addr_id`)
        ) ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|-----------------------------------
| Table Structure for `order_ines`.
|-----------------------------------
*/
    CREATE TABLE IF NOT EXISTS `order_lines` (
         `order_lines_id` INT(11) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`order_id`       INT(11) UNSIGNED NOT NULL
        ,`book_id`        INT(11) UNSIGNED NOT NULL
        ,`created`        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        ,`updated`        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
        ,INDEX `ol_book_ind`  (`book_id`)
        ,INDEX `ol_order_ind` (`order_id`)
        ,CONSTRAINT `fk_ordered_book` FOREIGN KEY `order_lines` (`book_id`)
            REFERENCES  `books` (`book_id`)
        ,CONSTRAINT `fk_order` FOREIGN KEY `order_lines` (`order_id`)
            REFERENCES  `orders` (`order_id`)
        )
        ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|--------------------------------
| Table Structure for `weights`.
|--------------------------------
*/
/*
|-----------------------------------
| Table Structure for `order`.
|-----------------------------------
*/
/*
|-------------------------------
| Data for table `order_lines`.
|-------------------------------
*/
/*
|---------------------------
| Data for `weights` table.
|---------------------------
*/
/*
|-----------------------------------
| Data for table `orders_lines`.
|-----------------------------------
*/









/*
|-------------------------------------------------------------
|
|   Tables
|
|-------------------------------------------------------------
*/
/*
|-----------------------------------------------
|  Table Structure for Table `Postal Provider`.
|-----------------------------------------------
*/

/*
|-------------------------------------------------------------
|   Table Structure for Table `pClaseOfService1`.
|-------------------------------------------------------------
*/

/*
|-------------------------------------------------------------
|   Table Structure for Table `pSizes`.
|-------------------------------------------------------------
*/
    CREATE TABLE `pSizes` (
         `pSize_id`  INT(11)     UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`pMetric`   FLOAT(12,6) DEFAULT NULL COMMENT "All sizes  are in centimetres."
        ,`pImperial` FLOAT(12,6) DEFAULT NULL COMMENT "All weights are in inches."
        )
        ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

/*
|-------------------------------------------------------------
|   Table Structure for Table `weights`.
|-------------------------------------------------------------
*/

    CREATE TABLE `pServices` (
         `pService_id`    INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`pProvider_id`   INT(11)  UNSIGNED NOT NULL
        ,`pCOS_1_id`      INT(11)  UNSIGNED NOT NULL
        ,`pCOS_2_id`      INT(11)  UNSIGNED NOT NULL
        ,`pMax_weight_id` INT(11)  UNSIGNED NOT NULL
        ,`length`         FLOAT(12,6)
        ,`width`          FLOAT(12,6)
        ,`height`         FLOAT(12,6)
        ,`notes`          BLOB
        ,`cost`           FLOAT(6,2)
        ,INDEX `pProvider_ind`   (`pProvider_id`)
        ,INDEX `pMax_weight_ind` (`pMax_weight_id`)
        )
        ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;
