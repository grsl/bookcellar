/*
|----------------------------------
| Data for the `illustrators` table.
|----------------------------------
*/
    LOCK TABLES `illustrators` WRITE;
    INSERT INTO `illustrators`(`book_id`,`givenname`,`familyname`)
    VALUES  (0,'Unknown','Unillustrated')
           ,(0,'Cixin','Liu')
           ,(0,'G. Willow','Wilson')
           ,(0,'James','Gunn')
           ,(0,'John Joseph','Adams')
           ,(0,'James','Bacon')
           ,(0,'Alisa','krasnostein')
           ,(0,'Laura J.','Mixon')
           ,(0,'Elizabeth','Mixon')
           ,(1,'Josh','Kirby')
           ,(0,'Wesley','Chu');
    UNLOCK TABLES;
