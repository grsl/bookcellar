/*
|---------------------------------------
| Database Initialisation.
|---------------------------------------
|
| Drop, recreate and select the database.
|
*/
    DROP DATABASE IF EXISTS `bookCellar`;
    CREATE DATABASE IF NOT EXISTS `bookCellar` CHARACTER SET utf8 COLLATE utf8_general_ci;
    USE `bookCellar`;

/*
|---------------------------------------
| Create the Illustrators table.
|---------------------------------------
|
| Table structure for the `illustrators` table.
|
*/
    DROP TABLE IF EXISTS `illustrators`;
    CREATE TABLE `illustrators` (
         `illustrators_id` INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`book_id`         INT(11) UNSIGNED NOT NULL
        ,`givenname`       CHAR(20) DEFAULT NULL
        ,`familyname`      CHAR(20) DEFAULT NULL
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|---------------------------------------
| Create the Authors table.
|---------------------------------------
|
|  Table structure for `authors` table.
|
*/
    DROP TABLE IF EXISTS `authors`;
    CREATE TABLE `authors` (
         `author_id`  INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`givenname`  CHAR(30) NOT NULL DEFAULT ""
        ,`initials`   CHAR(7)  NOT NULL DEFAULT ""
        ,`familyname` CHAR(30) NOT NULL DEFAULT ""
        ,`psuedonym`  CHAR(60) NOT NULL DEFAULT ""
        ,`yob`        CHAR(4)
        ,`yod`        CHAR(4)
        ,`biog`       BLOB
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|--------------------------------------
| Insert data in to the Authors table.
|--------------------------------------
*/
    LOCK TABLES `authors` WRITE;
    INSERT INTO `authors`(`givenname`, `initials`, `familyname`)
    VALUES("",        "S E", "Hinton")
         ,("Frank",   "L",   "Holt")
         ,("Michael", "H",   "Hart")
         ,("Robert" , "E",   "Howard")
         ,("William", "K",   "Hartmann")
         ;

    INSERT INTO `authors` (`author_id`, `givenname`, `initials`, `familyname`, `psuedonym`, `yob`, `yod`, `biog`)
        VALUES (NULL, "Terry", "", "Pratchett", "", "", "", "Terry Pratchet is a very popular author")
              ,(NULL, "","N.K.","Jemisin","","","","")
              ,(NULL, "Robert","A","Heinlein","","","","")
    ;

    INSERT INTO `authors`(`givenname`, `initials`, `familyname`, `yob`)
        VALUES ("Peter", "F", "Hamilton", "1960")
              ,("Lynn",  "E", "Harris",   "1955")
              ,("Agnes", "D", "Herbert",  "1960")
              ,("John",  "M", "Harrison", "1945")
              ,("James", "P", "Hogan",    "1941")
              ,("Joe",   "H", "Aldeman",  "1943")
              ;

    INSERT INTO `authors`(`givenname`, `familyname`)
        VALUES ("David",          "Hume")
              ,("Margaret",       "Peterson Haddix")
              ,("Elizabeth Jane", "Howard")
              ,("Alamgir",        "Hashmi")
              ,("Allison",        "Hedge Coke")
              ,("Barbara",        "Hambly")
              ,("Brenda",         "Hiatt")
              ,("Bruce",          "Barrymore Halpenny")
              ,("Carl",           "Hiaasen")
              ,("Caroline",       "Harvey")
              ,("Charles",        "Harness")
              ,("Christopher",    "Hinz")
              ,("Don",            "Herold")
              ,("David",          "Hackworth")
              ,("Elizabeth",      "Harrison")
              ,("Shirl" ,         "Henke")
              ,("Shirley",        "Hazzard")
              ,("Siri",           "Hustvedt")
              ,("Grace",          "Livingston-Hill")
              ,("Qurratulain",    "Haider")
              ,("Paula",          "Hawkins")
              ,("Paris",          "Hilton")
              ,("Mark Victor",    "Hansen")
              ,("Shanna",         "Hogan")
              ,("Virginia",       "Henley")
              ,("Zenna",          "Henderson")
              ,("Nathaniel",      "Hawthorne")
              ,("Miguel",         "Hernández")
              ,("Stephen",        "Hunt")
              ,("Tony",           "Hillerman")
              ,("Thomas",         "Harris")
              ,("Victor",         "Heck")
              ,("Rosalie",        "Ham")
              ,("Rebecca",        "Heflin")
              ,("Ruth",           "Hamilton")
              ,("Douglas",        "Hill")
              ,("Erin",           "Hunter")
              ,("Ernest",         "Haycox")
              ,("Ethan",          "Hawke")
              ,("Jillian",        "Hunter")
              ,("Joanne",         "Harris")
              ,("Hannah",         "Howell")
              ,("Hans",           "Herbjørnsrud")
              ,("Friedrich",      "Hölderlin")
              ,("Hermann",        "Hesse")
              ,("Jack",           "Higgins")
              ,("Karen",          "Hawkins")
              ,("Kay",            "Hooper")
              ,("Knut",           "Hamsun")
              ,("Marguerite",     "Hamilton")
              ,("Marguerite",     "Henry")
              ,("Mark",           "Haddon")
              ,("Mark",           "Helprin")
              ,("Jon",            "Haylett")
              ,("Joseph",         "Heller")
              ,("Linda",          "Howard")
              ,("Kristan",        "Higgins")
              ,("Napoleon",       "Hill")
              ,("Nathalia",       "Holt")
              ,("Noah",           "Hawley")
              ;

    INSERT INTO `authors` (`givenname`, `initials`, `familyname`, `yob`, `yod`, `psuedonym`)
        VALUES ("Constance", "",  "Heaven",    "1911", "1995", "pseudonym by Constance Fecher Heaven")
              ,("Hervey",    "",  "Hamilton",  "1897", "1985", "pseudonym of Denise Naomi Klein Robins Pearson")
              ,("Sebastian", "",  "Haffner",   "1907", "1999", "pseudonym of Raimund Pretzel")
              ,("Louis",     "C",   "Hunter",    "1898", "1984", "Professor of Economic History at American University")
              ,("Victoria",  "",  "Holt",      "1906", "1993", "pseudonym of Eleanor Burford Hibbert")
              ,("Lydia",     "",  "Hitchcock", "1946", "",   "pseudonym of Penelope Jones, Halsall")
              ;

    INSERT INTO `authors`( `givenname`, `familyname`, `psuedonym`)
    VALUES ("Daniel",  "Handler",  "Pseudonym of Lemony Snicket")
          ,("Anthony", "Horowitz", "Author of the Alex Rider books")
          ;

    INSERT INTO `authors`(`givenname`, `familyname`, `yob`)
    VALUES ("Angela",      "Elwell Hunt",   "1957")
          ,("Bergtóra",    "Hanusardóttir", "1946")
          ,("Christopher", "Hart",          "1965")
          ,("Paul",        "Hornschemeier", "1977")
          ,("Christopher", "Hope",          "1944")
          ,("Dafydd",      "ab Hugh",       "1960")
          ,("Harry",       "Harrison",      "1925")
          ,("Ed",          "Hooper",        "1964")
          ,("Joe",         "Hill",          "1972")
          ,("Sam",         "Harris",        "1967")
          ,("Sarah",       "Holland",       "1961")
          ,("Wendy",       "Holden",        "1961")
          ,("Wendy",       "Holden",        "1965")
          ,("Wilson",      "Harris",        "1921")
          ,("Peter",       "Høeg",          "1957")
          ,("Peter",       "Härtling",      "1933")
          ,("Russell",     "Hoban",         "1925")
          ,("Michael",     "Holroyd",       "1935")
          ,("Parnell",     "Hall",          "1944")
          ,("Rakel",       "Helmsdal",      "1966")
          ,("Karen",       "Hesse",         "1952")
          ,("Khaled",      "Hosseini",      "1965")
          ,("Kristin",     "Hannah",        "1960")
          ,("Merle",       "Hodge",         "1944")
          ,("Jürgen",      "Habermas",      "1929")
          ,("Mike",        "Hoare",         "1919")
          ,("Lou",         "Harry",         "1963")
          ,("Jane",        "Holland",       "1966")
          ,("Shaun",       "Hutson",        "1958")
          ,("Tami",        "Hoag",          "1959")
          ;

    INSERT INTO `authors`(`givenname`, `initials`, `familyname`, `yob`, `yod`)
    VALUES ("Jack",   "C",   "Haldeman II",   "1941", "2002")
          ,("",       "H",   "Rider Haggard", "1856", "1925")
          ,("Robert", "A",   "Heinlein",      "1907", "1988")
          ,("",       "R C", "Hutchinson",    "1907", "1975")
          ,("Ron",    "L",   "Hubbard",       "1911", "1986")
          ,("",       "O",   "Henry",         "1862", "1910")
          ;

    INSERT INTO `authors`(`givenname`, `familyname`, `yob`,`yod`)
    VALUES ("Abbie",       "Hoffman",  "1936", "1989")
          ,("Adolf",       "Hitler",   "1934", "1945")
          ,("Aldous",      "Huxley",   "1884", "1963")
          ,("Alex",        "Haley",    "1921", "1992")
          ,("Johann Gottfried", "von Herder", "1744", "1803")
          ,("Anthony",     "Hope",     "1863", "1933")
          ,("Sheila",      "Holland",  "1937", "2000")
          ,("Arthur",      "Hailey",   "1920", "2004")
          ,("Christopher", "Hitchens", "1949", "2011")
          ,("Dashiell",    "Hammett",  "1894", "1961")
          ,("Ernest",      "Hemingway","1899", "1961")
          ,("Frank",       "Herbert",  "1920", "1986")
          ,("Henry",       "Hasse",    "1913", "1977")
          ,("James",       "Hearst",   "1900", "1983")
          ,("James",       "Herriot",  "1916", "1995")
          ,("Georgette",   "Heyer",    "1902", "1974")
          ,("Edmond",      "Hamilton", "1904", "1977")
          ,("Emily",       "Hahn",     "1905", "1997")
          ,("Dorothy",     "Hewett",   "1923", "2002")
          ,("Fred",        "Hoyle",    "1915", "2001")
          ,("Stéphane",    "Hessel",   "1917", "2013")
          ,("Thomas",      "Hardy",    "1840", "1928")
          ,("Thomas",      "Hobbes",   "1588", "1679")
          ,("Timothy",     "Holme",    "1928", "1987")
          ,("Victor",      "Hugo",     "1802", "1885")
          ,("William",     "Heinesen", "1900", "1991")
          ,("Patricia",    "Highsmith","1921", "1995")
          ,("Patrick",     "Hamilton", "1904", "1962")
          ,("Roy",         "Heath",    "1926", "2008")
          ,("Julian",      "Hawthorne","1846", "1934")
          ,("Joel",        "Chandler Harris",  "1848", "1908")
          ,("Georg, Wilhelm, Friedrich", "Hegel", "1770","1831")
          ,("Martin",      "Heidegger","1889", "1976")
          ,("",          "Hergé" , "1907", "1983")
          ;
    UNLOCK TABLES;

/*
|-------------------------------------
|  Table structure for table `years`.
|-------------------------------------
*/
    DROP TABLE IF EXISTS `years`;
    CREATE TABLE `years` (
                 `year_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
                ,`year`    INT(4)  UNSIGNED NOT NULL
                ,KEY `award_ind` (`year_id`)
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|--------------------------
|  Data for `years` table.
|--------------------------
*/
    LOCK TABLES `years` WRITE;
    INSERT INTO `years`()
    VALUES (NULL,1980)
          ,(NULL,1981)
          ,(NULL,1982)
          ,(NULL,1983)
          ,(NULL,1984)
          ,(NULL,1985)
          ,(NULL,1986)
          ,(NULL,1987)
          ,(NULL,1988)
          ,(NULL,1989)
          ,(NULL,1990)
          ,(NULL,1991)
          ,(NULL,1992)
          ,(NULL,1993)
          ,(NULL,1994)
          ,(NULL,1995)
          ,(NULL,1996)
          ,(NULL,1997)
          ,(NULL,1998)
          ,(NULL,1999)
          ,(NULL,2000)
          ,(NULL,2001)
          ,(NULL,2002)
          ,(NULL,2003)
          ,(NULL,2004)
          ,(NULL,2005)
          ,(NULL,2006)
          ,(NULL,2007)
          ,(NULL,2008)
          ,(NULL,2009)
          ,(NULL,2010)
          ,(NULL,2011)
          ,(NULL,2012)
          ,(NULL,2013)
          ,(NULL,2014)
          ,(NULL,2015)
          ,(NULL,2016)
          ,(NULL,2017)
          ,(NULL,2018)
          ,(NULL,2019)
          ,(NULL,2021)
          ,(NULL,2022)
          ,(NULL,2023)
          ,(NULL,2024)
          ,(NULL,2025)
          ,(NULL,2026)
          ,(NULL,2027)
          ,(NULL,2028)
          ,(NULL,2029);
    UNLOCK TABLES;

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

/*
|-----------------------------------
| Structure for `conditions` table.
|-----------------------------------
*/
    CREATE TABLE IF NOT EXISTS `conditions` (
         `cond_id`     INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`cond`        CHAR(100) DEFAULT NULL
        ,`description` BLOB
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|----------------------------------
| Data for the `conditions` table.
|----------------------------------
*/
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

/*
|---------------------------------------
| Table structure for table `editions`.
|---------------------------------------
*/
    CREATE TABLE IF NOT EXISTS `editions` (
        `edition_id` INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`edition`   CHAR(10)
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|---------------------------------------
| Data for the `editions` table.
|---------------------------------------
*/
    INSERT INTO `editions` (`edition`)
    VALUES ("First")
          ,("Second")
          ,("Third")
          ,("Fourth")
          ,("Fifth")
          ,("Sixth")
          ,("Seventh")
          ,("Eighth")
          ,("Ninth")
          ,("Tenth")
          ;

/*
|---------------------------------------
| Structure for the `printings` table.
|---------------------------------------
*/
    CREATE TABLE IF NOT EXISTS `printings` (
         `printing_id` INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`printing`    CHAR(10)  DEFAULT NULL
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

/*
|---------------------------------------
| Data for the `printings` table.
|---------------------------------------
*/
    INSERT INTO `printings` (`printing`)
    VALUES ("First")
          ,("Second")
          ,("Third")
          ,("Fourth")
          ,("Fifth")
          ,("Sixth")
          ,("Seventh")
          ,("Eighth")
          ,("Ninth")
          ,("Tenth")
          ;

/*
|-----------------------------------
| Structure for table `publishers`.
|-----------------------------------
*/
    CREATE TABLE IF NOT EXISTS `publishers` (
         `pub_id` INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`name`  CHAR(100) DEFAULT NULL
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

/*
|---------------------------------------
| Data for the `publishers` table.
|---------------------------------------
*/
    LOCK TABLES `publishers` WRITE;
    INSERT INTO `publishers`
    VALUES ( 1,'Random House')
          ,( 2,'Penguin')
          ,( 3,'Hamish Hamilton')
          ,( 4,'Allen Lane')
          ,( 5,'Michael Joseph')
          ,( 6,'Viking')
          ,( 7,'Rough Guides')
          ,( 8,'Dorling Kindersley')
          ,( 9,'Puffin')
          ,(10,'Ladybird')
          ,(11,'Warne')
          ,(12,'Century')
          ,(13,'Hutchinson')
          ,(14,'William Heinemann')
          ,(15,'Arrow')
          ,(16,'Chatto & Windus')
          ,(17,'Jonathan Cape')
          ,(18,'Harvill Secker')
          ,(19,'Vintage')
          ,(20,'Pimlico')
          ,(21,'Bodley Head')
          ,(22,'Transworld')
          ,(23,'Doubleday')
          ,(24,'Bantam Pres')
          ,(25,'Black Swan')
          ,(26,'Bantam')
          ,(27,'Corgi')
          ,(28,'Ebury Press')
          ,(29,'BBC Books')
          ,(30,'Virgin Books')
          ,(31,'Black Lace')
          ,(32,'Nexus')
          ,(33,'Cheek')
          ,(34,'Andersen Press')
          ,(35,'Hachette Livre (UK)')
          ,(36,'Headline')
          ,(37,'Hodder & Stoughton')
          ,(38,'Sceptre')
          ,(39,'Quercus')
          ,(40,'Little Brown')
          ,(41,'Abacus')
          ,(42,'Sphere')
          ,(43,'Piatkus')
          ,(44,'Orbit')
          ,(45,'Virago')
          ,(46,'Orion')
          ,(47,'Weidenfeld & Nicolson')
          ,(48,'Gollancz')
          ,(49,'Phoenix')
          ,(50,'Everyman')
          ,(51,'John Murray')
          ,(52,'Octopus')
          ,(53,'Cassell')
          ,(54,'Hamlyn')
          ,(55,'Mitchell Beazley')
          ,(56,'Philips')
          ,(57,'Orion Children\'s Books')
          ,(58,'Hodder Children’s Books')
          ,(59,'OrCHARd Books')
          ,(60,'Franklin Watts')
          ,(61,'Wayland')
          ,(62,'Hodder Education')
          ,(63,'Chambers Harrap')
          ,(64,'HarperCollins')
          ,(65,'4th Estate')
          ,(66,'Avon')
          ,(67,'Voyager')
          ,(68,'Collins')
          ,(69,'HarperPress')
          ,(70,'Blue Door')
          ,(71,'Pan Macmillan')
          ,(72,'Pan Books')
          ,(73,'Picador')
          ,(74,'Macmillan New Writing')
          ,(75,'Macmillan')
          ,(76,'Boxtree')
          ,(77,'Sidgwick and Jackson')
          ,(78,'Tor (UK)')
          ,(79,'Kingfisher')
          ,(80,'Pearson Education')
          ,(81,'Oxford University Press')
          ,(82,'Bloomsbury')
          ,(83,'A&C Black')
          ,(84,'Simon & Schuster')
          ,(85,'John Wiley & Sons (UK)')
          ,(86,'Faber Independent Allianc')
          ,(87,'Colin Smythe');
    UNLOCK TABLES;

/*
|-----------------------------------
| Structure for table `books`.
|-----------------------------------
*/
    CREATE TABLE IF NOT EXISTS `books` (
         `book_id`      INT(11)      UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`pub_id`       INT(11)      UNSIGNED NOT NULL
        ,`cond_id`      INT(11)      UNSIGNED NOT NULL DEFAULT '0'
        ,`series_id`    INT(11)      UNSIGNED NOT NULL DEFAULT '0'
        ,`title`        CHAR(50)     NOT NULL
        ,`printing_id`  INT(11)      UNSIGNED NOT NULL DEFAULT '0'
        ,`edition_id`   INT(11)      UNSIGNED NOT NULL DEFAULT '0'
        ,`pub_date`     INT(11)      UNSIGNED NOT NULL DEFAULT '0'
        ,`illus_id`     INT(11)      UNSIGNED NOT NULL DEFAULT '0'
        ,`price`        DECIMAL(7,2) NOT NULL DEFAULT '0.00'
        ,`weight`       DECIMAL(4,2) NOT NULL DEFAULT '0.00'
        ,`blurb`        BLOB
        ,`isbn`         CHAR(20)     DEFAULT NULL
        ,`created`      TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP
        ,`updated`      TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
        ,INDEX `publisher_ind`    (`pub_id`)
        ,INDEX `condition_ind`    (`cond_id`)
        ,INDEX `series_ind`       (`series_id`)
        ,INDEX `pub_date_ind`     (`pub_date`)
        ,INDEX `illustrators_ind` (`illus_id`)
        ,CONSTRAINT `fk_book_publisher` FOREIGN KEY `books` (`pub_id`)
            REFERENCES  `publishers` (`pub_id`)
        ,CONSTRAINT `fk_book_condition` FOREIGN KEY `books` (`cond_id`)
            REFERENCES  `conditions` (`cond_id`)
        ,CONSTRAINT `fk_book_series` FOREIGN KEY `books` (`series_id`)
            REFERENCES  `series` (`series_id`)
        ,CONSTRAINT `fk_printing_date` FOREIGN KEY `books` (`printing_id`)
            REFERENCES  `printings` (`printing_id`)
        ,CONSTRAINT `fk_edition` FOREIGN KEY `books` (`edition_id`)
            REFERENCES  `editions` (`edition_id`)
        ,CONSTRAINT `fk_book_publication_date` FOREIGN KEY `books` (`pub_date`)
            REFERENCES  `years` (`year_id`)
        ,CONSTRAINT `fk_book_illustrator` FOREIGN KEY `books` (`illus_id`)
            REFERENCES  `illustrators` (`illustrators_id`)
        #,CONSTRAINT `fk_book_author` FOREIGN KEY `books` (`author_id`)
            #REFERENCES  `authors` (`author_id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

/*
|------------------------------
| Structure for table `sizes`.
|------------------------------
*/

    CREATE TABLE IF NOT EXISTS `sizes` (
        `size_id`  INT(11)     UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`metric`   FLOAT(6,2) DEFAULT NULL
        ,`imperial` FLOAT(6,2) DEFAULT NULL
        ,KEY `size_ind` (`size_id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

/*
|------------------------------
| Structure for table `users`.
|------------------------------
*/
    CREATE TABLE `users` (
         `user_id`       INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`username`      CHAR(20)  NOT NULL
        ,`initials`      CHAR(12)  DEFAULT NULL
        ,`givenname`     CHAR(25)  NOT NULL
        ,`familyname`    CHAR(25)  NOT NULL
        ,`email_address` CHAR(100) NOT NULL
        ,`addr_id`       INT(11)   UNSIGNED DEFAULT NULL
        ,`baddr_id`      INT(11)   UNSIGNED DEFAULT NULL
        ,`password`      CHAR(50)  NOT NULL
        ,`last_login`    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        ,`current_login` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|-------------------------------
| Structure for table `wanted`.
|-------------------------------
*/
    CREATE TABLE IF NOT EXISTS  `wanted` (
         `book_id` INT(11) UNSIGNED NOT NULL
        ,`user_id` INT(11) UNSIGNED NOT NULL
        ,INDEX `book_ind` (`book_id`)
        ,INDEX `user_ind` (`user_id`)
        ,CONSTRAINT `fk_book_wanted` FOREIGN KEY `wanted` (`book_id`)
            REFERENCES  `books` (`book_id`)
        ,CONSTRAINT `fk_user_wants` FOREIGN KEY `wanted` (`user_id`)
            REFERENCES  `users` (`user_id`)
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

/*
|----------------------------------
| Structure for table `countries`.
|----------------------------------
*/
    CREATE TABLE IF NOT EXISTS `countries` (
        `country_id`    INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`two_letter`   CHAR(2)   NOT NULL
        ,`three_letter` CHAR(3)   NOT NULL
        ,`un_number`    INT(4)    UNSIGNED NOT NULL DEFAULT '0'
        ,`name`         CHAR(100) DEFAULT NULL
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|-----------------------------
| Data for table `countries`.
|-----------------------------
*/
    LOCK TABLES `countries` WRITE;
    INSERT INTO `countries`
    VALUES   (  4,'AF','AFG',0,'Afghanistan')
            ,(  8,'AL','ALB',0,'Albania')
            ,( 10,'AQ','ATA',0,'Antarctica')
            ,( 12,'DZ','DZA',0,'Algeria')
            ,( 16,'AS','ASM',0,'American Samoa')
            ,( 20,'AD','AND',0,'Andorra')
            ,( 24,'AO','AGO',0,'Angola')
            ,( 28,'AG','ATG',0,'Antigua and Barbuda')
            ,( 31,'AZ','AZE',0,'Azerbaijan')
            ,( 32,'AR','ARG',0,'Argentina')
            ,( 36,'AU','AUS',0,'Australia')
            ,( 40,'AT','AUT',0,'Austria')
            ,( 44,'BS','BHS',0,'Bahamas')
            ,( 48,'BH','BHR',0,'Bahrain')
            ,( 50,'BD','BGD',0,'Bangladesh')
            ,( 51,'AM','ARM',0,'Armenia')
            ,( 52,'BB','BRB',0,'Barbados')
            ,( 56,'BE','BEL',0,'Belgium')
            ,( 60,'BM','BMU',0,'Bermuda')
            ,( 64,'BT','BTN',0,'Bhutan')
            ,( 68,'BO','BOL',0,'Bolivia (Plurinational State of)')
            ,( 70,'BA','BIH',0,'Bosnia and Herzegovina')
            ,( 72,'BW','BWA',0,'Botswana')
            ,( 74,'BV','BVT',0,'Bouvet Island')
            ,( 76,'BR','BRA',0,'Brazil')
            ,( 84,'BZ','BLZ',0,'Belize')
            ,( 86,'IO','IOT',0,'British Indian Ocean Territory')
            ,( 90,'SB','SLB',0,'Solomon Islands')
            ,( 92,'VG','VGB',0,'Virgin Islands (British)')
            ,( 96,'BN','BRN',0,'Brunei Darussalam')
            ,(100,'BG','BGR',0,'Bulgaria')
            ,(104,'MM','MMR',0,'Myanmar')
            ,(108,'BI','BDI',0,'Burundi')
            ,(112,'BY','BLR',0,'Belarus')
            ,(116,'KH','KHM',0,'Cambodia')
            ,(120,'CM','CMR',0,'Cameroon')
            ,(124,'CA','CAN',0,'Canada')
            ,(132,'CV','CPV',0,'Cabo Verde')
            ,(136,'KY','CYM',0,'Cayman Islands')
            ,(140,'CF','CAF',0,'Central African Republic')
            ,(144,'LK','LKA',0,'Sri Lanka')
            ,(148,'TD','TCD',0,'Chad')
            ,(152,'CL','CHL',0,'Chile')
            ,(156,'CN','CHN',0,'China')
            ,(158,'TW','TWN',0,'Taiwan, Province of China[a]')
            ,(162,'CX','CXR',0,'Christmas Island')
            ,(166,'CC','CCK',0,'Cocos (Keeling) Islands')
            ,(170,'CO','COL',0,'Colombia')
            ,(174,'KM','COM',0,'Comoros')
            ,(175,'YT','MYT',0,'Mayotte')
            ,(178,'CG','COG',0,'Congo')
            ,(180,'CD','COD',0,'Congo (Democratic Republic of the)')
            ,(184,'CK','COK',0,'Cook Islands')
            ,(188,'CR','CRI',0,'Costa Rica')
            ,(191,'HR','HRV',0,'Croatia')
            ,(192,'CU','CUB',0,'Cuba')
            ,(196,'CY','CYP',0,'Cyprus')
            ,(203,'CZ','CZE',0,'Czech Republic')
            ,(204,'BJ','BEN',0,'Benin')
            ,(208,'DK','DNK',0,'Denmark')
            ,(212,'DM','DMA',0,'Dominica')
            ,(214,'DO','DOM',0,'Dominican Republic')
            ,(218,'EC','ECU',0,'Ecuador')
            ,(222,'SV','SLV',0,'El Salvador')
            ,(226,'GQ','GNQ',0,'Equatorial Guinea')
            ,(231,'ET','ETH',0,'Ethiopia')
            ,(232,'ER','ERI',0,'Eritrea')
            ,(233,'EE','EST',0,'Estonia')
            ,(234,'FO','FRO',0,'Faroe Islands')
            ,(238,'FK','FLK',0,'Falkland Islands (Malvinas)')
            ,(239,'GS','SGS',0,'South Georgia and the South Sandwich Islands')
            ,(242,'FJ','FJI',0,'Fiji')
            ,(246,'FI','FIN',0,'Finland')
            ,(248,'AX','ALA',0,'Åland Islands')
            ,(250,'FR','FRA',0,'France')
            ,(254,'GF','GUF',0,'French Guiana')
            ,(258,'PF','PYF',0,'French Polynesia')
            ,(260,'TF','ATF',0,'French Southern Territories')
            ,(262,'DJ','DJI',0,'Djibouti')
            ,(266,'GA','GAB',0,'Gabon')
            ,(268,'GE','GEO',0,'Georgia')
            ,(270,'GM','GMB',0,'Gambia')
            ,(275,'PS','PSE',0,'Palestine, State of')
            ,(276,'DE','DEU',0,'Germany')
            ,(288,'GH','GHA',0,'Ghana')
            ,(292,'GI','GIB',0,'Gibraltar')
            ,(296,'KI','KIR',0,'Kiribati')
            ,(300,'GR','GRC',0,'Greece')
            ,(304,'GL','GRL',0,'Greenland')
            ,(308,'GD','GRD',0,'Grenada')
            ,(312,'GP','GLP',0,'Guadeloupe')
            ,(316,'GU','GUM',0,'Guam')
            ,(320,'GT','GTM',0,'Guatemala')
            ,(324,'GN','GIN',0,'Guinea')
            ,(328,'GY','GUY',0,'Guyana')
            ,(332,'HT','HTI',0,'Haiti')
            ,(334,'HM','HMD',0,'Heard Island and McDonald Islands')
            ,(336,'VA','VAT',0,'Holy See')
            ,(340,'HN','HND',0,'Honduras')
            ,(344,'HK','HKG',0,'Hong Kong')
            ,(348,'HU','HUN',0,'Hungary')
            ,(352,'IS','ISL',0,'Iceland')
            ,(356,'IN','IND',0,'India')
            ,(360,'ID','IDN',0,'Indonesia')
            ,(364,'IR','IRN',0,'Iran (Islamic Republic of)')
            ,(368,'IQ','IRQ',0,'Iraq')
            ,(372,'IE','IRL',0,'Ireland')
            ,(376,'IL','ISR',0,'Israel')
            ,(380,'IT','ITA',0,'Italy')
            ,(384,'CI','CIV',0,'Cªte d\'Ivoire')
            ,(388,'JM','JAM',0,'Jamaica')
            ,(392,'JP','JPN',0,'Japan')
            ,(398,'KZ','KAZ',0,'Kazakhstan')
            ,(400,'JO','JOR',0,'Jordan')
            ,(404,'KE','KEN',0,'Kenya')
            ,(408,'KP','PRK',0,'Korea (Democratic People\'s Republic of)')
            ,(410,'KR','KOR',0,'Korea (Republic of)')
            ,(414,'KW','KWT',0,'Kuwait')
            ,(417,'KG','KGZ',0,'Kyrgyzstan')
            ,(418,'LA','LAO',0,'Lao People\'s Democratic Republic')
            ,(422,'LB','LBN',0,'Lebanon')
            ,(426,'LS','LSO',0,'Lesotho')
            ,(428,'LV','LVA',0,'Latvia')
            ,(430,'LR','LBR',0,'Liberia')
            ,(434,'LY','LBY',0,'Libya')
            ,(438,'LI','LIE',0,'Liechtenstein')
            ,(440,'LT','LTU',0,'Lithuania')
            ,(442,'LU','LUX',0,'Luxembourg')
            ,(446,'MO','MAC',0,'Macao')
            ,(450,'MG','MDG',0,'Madagascar')
            ,(454,'MW','MWI',0,'Malawi')
            ,(458,'MY','MYS',0,'Malaysia')
            ,(462,'MV','MDV',0,'Maldives')
            ,(466,'ML','MLI',0,'Mali')
            ,(470,'MT','MLT',0,'Malta')
            ,(474,'MQ','MTQ',0,'Martinique')
            ,(478,'MR','MRT',0,'Mauritania')
            ,(480,'MU','MUS',0,'Mauritius')
            ,(484,'MX','MEX',0,'Mexico')
            ,(492,'MC','MCO',0,'Monaco')
            ,(496,'MN','MNG',0,'Mongolia')
            ,(498,'MD','MDA',0,'Moldova (Republic of)')
            ,(499,'ME','MNE',0,'Montenegro')
            ,(500,'MS','MSR',0,'Montserrat')
            ,(504,'MA','MAR',0,'Morocco')
            ,(508,'MZ','MOZ',0,'Mozambique')
            ,(512,'OM','OMN',0,'Oman')
            ,(516,'NA','NAM',0,'Namibia')
            ,(520,'NR','NRU',0,'Nauru')
            ,(524,'NP','NPL',0,'Nepal')
            ,(528,'NL','NLD',0,'Netherlands')
            ,(531,'CW','CUW',0,'Curaçao')
            ,(533,'AW','ABW',0,'Aruba')
            ,(534,'SX','SXM',0,'SINT Maarten (Dutch part)')
            ,(535,'BQ','BES',0,'Bonaire, SINT Eustatius and Saba')
            ,(540,'NC','NCL',0,'New Caledonia')
            ,(548,'VU','VUT',0,'Vanuatu')
            ,(554,'NZ','NZL',0,'New Zealand')
            ,(558,'NI','NIC',0,'Nicaragua')
            ,(562,'NE','NER',0,'Niger')
            ,(566,'NG','NGA',0,'Nigeria')
            ,(570,'NU','NIU',0,'Niue')
            ,(574,'NF','NFK',0,'Norfolk Island')
            ,(578,'NO','NOR',0,'Norway')
            ,(580,'MP','MNP',0,'Northern Mariana Islands')
            ,(581,'UM','UMI',0,'United States Minor Outlying Islands')
            ,(583,'FM','FSM',0,'Micronesia (Federated States of)')
            ,(584,'MH','MHL',0,'Marshall Islands')
            ,(585,'PW','PLW',0,'Palau')
            ,(586,'PK','PAK',0,'Pakistan')
            ,(591,'PA','PAN',0,'Panama')
            ,(598,'PG','PNG',0,'Papua New Guinea')
            ,(600,'PY','PRY',0,'Paraguay')
            ,(604,'PE','PER',0,'Peru')
            ,(608,'PH','PHL',0,'Philippines')
            ,(612,'PN','PCN',0,'Pitcairn')
            ,(616,'PL','POL',0,'Poland')
            ,(620,'PT','PRT',0,'Portugal')
            ,(624,'GW','GNB',0,'Guinea-Bissau')
            ,(626,'TL','TLS',0,'Timor-Leste')
            ,(630,'PR','PRI',0,'Puerto Rico')
            ,(634,'QA','QAT',0,'Qatar')
            ,(638,'RE','REU',0,'R_union')
            ,(642,'RO','ROU',0,'Romania')
            ,(643,'RU','RUS',0,'Russian Federation')
            ,(646,'RW','RWA',0,'Rwanda')
            ,(652,'BL','BLM',0,'SaINT Barth_lemy')
            ,(654,'SH','SHN',0,'SaINT Helena, Ascension and Tristan da Cunha')
            ,(659,'KN','KNA',0,'SaINT Kitts and Nevis')
            ,(660,'AI','AIA',0,'Anguilla')
            ,(662,'LC','LCA',0,'SaINT Lucia')
            ,(663,'MF','MAF',0,'SaINT Martin (French part)')
            ,(666,'PM','SPM',0,'SaINT Pierre and Miquelon')
            ,(670,'VC','VCT',0,'SaINT Vincent and the Grenadines')
            ,(674,'SM','SMR',0,'San Marino')
            ,(678,'ST','STP',0,'Sao Tome and Principe')
            ,(682,'SA','SAU',0,'Saudi Arabia')
            ,(686,'SN','SEN',0,'Senegal')
            ,(688,'RS','SRB',0,'Serbia')
            ,(690,'SC','SYC',0,'Seychelles')
            ,(694,'SL','SLE',0,'Sierra Leone')
            ,(702,'SG','SGP',0,'Singapore')
            ,(703,'SK','SVK',0,'Slovakia')
            ,(704,'VN','VNM',0,'Viet Nam')
            ,(705,'SI','SVN',0,'Slovenia')
            ,(706,'SO','SOM',0,'Somalia')
            ,(710,'ZA','ZAF',0,'South Africa')
            ,(716,'ZW','ZWE',0,'Zimbabwe')
            ,(724,'ES','ESP',0,'Spain')
            ,(728,'SS','SSD',0,'South Sudan')
            ,(729,'SD','SDN',0,'Sudan')
            ,(732,'EH','ESH',0,'Western Sahara')
            ,(740,'SR','SUR',0,'Suriname')
            ,(744,'SJ','SJM',0,'Svalbard and Jan Mayen')
            ,(748,'SZ','SWZ',0,'Swaziland')
            ,(752,'SE','SWE',0,'Sweden')
            ,(756,'CH','CHE',0,'Switzerland')
            ,(760,'SY','SYR',0,'Syrian Arab Republic')
            ,(762,'TJ','TJK',0,'Tajikistan')
            ,(764,'TH','THA',0,'Thailand')
            ,(768,'TG','TGO',0,'Togo')
            ,(772,'TK','TKL',0,'Tokelau')
            ,(776,'TO','TON',0,'Tonga')
            ,(780,'TT','TTO',0,'Trinidad and Tobago')
            ,(784,'AE','ARE',0,'United Arab Emirates')
            ,(788,'TN','TUN',0,'Tunisia')
            ,(792,'TR','TUR',0,'Turkey')
            ,(795,'TM','TKM',0,'Turkmenistan')
            ,(796,'TC','TCA',0,'Turks and Caicos Islands')
            ,(798,'TV','TUV',0,'Tuvalu')
            ,(800,'UG','UGA',0,'Uganda')
            ,(804,'UA','UKR',0,'Ukraine')
            ,(807,'MK','MKD',0,'Macedonia (the former Yugoslav Republic of)')
            ,(818,'EG','EGY',0,'Egypt')
            ,(826,'GB','GBR',0,'United Kingdom of Great Britain and Northern Ireland')
            ,(831,'GG','GGY',0,'Guernsey')
            ,(832,'JE','JEY',0,'Jersey')
            ,(833,'IM','IMN',0,'Isle of Man')
            ,(834,'TZ','TZA',0,'Tanzania, United Republic of')
            ,(840,'US','USA',0,'United States of America')
            ,(850,'VI','VIR',0,'Virgin Islands (U.S.)')
            ,(854,'BF','BFA',0,'Burkina Faso')
            ,(858,'UY','URY',0,'Uruguay')
            ,(860,'UZ','UZB',0,'Uzbekistan')
            ,(862,'VE','VEN',0,'Venezuela (Bolivarian Republic of)')
            ,(876,'WF','WLF',0,'Wallis and Futuna')
            ,(882,'WS','WSM',0,'Samoa')
            ,(887,'YE','YEM',0,'Yemen')
            ,(894,'ZM','ZMB',0,'Zambia')
            ;
    UNLOCK TABLES;

/*
|-----------------------------------
| Structure for table `categories`.
|-----------------------------------
*/
    CREATE TABLE IF NOT EXISTS `categories` (
         `cat_id`   INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`award_id` INT(11)   UNSIGNED DEFAULT NULL
        ,`category` CHAR(100) NOT NULL
    )
    ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|----------------------------------
| Structure for table `addresses`.
|----------------------------------
*/
    CREATE TABLE IF NOT EXISTS `addresses` (
         `addr_id`    INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`user_id`    INT(11)  UNSIGNED NOT NULL
        ,`house_no`   INT(4)   DEFAULT NULL
        ,`house_name` CHAR(20) DEFAULT NULL
        ,`street`     CHAR(20) NOT NULL
        ,`district`   CHAR(20) DEFAULT NULL
        ,`county`     CHAR(20) NOT NULL
        ,`country_id` INT(11)  UNSIGNED NOT NULL
        ,index `user_ind`    (`user_id`)
        ,index `country_ind` (`country_id`)
        ,CONSTRAINT `fk_users_address`  FOREIGN KEY `addresses` (`user_id`)
            REFERENCES `users` (`user_id`)
        ,CONSTRAINT `fk_address_country` FOREIGN KEY `addresses` (`country_id`)
            REFERENCES `countries` (`country_id`)
        ) ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

    CREATE TABLE IF NOT EXISTS `awards` (
         `award_id`  INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`award`     CHAR(70) NOT NULL
        ,`year_id`   INT(11)  UNSIGNED NOT NULL DEFAULT 0
        ,`book_id`   INT(11)  UNSIGNED NOT NULL DEFAULT 0
        ,`author_id` INT(11)  UNSIGNED NOT NULL DEFAULT 0
        ,`cat_id`    INT(11)  UNSIGNED NOT NULL DEFAULT 0
        ,INDEX `year_ind`     (`year_id`)
        ,INDEX `book_ind`     (`book_id`)
        ,INDEX `author_ind`   (`author_id`)
        ,INDEX `category_ind` (`cat_id`)
        ,CONSTRAINT `fk_award_year`     FOREIGN KEY `awards` (`year_id`)
            REFERENCES `years`      (`year_id`)
        ,CONSTRAINT `fk_award_book`     FOREIGN KEY `awards` (`book_id`)
            REFERENCES `books`      (`book_id`)
        ,CONSTRAINT `fk_award_author`   FOREIGN KEY `awards` (`author_id`)
            REFERENCES `authors`    (`author_id`)
        ,CONSTRAINT `fk_award_category` FOREIGN KEY `awards` (`cat_id`)
            REFERENCES `categories` (`cat_id`)
        ) ENGINE=InnoDB CHARSET=utf8;

/*
|----------------------------------
| Structure for view `vAuthors`
|----------------------------------
*/
    CREATE VIEW `vAuthors` AS
        SELECT
            CONCAT(
                IF((`authors`.`givenname` IS NOT NULL), CONCAT(`authors`.`givenname`,' '),'')
               ,IF((`authors`.`initials`  IS NOT NULL), CONCAT(`authors`.`initials`,' '),'')
               ,`authors`.`familyname`) AS `Name`
               ,`psuedonym` AS "Psuedonym"
               ,`yob`       AS "Year of Birth"
               ,`yod`       AS "Year of Death"
               ,`biog`      AS "Short Biography"
           FROM `authors`;

/*
|-------------------------------------
| Structure for view `vAwardWinners`.
|-------------------------------------
*/
    CREATE VIEW `vAwardWinners` AS
        SELECT `a`.`award` AS 'Award'
        ,`c`.`category` AS 'Category'
        ,CONCAT(COALESCE(`au`.`givenname`,`au`.`initials`),' ',`au`.`familyname`) AS 'Winner'
        ,`b`.`title` AS 'The Title of the Book'
        ,`y`.`year`  AS 'The Year Won'
        ,`p`.`name`  AS 'Publisher'
        FROM (((((`awards` `a`
        JOIN `categories` AS `c`  ON((`a`.`cat_id`    = `c`.`cat_id`)))
        JOIN `authors`    AS `au` ON((`a`.`author_id` = `au`.`author_id`)))
        JOIN `books`      AS `b`  ON((`a`.`book_id`   = `b`.`book_id`)))
        JOIN `years`      AS `y`  ON((`a`.`year_id`   = `y`.`year_id`)))
        JOIN `publishers` AS `p`  ON((`b`.`pub_id`    = `p`.`pub_id`)));

/*
|------------------------------
| Structure for view `vBooks`.
|------------------------------
*/
    CREATE VIEW `vBooks` AS
        SELECT `b`.`book_id`     AS 'Book ID'
              ,`b`.`title`       AS 'Title'
              ,`p`.`name`        AS 'Publisher'
              ,`b`.`edition_id`  AS 'Edition'
              ,`b`.`pub_date`    AS 'Date of Publication'
              ,`b`.`price`       AS 'Price'
              ,`b`.`blurb`       AS 'Blurb'
              ,`b`.`isbn`        AS 'ISBN Number'
              ,`c`.`cond`        AS 'Condition'
              ,`c`.`description` AS 'Description of Condition'
        FROM `books` AS `b`
        LEFT OUTER JOIN `publishers` AS `p` ON `b`.`pub_id` = `p`.`pub_id`
        LEFT OUTER JOIN `conditions` AS `c` ON `b`.`cond_id` = `c`.`cond_id`;

/*
|----------------------------------
| Structure for view `vUsers`.
|----------------------------------
*/
    CREATE VIEW `vUsers` AS
         SELECT `u`.`username`                                AS 'User Name.'
                ,CONCAT(`u`.`givenname`,' ',`u`.`familyname`) AS 'Full Name.'
                ,`u`.`email_address`                          AS 'Email Address.'
                ,`u`.`last_login`                             AS 'Last Login.'
                ,`u`.`current_login`                          AS 'Current Login.'
                ,`a`.`house_no`                               AS 'House Number.'
                ,`a`.`house_name`                             AS 'House Name.'
                ,`a`.`street`                                 AS 'Street Name.'
                ,`a`.`district`                               AS 'District.'
                ,`a`.`county`                                 AS 'County.'
                ,`c`.`name`                                   AS 'Country.'
        FROM `users` AS `u`
            LEFT OUTER JOIN `addresses` AS `a` ON `u`.`addr_id`    = `a`.`addr_id`
            LEFT OUTER JOIN `countries` AS `c` ON `a`.`country_id` = `c`.`country_id`;

/*
|-------------------------------
| Structure for view `vOrders`.
|-------------------------------
*/
/*
CREATE VIEW `vOrders` AS
    SELECT `order_lines_id`
          ,`user_id`
          ,`book_id`
          ,`order_id`
          ,`created`
          ,`updated`
    FROM `order_lines`;
*/

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

/*
|----------------------------------
| Data for the `books` table.
|----------------------------------
*/
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

/*
|----------------------------------
| Data for the `categories` table.
|----------------------------------
*/
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

/*
|-------------------------
| Data for table `users`.
|-------------------------
*/
    LOCK TABLES `users` WRITE;
    INSERT INTO `users`
    VALUES (1,'grsl',NULL,'simon','long','grslong@gmail.com',1,NULL,'12054952e9fba7de4121aea7e0504d9533e94fda','2017-11-18 09:59:34','2017-11-18 09:59:34')
          ,(2,'Fred',NULL,'Frederick','Bloggs','f.bloggs@hotmail.com',NULL,NULL,'31017a722665e4afce586950f42944a6d331dabf','2017-11-18 09:59:34','2017-11-18 09:59:34')
          ,(3,'PA',NULL,'Paul','Askew','paulA@hotmail.com',NULL,NULL,'a027184a55211cd23e3f3094f1fdc728df5e0500','2017-11-18 09:59:34','2017-11-18 09:59:34')
          ,(4,'john',NULL,'john','Smith','j.smith@gmail.com',NULL,NULL,'a51dda7c7ff50b61eaea0444371f4a6a9301e501','2017-11-18 09:59:34','2017-11-18 09:59:34');
    UNLOCK TABLES;

    INSERT into `users` ()
    VALUES (NULL, "grsl", '', 'simon', 'long',  'grsl@grsl.com', 1,1,PASSWORD('23fish'),NOW(),NOW())
     , (NULL, "pa",   '', 'paul',  'askew', 'paulA@hotmail.com', 2,2,PASSWORD('23fish'),NOW(),NOW())
    ;

/*
|-----------------------------
| Data for table `addresses`.
|-----------------------------
*/
    LOCK TABLES `addresses` WRITE;
    INSERT INTO `addresses`
    VALUES (1,1,NULL,'Plum Tree Cottage','Goose Rye Road','Worplesdon','Surrey',826)
          ,(2,2,35,NULL,'Hillside','Woking','Surrey',826)
          ,(3,3,35,NULL,'Hillside','Woking','Surrey',826);
    UNLOCK TABLES;

/*
|--------------------------
| Data for table `awards`.
|--------------------------
*/
    LOCK TABLES `awards` WRITE;
    INSERT INTO `awards`(`award_id`, `award`, `year_id`, `book_id`, `author_id`, `cat_id`)
    VALUES(NULL,"Hugo Award", 1, 2, 2, 1)
         ,(NULL,"Wellcome Book Prize", 1, 2, 2, 1)
         ,(NULL,"Walter Scott Prize", 1, 2, 2, 1)
         ,(NULL,"Bailey's Women's Prize for Fiction", 1, 2, 2, 1)
         ,(NULL,"Man Booker International Prize", 1, 2, 2, 1)
         ,(NULL,"Orwell Book Prize", 1, 2, 2, 1)
         ,(NULL,"James Tait Black Fiction Prize", 1, 2, 2, 1)
         ,(NULL,"James Tait Black Biography Prize", 1, 2, 2, 1)
         ,(NULL,"Internaional Dylan Thomase Prize", 1, 2, 2, 1)
         ,(NULL,"Rathbone Folio Prize", 1, 2, 2, 1)
         ,(NULL,"McIlvaney Prize", 1, 2, 2, 1)
         ,(NULL,"Man Booker Prize", 1, 2, 2, 1)
         ,(NULL,"The Bailey Gifford Prize for Non-Fiction", 1, 2, 2, 1)
         ,(NULL,"The Forward Prize for Best Collection", 1, 2, 2, 1)
         ,(NULL,"The Felix Dennis Prize for Best First Collection", 1, 2, 2, 1)
         ,(NULL,"The Forward Prize for Best Single Poem", 1, 2, 2, 1)
         ,(NULL,"Dundee International Book Prize", 1, 2, 2, 1)
         ,(NULL,"Costa Book", 1, 2, 2, 1)
         ;
    UNLOCK TABLES;

/*
|---------------------------------------------
| Table structure for the table `has_a_book`.
|---------------------------------------------
*/
    CREATE TABLE IF NOT EXISTS `has_a_book` (
         `book_id`   INT(11) UNSIGNED NOT NULL
        ,`author_id` INT(11) UNSIGNED NOT NULL
        ,INDEX `author_ind` (`author_id`)
        ,INDEX `book_ind`   (`book_id`)
        ,PRIMARY KEY(`book_id`,`author_id`)
        ,CONSTRAINT `fk_has_a_book` FOREIGN KEY `has_a_book` (`book_id`)
            REFERENCES `books` (`book_id`)
        ,CONSTRAINT `fk_has_an_author` FOREIGN KEY `has_an_autor` (`author_id`)
            REFERENCES `authors` (`author_id`)
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

/*
|----------------------------------
| Data for the `has_a_book` table.
|----------------------------------
*/
    LOCK TABLES `has_a_book` WRITE;
    INSERT INTO `has_a_book`
    VALUES (1,6)
          ,(2,6)
          ,(3,6)
          ,(4,7)
          ,(5,7);
    UNLOCK TABLES;

/*
|----------------------------------------------------------------------------
|
| Views.
|
|----------------------------------------------------------------------------
*/
/*
|-----------------
| View `vAwards`.
|-----------------
*/
    CREATE VIEW `vAwards` AS
    SELECT `a`.`award`
          ,`c`.`category`
          ,`b`.`title`
          ,`au`.`givenname`
          ,`au`.`initials`
          ,`au`.`familyname`
          ,`y`.`year`
    FROM `awards` AS `a`
    JOIN `categories` AS `c`  ON `a`.`award_id`  = `c`.`award_id`
    JOIN `books`      AS `b`  ON `a`.`book_id`   = `b`.`book_id`
    JOIN `years`      AS `y`  ON `a`.`year_id`   = `y`.`year_id`
    JOIN `authors`    AS `au` ON `a`.`author_id` = `au`.`author_id`;

/*
|---------------
| View `vTemp`.
|---------------
*/
    CREATE VIEW `vTemp` AS
    SELECT b.title     AS "Title"
          ,CONCAT(a.givenname, a.initials, a.familyname) AS "Author"
          ,s.series    AS "Series"
          ,b.isbn      AS "ISBN"
          ,pd.year     AS "Year of Publication"
          ,b.blurb     AS "Blurb"
          ,CONCAT(c.cond, " ", c.description)            AS "Condition"
          ,CONCAT(i.givenname, " ", i.familyname) AS "Illustrator"
          ,p.name      AS "Publisher"
          ,e.edition   AS "Edition"
          ,pr.printing AS "Printing"
          ,b.price     AS "Price"
          ,b.weight    AS "Weight"
        FROM  books      AS b
             ,has_a_book AS hab
             ,authors    AS a
             ,conditions AS c
             ,publishers AS p
             ,printings  AS pr
             ,editions   AS e
             ,series     AS s
             ,years      AS pd
             ,illustrators AS i
        WHERE b.book_id   = hab.book_id
        AND   b.cond_id   = c.cond_id
        AND   a.author_id = hab.author_id
        AND   b.pub_id    = p.pub_id
        AND   b.printing_id = pr.printing_id
        AND   b.edition_id = e.edition_id
        AND   s.series_id = b.series_id
        AND   b.pub_date = pd.year_id
        AND   b.illus_id = i.illustrators_id
        ;


/*
|---------------------------
| View `vIllustratedBooks`.
|---------------------------
*/
    CREATE VIEW `vIllustratedBooks` AS
        SELECT `b`.`title` AS "Title"
               ,CONCAT(`a`.`givenname`, " ", `a`.`familyname`) AS "Author"
               ,CONCAT(`i`.`givenname`, " ", `i`.`familyname`) AS "Illustrator"
        FROM `books`        AS `b`
            ,`illustrators` AS `i`
            ,`has_a_book`   AS `hab`
            ,`authors`      AS `a`
        WHERE   `b`.`book_id`     = `i`.`book_id`
            AND `hab`.`book_id`   = `b`.`book_id`
            AND `hab`.`author_id` = `a`.`author_id`;

/*
|------------------------
| View `vBooksByAuthor`.
|------------------------
*/
    CREATE VIEW `vBooksByAuthor` AS
    SELECT CONCAT(COALESCE(`au`.`givenname`,`au`.`initials`),' ',`au`.`familyname`) AS 'Name'
        ,`b`.`title` AS 'Title'
        ,`b`.`blurb` AS 'Blurb'
    FROM ((`authors` AS `au`
    JOIN `has_a_book` AS `h`  ON((`h`.`author_id` = `au`.`author_id`)))
    JOIN `books`      AS  `b` ON((`h`.`book_id`   = `b`.`book_id`)));

/*
|---------------------------------------------------------------------------------------
|
| Procedures.
|
|---------------------------------------------------------------------------------------
*/
/*
|---------------------------------
| Procedure to title case a word.
|---------------------------------
*/
    DELIMITER //
    CREATE PROCEDURE `bookCellar`.`spInsertCategory` (IN `newCategory` CHAR(100))
    BEGIN
        DECLARE COUNT TINYINT UNSIGNED DEFAULT 0;
        SELECT COUNT(*) FROM `bookCellar`.`categories` AS `c` WHERE `c`.`category` = `newCategory` INTO Count;
        IF COUNT < 1 THEN
            INSERT INTO `categories`(`category`) VALUES(`newCategory`);
        END IF;
    END //
    DELIMITER ;

/*
|-----------------------------------------------
| Alias for the procedure to title case a word.
|-----------------------------------------------
*/
    DELIMITER //
    CREATE PROCEDURE `bookCellar`.`spUsers` ()
    BEGIN
    SELECT COUNT(*) FROM `bookCellar`.`users`;
    END //
    DELIMITER ;

/*
|-----------------------------------------------
| Next procedure.
|-----------------------------------------------
*/
/*
|-----------------------------
| Table Structure for Orders.
|-----------------------------
*/
    CREATE TABLE IF NOT EXISTS `orders` (
         `order_id`    INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`order_no`    INT(11)   UNSIGNED NOT NULL DEFAULT '1000'
        ,`user_id`     INT(11)   UNSIGNED NOT NULL
        ,`address_id`  INT(11)   UNSIGNED NOT NULL
        ,`billing_id`  INT(11)   UNSIGNED NOT NULL
        ,`delivery_id` INT(11)   UNSIGNED NOT NULL
        ,`order_date`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        ,INDEX `user_ind`     (`user_id`)
        ,INDEX `address_ind`  (`address_id`)
        ,INDEX `billing_ind`  (`billing_id`)
        ,INDEX `delivery_ind` (`delivery_id`)
        ,CONSTRAINT `fk_user_order`    FOREIGN KEY `orders` (`user_id`)
            REFERENCES  `users`     (`user_id`)
        ,CONSTRAINT `fk_user_address`  FOREIGN KEY `orders` (`address_id`)
            REFERENCES  `addresses` (`addr_id`)
        ,CONSTRAINT `fk_user_billing`  FOREIGN KEY `orders` (`billing_id`)
            REFERENCES  `addresses` (`addr_id`)
        ,CONSTRAINT `fk_user_delivery` FOREIGN KEY `orders` (`delivery_id`)
            REFERENCES  `addresses` (`addr_id`)
        ) ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|-----------------------------------
| Table Structure for `order_ines`.
|-----------------------------------
*/
    CREATE TABLE IF NOT EXISTS `order_lines` (
         `order_lines_id` INT(11) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`order_id`       INT(11) UNSIGNED NOT NULL
        ,`book_id`        INT(11) UNSIGNED NOT NULL
        ,`created`        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        ,`updated`        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
        ,INDEX `ol_book_ind`  (`book_id`)
        ,INDEX `ol_order_ind` (`order_id`)
        ,CONSTRAINT `fk_ordered_book` FOREIGN KEY `order_lines` (`book_id`)
            REFERENCES  `books` (`book_id`)
        ,CONSTRAINT `fk_order` FOREIGN KEY `order_lines` (`order_id`)
            REFERENCES  `orders` (`order_id`)
        )
        ENGINE=InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/*
|--------------------------------
| Table Structure for `weights`.
|--------------------------------
*/
    CREATE TABLE IF NOT EXISTS `weights` (
         `weights_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`metric`     INT(10)
        ,`imperial`   FLOAT(8,3)
    );

/*
|-----------------------------------
| Table Structure for `order`.
|-----------------------------------
*/
    INSERT INTO `orders`(
                `order_id`
               ,`order_no`
               ,`user_id`
               ,`address_id`
               ,`billing_id`
               ,`delivery_id`
               ,`order_date`
               )
        VALUES (NULL, 1003,1,1,1,1,NOW()
        );

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


/*
|---------------------------
| Data for `weights` table.
|---------------------------
*/

    INSERT INTO weights(metric,imperial)
        VALUES (   10,  0.350)
              ,(   20,  0.710)
              ,(  100,  3.527)
              ,(  200,  7.054)
              ,(  250,  8.819)
              ,(  500, 17.637)
              ,(  750, 26.455)
              ,( 1000, 35.274)
              ,( 1250, 44.092)
              ,( 1500, 52.911)
              ,( 1750, 61.729)
              ,( 2000, 70.548)
              ,(10000,352.740)
              ,(20000,705.480);

/*
|-----------------------------------
| Data for table `orders_lines`.
|-----------------------------------
*/

    LOCK TABLES `order_lines` WRITE;
        INSERT INTO `order_lines`(
                    `order_lines_id`
                   ,`order_id`
                   ,`book_id`
                   ,`created`
                   ,`updated`
                   )
        VALUES (NULL,1,1,NOW(),NOW())
              ,(NULL,1,2,NOW(),NOW());
        UNLOCK TABLES;


/*
|-----------------------------------
| Data for table `orders`.
|-----------------------------------
*/

    LOCK TABLES `orders` WRITE;
        INSERT INTO `orders` ()
        VALUES (NULL,1000,1,1,1,1,NOW());
    UNLOCK TABLES;

/*
|------------------------------------------------------------------------------------------
| Views.
|------------------------------------------------------------------------------------------
*/
    DROP VIEW IF EXISTS `vOrders`;
    CREATE VIEW `vOrders` AS
        SELECT `o`.`order_id`   AS "ID"
              ,`o`.`order_no`   AS "Order No."
              ,`b`.`title`      AS "Book"
              ,`o`.`order_date` AS "Order Date"
              ,`ol`.`order_id`  AS "OLOID"
              ,CONCAT(
              # TODO    Need to write a function to Title Case the Name,
              #         regardless of  how it was entered.
                  IF((`u`.`givenname` IS NOT NULL), CONCAT(`u`.`givenname`,' '),'')
                 ,IF((`u`.`initials`  IS NOT NULL), CONCAT(`u`.`initials`,' '),'')
                 ,`u`.`familyname`) AS "Name"
             #Home Address.
             ,CONCAT(
                  CONCAT(IF(`a`.`house_no`   IS NOT NULL, CONCAT(`a`.`house_no`, ", "), ""))
                 ,CONCAT(IF(`a`.`house_name` IS NOT NULL, CONCAT(`a`.`house_name`, ", "), ""))
                 ,`a`.`street`, ", "
                 ,`a`.`district`, ", "
                 ,`a`.`county`, ", "
                 ,`c`.`name`, ".") AS "Address"
             #Billing Address.
             ,CONCAT(
                  CONCAT(IF(`ba`.`house_no`   IS NOT NULL, CONCAT(`ba`.`house_no`, ", "), ""))
                 ,CONCAT(IF(`ba`.`house_name` IS NOT NULL, CONCAT(`ba`.`house_name`, ", "), ""))
                 ,`ba`.`street`, ", "
                 ,`ba`.`district`, ", "
                 ,`ba`.`county`, ", "
                 ,`c`.`name`, ".") AS "Billing Address"
             #Delivery Address.
             ,CONCAT(
                  CONCAT(IF(`da`.`house_no`   IS NOT NULL, CONCAT(`da`.`house_no`, ", "), ""))
                 ,CONCAT(IF(`da`.`house_name` IS NOT NULL, CONCAT(`da`.`house_name`, ", "), ""))
                 ,`da`.`street`, ", "
                 ,`da`.`district`, ", "
                 ,`da`.`county`, ", "
                 ,`c`.`name`, ".") AS "Delivery Address"
        FROM `orders` AS `o`
        LEFT OUTER JOIN `order_lines` AS `ol`
        ON `o`.`order_id` = `ol`.`order_id`
        LEFT OUTER JOIN `books` AS `b`
        ON `ol`.`book_id` = `b`.`book_id`
        LEFT OUTER JOIN `users` AS `u`
        ON `o`.`user_id` = `u`.`user_id`
        LEFT OUTER JOIN `addresses` AS `a`
        ON `o`.`address_id` = `a`.`addr_id`
        LEFT OUTER JOIN `countries` AS `c`
        ON `a`.`country_id` = `c`.`country_id`
        LEFT OUTER JOIN `addresses` AS `ba`
        ON `o`.`billing_id` = `a`.`addr_id`
        LEFT OUTER JOIN `addresses` AS `da`
        ON `o`.`delivery_id` = `a`.`addr_id`
        ;

/*
|-----------------------------------
| Final view structure for view `vUserOrders`
|-----------------------------------
*/
    DROP VIEW IF EXISTS `vUsersOrders`;
    CREATE VIEW `vUsersOrders` AS
        SELECT `o`.`order_no`     AS 'Order Number'
               ,DATE_FORMAT(`o`.`order_date`,'%W the %D of %M, %Y') AS 'Date Ordered'
               ,`u`.`username`    AS 'User Name'
               ,CONCAT(COALESCE(`u`.`givenname`,`u`.`initials`),' ',`u`.`familyname`) AS 'Purchaser'
               ,`b`.`title`       AS 'Title'
               ,`b`.`price`       AS 'Price'
               ,`b`.`edition_id`  AS 'Edition'
               ,`b`.`isbn`        AS 'ISBN'
               ,CONCAT(COALESCE(`a`.`givenname`,`a`.`initials`),' ',`a`.`familyname`) AS 'Author'
               ,`ad`.`house_no`   AS 'House Number'
               ,`ad`.`house_name` AS 'House Name'
               ,`ad`.`street`     AS 'Street'
               ,`ad`.`district`   AS 'District'
               ,`ad`.`county`     AS 'County'
               ,`c`.`name`        AS 'Name'
        FROM `order_lines` `ol`
            LEFT JOIN `orders`     AS `o`   ON `ol`.`order_id`   = `o`.`order_id`
            LEFT JOIN `users`      AS `u`   ON `o`.`user_id`     = `u`.`user_id`
            LEFT JOIN `books`      AS `b`   ON `ol`.`book_id`    = `b`.`book_id`
            LEFT JOIN `has_a_book` AS `hab` ON `b`.`book_id`     = `hab`.`book_id`
            LEFT JOIN `authors`    AS `a`   ON `hab`.`author_id` = `a`.`author_id`
            LEFT JOIN `addresses`  AS `ad`  ON `u`.`addr_id`     = `ad`.`addr_id`
            LEFT JOIN `countries`  AS `c`   ON `ad`.`country_id` = `c`.`country_id`;

/*
|----------------------------------------------------------------------------------------
| vBooksByUser.
|----------------------------------------------------------------------------------------
|
| A view of all the books bought by a specific user.
|
|----------------------------------------------------------------------------------------
*/
    CREATE VIEW `vBooksByUser` AS
        SELECT * FROM users AS `a`
        ;


/*
|-------------------------------------------------------------
|   Postage Section.
|-------------------------------------------------------------
|
|   All tables in the Postal module will be prefixed with
|   a `p`and the following letter will be capitalised.
|
|-------------------------------------------------------------
*/
    DROP TABLE IF EXISTS `pServices`;
    DROP TABLE IF EXISTS `pWeights`;
    DROP TABLE IF EXISTS `pSizes`;
    DROP TABLE IF EXISTS `pPrices`;
    DROP TABLE IF EXISTS `pClassOfService1`;
    DROP TABLE IF EXISTS `pClassOfService2`;
    DROP TABLE IF EXISTS `pProviders`;
    DROP VIEW  IF EXISTS `vpCharges`;

/*
|-------------------------------------------------------------
|
|   Tables
|
|-------------------------------------------------------------
*/
/*
|-----------------------------------------------
|  Table Structure for Table `Postal Provider`.
|-----------------------------------------------
*/
    CREATE TABLE `pProviders`(
         `pProvider_id` INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`pProvider`    CHAR(30)
        )
        ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

/*
|-------------------------------------------------------------
|   Table Structure for Table `pClaseOfService1`.
|-------------------------------------------------------------
*/
    CREATE TABLE `pClass` (
         `pClass_id`   INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`pProvider_id` INT(11) UNSIGNED NOT NULL
        ,`pClass`      CHAR(25)
    );

/*
|-------------------------------------------------------------
|   Table Structure for Table `pSizes`.
|-------------------------------------------------------------
*/
    CREATE TABLE `pSizes` (
         `pSize_id`  INT(11)     UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`pMetric`   FLOAT(12,6) DEFAULT NULL COMMENT "All sizes  are in centimetres."
        ,`pImperial` FLOAT(12,6) DEFAULT NULL COMMENT "All weights are in inches."
        )
        ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

/*
|-------------------------------------------------------------
|   Table Structure for Table `weights`.
|-------------------------------------------------------------
*/
    CREATE TABLE `pWeights` (
         `pWeight_id` INT(11)     UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`pMetric`    FLOAT(12,6) DEFAULT NULL COMMENT "All weights are in grammes."
        ,`pImperial`  FLOAT(12,6) DEFAULT NULL COMMENT "All weights are in ounces."
        ,KEY `pWeight_ind` (`pWeight_id`)
        )
        ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

/*
|-------------------------------------------------------------
|  Table Structure for Table `pServices`.
|-------------------------------------------------------------
*/
    CREATE TABLE `pServices` (
         `pService_id`    INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
        ,`pProvider_id`   INT(11)  UNSIGNED NOT NULL
        ,`pCOS_1_id`      INT(11)  UNSIGNED NOT NULL
        ,`pCOS_2_id`      INT(11)  UNSIGNED NOT NULL
        ,`pMax_weight_id` INT(11)  UNSIGNED NOT NULL
        ,`length`         FLOAT(12,6)
        ,`width`          FLOAT(12,6)
        ,`height`         FLOAT(12,6)
        ,`notes`          BLOB
        ,`cost`           FLOAT(6,2)
        ,INDEX `pProvider_ind`   (`pProvider_id`)
        ,INDEX `pMax_weight_ind` (`pMax_weight_id`)
        )
        ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

/*
|-------------------------------------------------------------
|  End of Tables.
|-------------------------------------------------------------
*/
/*
|-------------------------------------------------------------
|
|   Data.
|
|-------------------------------------------------------------
*/
/*
|-------------------------------------------------------------
|   Data for table `Postal Provider`.
|-------------------------------------------------------------
*/
    INSERT INTO `pProviders` (`pProvider_id`,`pProvider`)
        VALUES (1, "Royal Mail")
              ,(2, "Federal Express (FedEx)")
              ,(3, "TNT")
              ,(4, "Parcel Force")
              ;

/*
|-------------------------------------------------------------
|   Data for classes of service.
|-------------------------------------------------------------
*/
    INSERT INTO `pClass` ()
    VALUES(NULL, 1, "Letter")
         ,(NULL, 1, "Large Letter")
         ,(NULL, 1, "Small Parcel")
         ,(NULL, 1, "Medium Parcel")
         ,(NULL, 4, "Large Parcel")
         ,(NULL, 1, "Special Delivery")
         ,(NULL, 4, "express9")
         ,(NULL, 4, "express10")
         ,(NULL, 4, "expressAM")
         ,(NULL, 4, "express24")
         ,(NULL, 4, "Worldwide")
        ;

/*
|-------------------------------------------------------------
|   Data for Table `Weights`.
|-------------------------------------------------------------
*/
    INSERT INTO `pWeights` (`pMetric`, `pImperial`)
        VALUES (    0, 0)
              ,(  100, 0)
              ,(  250, 0)
              ,(  500, 0)
              ,(  750, 0)
              ,( 1000, 0)
              ,( 2000, 0)
              ,( 5000, 0)
              ,(10000, 0)
              ,(15000, 0)
              ,(20000, 0)
              ,(25000, 0)
              ,(30000, 0)
              ;

/*------------------------------------------------------------\-
|   Data for table `pServices`.
\-------------------------------------------------------------*/
    INSERT INTO `pServices` (`pService_id`, `pProvider_id`, `pCOS_1_id`, `pCOS_2_id`, `pMax_weight_id`, `length`, `width`, `height`,`notes`, `cost`)
        VALUES ( NULL, 1, 1, 1,  2,   24, 16.5,  0.5, "",                                               0.65)
              ,( NULL, 1, 1, 2,  2,   24, 16.5,  0.5, "",                                               0.56)
              ,( NULL, 1, 2, 0,  5, 35.3,   25, 2.50,  "",                                              0.0)
              ,( NULL, 1, 2, 0,  5, 35.3,   25, 2.50,  "",                                              0.0)
              ,( NULL, 1, 3, 0,  7,   45,   35,   16,  "",                                              0.0)
              ,( NULL, 1, 3, 0,  7,   45,   35,   16,  "",                                              0.0)
              ,( NULL, 1, 4, 0, 10,   61,   46,   46,  "",                                              0.0)
              ,( NULL, 1, 4, 0, 10,   61,   46,   46,  "",                                              0.0)
              ,( NULL, 1, 5, 0, 12,  250,    0,    0,  "Must not exceed 5M length and girth combined.", 0.0)
              ,( NULL, 1, 6, 0,  7,    0,    0,    0,  "Guaranteed by 1pm",                             0.0)
              ,( NULL, 1, 6, 0,  8,    0,    0,    0,  "Guaranteed by 9am",                             0.0)
              ,( NULL, 4, 7, 0,  7, 35.3,   25, 2.50,  "Compensation up to £200.",                      0.0)
              ,( NULL, 4, 7, 0,  8, 35.3,   25, 2.50,  "Compensation up to £200.",                      0.0)
              ,( NULL, 4, 7, 0,  9, 35.3,   25, 2.50,  "Compensation up to £200.",                      0.0)
              ,( NULL, 4, 7, 0, 10, 35.3,   25, 2.50,  "Compensation up to £200.",                      0.0)
              ,( NULL, 4, 7, 0, 11, 35.3,   25, 2.50,  "Compensation up to £200.",                      0.0)
              ,( NULL, 4, 7, 0, 12, 35.3,   25, 2.50,  "Compensation up to £200.",                      0.0)
              ,( NULL, 4, 7, 0, 13, 35.3,   25, 2.50,  "Compensation up to £200.",                      0.0)
              ,( NULL, 4, 8, 0,  7, 35.3,   25, 2.50,  "Compensation up to £200.",                      0.0)
              ,( NULL, 4, 8, 0,  8, 35.3,   25, 2.50,  "Compensation up to £200.",                      0.0)
              ,( NULL, 4, 8, 0,  9, 35.3,   25, 2.50,  "Compensation up to £200.",                      0.0)
              ,( NULL, 4, 8, 0, 10, 35.3,   25, 2.50,  "Compensation up to £200.",                      0.0)
              ,( NULL, 4, 8, 0, 11, 35.3,   25, 2.50,  "Compensation up to £200.",                      0.0)
              ,( NULL, 4, 8, 0, 12, 35.3,   25, 2.50,  "Compensation up to £200.",                      0.0)
              ,( NULL, 4, 8, 0, 13, 35.3,   25, 2.50,  "Compensation up to £200.",                      0.0)
              ,( NULL, 4, 9, 0,  5, 35.3,   25, 2.50,  "Compensation up to £200.",                      0.0)
              ,( NULL, 4, 10,0,  5, 35.3,   25, 2.50,  "Compensation up to £100.",                      0.0)
              ;

/*
|-------------------------------------------------------------
|  Table Structure for Table `pSizes`.
|-------------------------------------------------------------
*/
    INSERT INTO `pSizes` (`pMetric`, `pImperial`)
     #`pSize_id`, `pMetric`, `pImperial`
         VALUES(0,0)
         ,(  0.5, 0)
         ,( 16.5, 0)
         ,( 24.0, 0)
         ,( 25.0, 0)
         ,( 35.3, 0)
         ,( 60.0, 0)
         ,( 90.0, 0)
         ,(104.0, 0)
        ;

/*
|-------------------------------------------------------------
|  End of Data.
|-------------------------------------------------------------
*/
/*
|-------------------------------------------------------------
|
|   Views.
|
|-------------------------------------------------------------
*/
/*
|-------------------------------------------------------------
|   Structure for View `vpCharges`.
|-------------------------------------------------------------
*/
    CREATE VIEW `vpCharges` AS
        SELECT `p`.`pProvider` AS "Service Provider"
              ,`s`.`pCOS_1_id`   AS "Service"
              ,CONCAT(FORMAT(FLOOR(`w`.`pMetric`),0,'en_GB'),   " Grammes")
                  AS "Maximum Weight in Grammes"
              ,CONCAT(FORMAT(FLOOR(`w`.`pImperial`),0,'en_GB'), " Ounces")
                  AS "Maximum Weight Ounces"
              ,CONCAT(FORMAT((FLOOR(`w`.`pMetric`)/1000),0,'en_GB'), " Kilogrammes")
                  AS "Maximum Weight in Kilogrammes"
              ,CONCAT(FORMAT((FLOOR(`w`.`pImperial`)/16),0,'en_GB'), " Pounds")
                  AS "Maximum Weight in Pounds"
              ,`s`.`notes`,`cost`
        FROM `pProviders`  AS `p`
        LEFT OUTER JOIN `pServices` AS `s` ON `p`.`pProvider_id` = `s`.`pProvider_id`
        LEFT OUTER JOIN `pWeights`  AS `w` ON `s`.`pMax_weight_id` = `w`.`pWeight_id`;

/*
|-------------------------------------------------------------
|   End of Views.
|-------------------------------------------------------------
*/

/*
|----------------
|
|   Convertions.
|
|----------------
*/

/*
|-----------------------------
|  Convert Grammes to Ounces.
|-----------------------------
*/
UPDATE `pWeights` SET `pImperial` = (`pMetric` * 0.03527396195);

/*
|---------------------------------
|  Convert Centimetres to Inches.
|---------------------------------
*/
UPDATE `pSizes` SET `pImperial` = (`pMetric` * 0.3937008);

/*
|---------------------------
|   End of Postage Section.
|---------------------------
*/
/*
|-------------------------------------------
|   Function to title case individual words.
|-------------------------------------------
*/
    DROP FUNCTION IF EXISTS TITLE;

    DELIMITER //
    CREATE FUNCTION TITLE(`s` CHAR(25))
    RETURNS CHAR(25)
    DETERMINISTIC
    BEGIN
        DECLARE str1 CHAR(25);
        DECLARE str2 CHAR(25);
        DECLARE len    INT(8);
        set len  = CHAR_LENGTH(`s`);
        set str1 = (LEFT(`s`,1));
        set str2 = RIGHT(`s`,(len - 1));
    RETURN CONCAT(UPPER(str1),lower(str2));
    END //
    DELIMITER ;;

/*
|-------------------------------------------
|   Function to title case individual words.
|   Alias for TITLE.
|-------------------------------------------
*/
    #DROP FUNCTION IF EXISTS TCASE;
    DELIMITER //
    CREATE FUNCTION TCASE(`s` CHAR(25))
    RETURNS CHAR(25)
    DETERMINISTIC
    BEGIN
        RETURN TITLE(`s`);
    END//
    DELIMITER ;

/*
|-------------------------------------------
|   End of Functions.
|-------------------------------------------
*/
/*
|----------------------------------------------------------------------------------------
| END.
|----------------------------------------------------------------------------------------
*/
