    USE bookCellar
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
