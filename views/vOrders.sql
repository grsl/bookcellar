/*
|
|
\*---------------------------*/

DROP VIEW IF EXISTS `vOrders`;

CREATE VIEW `vOrders` AS
    SELECT `o`.`order_id`   AS "ID"
          ,`o`.`order_no`   AS "Order No."
          ,`b`.`title`      AS "Book"
          ,`o`.`order_date` AS "Order Date"
          ,`ol`.`order_id`  AS "OLOID"
,CONCAT(
# TODO    Need to write a function to Title Case the Name,
#         regardless of  how it was entered.
IF((`u`.`givenname` IS NOT NULL), CONCAT(`u`.`givenname`,' '),'')
,IF((`u`.`initials`  IS NOT NULL), CONCAT(`u`.`initials`,' '),'')
,`u`.`familyname`) AS "Name"
#Home Address.
,CONCAT(
CONCAT(IF(`a`.`house_no`   IS NOT NULL, CONCAT(`a`.`house_no`, ", "), ""))
,CONCAT(IF(`a`.`house_name` IS NOT NULL, CONCAT(`a`.`house_name`, ", "), ""))
,`a`.`street`, ", "
,`a`.`district`, ", "
,`a`.`county`, ", "
,`c`.`name`, ".") AS "Address"
#Billing Address.
,CONCAT(
CONCAT(IF(`ba`.`house_no`   IS NOT NULL, CONCAT(`ba`.`house_no`, ", "), ""))
,CONCAT(IF(`ba`.`house_name` IS NOT NULL, CONCAT(`ba`.`house_name`, ", "), ""))
,`ba`.`street`, ", "
,`ba`.`district`, ", "
,`ba`.`county`, ", "
,`c`.`name`, ".") AS "Billing Address"
#Delivery Address.
,CONCAT(
CONCAT(IF(`da`.`house_no`   IS NOT NULL, CONCAT(`da`.`house_no`, ", "), ""))
,CONCAT(IF(`da`.`house_name` IS NOT NULL, CONCAT(`da`.`house_name`, ", "), ""))
,`da`.`street`, ", "
,`da`.`district`, ", "
,`da`.`county`, ", "
,`c`.`name`, ".") AS "Delivery Address"
FROM `orders` AS `o`
LEFT OUTER JOIN `order_lines` AS `ol`
ON `o`.`order_id` = `ol`.`order_id`
LEFT OUTER JOIN `books` AS `b`
ON `ol`.`book_id` = `b`.`book_id`
LEFT OUTER JOIN `users` AS `u`
ON `o`.`user_id` = `u`.`user_id`
LEFT OUTER JOIN `addresses` AS `a`
ON `o`.`address_id` = `a`.`addr_id`
LEFT OUTER JOIN `countries` AS `c`
ON `a`.`country_id` = `c`.`country_id`
LEFT OUTER JOIN `addresses` AS `ba`
ON `o`.`billing_id` = `a`.`addr_id`
LEFT OUTER JOIN `addresses` AS `da`
ON `o`.`delivery_id` = `a`.`addr_id`
;
