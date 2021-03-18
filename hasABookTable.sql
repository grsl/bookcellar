/*
|---------------------------------------------
| Table structure for the table `has_a_book`.
|---------------------------------------------
*/
    USE bookCellar

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
