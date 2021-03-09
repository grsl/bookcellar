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
|-----------------------------
|  Convertions.
|-----------------------------
*/
UPDATE `pWeights` SET `pImperial` = (`pMetric` * 0.03527396195);
UPDATE `pSizes`   SET `pImperial` = (`pMetric` * 0.3937008);
