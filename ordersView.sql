/*
|-------------------------------
| Structure for view `vOrders`.
|-------------------------------
*/

    USE bookCellar

    CREATE VIEW `vOrders` AS
        SELECT `order_lines_id`
              ,`user_id`
              ,`book_id`
              ,`order_id`
              ,`created`
              ,`updated`
        FROM `order_lines`;
