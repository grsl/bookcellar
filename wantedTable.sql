/*
|-------------------------------
| Structure for table `wanted`.
|-------------------------------
*/
    USE bookCellar

    CREATE TABLE IF NOT EXISTS  `wanted` (
         `book_id` INT(11) UNSIGNED NOT NULL
        ,`user_id` INT(11) UNSIGNED NOT NULL
        ,INDEX `book_ind` (`book_id`)
        ,INDEX `user_ind` (`user_id`)
        /*
        ,CONSTRAINT `fk_book_wanted` FOREIGN KEY `wanted` (`book_id`)
            REFERENCES  `books` (`book_id`)
        ,CONSTRAINT `fk_user_wants` FOREIGN KEY `wanted` (`user_id`)
            REFERENCES  `users` (`user_id`)
        */
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;
