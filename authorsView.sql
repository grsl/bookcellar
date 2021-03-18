/*
|----------------------------------
| Structure for view `vAuthors`
|----------------------------------
*/
    USE bookCellar

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
