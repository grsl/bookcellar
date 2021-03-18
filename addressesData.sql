/*
|-----------------------------
| Data for table `addresses`.
|-----------------------------
*/
    USE bookCellar

    LOCK TABLES `addresses` WRITE;

    INSERT INTO `addresses`
    VALUES (1,1,NULL,'Plum Tree Cottage','Goose Rye Road','Worplesdon','Surrey',826)
          ,(2,2,35,NULL,'Hillside','Woking','Surrey',826)
          ,(3,3,35,NULL,'Hillside','Woking','Surrey',826);
    UNLOCK TABLES;
