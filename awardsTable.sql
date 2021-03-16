

/*
|----------------------------------
| Structure for table `awards`.
|----------------------------------
*/

USE bookCellar

CREATE TABLE IF NOT EXISTS `awards` (

     `award_id`  INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
    ,`award`     CHAR(70) NOT NULL
    ,`year_id`   INT(11)  UNSIGNED NOT NULL DEFAULT 0
    ,`book_id`   INT(11)  UNSIGNED NOT NULL DEFAULT 0
    ,`author_id` INT(11)  UNSIGNED NOT NULL DEFAULT 0
    ,`cat_id`    INT(11)  UNSIGNED NOT NULL DEFAULT 0
    /*
    ,INDEX `year_ind`     (`year_id`)
    ,INDEX `book_ind`     (`book_id`)
    ,INDEX `author_ind`   (`author_id`)
    ,INDEX `category_ind` (`cat_id`)

    ,CONSTRAINT `fk_award_year`     FOREIGN KEY `awards` (`year_id`)   REFERENCES `years`      (`year_id`)
    ,CONSTRAINT `fk_award_book`     FOREIGN KEY `awards` (`book_id`)   REFERENCES `books`      (`book_id`)
    ,CONSTRAINT `fk_award_author`   FOREIGN KEY `awards` (`author_id`) REFERENCES `authors`    (`author_id`)
    ,CONSTRAINT `fk_award_category` FOREIGN KEY `awards` (`cat_id`)    REFERENCES `categories` (`cat_id`)
    */
    ) ENGINE=InnoDB CHARSET=utf8;
