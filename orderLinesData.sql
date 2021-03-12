/*
|-------------------------------
| Data for table `order_lines`.
|-------------------------------
*/
    LOCK TABLES `order_lines` WRITE;
        INSERT INTO `order_lines`(
                    `order_id`
                   ,`book_id`)
        VALUES (1,1)
              ,(1,2)
              ,(1,3)
              ,(1,4)
              ,(1,5)
              ;
    UNLOCK TABLES;

