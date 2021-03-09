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
