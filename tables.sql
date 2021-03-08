/*
|---------------------------------------
| Database Initialisation.
| Drop, recreate and select the database.
|---------------------------------------
*/
    DROP DATABASE IF EXISTS `bookCellar`;
    CREATE DATABASE IF NOT EXISTS `bookCellar` CHARACTER SET utf8 COLLATE utf8_general_ci;
    USE `bookCellar`;

/*
|---------------------------------------
| Create the Illustrators table.
| Table structure for the `illustrators` table.
|---------------------------------------
*/
    DROP TABLE IF EXISTS `illustrators`;
    CREATE TABLE `illustrators` (
         `illustrators_id` INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`book_id`         INT(11) UNSIGNED NOT NULL
        ,`givenname`       CHAR(20) DEFAULT NULL
        ,`familyname`      CHAR(20) DEFAULT NULL
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|---------------------------------------
| Create the Authors table.
|  Table structure for `authors` table.
|---------------------------------------
*/
    DROP TABLE IF EXISTS `authors`;
    CREATE TABLE `authors` (
         `author_id`  INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`givenname`  CHAR(30) NOT NULL DEFAULT ""
        ,`initials`   CHAR(7)  NOT NULL DEFAULT ""
        ,`familyname` CHAR(30) NOT NULL DEFAULT ""
        ,`psuedonym`  CHAR(60) NOT NULL DEFAULT ""
        ,`yob`        CHAR(4)
        ,`yod`        CHAR(4)
        ,`biog`       BLOB
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|-------------------------------------
|  Table structure for table `years`.
|-------------------------------------
*/
    DROP TABLE IF EXISTS `years`;
    CREATE TABLE `years` (
                 `year_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
                ,`year`    INT(4)  UNSIGNED NOT NULL
                ,KEY `award_ind` (`year_id`)
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|----------------------------------
|  Structure for `series` table.
|----------------------------------
*/
    CREATE TABLE IF NOT EXISTS `series` (
         `series_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`series`    CHAR(50) DEFAULT NULL
        , KEY `series` (`series_id`)
        )
        ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|-----------------------------------
| Structure for `conditions` table.
|-----------------------------------
*/
    CREATE TABLE IF NOT EXISTS `conditions` (
         `cond_id`     INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`cond`        CHAR(100) DEFAULT NULL
        ,`description` BLOB
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|---------------------------------------
| Table structure for table `editions`.
|---------------------------------------
*/
    CREATE TABLE IF NOT EXISTS `editions` (
        `edition_id` INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`edition`   CHAR(10)
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|---------------------------------------
| Structure for the `printings` table.
|---------------------------------------
*/
    CREATE TABLE IF NOT EXISTS `printings` (
         `printing_id` INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`printing`    CHAR(10)  DEFAULT NULL
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

/*
|-----------------------------------
| Structure for table `publishers`.
|-----------------------------------
*/
    CREATE TABLE IF NOT EXISTS `publishers` (
         `pub_id` INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`name`  CHAR(100) DEFAULT NULL
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

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
    CREATE TABLE IF NOT EXISTS `sizes` (
        `size_id`  INT(11)     UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`metric`   FLOAT(6,2) DEFAULT NULL
        ,`imperial` FLOAT(6,2) DEFAULT NULL
        ,KEY `size_ind` (`size_id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

/*
|------------------------------
| Structure for table `users`.
|------------------------------
*/
    CREATE TABLE `users` (
         `user_id`       INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`username`      CHAR(20)  NOT NULL
        ,`initials`      CHAR(12)  DEFAULT NULL
        ,`givenname`     CHAR(25)  NOT NULL
        ,`familyname`    CHAR(25)  NOT NULL
        ,`email_address` CHAR(100) NOT NULL
        ,`addr_id`       INT(11)   UNSIGNED DEFAULT NULL
        ,`baddr_id`      INT(11)   UNSIGNED DEFAULT NULL
        ,`password`      CHAR(50)  NOT NULL
        ,`last_login`    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        ,`current_login` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

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
| Structure for table `countries`.
|----------------------------------
*/
    CREATE TABLE IF NOT EXISTS `countries` (
        `country_id`    INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`two_letter`   CHAR(2)   NOT NULL
        ,`three_letter` CHAR(3)   NOT NULL
        ,`un_number`    INT(4)    UNSIGNED NOT NULL DEFAULT '0'
        ,`name`         CHAR(100) DEFAULT NULL
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|-----------------------------------
| Structure for table `categories`.
|-----------------------------------
*/
    CREATE TABLE IF NOT EXISTS `categories` (
         `cat_id`   INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`award_id` INT(11)   UNSIGNED DEFAULT NULL
        ,`category` CHAR(100) NOT NULL
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

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
|-----------------------------
| Table Structure for Orders.
|-----------------------------
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
    CREATE TABLE IF NOT EXISTS `weights` (
         `weights_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`metric`     INT(10)
        ,`imperial`   FLOAT(8,3)
    );

/*
|-------------------------------------------------------------
|   Postage Section.
|-------------------------------------------------------------
|
|   All tables in the Postal module will be prefixed with
|   a `p`and the following letter will be capitalised.
|
|-------------------------------------------------------------
*/
    DROP TABLE IF EXISTS `pServices`;
    DROP TABLE IF EXISTS `pWeights`;
    DROP TABLE IF EXISTS `pSizes`;
    DROP TABLE IF EXISTS `pPrices`;
    DROP TABLE IF EXISTS `pClassOfService1`;
    DROP TABLE IF EXISTS `pClassOfService2`;
    DROP TABLE IF EXISTS `pProviders`;
    DROP VIEW  IF EXISTS `vpCharges`;

/*
|-----------------------------------------------
|  Table Structure for Table `Postal Provider`.
|-----------------------------------------------
*/
    CREATE TABLE `pProviders`(
         `pProvider_id` INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`pProvider`    CHAR(30)
        )
        ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

/*
|-------------------------------------------------------------
|   Table Structure for Table `pClaseOfService1`.
|-------------------------------------------------------------
*/
    CREATE TABLE `pClass` (
         `pClass_id`   INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`pProvider_id` INT(11) UNSIGNED NOT NULL
        ,`pClass`      CHAR(25)
    );

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
    CREATE TABLE `pWeights` (
         `pWeight_id` INT(11)     UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`pMetric`    FLOAT(12,6) DEFAULT NULL COMMENT "All weights are in grammes."
        ,`pImperial`  FLOAT(12,6) DEFAULT NULL COMMENT "All weights are in ounces."
        ,KEY `pWeight_ind` (`pWeight_id`)
        )
        ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

/*
|-------------------------------------------------------------
|  Table Structure for Table `pServices`.
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
