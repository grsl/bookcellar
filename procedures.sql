
    USE bookCellar

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
|   Function to title case individual words  Alias for TITLE.
|-------------------------------------------
*/

DROP FUNCTION IF EXISTS TCASE

DELIMITER //

CREATE FUNCTION TCASE(`s` CHAR(25))
    RETURNS CHAR(25)
    DETERMINISTIC
    BEGIN
        RETURN TITLE(`s`);
    END//

DELIMITER ;
