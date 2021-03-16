/*
|-----------------------------------
| Structure for table `books`.
|-----------------------------------
*/

    USE `bookCellar`

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
        /*
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
        */
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;
