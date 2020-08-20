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
|-----------------------------------
| Data for `order`.
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


    /*
    |-------------------------------------------------------------
    |   Data for table `pServices`.
    |-------------------------------------------------------------
    */

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
    |  Data for Table `pSizes`.
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
