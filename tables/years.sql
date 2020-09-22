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
