/*
|----------------------------------
| Data for the `has_a_book` table.
|----------------------------------
*/
    USE bookCellar

    LOCK TABLES `has_a_book` WRITE;
    INSERT INTO `has_a_book`
    VALUES (1,6)
          ,(2,6)
          ,(3,6)
          ,(4,7)
          ,(5,7);
    UNLOCK TABLES;
