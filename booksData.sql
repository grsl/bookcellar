/*
|----------------------------------
| Data for the `books` table.
|----------------------------------
*/
    USE bookCellar

    LOCK TABLES `books` WRITE;
    INSERT INTO `books`(`pub_id`,`cond_id`,`series_id`,`title`,`printing_id`,`edition_id`,`pub_date`,`illus_id`)
    VALUES (87, 10, 1, 'The Colour of Magic', 7, 7, 19, 10)
          ,(87, 10, 1, 'The Light Fantastic', 7, 7, 19, 10)
          ,(48, 10, 1, 'Equal Rights',        7, 7, 19, 10)
          ,(87, 10, 2, 'The Obelisk Gate',    7, 7, 19,  1)
          ,(78, 10, 2, 'The Fifth Season',    7, 7, 19,  1)
          ;
    UNLOCK TABLES;

    UPDATE `books`
    SET blurb = 'The Colour of Magic is a 1983 comic fantasy novel by Terry Pratchett, and is the first book of the Discworld series. The first printing of the British edition consisted of 506 copies. Pratchett has described it as "an attempt to do for the classical fantasy universe what Blazing Saddles did for Westerns.'
    WHERE title = 'The Colour of Magic';
    UPDATE `books`
    SET isbn = "0-86140-324-X", blurb = 'The Light Fantastic is a comic fantasy novel by Terry Pratchett, the second of the Discworld series. It was published on 2 June 1986, the first printing being of 1,034 copies. The title is a quote from a poem by John Milton and in the original context referred to dancing lightly with extravagance.'
    WHERE title = 'The Light Fantastic';
    UPDATE `books`
    SET blurb = 'Equal Rites is a comic fantasy novel by Terry Pratchett. Published in 1987, it is the third novel in the Discworld series and the first in which the main character is not Rincewind. The title is wordplay on the phrase "Equal Rights".', isbn = "0-575-03950-7"
    WHERE title = 'Equal Rights';
    UPDATE `books`
    SET blurb = 'The Obelisk Gate is a 2016 science fantasy novel by N. K. Jemisin and the second volume in the Broken Earth series. The Obelisk Gate was released to strong reviews and, like its predecessor in the series, won the Hugo Award for Best Novel.'
    WHERE title ='The Obelisk Gate';
    UPDATE `books`
    SET blurb = 'The Fifth Season is a 2015 science fantasy novel by N. K. Jemisin. It was awarded the Hugo Award for Best Novel in 2016. It is the first volume in the Broken Earth series, and is followed by The Obelisk Gate and The Stone Sky.'
    WHERE title ='The Fifth Season';

