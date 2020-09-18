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
