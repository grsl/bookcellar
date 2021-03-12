/*
|-----------------------------------
| Table Structure for `order`.
|-----------------------------------
*/
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

