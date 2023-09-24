WITH Ranked AS
(
  SELECT 
      S.customer_id,
      M.product_name,
      RANK() OVER(PARTITION by S.customer_id order by order_date) as Ran
    FROM dannys_diner.sales as S
    inner join dannys_diner.menu as M on S.product_id = M.product_id
    inner join dannys_diner.members as Me on S.customer_id = Me.customer_id
    WHERE order_date>=join_date
)
SELECT  customer_id, product_name FROM Ranked WHERE Ran = 1  