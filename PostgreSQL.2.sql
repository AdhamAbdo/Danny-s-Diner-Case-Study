
WITH Ranked as 
(
  SELECT
  customer_id,
  product_name,
  order_date,
  RANK() OVER(PARTITION by customer_id order by order_date) as Ran
  FROM dannys_diner.sales as S
  inner join dannys_diner.menu as M on S.product_id = M.product_id
)

SELECT  customer_id,product_name FROM Ranked WHERE Ran = 1
