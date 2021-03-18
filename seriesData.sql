/*
|--------------------------
| Data for `series` table.
|--------------------------
*/
    USE bookCellar

    LOCK TABLES `series` WRITE;
    INSERT INTO `series`
    VALUES (1,'Discworld')
          ,(2,'The Broken Earth')
          ,(3,'The Chronicles of Narnia')
          ,(4,'The Hunger Games')
          ,(5,'The Wheel of Time')
          ,(6,'His Dark Materials')
          ,(7,'The Lord of the Rings')
          ,(8,'A Song of Ice and Fire')
          ;
    UNLOCK TABLES;
