With Ranked as 
(
  SELECT
  	customer_id,
    product_name,
    COUNT(S.product_id) as orders,
    RANK() OVER(PARTITION by customer_id order by COUNT(S.product_id) DESC) as Ran
  FROM dannys_diner.sales as S
  inner join dannys_diner.menu as M on S.product_id = M.product_id
  GROUP by customer_id,product_name
)
SELECT  customer_id,product_name,orders from Ranked WHERE Ran =1