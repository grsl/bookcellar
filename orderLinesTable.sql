/*
|-----------------------------------
| Table Structure for `order_ines`.
|-----------------------------------
*/
    USE bookCellar    

    CREATE TABLE IF NOT EXISTS `order_lines` (
         `order_lines_id` INT(11) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`order_id`       INT(11) UNSIGNED NOT NULL
        ,`book_id`        INT(11) UNSIGNED NOT NULL
        ,`created`        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        ,`updated`        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
        ,INDEX `ol_book_ind`  (`book_id`)
        ,INDEX `ol_order_ind` (`order_id`)
        /*
        ,CONSTRAINT `fk_ordered_book` FOREIGN KEY `order_lines` (`book_id`)  REFERENCES `books`  (`book_id`)
        ,CONSTRAINT `fk_order`        FOREIGN KEY `order_lines` (`order_id`) REFERENCES `orders` (`order_id`)
        */
        )
        ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

