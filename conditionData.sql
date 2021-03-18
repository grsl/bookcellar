/*
|----------------------------------
| Data for the `conditions` table.
|----------------------------------
*/
    USE bookCellar

    LOCK TABLES `conditions` WRITE;
    INSERT INTO `conditions`
    VALUES (NULL,'UNASSIGNED.','There isn\'t a description of the condition.')
          ,(NULL,'As New.','It means that the book is in the state that it should have been when it left the publisher. This is the equivalent of Mint in Numismatics.')
          ,(NULL,'Fine.','(F or FN) as As New but allowing for the normal effects of time on as unused book that has been protected. A fine book shows no damage.')
          ,(NULL,'Very Good.','(VG) A book that is worn but untorn. For many collectors this is the minimum acceptable condition for all but the rarest of items. Any defects must be noted.')
          ,(NULL,'Good.','(G) The condition of an average used worn book that is complete. Any defects must be noted.')
          ,(NULL,'Fair.','Shows wear and tear but all the text pages and illustrations or maps are present. It may lack endpapers, half-title, and even the title page. All defects must be noted')
          ,(NULL,'Poor.','A book that has the complete text but is so damaged that it is only of interest to a buyer who seeks a reading copy. If the damage renders the text illegible then the book is not even poor.')
          ,(NULL,'Ex-Libris.','A book from library stock. Copies must always be designated as such no matter what the condition of the book.')
          ,(NULL,'Book Club.','A book published by a book club. Copies must always be designated as such no matter what the condition of the book.')
          ,(NULL,'Binding Copy.','A book in which the pages or leaves are perfect, but the binding is very bad, loose, off or non-existant>');
    UNLOCK TABLES;
