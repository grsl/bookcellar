/*
|-----------------------------
| Table Structure for Orders.
|-----------------------------
*/
    USE bookCellar

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
        /*
        ,CONSTRAINT `fk_user_order`    FOREIGN KEY `orders` (`user_id`)
            REFERENCES  `users`     (`user_id`)
        ,CONSTRAINT `fk_user_address`  FOREIGN KEY `orders` (`address_id`)
            REFERENCES  `addresses` (`addr_id`)
        ,CONSTRAINT `fk_user_billing`  FOREIGN KEY `orders` (`billing_id`)
            REFERENCES  `addresses` (`addr_id`)
        ,CONSTRAINT `fk_user_delivery` FOREIGN KEY `orders` (`delivery_id`)
            REFERENCES  `addresses` (`addr_id`)
        */
        ) ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

