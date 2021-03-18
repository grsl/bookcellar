/*
|----------------------------------
| Data for the `categories` table.
|----------------------------------
*/
    USE bookCellar

    LOCK TABLES `categories` WRITE;
    INSERT INTO `categories` (`cat_id`,`award_id`,`category`)
    VALUES ( 1,1,'Best Novel')
          ,( 2,1,'Best Novella')
          ,( 3,1,'Best Novelette')
          ,( 4,1,'Best Short Story')
          ,( 5,1,'Best Related Work')
          ,( 6,1,'Best Graphic Story')
          ,( 7,1,'Best Dramatic Presentation, Long Form')
          ,( 8,1,'Best Dramatic Presentation, Short Form')
          ,( 9,1,'Best Editor, Short Form')
          ,(10,1,'Best Editor, Long Form')
          ,(11,1,'Best Professional Artist')
          ,(12,1,'Best Semiprozine')
          ,(13,1,'Best Fanzine')
          ,(14,1,'Best Fancast')
          ,(15,1,'Best Fan Writer')
          ,(16,1,'Best Fan Artist')
          ,(17,1,'Best Series')
          ,(18,1,'The John W. Campbell Award for Best New Writer')
          ,(19,1,"Best New Professional Science Fiction or Fantasy Writer");
    UNLOCK TABLES;
