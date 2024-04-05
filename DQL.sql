-- Exploring the tables and the columns of the database
SELECT table_name, column_name
FROM information_schema.columns
WHERE table_schema = 'public'
ORDER BY table_name, ordinal_position;

-- Displaying the data
select * from brands;

-- Solving the problem
/* attempt 1
SELECT X.*,
       Row_number()
         OVER(
           partition BY X.pairsid) as rk
FROM   (SELECT *,
               CASE
                 WHEN brand1 < brand2 THEN Concat(brand1, brand2, year)
                 ELSE Concat(brand2, brand1, year)
               END AS pairsID
        FROM   brands) X 
*/				
		
-- adding the PairsID 
-- adding the PairsID 
WITH cte_1
     AS (SELECT *,
                CASE
                  WHEN brand1 < brand2 THEN Concat(brand1, brand2, year)
                  ELSE Concat(brand2, brand1, year)
                END AS pairsid
         FROM   brands),
     cte_2
     AS (SELECT *,
                Row_number()
                  OVER(
                    partition BY pairsid
                    ORDER BY pairsid) AS rk
         FROM   cte_1)
SELECT *
FROM   cte_2
WHERE  rk = 1
        OR ( custom1 <> custom3
             AND custom2 <> custom4 ) 