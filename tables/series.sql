/*
|----------------------------------
|  Structure for `series` table.
|----------------------------------
*/

    CREATE TABLE IF NOT EXISTS `series` (
         `series_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`series`    CHAR(50) DEFAULT NULL
        , KEY `series` (`series_id`)
        )
        ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;


/*
|--------------------------
| Data for `series` table.
|--------------------------
*/

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
