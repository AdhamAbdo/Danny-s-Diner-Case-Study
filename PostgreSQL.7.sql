
  SELECT 
      S.customer_id,
      count(M.product_name),
  	  sum(m.price)
    FROM dannys_diner.sales as S
    inner join dannys_diner.menu as M on S.product_id = M.product_id
    inner join dannys_diner.members as Me on S.customer_id = Me.customer_id
    WHERE order_date<join_date
    GROUP by S.customer_id