/*
|-------------------------
| Data for table `users`.
|-------------------------
*/
    USE bookCellar

    LOCK TABLES `users` WRITE;
    INSERT INTO `users`
    VALUES (1,'grsl',NULL,'simon','long','grslong@gmail.com',1,NULL,'12054952e9fba7de4121aea7e0504d9533e94fda','2017-11-18 09:59:34','2017-11-18 09:59:34')
          ,(2,'Fred',NULL,'Frederick','Bloggs','f.bloggs@hotmail.com',NULL,NULL,'31017a722665e4afce586950f42944a6d331dabf','2017-11-18 09:59:34','2017-11-18 09:59:34')
          ,(3,'PA',NULL,'Paul','Askew','paulA@hotmail.com',NULL,NULL,'a027184a55211cd23e3f3094f1fdc728df5e0500','2017-11-18 09:59:34','2017-11-18 09:59:34')
          ,(4,'john',NULL,'john','Smith','j.smith@gmail.com',NULL,NULL,'a51dda7c7ff50b61eaea0444371f4a6a9301e501','2017-11-18 09:59:34','2017-11-18 09:59:34');
    UNLOCK TABLES;
