SELECT 
    product_name,
    COUNT(S.product_id) as orders
  FROM dannys_diner.sales as S
  inner join dannys_diner.menu as M on S.product_id = M.product_id
  GROUP by product_name
  order by orders desc 
  LIMIT 1;