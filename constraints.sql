/*
|-----------------------------------
| Structure for table `books`.
|-----------------------------------
*/
    ALTER TABLE `books` (
         INDEX `publisher_ind`    (`pub_id`)
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
        ,CONSTRAINT `fk_book_author` FOREIGN KEY `books` (`author_id`)
            REFERENCES  `authors` (`author_id`)
        );

/*
|-------------------------------
| Structure for table `wanted`.
|-------------------------------
*/
    ALTER TABLE `wanted` (
         INDEX `book_ind` (`book_id`)
        ,INDEX `user_ind` (`user_id`)
        ,CONSTRAINT `fk_book_wanted` FOREIGN KEY `wanted` (`book_id`)
            REFERENCES  `books` (`book_id`)
        ,CONSTRAINT `fk_user_wants` FOREIGN KEY `wanted` (`user_id`)
            REFERENCES  `users` (`user_id`)
    );

/*
|----------------------------------
| Structure for table `addresses`.
|----------------------------------
*/
    ALTER TABLE `addresses` (
         INDEX `user_ind`    (`user_id`)
        ,INDEX `country_ind` (`country_id`)
        ,CONSTRAINT `fk_users_address`  FOREIGN KEY `addresses` (`user_id`)
            REFERENCES `users` (`user_id`)
        ,CONSTRAINT `fk_address_country` FOREIGN KEY `addresses` (`country_id`)
            REFERENCES `countries` (`country_id`)
        ) ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;


/*
|----------------------------------
| Structure for table `awards`.
|----------------------------------
*/
    ALTER TABLE `awards` (
         INDEX `year_ind`     (`year_id`)
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
        );

/*
|---------------------------------------------
| Table structure for the table `has_a_book`.
|---------------------------------------------
*/
    ALTER TABLE `has_a_book` (
        ,INDEX `author_ind` (`author_id`)
        ,INDEX `book_ind`   (`book_id`)
        ,PRIMARY KEY(`book_id`,`author_id`)
        ,CONSTRAINT `fk_has_a_book` FOREIGN KEY `has_a_book` (`book_id`)
            REFERENCES `books` (`book_id`)
        ,CONSTRAINT `fk_has_an_author` FOREIGN KEY `has_an_autor` (`author_id`)
            REFERENCES `authors` (`author_id`)
    );


/*
|-----------------------------------
| Table Structure for `order_ines`.
|-----------------------------------
*/
    ALTER TABLE `order_lines` (
         INDEX `ol_book_ind`  (`book_id`)
        ,INDEX `ol_order_ind` (`order_id`)
        ,CONSTRAINT `fk_ordered_book` FOREIGN KEY `order_lines` (`book_id`)
            REFERENCES  `books` (`book_id`)
        ,CONSTRAINT `fk_order` FOREIGN KEY `order_lines` (`order_id`)
            REFERENCES  `orders` (`order_id`)
        );

/*
|-------------------------------------------------------------
|   Table Structure for Table `weights`.
|-------------------------------------------------------------
*/
    ALTER TABLE `pServices` (
         INDEX `pProvider_ind`   (`pProvider_id`)
        ,INDEX `pMax_weight_ind` (`pMax_weight_id`)
        );
