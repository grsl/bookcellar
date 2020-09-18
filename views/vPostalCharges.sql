/*
|-------------------------------------------------------------
|   Structure for View `vpCharges`.
|-------------------------------------------------------------
*/
CREATE VIEW `vpCharges` AS
    SELECT
         `p`.`pProvider` AS "Service Provider"
        ,`s`.`pCOS_1_id`   AS "Service"
        ,CONCAT(FORMAT(FLOOR(`w`.`pMetric`),0,'en_GB'), " Grammes") AS "Maximum Weight in Grammes"
        ,CONCAT(FORMAT(FLOOR(`w`.`pImperial`),0,'en_GB'), " Ounces") AS "Maximum Weight Ounces"
        ,CONCAT(FORMAT((FLOOR(`w`.`pMetric`)/1000),0,'en_GB'), " Kilogrammes") AS "Maximum Weight in Kilogrammes"
        ,CONCAT(FORMAT((FLOOR(`w`.`pImperial`)/16),0,'en_GB'), " Pounds") AS "Maximum Weight in Pounds"
        ,`s`.`notes`,`cost`
        FROM `pProviders`  AS `p`
        LEFT OUTER JOIN `pServices` AS `s` ON `p`.`pProvider_id` = `s`.`pProvider_id`
        LEFT OUTER JOIN `pWeights`  AS `w` ON `s`.`pMax_weight_id` = `w`.`pWeight_id`;

